.class Lcom/android/internal/policy/impl/UnlockViewManager$1;
.super Landroid/os/Handler;
.source "UnlockViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnlockViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 212
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 227
    return-void

    .line 213
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->access$000(Lcom/android/internal/policy/impl/UnlockViewManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 215
    .local v0, mVibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/UnlockViewManager;->access$002(Lcom/android/internal/policy/impl/UnlockViewManager;Z)Z

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->access$100(Lcom/android/internal/policy/impl/UnlockViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissUnlockCling(Landroid/view/View;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->access$100(Lcom/android/internal/policy/impl/UnlockViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->gotoUnlock()V

    goto :goto_0

    .line 223
    .end local v0           #mVibrator:Landroid/os/Vibrator;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/UnlockViewManager;

    #calls: Lcom/android/internal/policy/impl/UnlockViewManager;->startParticleAnimation()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->access$200(Lcom/android/internal/policy/impl/UnlockViewManager;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
