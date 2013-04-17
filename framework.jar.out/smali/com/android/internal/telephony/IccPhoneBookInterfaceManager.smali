.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_USIM_UPDATE_DONE:I = 0x4


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private indexIapForEmail:I

.field protected mBaseHandler:Landroid/os/Handler;

.field protected final mLock:Ljava/lang/Object;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected recordSize:[I

.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected success:Z

.field protected usimsuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    .line 53
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 123
    return-void
.end method

.method private changeEfForIccType(I)I
    .locals 2
    .parameter "efid"

    .prologue
    .line 895
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAdnFileld(I)I

    move-result p1

    .line 900
    .end local p1
    :cond_0
    return p1
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .parameter "efid"

    .prologue
    .line 792
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    const/16 p1, 0x4f30

    .line 799
    .end local p1
    :cond_1
    return p1
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-string/jumbo v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public abstract getAdditionalNumberCount()I
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 756
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 759
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 760
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 761
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 762
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 763
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 765
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    return-object v2

    .line 765
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

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getAdnSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestAdnSize(I)I

    move-result v0

    return v0
.end method

.method public getAdnTotalSize(I)I
    .locals 3
    .parameter "efid"

    .prologue
    .line 819
    const/4 v0, -0x1

    .line 820
    .local v0, mRecordTotalSize:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestAdnTotalSize(I)I

    move-result v0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnTotalSize................mRecordTotalSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 822
    return v0
.end method

.method public abstract getAnrRecordsSize(I)I
.end method

.method public abstract getEmailRecordsSize(I)I
.end method

.method public getExt1Size(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestEXT1Size(I)I

    move-result v0

    return v0
.end method

.method public abstract getExtensionSize(I)I
.end method

.method public getGetAdnFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAdnFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetAnr2Fileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAnr2Fileld(I)I

    move-result v0

    return v0
.end method

.method public getGetAnr3Fileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAnr3Fileld(I)I

    move-result v0

    return v0
.end method

.method public getGetAnrFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAnrFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetEmailFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetEmailFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetIapFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetIapFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetSneFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetSneFileld(I)I

    move-result v0

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method public getIsEmailSpaceFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "Name"
    .parameter "Num"
    .parameter "Anr"
    .parameter "Anr2"
    .parameter "Anr3"
    .parameter "email"
    .parameter "sne"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsEmailSpaceFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIsSupANR()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupANR()Z

    move-result v0

    return v0
.end method

.method public getIsSupANR2()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupANR2()Z

    move-result v0

    return v0
.end method

.method public getIsSupANR3()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupANR3()Z

    move-result v0

    return v0
.end method

.method public getIsSupEmail()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupEmail()Z

    move-result v0

    return v0
.end method

.method public getIsSupIAP()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupIAP()Z

    move-result v0

    return v0
.end method

.method public getIsSupSNE()Z
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupSNE()Z

    move-result v0

    return v0
.end method

.method public getIsSupUsim()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupUsim()Z

    move-result v0

    return v0
.end method

.method public getIsSuppEmailIap()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupportEmailIap()Z

    move-result v0

    return v0
.end method

.method public getPbrFileld()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestPbrFileld()I

    move-result v0

    return v0
.end method

.method public getSimCardType()Z
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    return v0
.end method

.method public abstract getSimSize(I)I
.end method

.method public abstract getSimTotalSize(I)I
.end method

.method public abstract getSneRecordsSize(I)I
.end method

.method public abstract getTagRecordsSize(I)I
.end method

.method public abstract getUsimAdnRecordsSize(I)I
.end method

.method public getUsimAdnSize()I
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestUsimAdnSize()I

    move-result v0

    return v0
.end method

.method public abstract getUsimSize(I)I
.end method

.method public abstract isEmailSpaceFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isSupportANR()Z
.end method

.method public abstract isSupportEmail()Z
.end method

.method public abstract isSupportSne()Z
.end method

.method public abstract isSupportUsim()Z
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 131
    return-void
.end method

.method public updateAdnEmailRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 25
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "newNumber3"
    .parameter "newNumber4"
    .parameter "newNickname"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 554
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 557
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result p1

    .line 558
    const/4 v7, 0x0

    .line 559
    .local v7, newEmails:[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    .line 560
    const/4 v5, 0x0

    aput-object p4, v7, v5

    .line 561
    const/16 v20, -0x1

    .line 562
    .local v20, recordNumber:I
    const/16 v23, 0x0

    .line 565
    .local v23, pbrIndex:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAdnEmailRecordsInEfByIndex: efid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pin2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 568
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .local v4, newAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 570
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 571
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 572
    new-instance v24, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 573
    .local v24, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v5, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 576
    .local v14, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move/from16 v9, p1

    move/from16 v10, v23

    move-object v11, v4

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnByIndexEx(IILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)I

    move-result v20

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAdnEmailRecordsInEfByIndex recordNumber="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " index ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 583
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_1

    .line 584
    const/4 v5, 0x0

    monitor-exit v6

    .line 661
    :goto_0
    return v5

    .line 586
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY 3G before efid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-eqz v5, :cond_e

    const/16 v5, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v5, :cond_e

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result p1

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY 3G success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v21, p10

    .line 594
    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmailRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 600
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupIAP()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 601
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetIapFileld(I)I

    move-result p1

    .line 602
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_3

    .line 603
    const/4 v5, 0x0

    goto :goto_0

    .line 586
    .end local v14           #response:Landroid/os/Message;
    .end local v24           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 596
    .restart local v14       #response:Landroid/os/Message;
    .restart local v24       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    const-string p4, ""

    .line 597
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    goto :goto_1

    .line 605
    :cond_3
    const-string v5, ""

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_5

    const-string v5, ""

    move-object/from16 v0, p5

    if-ne v0, v5, :cond_5

    .line 606
    const/16 v19, -0x1

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v21, p10

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIapRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    .line 614
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 615
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result p1

    .line 616
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_7

    .line 617
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 608
    :cond_5
    if-nez v7, :cond_6

    const-string v5, ""

    move-object/from16 v0, p5

    if-eq v0, v5, :cond_4

    .line 609
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    move/from16 v19, v0

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v21, p10

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIapRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    goto :goto_2

    .line 619
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move/from16 v18, p1

    move-object/from16 v19, v4

    move-object/from16 v21, p10

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z

    .line 624
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR2()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 625
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnr2Fileld(I)I

    move-result p1

    .line 626
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_9

    .line 627
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 621
    :cond_8
    const-string p5, ""

    goto :goto_3

    .line 629
    :cond_9
    const/16 v22, 0x1

    move-object/from16 v17, p0

    move/from16 v18, p1

    move-object/from16 v19, v4

    move-object/from16 v21, p10

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z

    .line 634
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR3()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 635
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnr3Fileld(I)I

    move-result p1

    .line 636
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_b

    .line 637
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 631
    :cond_a
    const-string p6, ""

    goto :goto_4

    .line 639
    :cond_b
    const/16 v22, 0x2

    move-object/from16 v17, p0

    move/from16 v18, p1

    move-object/from16 v19, v4

    move-object/from16 v21, p10

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z

    .line 644
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupSNE()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 645
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetSneFileld(I)I

    move-result p1

    .line 646
    const-string v5, "ZLian"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " update record,support sne efid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_d

    .line 648
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 641
    :cond_c
    const-string p7, ""

    goto :goto_5

    .line 650
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p10

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateSneRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)Z

    .line 657
    :cond_e
    :goto_6
    const/16 v5, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v5, :cond_f

    .line 658
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    .line 660
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY 3G success , usimsuccess="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    goto/16 :goto_0

    .line 652
    :cond_10
    const-string p8, ""

    goto :goto_6
.end method

.method public updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 22
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmail"
    .parameter "oldAnr"
    .parameter "oldNumber3"
    .parameter "oldNumber4"
    .parameter "oldNickname"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "newNumber3"
    .parameter "newNumber4"
    .parameter "newNickname"
    .parameter "pin2"

    .prologue
    .line 429
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 431
    .local v20, result:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result p1

    .line 438
    const/16 v16, 0x0

    .line 439
    .local v16, oldEmails:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 440
    const/4 v4, 0x0

    aput-object p4, v16, v4

    .line 441
    const/4 v6, 0x0

    .line 442
    .local v6, newEmails:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    .line 443
    const/4 v4, 0x0

    aput-object p11, v6, v4

    .line 444
    const/16 v18, -0x1

    .line 445
    .local v18, recordNumber:I
    const/16 v17, 0x0

    .line 448
    .local v17, pbrIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAdnEmailRecordsInEfBySearch: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pin2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 451
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 453
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 454
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 455
    new-instance v21, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 456
    .local v21, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 457
    .local v19, response:Landroid/os/Message;
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, v16

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .local v7, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move/from16 v9, p1

    move/from16 v10, v17

    move-object v11, v7

    move-object v12, v3

    move-object/from16 v13, p16

    move-object/from16 v14, v19

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnBySearch(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 459
    .end local v18           #recordNumber:I
    .local v13, recordNumber:I
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 461
    const/4 v4, 0x1

    aput v13, v20, v4

    .line 464
    const/4 v4, -0x1

    if-ne v13, v4, :cond_1

    .line 465
    const/4 v4, 0x0

    const/4 v8, 0x0

    aput v8, v20, v4

    .line 466
    monitor-exit v5

    .line 541
    :goto_0
    return-object v20

    .line 468
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MY 3G before efid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    .line 474
    const/4 v4, -0x1

    if-ne v13, v4, :cond_2

    .line 475
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v20, v4

    goto :goto_0

    .line 468
    .end local v7           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v13           #recordNumber:I
    .end local v19           #response:Landroid/os/Message;
    .end local v21           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v18       #recordNumber:I
    :catchall_0
    move-exception v4

    move/from16 v13, v18

    .end local v18           #recordNumber:I
    .restart local v13       #recordNumber:I
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 479
    .restart local v7       #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v19       #response:Landroid/os/Message;
    .restart local v21       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 480
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result p1

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MY 3G success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p16

    .line 482
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmailRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 488
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupIAP()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetIapFileld(I)I

    move-result p1

    .line 490
    const-string v4, ""

    move-object/from16 v0, p11

    if-ne v0, v4, :cond_7

    const-string v4, ""

    move-object/from16 v0, p12

    if-ne v0, v4, :cond_7

    .line 491
    const/4 v12, -0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p16

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIapRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    .line 499
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 500
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result p1

    .line 502
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object v12, v3

    move-object/from16 v14, p16

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z

    .line 507
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR2()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 508
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnr2Fileld(I)I

    move-result p1

    .line 509
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object v12, v3

    move-object/from16 v14, p16

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z

    .line 514
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR3()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 515
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnr3Fileld(I)I

    move-result p1

    .line 516
    const/4 v15, 0x2

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object v12, v3

    move-object/from16 v14, p16

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z

    .line 521
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupSNE()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetSneFileld(I)I

    move-result p1

    .line 523
    const-string v4, "ZLian"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " update record,support sne efid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p16

    invoke-virtual {v0, v1, v3, v13, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateSneRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)Z

    .line 531
    :cond_4
    :goto_7
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 532
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    .line 534
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MY 3G success , usimsuccess="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-eqz v4, :cond_d

    .line 537
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v20, v4

    goto/16 :goto_0

    .line 484
    :cond_6
    const-string p11, ""

    .line 485
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    goto/16 :goto_2

    .line 493
    :cond_7
    if-nez v6, :cond_8

    const-string v4, ""

    move-object/from16 v0, p12

    if-eq v0, v4, :cond_3

    .line 494
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p16

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIapRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    goto/16 :goto_3

    .line 504
    :cond_9
    const-string p12, ""

    goto/16 :goto_4

    .line 511
    :cond_a
    const-string p13, ""

    goto/16 :goto_5

    .line 518
    :cond_b
    const-string p14, ""

    goto/16 :goto_6

    .line 526
    :cond_c
    const-string p15, ""

    goto :goto_7

    .line 539
    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v20, v4

    goto/16 :goto_0

    .line 468
    .end local v7           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v19           #response:Landroid/os/Message;
    .end local v21           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_1
    move-exception v4

    goto/16 :goto_1
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    const/4 v2, 0x0

    .line 694
    .local v2, pbrIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 697
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 698
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 700
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 701
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 702
    .local v6, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnByIndexEx(IILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)I

    .line 705
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 706
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v0

    .line 706
    .end local v3           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v6           #response:Landroid/os/Message;
    .end local v7           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    const/4 v3, 0x0

    .line 225
    .local v3, pbrIndex:I
    const/4 v8, -0x1

    .line 227
    .local v8, recordNumber:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 233
    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 236
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 237
    .local v9, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 238
    .local v7, response:Landroid/os/Message;
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v4, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v4, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p5

    invoke-direct {v5, p4, v0}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v5, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v2, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnBySearch(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v8

    .line 242
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 243
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAdnRecordsInEfBySearch: recordNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 245
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v1

    .line 243
    .end local v4           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #response:Landroid/os/Message;
    .end local v9           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 13
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"

    .prologue
    .line 169
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 171
    .local v10, result:[I
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_0
    const/4 v4, 0x0

    .line 179
    .local v4, pbrIndex:I
    const/4 v9, -0x1

    .line 181
    .local v9, recordNumber:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 187
    iget-object v12, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 189
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 190
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 191
    .local v11, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 192
    .local v8, response:Landroid/os/Message;
    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p3

    invoke-direct {v5, p2, v0}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v5, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v6, v0, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v6, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v3, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnBySearch(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v9

    .line 196
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 197
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdnRecordsInEfBySearchEx: recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x1

    aput v9, v10, v2

    .line 203
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-eqz v2, :cond_1

    .line 204
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v10, v2

    .line 208
    :goto_0
    return-object v10

    .line 197
    .end local v5           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v6           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #response:Landroid/os/Message;
    .end local v11           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 206
    .restart local v5       #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v6       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v8       #response:Landroid/os/Message;
    .restart local v11       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v10, v2

    goto :goto_0
.end method

.method public updateAnrRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;I)Z
    .locals 10
    .parameter "efid"
    .parameter "newAdn"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "anrIndex"

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    if-nez p2, :cond_1

    .line 391
    :goto_0
    return v0

    .line 377
    :cond_1
    const/4 v2, 0x0

    .line 379
    .local v2, pbrIndex:I
    iget-object v9, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    .line 382
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 383
    .local v8, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 385
    .local v6, response:Landroid/os/Message;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 386
    monitor-exit v9

    goto :goto_0

    .line 390
    .end local v6           #response:Landroid/os/Message;
    .end local v8           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 388
    .restart local v6       #response:Landroid/os/Message;
    .restart local v8       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/AdnRecordCache;->updateAnrByIndex(IILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;I)V

    .line 389
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 390
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    goto :goto_0
.end method

.method public updateEmailRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 12
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "recordNumber"
    .parameter "pin2"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    const/4 v9, 0x0

    .line 307
    .local v9, newEmails:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 308
    const/4 v1, 0x0

    aput-object p4, v9, v1

    .line 309
    const/4 v3, 0x0

    .line 311
    .local v3, pbrIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEmailRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 313
    iget-object v11, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    .line 316
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 317
    .local v10, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 318
    .local v8, response:Landroid/os/Message;
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v4, p2, p3, v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 319
    .local v4, newAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v1, -0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_1

    .line 320
    const/4 v1, 0x0

    monitor-exit v11

    .line 332
    :goto_0
    return v1

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSuppEmailIap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v2, 0x1

    move/from16 v0, p5

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->searchEmailIndex(IZ)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    .line 324
    iget v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/AdnRecord;->setIndexIap(I)V

    .line 328
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    monitor-exit v11

    goto :goto_0

    .line 331
    .end local v4           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #response:Landroid/os/Message;
    .end local v10           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 326
    .restart local v4       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v8       #response:Landroid/os/Message;
    .restart local v10       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_1
    move/from16 v0, p5

    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    goto :goto_1

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    move v2, p1

    move/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/AdnRecordCache;->updateEmailByIndex(IILcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    .line 330
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 331
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    goto :goto_0
.end method

.method public updateEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "pin2"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    const/4 v10, 0x0

    .line 261
    .local v10, newEmails:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    .line 262
    const/4 v1, 0x0

    aput-object p4, v10, v1

    .line 263
    const/4 v5, -0x1

    .line 264
    .local v5, index:I
    const/4 v3, 0x0

    .line 265
    .local v3, pbrIndex:I
    const/4 v9, 0x0

    .line 267
    .local v9, indexInEmail:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAdnEmailRecordsInEfBySearch: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 269
    iget-object v12, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 272
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 273
    .local v11, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 275
    .local v8, response:Landroid/os/Message;
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p3

    invoke-direct {v4, p2, v0, v10}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    .local v4, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/AdnRecord;)I

    move-result v5

    .line 277
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result p1

    .line 278
    const/4 v1, -0x1

    if-ne v5, v1, :cond_1

    .line 279
    const/4 v1, 0x0

    monitor-exit v12

    .line 291
    :goto_0
    return v1

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSuppEmailIap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/telephony/AdnRecordCache;->searchEmailIndex(IZ)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    .line 283
    iget v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/AdnRecord;->setIndexIap(I)V

    .line 287
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 290
    .end local v4           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #response:Landroid/os/Message;
    .end local v11           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 285
    .restart local v4       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v8       #response:Landroid/os/Message;
    .restart local v11       #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_1
    iput v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    goto :goto_1

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->indexIapForEmail:I

    move v2, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/AdnRecordCache;->updateEmailByIndex(IILcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    .line 289
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 290
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    goto :goto_0
.end method

.method public updateIapRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newIap"
    .parameter "recordNumber"
    .parameter "pin2"

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    const/4 v2, 0x0

    .line 348
    .local v2, pbrIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIapRecordsInEfByIndex: efid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " recordNumber="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 349
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 351
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    .line 352
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 353
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 355
    .local v6, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v3, p2, p3, p4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v1, -0x1

    if-ne p5, v1, :cond_1

    .line 357
    monitor-exit v8

    .line 362
    :goto_0
    return v0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordCache;->updateIapByIndex(IILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 360
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 361
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    goto :goto_0

    .line 361
    .end local v3           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v6           #response:Landroid/os/Message;
    .end local v7           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateSneRecordsInEfByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "newAdn"
    .parameter "recordNumber"
    .parameter "pin2"

    .prologue
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    const/4 v2, 0x0

    .line 406
    .local v2, pbrIndex:I
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 408
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    .line 409
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 410
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 411
    .local v6, response:Landroid/os/Message;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 412
    monitor-exit v8

    .line 417
    :goto_0
    return v0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordCache;->updateSneByIndex(IILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 415
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 416
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimsuccess:Z

    goto :goto_0

    .line 416
    .end local v6           #response:Landroid/os/Message;
    .end local v7           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 781
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public getAdnCapacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getAdnCapacity()I

    move-result v0

    return v0
.end method

.method public getFreeAdn()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeAdn()I

    move-result v0

    return v0
.end method
