.class Lcom/android/internal/policy/impl/ItemImageViewManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemImageViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ItemImageViewManager;->createPinchOutAnimation()V
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
    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissUnlockCling(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showFirstRunImageViewCling()V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showImageViewCling()V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$100(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/ZTEChangeableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->startTimer()V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$202(Lcom/android/internal/policy/impl/ItemImageViewManager;Z)Z

    .line 231
    return-void
.end method
