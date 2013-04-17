.class public Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "SimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 37
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 43
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    const-string v1, "GSM"

    const-string v2, "SimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdditionalNumberCount()I
    .locals 1

    .prologue
    .line 188
    const-string v0, "getAdditionalNumberCount: simphone run. "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupANR3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 192
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupANR2()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupANR()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSize: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 58
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 64
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    return-object v2

    .line 66
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAnrRecordsSize(I)I
    .locals 6
    .parameter "efid"

    .prologue
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 136
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 139
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result p1

    .line 140
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 142
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 144
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 146
    monitor-exit v4

    .line 147
    const/16 v0, 0xa

    .line 148
    .local v0, recordAnrSize:I
    return v0

    .line 146
    .end local v0           #recordAnrSize:I
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getEmailRecordsSize(I)I
    .locals 7
    .parameter "efid"

    .prologue
    const/4 v6, 0x0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 113
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 116
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result p1

    .line 117
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 119
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 122
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v3, v6

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v3, v6

    add-int/lit8 v0, v3, -0x2

    .line 129
    .local v0, recordEmailSize:I
    :goto_0
    return v0

    .line 122
    .end local v0           #recordEmailSize:I
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 127
    .restart local v1       #response:Landroid/os/Message;
    .restart local v2       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    const/16 v0, 0xa

    .restart local v0       #recordEmailSize:I
    goto :goto_0
.end method

.method public getExtensionSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v0

    return v0
.end method

.method public getSimSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getAdnSize(I)I

    move-result v0

    return v0
.end method

.method public getSimTotalSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getAdnTotalSize(I)I

    move-result v0

    return v0
.end method

.method public getSneRecordsSize(I)I
    .locals 7
    .parameter "efid"

    .prologue
    const/4 v6, 0x0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSneRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 155
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 157
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getGetSneFileld(I)I

    move-result p1

    .line 158
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 160
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 161
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 163
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v3, v6

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v3, v6

    add-int/lit8 v0, v3, -0x2

    .line 169
    .local v0, recordSneSize:I
    :goto_0
    return v0

    .line 163
    .end local v0           #recordSneSize:I
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 167
    .restart local v1       #response:Landroid/os/Message;
    .restart local v2       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    const/16 v0, 0xa

    .restart local v0       #recordSneSize:I
    goto :goto_0
.end method

.method public getTagRecordsSize(I)I
    .locals 7
    .parameter "efid"

    .prologue
    const/4 v6, 0x0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTagRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 91
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 93
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 95
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 97
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 99
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v3, v6

    const/16 v4, 0xe

    if-le v3, v4, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v3, v6

    add-int/lit8 v0, v3, -0xe

    .line 106
    .local v0, recordAdnSize:I
    :goto_0
    return v0

    .line 99
    .end local v0           #recordAdnSize:I
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 104
    .restart local v1       #response:Landroid/os/Message;
    .restart local v2       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    const/16 v0, 0xe

    .restart local v0       #recordAdnSize:I
    goto :goto_0
.end method

.method public getUsimAdnRecordsSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getPbrFileld()I

    move-result v0

    return v0
.end method

.method public getUsimSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getUsimAdnSize()I

    move-result v0

    return v0
.end method

.method public isEmailSpaceFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "Name"
    .parameter "Number"
    .parameter "ANR"
    .parameter "ANR2"
    .parameter "ANR3"
    .parameter "Email"
    .parameter "Sne"

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsEmailSpaceFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportANR()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupANR()Z

    move-result v0

    return v0
.end method

.method public isSupportEmail()Z
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupEmail()Z

    move-result v0

    return v0
.end method

.method public isSupportSne()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupSNE()Z

    move-result v0

    return v0
.end method

.method public isSupportUsim()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getIsSupUsim()Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 195
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 199
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
