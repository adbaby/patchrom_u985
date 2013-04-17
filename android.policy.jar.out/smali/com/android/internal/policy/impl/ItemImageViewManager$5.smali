.class Lcom/android/internal/policy/impl/ItemImageViewManager$5;
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
    .line 264
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$5;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$5;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$600(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/UnlockViewManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->setVisibility(I)V

    .line 268
    return-void
.end method
