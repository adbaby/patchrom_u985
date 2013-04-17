.class Lcom/android/internal/policy/impl/ItemImageViewManager$12;
.super Ljava/lang/Object;
.source "ItemImageViewManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 342
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$12;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 346
    .local v0, alphaF:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 347
    .local v1, alphaf:F
    const-string v2, "ItemViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alphaf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$12;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$600(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/UnlockViewManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->setAlpha(F)V

    .line 349
    return-void
.end method
