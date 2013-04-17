.class Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
.super Lcom/android/internal/policy/impl/LockScreen;
.source "MiFavorChangeableLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DISMISS_CLING_DURATION:I = 0xfa

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final PREFS_KEY:Ljava/lang/String; = "com.android.internal.policy.impl.prefs"

.field private static final SHOW_CLING_DURATION:I = 0x226

.field private static final TAG:Ljava/lang/String; = "MiFavorSlideLockScreen"


# instance fields
.field private isRemoveImageViewCling:Z

.field private isRemoveUnlockCling:Z

.field private isUpdateIconNumber:Z

.field private mAnimationScale:Landroid/view/animation/ScaleAnimation;

.field private mBtnImageViewDissCling:Landroid/widget/Button;

.field private mBtnUnlockDissCling:Landroid/widget/Button;

.field private mClock:Lcom/android/internal/policy/impl/ZTEDigitalClock;

.field private mImageViewCling:Lcom/android/internal/policy/impl/Cling;

.field private mImgLock:Landroid/widget/ImageView;

.field private final mOnResumeAnimation:Ljava/lang/Runnable;

.field private mUnlockCling:Lcom/android/internal/policy/impl/Cling;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isUpdateIconNumber:Z

    .line 165
    new-instance v0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mOnResumeAnimation:Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const v1, 0x10802e9

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setChargingIcon(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showFirstRunUnlockCling()V

    .line 91
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showPromptString()V

    .line 92
    const v0, 0x1020360

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mBtnUnlockDissCling:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mBtnUnlockDissCling:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x102035c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mBtnImageViewDissCling:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mBtnImageViewDissCling:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x10202b7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Cling;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mUnlockCling:Lcom/android/internal/policy/impl/Cling;

    .line 97
    const v0, 0x10202b8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Cling;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mImageViewCling:Lcom/android/internal/policy/impl/Cling;

    .line 98
    const v0, 0x1020064

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ZTEDigitalClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mClock:Lcom/android/internal/policy/impl/ZTEDigitalClock;

    .line 99
    const v0, 0x1020358

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mImgLock:Landroid/widget/ImageView;

    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->createAnimation()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mImgLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    const v2, 0x3f7ae148

    const/high16 v6, 0x3f00

    .line 103
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mAnimationScale:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 106
    return-void
.end method

.method private dismissCling(Lcom/android/internal/policy/impl/Cling;Ljava/lang/String;I)V
    .locals 5
    .parameter "cling"
    .parameter "flag"
    .parameter "duration"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 270
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    new-instance v1, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;Lcom/android/internal/policy/impl/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 280
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private initCling(I[IZILjava/lang/String;)Lcom/android/internal/policy/impl/Cling;
    .locals 4
    .parameter "clingId"
    .parameter "positionData"
    .parameter "animate"
    .parameter "delay"
    .parameter "clingstring"

    .prologue
    const/high16 v3, 0x3f80

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Cling;

    .line 248
    .local v0, cling:Lcom/android/internal/policy/impl/Cling;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p2, p5}, Lcom/android/internal/policy/impl/Cling;->init([ILjava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setVisibility(I)V

    .line 251
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    if-eqz p3, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Cling;->buildLayer()V

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setAlpha(F)V

    .line 255
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x226

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/Cling;->setAlpha(F)V

    goto :goto_0
.end method

.method private removeCling(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, cling:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 285
    .local v1, parent:Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 292
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private showPromptString()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->showPromptString()V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->cleanUp()V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->cleanUp()V

    .line 321
    return-void
.end method

.method protected createLockScreenLayout(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const v5, 0x1090057

    const/4 v4, 0x1

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "MiFavorSlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "enterprise_U985"

    invoke-static {}, Lcom/zte/zteConfig;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 130
    invoke-virtual {v0, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    const v1, 0x1090058

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method protected createUnlockWidget()V
    .locals 4

    .prologue
    .line 109
    const v1, 0x10202b4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/ZTEChangeableView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;-><init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    .line 114
    .local v0, mZTEChangeableViewMethods:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 119
    const-string v2, "MiFavorSlideLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** LockScreen accel is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 119
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method public dismissImageViewCling(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 300
    const v1, 0x10202b8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Cling;

    .line 301
    .local v0, cling:Lcom/android/internal/policy/impl/Cling;
    const-string v1, "cling_lockscreen_imageview_dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissCling(Lcom/android/internal/policy/impl/Cling;Ljava/lang/String;I)V

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling:Z

    .line 303
    return-void
.end method

.method public dismissUnlockCling(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 294
    const v1, 0x10202b7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Cling;

    .line 295
    .local v0, cling:Lcom/android/internal/policy/impl/Cling;
    const-string v1, "cling_lockscreen_unlock_dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissCling(Lcom/android/internal/policy/impl/Cling;Ljava/lang/String;I)V

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    .line 297
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showPromptString()V

    .line 298
    return-void
.end method

.method public gotoUnlock()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 143
    :cond_0
    return-void
.end method

.method public hideImageViewCling()V
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling:Z

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mImageViewCling:Lcom/android/internal/policy/impl/Cling;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setVisibility(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public hideUnlockCling()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mUnlockCling:Lcom/android/internal/policy/impl/Cling;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setVisibility(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public isRemoveImageViewCling()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling:Z

    return v0
.end method

.method public isRemoveUnlockViewCling()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mBtnUnlockDissCling:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissUnlockCling(Landroid/view/View;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mBtnImageViewDissCling:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissImageViewCling(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/internal/policy/impl/LockScreen;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->showPromptString()V

    .line 155
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isUpdateIconNumber:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->updateIconBitmapAndNumber()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->updateImgLock()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isUpdateIconNumber:Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mOnResumeAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 148
    :cond_0
    return-void
.end method

.method public showFirstRunImageViewCling()V
    .locals 7

    .prologue
    const v1, 0x10202b8

    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cling_lockscreen_imageview_dismissed"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, clingDismissed:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v2, 0x0

    const-string v5, "lockscreen_imageview_cling"

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->initCling(I[IZILjava/lang/String;)Lcom/android/internal/policy/impl/Cling;

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->removeCling(I)V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling:Z

    goto :goto_0
.end method

.method public showFirstRunUnlockCling()V
    .locals 7

    .prologue
    const v1, 0x10202b7

    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cling_lockscreen_unlock_dismissed"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, clingDismissed:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v2, 0x0

    const-string v5, "lockscreen_unlock_cling"

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->initCling(I[IZILjava/lang/String;)Lcom/android/internal/policy/impl/Cling;

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->removeCling(I)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    goto :goto_0
.end method

.method public showImageViewCling()V
    .locals 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mImageViewCling:Lcom/android/internal/policy/impl/Cling;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setVisibility(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public showUnlockCling()V
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockCling:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mUnlockCling:Lcom/android/internal/policy/impl/Cling;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setVisibility(I)V

    .line 219
    :cond_0
    return-void
.end method
