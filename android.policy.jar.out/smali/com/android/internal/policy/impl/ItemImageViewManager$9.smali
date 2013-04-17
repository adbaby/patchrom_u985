.class Lcom/android/internal/policy/impl/ItemImageViewManager$9;
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
    .line 316
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$9;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$9;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->setVisibility(I)V

    .line 320
    return-void
.end method
