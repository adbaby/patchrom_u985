.class Lcom/android/internal/policy/impl/ItemImageViewManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemImageViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ItemImageViewManager;->createPinchInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$7;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$7;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$702(Lcom/android/internal/policy/impl/ItemImageViewManager;Z)Z

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$7;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissImageViewCling(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$7;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showUnlockCling()V

    .line 302
    return-void
.end method
