.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private makeDMfile()V
    .locals 9

    .prologue
    const-string v8, "writedatatonv - finally"

    const-string v4, "writedatatonv - call raf.close()"

    const-string v7, "SettingsIntentReceiver"

    .line 145
    const/4 v2, 0x0

    .line 148
    .local v2, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/samsungaccount.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, dmFileName:Ljava/lang/String;
    const-string v4, "SettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dmFileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 156
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .local v3, raf:Ljava/io/RandomAccessFile;
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v3, :cond_2

    .line 159
    :try_start_1
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 165
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 161
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 162
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 151
    .end local v0           #dmFileName:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 152
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - Exception in steam write"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v2, :cond_0

    .line 159
    :try_start_3
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 161
    :catch_2
    move-exception v4

    goto :goto_0

    .line 153
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 154
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - IOException in steam write"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v2, :cond_0

    .line 159
    :try_start_5
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 161
    :catch_4
    move-exception v4

    goto :goto_0

    .line 156
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v2, :cond_1

    .line 159
    :try_start_6
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 162
    :cond_1
    :goto_1
    throw v4

    .line 161
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 9
    .parameter "mtData"

    .prologue
    const-string v8, "writedatatonv - finally"

    const-string v4, "writedatatonv - call raf.close()"

    const-string v7, "SettingsIntentReceiver"

    .line 168
    const/4 v2, 0x0

    .line 171
    .local v2, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/mobiletracker.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, mtFileName:Ljava/lang/String;
    const-string v4, "SettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mtFileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 174
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 182
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v3, :cond_2

    .line 185
    :try_start_2
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 191
    .end local v1           #mtFileName:Ljava/lang/String;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 187
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #mtFileName:Ljava/lang/String;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 188
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 175
    .end local v1           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 176
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - Exception in steam write"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v2, :cond_0

    .line 185
    :try_start_4
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 187
    :catch_2
    move-exception v4

    goto :goto_0

    .line 177
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 178
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v2, :cond_0

    .line 185
    :try_start_6
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 187
    :catch_4
    move-exception v4

    goto :goto_0

    .line 179
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v4

    move-object v0, v4

    .line 180
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - IOException in steam write"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 182
    const-string v4, "SettingsIntentReceiver"

    const-string v4, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v2, :cond_0

    .line 185
    :try_start_8
    const-string v4, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - call raf.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 187
    :catch_6
    move-exception v4

    goto :goto_0

    .line 182
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    const-string v5, "SettingsIntentReceiver"

    const-string v5, "writedatatonv - finally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v2, :cond_1

    .line 185
    :try_start_9
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 188
    :cond_1
    :goto_5
    throw v4

    .line 187
    :catch_7
    move-exception v5

    goto :goto_5

    .line 182
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #mtFileName:Ljava/lang/String;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 179
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 177
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 175
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 215
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 216
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    move v3, v5

    .line 227
    :goto_1
    return v3

    .line 224
    :cond_1
    aget-object v3, v2, v6

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    .line 225
    goto :goto_1

    :cond_2
    move v3, v5

    .line 227
    goto :goto_1
.end method

.method public GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 194
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 196
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 197
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    move-object v3, v6

    .line 208
    :goto_1
    return-object v3

    .line 205
    :cond_1
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_2

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_3

    :cond_2
    move-object v3, v6

    .line 206
    goto :goto_1

    .line 208
    :cond_3
    aget-object v3, v2, v4

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "android.intent.action.REGISTRATION_COMPLETED"

    const-string v8, "SettingsIntentReceiver"

    .line 40
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 41
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    iput-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mVibrator:Landroid/os/Vibrator;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.wipe.MTDATA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    const-string v6, "SettingsIntentReceiver"

    const-string v6, "onReceive() : com.samsung.wipe.MTDATA"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 47
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "MTDATA"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, temp:Ljava/lang/String;
    const-string v6, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extras.getString(MTDATA) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mt_pwd"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mt_state"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v4           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "remote_control"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "samsung_signin"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    :cond_1
    return-void

    .line 56
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mt_state"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 58
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v4           #temp:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 59
    const-string v6, "SettingsIntentReceiver"

    const-string v6, "onReceive() : RINGER_MODE_CHANGED_ACTION"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    .restart local v1       #extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 63
    .local v3, ringer_mode:I
    if-eqz v1, :cond_4

    .line 64
    const-string v6, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 65
    const-string v6, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extras (ringer mode) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    const-string v6, "SettingsIntentReceiver"

    const-string v6, "Ringer mode : silent & set driving mode off"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_4
    iget-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 68
    const-string v6, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No extras (ringer mode) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    :pswitch_1
    const-string v6, "SettingsIntentReceiver"

    const-string v6, "Ringer mode : vibrate"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 81
    :pswitch_2
    const-string v6, "SettingsIntentReceiver"

    const-string v6, "Ringer mode : normal"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v6, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, oldIndex:I
    if-eq v2, v10, :cond_0

    .line 84
    iget-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 87
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #oldIndex:I
    .end local v3           #ringer_mode:I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_in_silent"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_6

    move v5, v10

    .line 89
    .local v5, vibeInSilent:Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 91
    .local v0, callsVibrateSetting:I
    if-eqz v5, :cond_7

    .line 92
    if-nez v0, :cond_0

    .line 93
    iget-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9, v11}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .end local v0           #callsVibrateSetting:I
    .end local v5           #vibeInSilent:Z
    :cond_6
    move v5, v9

    .line 88
    goto :goto_2

    .line 96
    .restart local v0       #callsVibrateSetting:I
    .restart local v5       #vibeInSilent:Z
    :cond_7
    if-ne v0, v11, :cond_0

    .line 97
    iget-object v6, p0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9, v9}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 102
    .end local v0           #callsVibrateSetting:I
    .end local v5           #vibeInSilent:Z
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 120
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.REGISTRATION_CANCELED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 124
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "shopdemo_on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 125
    const-string v6, "SettingsIntentReceiver"

    const-string v6, " +++++ displayForshop_onReceive  shopdemo_on++++++++++++++"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shopdemo"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 127
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "shopdemo_off"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 128
    const-string v6, "SettingsIntentReceiver"

    const-string v6, " +++++ displayForshop_onReceive  shopdemo_off++++++++++++++"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shopdemo"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 130
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "change_alert"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "remote_control"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "samsung_signin"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
