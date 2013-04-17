.class public Lcom/android/internal/policy/impl/UnlockViewManager;
.super Landroid/widget/FrameLayout;
.source "UnlockViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MSG_ROTATE_ANIMATOR:I = 0x2

.field private static final MSG_UNLOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UnlockViewManager"

.field private static mImgParticles:[Landroid/graphics/Bitmap;


# instance fields
.field handler:Landroid/os/Handler;

.field private isStartLongClick:Z

.field private isStartParticleAnimation:Z

.field private mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mImglock:Landroid/widget/ImageView;

.field private mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

.field private mMoveCircleR:I

.field private mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

.field private particleIds:[I

.field startX:F

.field startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mMoveCircleR:I

    .line 84
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->particleIds:[I

    .line 99
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    .line 101
    iput v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startX:F

    .line 102
    iput v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startY:F

    .line 210
    new-instance v0, Lcom/android/internal/policy/impl/UnlockViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/UnlockViewManager$1;-><init>(Lcom/android/internal/policy/impl/UnlockViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->handler:Landroid/os/Handler;

    .line 108
    return-void

    .line 84
    :array_0
    .array-data 0x4
        0x56t 0x4t 0x8t 0x1t
        0x57t 0x4t 0x8t 0x1t
        0x58t 0x4t 0x8t 0x1t
        0x59t 0x4t 0x8t 0x1t
        0x5at 0x4t 0x8t 0x1t
        0x5bt 0x4t 0x8t 0x1t
        0x5ct 0x4t 0x8t 0x1t
        0x5dt 0x4t 0x8t 0x1t
        0x5et 0x4t 0x8t 0x1t
        0x5ft 0x4t 0x8t 0x1t
        0x60t 0x4t 0x8t 0x1t
        0x61t 0x4t 0x8t 0x1t
        0x62t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mMoveCircleR:I

    .line 84
    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->particleIds:[I

    .line 99
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    .line 101
    iput v2, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startX:F

    .line 102
    iput v2, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startY:F

    .line 210
    new-instance v1, Lcom/android/internal/policy/impl/UnlockViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UnlockViewManager$1;-><init>(Lcom/android/internal/policy/impl/UnlockViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->handler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x105004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mMoveCircleR:I

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->loadBitmap()V

    .line 117
    return-void

    .line 84
    :array_0
    .array-data 0x4
        0x56t 0x4t 0x8t 0x1t
        0x57t 0x4t 0x8t 0x1t
        0x58t 0x4t 0x8t 0x1t
        0x59t 0x4t 0x8t 0x1t
        0x5at 0x4t 0x8t 0x1t
        0x5bt 0x4t 0x8t 0x1t
        0x5ct 0x4t 0x8t 0x1t
        0x5dt 0x4t 0x8t 0x1t
        0x5et 0x4t 0x8t 0x1t
        0x5ft 0x4t 0x8t 0x1t
        0x60t 0x4t 0x8t 0x1t
        0x61t 0x4t 0x8t 0x1t
        0x62t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnlockViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/UnlockViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UnlockViewManager;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UnlockViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->startParticleAnimation()V

    return-void
.end method

.method private coculateCircleR(FFFF)F
    .locals 3
    .parameter "endX"
    .parameter "endY"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 208
    sub-float v0, p1, p3

    sub-float v1, p1, p3

    mul-float/2addr v0, v1

    sub-float v1, p2, p4

    sub-float v2, p2, p4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private startParticleAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockViewCling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->hidePromptString()V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 245
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 246
    .local v0, message:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    return-void
.end method

.method private stopParticleAnimation()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveUnlockViewCling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->showPromptString()V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 136
    return-void
.end method

.method public getIsStartParticleAnimation()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    return v0
.end method

.method public hidePromptString()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/DrawTextView;->setVisibility(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public loadBitmap()V
    .locals 4

    .prologue
    .line 266
    sget-object v1, Lcom/android/internal/policy/impl/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->particleIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/android/internal/policy/impl/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->particleIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 270
    sget-object v1, Lcom/android/internal/policy/impl/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->particleIds:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    .line 276
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->particleIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/android/internal/policy/impl/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 141
    const v0, 0x1020358

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    const v0, 0x1020357

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/DrawTextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/DrawTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const-string v0, "UnlockViewManager"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 124
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 130
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 183
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startX:F

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startY:F

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->startOnLongClick()V

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->pokeWakelock()V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startX:F

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockViewManager;->coculateCircleR(FFFF)F

    move-result v1

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->stopOnLongClick()V

    .line 192
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startX:F

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->startY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockViewManager;->coculateCircleR(FFFF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mMoveCircleR:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->showItemImageView()V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->stopOnLongClick()V

    goto :goto_0

    .line 200
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartParticleAnimation:Z

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->stopParticleAnimation()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V
    .locals 0
    .parameter "lockscreen"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    .line 165
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 0
    .parameter "ztechangeableview"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    .line 168
    return-void
.end method

.method public showPromptString()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mPromptString:Lcom/android/internal/policy/impl/DrawTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/DrawTextView;->setVisibility(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public startOnLongClick()V
    .locals 4

    .prologue
    .line 250
    const-string v1, "lcj"

    const-string v2, "setOnLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    .line 252
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 253
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    return-void
.end method

.method public stopOnLongClick()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->isStartLongClick:Z

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method

.method public updateImgLock()V
    .locals 3

    .prologue
    .line 156
    const-string v0, "UnlockViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImgLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/Utilities;->hasMissNum()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/android/internal/policy/impl/Utilities;->hasMissNum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    const v1, 0x10802e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    const v1, 0x10802e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
