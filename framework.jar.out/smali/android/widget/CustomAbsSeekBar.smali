.class public abstract Landroid/widget/CustomAbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "CustomAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDisabledAlpha:F

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Landroid/widget/CustomAbsSeekBar;->mIsUserSeekable:Z

    .line 49
    iput v0, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    .line 58
    const-string v0, "CustomAbsSeekBar"

    iput-object v0, p0, Landroid/widget/CustomAbsSeekBar;->TAG:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Landroid/widget/CustomAbsSeekBar;->mIsUserSeekable:Z

    .line 49
    iput v0, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    .line 58
    const-string v0, "CustomAbsSeekBar"

    iput-object v0, p0, Landroid/widget/CustomAbsSeekBar;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v5, p0, Landroid/widget/CustomAbsSeekBar;->mIsUserSeekable:Z

    .line 49
    iput v5, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    .line 58
    const-string v3, "CustomAbsSeekBar"

    iput-object v3, p0, Landroid/widget/CustomAbsSeekBar;->TAG:Ljava/lang/String;

    .line 71
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/CustomAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 78
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/CustomAbsSeekBar;->setThumbOffset(I)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/CustomAbsSeekBar;->mDisabledAlpha:F

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/CustomAbsSeekBar;->mScaledTouchSlop:I

    .line 87
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 426
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 274
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 275
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 276
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 277
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 280
    iget v7, p0, Landroid/widget/CustomAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 282
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 285
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 286
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 287
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 288
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 295
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    return-void

    .line 290
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 291
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getWidth()I

    move-result v4

    .line 399
    .local v4, width:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 400
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 402
    .local v5, x:I
    const/4 v2, 0x0

    .line 403
    .local v2, progress:F
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_0

    .line 404
    const/4 v3, 0x0

    .line 412
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getMax()I

    move-result v1

    .line 413
    .local v1, max:I
    const/high16 v6, 0x3f80

    sub-float/2addr v6, v3

    int-to-float v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 415
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/CustomAbsSeekBar;->setProgress(IZ)V

    .line 416
    return-void

    .line 405
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 406
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 408
    .end local v3           #scale:F
    :cond_1
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 409
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/CustomAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 238
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 241
    .local v6, thumbHeight:I
    :goto_0
    iget v9, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 243
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getMax()I

    move-result v3

    .line 244
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 246
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 247
    if-eqz v5, :cond_0

    .line 248
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/CustomAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 250
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 251
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 253
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 238
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 244
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 258
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 260
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 264
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 265
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/CustomAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 202
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 209
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 211
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 204
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/CustomAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 195
    iget-object v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 196
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 301
    iget-object v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/CustomAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    iget-object v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 451
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getProgress()I

    move-result v0

    .line 453
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 468
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 455
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 456
    iget v2, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/CustomAbsSeekBar;->setProgress(IZ)V

    .line 457
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 461
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 462
    iget v2, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/CustomAbsSeekBar;->setProgress(IZ)V

    .line 463
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 313
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 316
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 317
    .local v2, dw:I
    const/4 v1, 0x0

    .line 318
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 319
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 320
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 321
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 323
    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 324
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 326
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/CustomAbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/CustomAbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/CustomAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 315
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 313
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 5
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    const/high16 v4, 0x3f80

    .line 215
    iget-object v1, p0, Landroid/widget/CustomAbsSeekBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressRefresh:scale == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sub-float v1, v4, p1

    invoke-super {p0, v1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 217
    iget-object v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 218
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getWidth()I

    move-result v1

    sub-float v2, v4, p1

    const/high16 v3, -0x8000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/CustomAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 225
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->invalidate()V

    .line 227
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Landroid/widget/CustomAbsSeekBar;->updateThumbPos(II)V

    .line 233
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CustomAbsSeekBar;->mIsDragging:Z

    .line 433
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CustomAbsSeekBar;->mIsDragging:Z

    .line 441
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-boolean v3, p0, Landroid/widget/CustomAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 394
    :cond_1
    :goto_0
    return v1

    .line 336
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/CustomAbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/CustomAbsSeekBar;->setPressed(Z)V

    .line 342
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/CustomAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 345
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onStartTrackingTouch()V

    .line 346
    invoke-direct {p0, p1}, Landroid/widget/CustomAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 347
    invoke-direct {p0}, Landroid/widget/CustomAbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/CustomAbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 353
    invoke-direct {p0, p1}, Landroid/widget/CustomAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 355
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 356
    .local v0, x:F
    iget v2, p0, Landroid/widget/CustomAbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/CustomAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 357
    invoke-virtual {p0, v1}, Landroid/widget/CustomAbsSeekBar;->setPressed(Z)V

    .line 358
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 359
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/CustomAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 361
    :cond_6
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onStartTrackingTouch()V

    .line 362
    invoke-direct {p0, p1}, Landroid/widget/CustomAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 363
    invoke-direct {p0}, Landroid/widget/CustomAbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 369
    .end local v0           #x:F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/CustomAbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 370
    invoke-direct {p0, p1}, Landroid/widget/CustomAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 371
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onStopTrackingTouch()V

    .line 372
    invoke-virtual {p0, v2}, Landroid/widget/CustomAbsSeekBar;->setPressed(Z)V

    .line 383
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 376
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onStartTrackingTouch()V

    .line 377
    invoke-direct {p0, p1}, Landroid/widget/CustomAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 378
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 387
    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/CustomAbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 388
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->onStopTrackingTouch()V

    .line 389
    invoke-virtual {p0, v2}, Landroid/widget/CustomAbsSeekBar;->setPressed(Z)V

    .line 391
    :cond_8
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 161
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    .line 162
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 180
    iget v0, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/CustomAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CustomAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 102
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 103
    iget-object v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    const/4 v0, 0x1

    .line 108
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/CustomAbsSeekBar;->mThumbOffset:I

    .line 117
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->requestLayout()V

    .line 123
    :cond_1
    iput-object p1, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->invalidate()V

    .line 125
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/CustomAbsSeekBar;->updateThumbPos(II)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 131
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 134
    .end local v1           #state:[I
    :cond_2
    return-void

    .line 106
    .end local v0           #needUpdate:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 150
    iput p1, p0, Landroid/widget/CustomAbsSeekBar;->mThumbOffset:I

    .line 151
    invoke-virtual {p0}, Landroid/widget/CustomAbsSeekBar;->invalidate()V

    .line 152
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/widget/CustomAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
