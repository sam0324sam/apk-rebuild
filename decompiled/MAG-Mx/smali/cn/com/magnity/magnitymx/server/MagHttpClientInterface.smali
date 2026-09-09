.class public interface abstract Lcn/com/magnity/magnitymx/server/MagHttpClientInterface;
.super Ljava/lang/Object;
.source "MagHttpClientInterface.java"


# static fields
.field public static final ACTION_GET_USER_DEVICES:I = 0x150203

.field public static final ACTION_GET_USER_FILES:I = 0x150204

.field public static final ACTION_LOGIN:I = 0x150200

.field public static final ACTION_LOGOUT:I = 0x150201

.field public static final ACTION_UPLOAD_SMALL_FILE:I = 0x150202

.field public static final GENERAL_DELETE_FAILED:I = 0x61a84

.field public static final GENERAL_DELETE_SUCCESS:I = 0x30d44

.field public static final GENERAL_GET_FAILED:I = 0x61a82

.field public static final GENERAL_GET_SUCCESS:I = 0x30d42

.field public static final GENERAL_INVALID_DATA:I = 0x61a80

.field public static final GENERAL_UPDATE_FAILED:I = 0x61a84

.field public static final GENERAL_UPDATE_SUCCESS:I = 0x30d44

.field public static final LOGIN_FAILED:I = 0x61ae8

.field public static final LOGIN_SUCCESS:I = 0x30da8

.field public static final LOGIN_URL:Ljava/lang/String; = "/v1/account/login"

.field public static final LOGOUT_FAILED:I = 0x61aea

.field public static final LOGOUT_SUCCESS:I = 0x30daa

.field public static final LOGOUT_URL:Ljava/lang/String; = "/v1/account/logout"

.field public static final OTHER_REQUEST_ERROR:I = -0x1

.field public static final REQUEST_OK:I = 0xc8

.field public static final REQUEST_TIMEOUT:I = 0x198

.field public static final UPLOAD_FILE_URL_FORMAT:Ljava/lang/String; = "/v1/file/user/%d?method=upload"

.field public static final UPLOAD_SMALL_FILE_FILE_CREATE_DEVICE_NOT_ALLOWED:I = 0x61bb3

.field public static final UPLOAD_SMALL_FILE_FILE_UPLOAD_FAILED:I = 0x61bae

.field public static final UPLOAD_SMALL_FILE_FILE_UPLOAD_SUCCESS:I = 0x30e6e

.field public static final UPLOAD_SMALL_FILE_FILE_USER_STORAGE_SPACE_USED_UP:I = 0x61bc6

.field public static final UPLOAD_SMALL_FILE_SYSTEM_STORAGE_SPACE_USED_UP:I = 0x61c10

.field public static final USER_PERMISSION_DENIED:I = 0x61ae6

.field public static final USER_UNAUTHENTICATED:I = 0x61ae4


# virtual methods
.method public abstract getUserDevices(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end method

.method public abstract getUserFiles(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end method

.method public abstract logout(Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end method

.method public abstract uploadSmallFile(Ljava/io/File;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z
.end method
