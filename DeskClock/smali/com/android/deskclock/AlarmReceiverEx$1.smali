.class Lcom/android/deskclock/AlarmReceiverEx$1;
.super Ljava/lang/Object;
.source "AlarmReceiverEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmReceiverEx;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmReceiverEx;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmReceiverEx;Landroid/os/PowerManager$WakeLock;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->this$0:Lcom/android/deskclock/AlarmReceiverEx;

    iput-object p2, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    iput-object p3, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 56
    iget-object v0, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->this$0:Lcom/android/deskclock/AlarmReceiverEx;

    iget-object v1, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/deskclock/AlarmReceiverEx;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmReceiverEx;->access$000(Lcom/android/deskclock/AlarmReceiverEx;Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lcom/android/deskclock/AlarmReceiverEx$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 58
    return-void
.end method
