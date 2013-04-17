.class public Lcom/android/deskclock/AlarmReceiverEx;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiverEx.java"


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmReceiverEx;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmReceiverEx;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v9, 0x1000

    const/4 v4, -0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keen  AlarmReceiverEx!intent.getAction()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    const-string v2, "com.android.deskclock.ALARM_SET_NEXT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    const-string v0, "young keen setNextAlert end"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

   .end method

# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmReceiverEx;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .local v5, result:Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .local v2, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Lcom/android/deskclock/AlarmReceiverEx$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/AlarmReceiverEx$1;-><init>(Lcom/android/deskclock/AlarmReceiverEx;Landroid/os/PowerManager$WakeLock;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
