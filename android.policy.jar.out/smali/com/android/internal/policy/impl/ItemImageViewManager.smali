.class public Lcom/android/internal/policy/impl/ItemImageViewManager;
.super Landroid/widget/FrameLayout;
.source "ItemImageViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;,
        Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION_TIME:I = 0x3e8

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ItemViewManager"


# instance fields
.field private circleR:F

.field private endCircleR:F

.field private imageSourceHight:I

.field private imageSourceWidth:I

.field private initDegree:F

.field private isStartPinchInAnimation:Z

.field private isStartPinchOutAnimation:Z

.field private mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

.field private mAppComponentName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mImageView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/ItemImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewBg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mItemView1:Lcom/android/internal/policy/impl/ItemImageView;

.field private mItemView2:Lcom/android/internal/policy/impl/ItemImageView;

.field private mItemView3:Lcom/android/internal/policy/impl/ItemImageView;

.field private mItemView4:Lcom/android/internal/policy/impl/ItemImageView;

.field private mItemView5:Lcom/android/internal/policy/impl/ItemImageView;

.field private mItemView6:Lcom/android/internal/policy/impl/ItemImageView;

.field private mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

.field private mOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;

.field private mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;

.field private mTranslateInAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateOutAnimator:Landroid/animation/ValueAnimator;

.field private mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

.field private offsetDegree:F

.field private startCircleR:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAppComponentName:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    .line 45
    const v0, 0x3f060a92

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->initDegree:F

    .line 46
    const v0, 0x3f860a92

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->offsetDegree:F

    .line 47
    iput v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    .line 48
    iput v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->startCircleR:F

    .line 49
    const/high16 v0, 0x430a

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->endCircleR:F

    .line 50
    iput v3, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    .line 51
    iput v3, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;

    .line 58
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0xf0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAppComponentName:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    .line 45
    const v1, 0x3f060a92

    iput v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->initDegree:F

    .line 46
    const v1, 0x3f860a92

    iput v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->offsetDegree:F

    .line 47
    iput v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    .line 48
    iput v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->startCircleR:F

    .line 49
    const/high16 v1, 0x430a

    iput v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->endCircleR:F

    .line 50
    iput v4, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    .line 51
    iput v4, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    .line 56
    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;

    .line 57
    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;

    .line 58
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 59
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z

    .line 78
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x105004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->endCircleR:F

    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->createPinchOutAnimation()V

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->createPinchInAnimation()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/ZTEChangeableView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/ItemImageViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/ItemImageViewManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/ItemImageViewManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/ItemImageViewManager;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->reLayout(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/ItemImageViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/ItemImageViewManager;)Lcom/android/internal/policy/impl/UnlockViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/ItemImageViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z

    return p1
.end method

.method private createPinchInAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x2

    .line 294
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchInTypeEvaluator;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->startCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->endCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$7;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$8;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$9;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$10;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$11;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$12;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$12;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 355
    return-void

    .line 315
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 336
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private createPinchOutAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x2

    .line 221
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->startCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->endCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$1;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$2;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$3;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$4;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$5;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/ItemImageViewManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager$6;-><init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 283
    return-void

    .line 243
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 263
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initImageView()V
    .locals 2

    .prologue
    .line 87
    const v0, 0x102034b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/ItemImageView;

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setItemId(I)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageView;->initRingMode()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const v0, 0x102034d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/ItemImageView;

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setItemId(I)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const v0, 0x102034f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/ItemImageView;

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setItemId(I)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const v0, 0x1020351

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/ItemImageView;

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setItemId(I)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const v0, 0x1020353

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView5:Lcom/android/internal/policy/impl/ItemImageView;

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView5:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setItemId(I)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView5:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const v0, 0x1020355

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/ItemImageView;

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setItemId(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private initImageViewBg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x102034a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x102034c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x102034e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x1020350

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x1020352

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x1020354

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    .line 123
    return-void
.end method

.method private reLayout(F)V
    .locals 9
    .parameter "r"

    .prologue
    .line 381
    const/4 v3, 0x0

    .line 382
    .local v3, itemLeft:I
    const/4 v5, 0x0

    .line 383
    .local v5, itemTop:I
    const/4 v4, 0x0

    .line 384
    .local v4, itemRight:I
    const/4 v2, 0x0

    .line 385
    .local v2, itemBottom:I
    const/4 v0, 0x0

    .line 386
    .local v0, Degree:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 387
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->initDegree:F

    iget v7, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->offsetDegree:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 388
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterX:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 389
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    add-int v4, v3, v6

    .line 390
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterY:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, p1

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 391
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    add-int v2, v5, v6

    .line 392
    iget-object v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method private resetLayout()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    .line 398
    iget v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->reLayout(F)V

    .line 399
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ItemImageView;->cleanUp()V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    return-void
.end method

.method public isStartPinchInAnimation()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z

    return v0
.end method

.method public isStartPinchOutAnimation()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->initImageView()V

    .line 155
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->initImageViewBg()V

    .line 158
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 129
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 130
    sub-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterX:F

    .line 131
    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterY:F

    .line 132
    const-string v6, "ItemViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCenterX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCenterY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, itemLeft:I
    const/4 v5, 0x0

    .line 135
    .local v5, itemTop:I
    const/4 v4, 0x0

    .line 136
    .local v4, itemRight:I
    const/4 v2, 0x0

    .line 137
    .local v2, itemBottom:I
    const/4 v0, 0x0

    .line 138
    .local v0, Degree:F
    const-string v6, "ItemViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bottom="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 140
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->initDegree:F

    iget v7, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->offsetDegree:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 141
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterX:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 142
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceWidth:I

    add-int v4, v3, v6

    .line 143
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mCenterY:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->circleR:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 144
    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->imageSourceHight:I

    add-int v2, v5, v6

    .line 145
    iget-object v6, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 183
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 185
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->pokeWakelock()V

    .line 186
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->showUnlockView()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V
    .locals 2
    .parameter "lockscreen"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/ItemImageView;->setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public setUnlockViewManager(Lcom/android/internal/policy/impl/UnlockViewManager;)V
    .locals 0
    .parameter "unlockviewmanager"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    .line 169
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 2
    .parameter "ztechangeableview"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/ItemImageView;->setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public startPinchInAnimation()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->stopTimer()V

    .line 361
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation:Z

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 364
    return-void
.end method

.method public startPinchOutAnimation()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation:Z

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 289
    return-void
.end method

.method public updateIconBitmap()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ItemImageView;->updateIconBitmap()V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public updateIconBitmapAndNumber()V
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ItemImageView;->updateIconBitmapAndNumber()V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method
