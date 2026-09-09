$bytes = [System.IO.File]::ReadAllBytes("scratch\native_inspect\lib\armeabi\libcxx2java.so")

$e_shoff = [BitConverter]::ToUInt32($bytes, 0x20)
$e_shentsize = [BitConverter]::ToUInt16($bytes, 0x2E)
$e_shnum = [BitConverter]::ToUInt16($bytes, 0x30)
$e_shstrndx = [BitConverter]::ToUInt16($bytes, 0x32)

$shstr_offset = [BitConverter]::ToUInt32($bytes, $e_shoff + $e_shstrndx * $e_shentsize + 0x10)

$dynsym_sec = $null
$dynstr_sec = $null

for ($i = 0; $i -lt $e_shnum; $i++) {
    $sec_offset = $e_shoff + $i * $e_shentsize
    $sh_name = [BitConverter]::ToUInt32($bytes, $sec_offset)
    $nameEnd = $shstr_offset + $sh_name
    while ($bytes[$nameEnd] -ne 0) { $nameEnd++ }
    $secName = [System.Text.Encoding]::ASCII.GetString($bytes, $shstr_offset + $sh_name, $nameEnd - ($shstr_offset + $sh_name))
    if ($secName -eq ".dynsym") {
        $dynsym_sec = @{ offset = [BitConverter]::ToUInt32($bytes, $sec_offset + 0x10); size = [BitConverter]::ToUInt32($bytes, $sec_offset + 0x14); entsize = [BitConverter]::ToUInt32($bytes, $sec_offset + 0x24) }
    }
    if ($secName -eq ".dynstr") {
        $dynstr_sec = @{ offset = [BitConverter]::ToUInt32($bytes, $sec_offset + 0x10); size = [BitConverter]::ToUInt32($bytes, $sec_offset + 0x14) }
    }
}

$count = $dynsym_sec.size / $dynsym_sec.entsize
for ($i = 0; $i -lt $count; $i++) {
    $entry = $dynsym_sec.offset + $i * $dynsym_sec.entsize
    $st_name = [BitConverter]::ToUInt32($bytes, $entry)
    $st_value = [BitConverter]::ToUInt32($bytes, $entry + 4)
    $nameEnd = $dynstr_sec.offset + $st_name
    while ($nameEnd -lt $bytes.Length -and $bytes[$nameEnd] -ne 0) { $nameEnd++ }
    $symName = [System.Text.Encoding]::ASCII.GetString($bytes, $dynstr_sec.offset + $st_name, $nameEnd - ($dynstr_sec.offset + $st_name))
    if ($symName -like "*getOutputBMPData*") {
        "$symName : 0x{0:X}" -f $st_value
    }
}
