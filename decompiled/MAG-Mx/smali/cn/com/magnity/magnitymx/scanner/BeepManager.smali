.class final Lcn/com/magnity/magnitymx/scanner/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcn/com/magnity/magnitymx/scanner/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->activity:Landroid/app/Activity;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->updatePrefs()V

    .line 37
    return-void
.end method

.method private buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 11
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 75
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 76
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "file":Landroid/content/res/AssetFileDescriptor;
    const/4 v9, 0x0

    .line 77
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 78
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 79
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 81
    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    if-eqz v6, :cond_0

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    .end local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    .line 85
    .local v7, "ioe":Ljava/io/IOException;
    sget-object v1, Lcn/com/magnity/magnitymx/scanner/BeepManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    move-object v0, v8

    .line 87
    goto :goto_0

    .line 84
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 76
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_1
    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v1

    :catch_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v8

    goto :goto_1
.end method

.method private static shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v2, "preferences_play_beep"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "shouldPlayBeep":Z
    if-eqz v1, :cond_0

    .line 66
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 67
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 71
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_0
    return v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 93
    monitor-enter p0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 98
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->close()V

    .line 99
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->updatePrefs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 56
    :cond_0
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->vibrate:Z

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->activity:Landroid/app/Activity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 58
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePrefs()V
    .locals 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->playBeep:Z

    .line 43
    const-string v1, "preferences_vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->vibrate:Z

    .line 44
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 48
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 40
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
