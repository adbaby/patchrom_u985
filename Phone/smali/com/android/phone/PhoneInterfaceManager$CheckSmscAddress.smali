.class Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSmscAddress"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mSmsc_string:Ljava/lang/String;

.field private final phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mDone:Z

    .line 754
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->phone:Lcom/android/internal/telephony/Phone;

    .line 755
    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mSmsc_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mSmsc_string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkSms()Ljava/lang/String;
    .locals 5

    .prologue
    .line 795
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 797
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v1

    .line 799
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 795
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 802
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 804
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 806
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 808
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 810
    :catch_1
    move-exception v1

    .line 812
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 815
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmsc_string is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mSmsc_string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mSmsc_string:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 759
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 760
    monitor-enter p0

    .line 761
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mHandler:Landroid/os/Handler;

    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 789
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 791
    return-void

    .line 789
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
