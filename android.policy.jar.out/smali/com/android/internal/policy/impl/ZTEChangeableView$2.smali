.class Lcom/android/internal/policy/impl/ZTEChangeableView$2;
.super Landroid/content/BroadcastReceiver;
.source "ZTEChangeableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ZTEChangeableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$2;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    const-string v1, "ZTEChangeableView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "ZTEChangeableView"

    const-string v2, "BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$2;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/ZTEChangeableView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->access$000(Lcom/android/internal/policy/impl/ZTEChangeableView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$2;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/ZTEChangeableView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->access$000(Lcom/android/internal/policy/impl/ZTEChangeableView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$2;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/ZTEChangeableView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ZTEChangeableView;->access$000(Lcom/android/internal/policy/impl/ZTEChangeableView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    :cond_0
    return-void
.end method
