.class public Lcom/android/settings/SecFactoryReset;
.super Landroid/app/Activity;
.source "SecFactoryReset.java"


# instance fields
.field private callFromFactory:Z

.field public mHandler:Landroid/os/Handler;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecFactoryReset;->callFromFactory:Z

    .line 89
    new-instance v0, Lcom/android/settings/SecFactoryReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecFactoryReset$1;-><init>(Lcom/android/settings/SecFactoryReset;)V

    iput-object v0, p0, Lcom/android/settings/SecFactoryReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecFactoryReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V

    return-void
.end method

.method private runAndroidFactoryReset()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SecFactoryReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const-string v2, "SecFactoryReset"

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const-string v1, "SecFactoryReset"

    const-string v1, "SecFactoryReset"

    invoke-static {v2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, data:[B
    invoke-virtual {p0}, Lcom/android/settings/SecFactoryReset;->setEndModeData()[B

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/settings/SecFactoryReset;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 127
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V

    .line 138
    return-void
.end method

.method setEndModeData()[B
    .locals 8

    .prologue
    const-string v7, "IOException : dos.close() error"

    const-string v6, "SecFactoryReset"

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 68
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_1
    :goto_1
    return-object v4

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SecFactoryReset"

    const-string v4, "IOException : dos.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 74
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "SecFactoryReset"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    const/4 v4, 0x0

    .line 78
    if-eqz v1, :cond_1

    .line 79
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 80
    :catch_2
    move-exception v2

    .line 81
    const-string v5, "SecFactoryReset"

    const-string v5, "IOException : dos.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 78
    if-eqz v1, :cond_2

    .line 79
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 82
    :cond_2
    :goto_2
    throw v4

    .line 80
    :catch_3
    move-exception v2

    .line 81
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "SecFactoryReset"

    const-string v5, "IOException : dos.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
