.class Lcom/android/internal/policy/impl/ItemImageViewManager$10;
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
    .line 322
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$10;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 326
    .local v0, alphaF:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 327
    .local v1, alphaf:F
    const-string v3, "ItemViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alphaf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$10;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$500(Lcom/android/internal/policy/impl/ItemImageViewManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$10;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/ItemImageViewManager;->access$500(Lcom/android/internal/policy/impl/ItemImageViewManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method
