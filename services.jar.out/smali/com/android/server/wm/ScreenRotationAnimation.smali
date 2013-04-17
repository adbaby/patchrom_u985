.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"


# instance fields
.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mEnterAnimation:Landroid/view/animation/Animation;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mExitAnimation:Landroid/view/animation/Animation;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mHeight:I

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mSnapshotDeltaRotation:I

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mSnapshotRotation:I

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;ZIII)V
    .locals 15
    .parameter "context"
    .parameter "display"
    .parameter "session"
    .parameter "inTransaction"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "originalRotation"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 58
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 61
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 62
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 65
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 69
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 70
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 76
    .local v14, screenshot:Landroid/graphics/Bitmap;
    if-nez v14, :cond_0

    .line 148
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    .line 83
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 84
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 90
    if-nez p4, :cond_1

    .line 93
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 98
    :cond_1
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    const/4 v3, 0x0

    const-string v4, "FreezeSurface"

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 100
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    if-nez p4, :cond_3

    .line 141
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 146
    :cond_3
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 105
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_1
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_8

    .line 117
    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .local v11, dirty:Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 120
    .local v10, c:Landroid/graphics/Canvas;
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v11}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v10

    .line 126
    :goto_2
    if-nez v10, :cond_7

    .line 127
    :try_start_4
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Null surface canvas"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    if-nez p4, :cond_5

    .line 141
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 146
    :cond_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 106
    .end local v10           #c:Landroid/graphics/Canvas;
    .end local v11           #dirty:Landroid/graphics/Rect;
    :catch_0
    move-exception v12

    .line 107
    .local v12, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_5
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 140
    .end local v12           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v1

    if-nez p4, :cond_6

    .line 141
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 146
    :cond_6
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    throw v1

    .line 121
    .restart local v10       #c:Landroid/graphics/Canvas;
    .restart local v11       #dirty:Landroid/graphics/Rect;
    :catch_1
    move-exception v12

    .line 122
    .local v12, e:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to lock surface"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 123
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v12

    .line 124
    .local v12, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to lock surface"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 133
    .end local v12           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_7
    new-instance v13, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 134
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 135
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v14, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .end local v10           #c:Landroid/graphics/Canvas;
    .end local v11           #dirty:Landroid/graphics/Rect;
    .end local v13           #paint:Landroid/graphics/Paint;
    :cond_8
    if-nez p4, :cond_9

    .line 141
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 146
    :cond_9
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/4 v1, 0x0

    .line 183
    packed-switch p0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 185
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 188
    :pswitch_1
    const/high16 v0, 0x42b4

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 189
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 192
    :pswitch_2
    const/high16 v0, 0x4334

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 193
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 196
    :pswitch_3
    const/high16 v0, 0x4387

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 197
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 155
    sub-int v0, p1, p0

    .line 156
    .local v0, delta:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 157
    :cond_0
    return v0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFII)Z
    .locals 11
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    .line 221
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v6, :cond_0

    .line 223
    const/4 v6, 0x0

    .line 291
    :goto_0
    return v6

    .line 227
    :cond_0
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v6, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 229
    .local v0, delta:I
    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 262
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 264
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 266
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 268
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 269
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 270
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 271
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 275
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 278
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 279
    .local v5, w:I
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 280
    .local v2, h:I
    new-instance v4, Landroid/graphics/Rect;

    neg-int v6, v5

    neg-int v7, v2

    mul-int/lit8 v8, v5, 0x2

    mul-int/lit8 v9, v2, 0x2

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 281
    .local v4, outer:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    .local v3, inner:Landroid/graphics/Rect;
    new-instance v6, Lcom/android/server/wm/BlackFrame;

    const v7, 0x1e8480

    invoke-direct {v6, p1, v4, v3, v7}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 291
    .end local v2           #h:I
    .end local v3           #inner:Landroid/graphics/Rect;
    .end local v4           #outer:Landroid/graphics/Rect;
    .end local v5           #w:I
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 231
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002d

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 233
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002c

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 237
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0033

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 239
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0032

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 243
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 245
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 249
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0031

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 251
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0030

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    const-string v6, "ScreenRotationAnimation"

    const-string v7, "Unable to allocate black surface"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_2

    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v6

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 300
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 307
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 311
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 313
    :cond_3
    return-void
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    .line 204
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 209
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 210
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 214
    return-void
.end method

.method setSnapshotTransform(Landroid/graphics/Matrix;F)V
    .locals 6
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 179
    :cond_0
    return-void
.end method

.method public stepAnimation(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v2

    .line 324
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v4, :cond_4

    .line 325
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_2

    .line 326
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    .line 329
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 331
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 334
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, moreExit:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    .line 337
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 339
    if-nez v1, :cond_5

    .line 341
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 342
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 343
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 344
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_5

    .line 345
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->hide()V

    .line 350
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, moreEnter:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    .line 353
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 354
    if-nez v0, :cond_8

    .line 355
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 356
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 357
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 358
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_6

    .line 359
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 368
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 369
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 371
    if-nez v0, :cond_7

    if-eqz v1, :cond_0

    :cond_7
    move v2, v3

    goto/16 :goto_0

    .line 362
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_6

    .line 363
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method
