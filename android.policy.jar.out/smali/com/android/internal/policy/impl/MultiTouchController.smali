.class public Lcom/android/internal/policy/impl/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;,
        Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;,
        Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field private static final DEBUG:Z = true

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0xa

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NOTHING:I = 0x0

.field private static final MODE_PINCH:I = 0x2

.field private static isInit:Z

.field static mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

.field static mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

.field static mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

.field private static m_findPointerIndex:Ljava/lang/reflect/Method;

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static newSpaceOfPoint:F

.field private static final pointerIdxs:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

.field private mMode:I

.field private mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startAngleMinusPinchAngle:F

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    .line 160
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/policy/impl/MultiTouchController;->newSpaceOfPoint:F

    .line 161
    sput-boolean v3, Lcom/android/internal/policy/impl/MultiTouchController;->isInit:Z

    .line 206
    const/4 v2, 0x6

    sput v2, Lcom/android/internal/policy/impl/MultiTouchController;->ACTION_POINTER_UP:I

    .line 207
    const/16 v2, 0x8

    sput v2, Lcom/android/internal/policy/impl/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    .line 210
    const/4 v1, 0x0

    .line 213
    .local v1, succeeded:Z
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 214
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "findPointerIndex"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_findPointerIndex:Ljava/lang/reflect/Method;

    .line 215
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    .line 216
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 217
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 218
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 219
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    .line 220
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v1, 0x1

    .line 225
    :goto_0
    sput-boolean v1, Lcom/android/internal/policy/impl/MultiTouchController;->multiTouchSupported:Z

    .line 226
    sget-boolean v2, Lcom/android/internal/policy/impl/MultiTouchController;->multiTouchSupported:Z

    if-eqz v2, :cond_0

    .line 230
    :try_start_1
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_UP"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/MultiTouchController;->ACTION_POINTER_UP:I

    .line 231
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :cond_0
    :goto_1
    new-array v2, v7, [F

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->xVals:[F

    .line 240
    new-array v2, v7, [F

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->yVals:[F

    .line 241
    new-array v2, v7, [F

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->pressureVals:[F

    .line 242
    new-array v2, v7, [I

    sput-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->pointerIdxs:[I

    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    .local p1, objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;,"Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MultiTouchController;-><init>(Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .parameter
    .parameter "handleSingleTouchEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    .local p1, objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;,"Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    .line 172
    new-instance v0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    .line 173
    new-instance v0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    .line 174
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->handleSingleTouchEvents:Z

    .line 175
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;

    .line 177
    return-void
.end method

.method static synthetic access$1100()F
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/internal/policy/impl/MultiTouchController;->newSpaceOfPoint:F

    return v0
.end method

.method static synthetic access$1102(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/android/internal/policy/impl/MultiTouchController;->newSpaceOfPoint:F

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiTouchController;->isInit:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/internal/policy/impl/MultiTouchController;->isInit:Z

    return p0
.end method

.method private anchorAtThisPositionAndScale()V
    .locals 4

    .prologue
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    const/high16 v2, 0x3f80

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$000(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    div-float v0, v2, v1

    .line 337
    .local v0, currScaleInv:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->extractCurrPtInfo()V

    .line 338
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtX:F

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->xOff:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$500(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startPosX:F

    .line 339
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtY:F

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->yOff:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$600(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startPosY:F

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$400(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtDiam:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startScaleOverPinchDiam:F

    .line 341
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleX:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$700(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startScaleXOverPinchWidth:F

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleY:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$800(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startScaleYOverPinchHeight:F

    .line 343
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->angle:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$900(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtAng:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startAngleMinusPinchAngle:F

    .line 345
    const-string v1, "lcj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currScaleInv = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrPtX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrPtY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrXformx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->xOff:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$500(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrXformy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->yOff:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$600(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 335
    .end local v0           #currScaleInv:F
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$400(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$400(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v1

    goto/16 :goto_0
.end method

.method private decodeTouchEvent(I[F[F[F[IIZJ)V
    .locals 12
    .parameter "pointerCount"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "pointerIdxs"
    .parameter "action"
    .parameter "down"
    .parameter "eventTime"

    .prologue
    .line 308
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    const-string v1, "MultiTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got here 5 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    .line 312
    .local v11, tmp:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    .line 313
    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    #calls: Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V
    invoke-static/range {v1 .. v10}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->access$300(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->multiTouchController()V

    .line 317
    return-void
.end method

.method private extractCurrPtInfo()V
    .locals 4

    .prologue
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    const/high16 v3, 0x41f0

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtX:F

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtY:F

    .line 117
    const v2, 0x41aa6666

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$000(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtDiam:F

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScaleXY:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$100(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtWidth:F

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScaleXY:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$100(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtHeight:F

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateAngle:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$200(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtAng:F

    .line 121
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchDiameter()F

    move-result v0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchAngle()F

    move-result v1

    goto :goto_3
.end method

.method private multiTouchController()V
    .locals 9

    .prologue
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    const/4 v8, 0x0

    const/high16 v7, 0x4220

    const/high16 v6, 0x41f0

    const/high16 v5, 0x3f00

    const-wide/16 v3, 0x14

    .line 381
    const-string v0, "MultiTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got here 6 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getNumTouchPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    const-string v0, "MultiTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got here 7 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getNumTouchPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;->getDraggableObjectAtPoint(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)V

    .line 393
    const-string v0, "lcj"

    const-string v1, "11111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleEndTime:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iput v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)V

    goto/16 :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    .line 412
    const-string v0, "lcj"

    const-string v1, "222222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    .line 416
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 423
    const-string v0, "lcj"

    const-string v1, "3333333333333333333"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_0

    .line 427
    :cond_3
    const-string v0, "MultiTouch"

    const-string v1, "MODE_DRAG111111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->performDragOrPinch()V

    goto/16 :goto_0

    .line 435
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    iput v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->objectCanvas:Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)V

    goto/16 :goto_0

    .line 445
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    .line 447
    const-string v0, "lcj"

    const-string v1, "4444444444444444444"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    .line 451
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v5

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mPrevPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v5

    cmpl-float v0, v0, v7

    if-lez v0, :cond_8

    .line 461
    :cond_7
    const-string v0, "lcj"

    const-string v1, "55555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    .line 464
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 466
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPt:Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->eventTime:J
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->access$1000(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    .line 468
    const-string v0, "lcj"

    const-string v1, "666666666666666666"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_0

    .line 472
    :cond_9
    const-string v0, "MultiTouch"

    const-string v1, "MODE_PINCH1111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->performDragOrPinch()V

    goto/16 :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDragOrPinch()V
    .locals 9

    .prologue
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    const/high16 v7, 0x3f80

    .line 352
    const-string v0, "MultiTouch"

    const-string v8, "performDragOrPinch"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$000(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    .local v7, currScale:F
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiTouchController;->extractCurrPtInfo()V

    .line 359
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtX:F

    iget v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startPosX:F

    mul-float/2addr v8, v7

    sub-float v1, v0, v8

    .line 360
    .local v1, newPosX:F
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtY:F

    iget v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startPosY:F

    mul-float/2addr v8, v7

    sub-float v2, v0, v8

    .line 361
    .local v2, newPosY:F
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startScaleOverPinchDiam:F

    iget v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtDiam:F

    mul-float v3, v0, v8

    .line 362
    .local v3, newScale:F
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startScaleXOverPinchWidth:F

    iget v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtWidth:F

    mul-float v4, v0, v8

    .line 363
    .local v4, newScaleX:F
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startScaleYOverPinchHeight:F

    iget v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtHeight:F

    mul-float v5, v0, v8

    .line 364
    .local v5, newScaleY:F
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->startAngleMinusPinchAngle:F

    iget v8, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrPtAng:F

    add-float v6, v0, v8

    .line 367
    .local v6, newAngle:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->set(FFFFFF)V

    goto :goto_0

    .line 357
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newScale:F
    .end local v4           #newScaleX:F
    .end local v5           #newScaleY:F
    .end local v6           #newAngle:F
    .end local v7           #currScale:F
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$400(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v0

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->mCurrXform:Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;

    #getter for: Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->access$400(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F

    move-result v7

    goto :goto_1
.end method


# virtual methods
.method protected getHandleSingleTouchEvents()Z
    .locals 1

    .prologue
    .line 192
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController;->handleSingleTouchEvents:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 247
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiTouchController;->multiTouchSupported:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 249
    .local v2, pointerCount:I
    :goto_0
    const-string v1, "MultiTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got here 1 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/MultiTouchController;->multiTouchSupported:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/MultiTouchController;->handleSingleTouchEvents:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/MultiTouchController;->mMode:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/MultiTouchController;->handleSingleTouchEvents:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 252
    const/4 v1, 0x0

    .line 301
    .end local v2           #pointerCount:I
    :goto_1
    return v1

    .line 247
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 254
    .restart local v2       #pointerCount:I
    :cond_1
    const-string v1, "MultiTouch"

    const-string v3, "Got here 2"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 258
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    div-int v14, v1, v2

    .line 259
    .local v14, histLen:I
    const-string v1, "MultiTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "histLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v13, 0x0

    .local v13, histIdx:I
    :goto_2
    if-gt v13, v14, :cond_10

    .line 262
    if-ge v13, v14, :cond_4

    const/16 v17, 0x1

    .line 263
    .local v17, processingHist:Z
    :goto_3
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiTouchController;->multiTouchSupported:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_8

    .line 268
    :cond_2
    const-string v1, "MultiTouch"

    const-string v3, "Got here 3"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->xVals:[F

    const/4 v4, 0x0

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    :goto_4
    aput v1, v3, v4

    .line 270
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->yVals:[F

    const/4 v4, 0x0

    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    :goto_5
    aput v1, v3, v4

    .line 271
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->pressureVals:[F

    const/4 v4, 0x0

    if-eqz v17, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v1

    :goto_6
    aput v1, v3, v4

    .line 290
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->xVals:[F

    sget-object v4, Lcom/android/internal/policy/impl/MultiTouchController;->yVals:[F

    sget-object v5, Lcom/android/internal/policy/impl/MultiTouchController;->pressureVals:[F

    sget-object v6, Lcom/android/internal/policy/impl/MultiTouchController;->pointerIdxs:[I

    if-eqz v17, :cond_c

    const/4 v7, 0x2

    :goto_7
    if-eqz v17, :cond_d

    const/4 v8, 0x1

    :goto_8
    if-eqz v17, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v9

    :goto_9
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/policy/impl/MultiTouchController;->decodeTouchEvent(I[F[F[F[IIZJ)V

    .line 260
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 262
    .end local v17           #processingHist:Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 269
    .restart local v17       #processingHist:Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_4

    .line 270
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_5

    .line 271
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    goto :goto_6

    .line 275
    :cond_8
    const-string v1, "MultiTouch"

    const-string v3, "Got here 4"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v1, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 277
    .local v16, numPointers:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_a
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 278
    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_findPointerIndex:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 279
    .local v18, ptrIdx:I
    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->pointerIdxs:[I

    aput v18, v1, v15

    .line 283
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->xVals:[F

    if-eqz v17, :cond_9

    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v15

    .line 284
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->yVals:[F

    if-eqz v17, :cond_a

    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v15

    .line 285
    sget-object v3, Lcom/android/internal/policy/impl/MultiTouchController;->pressureVals:[F

    if-eqz v17, :cond_b

    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v15

    .line 277
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 283
    :cond_9
    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 284
    :cond_a
    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    .line 285
    :cond_b
    sget-object v1, Lcom/android/internal/policy/impl/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    .end local v15           #i:I
    .end local v16           #numPointers:I
    .end local v18           #ptrIdx:I
    :cond_c
    move v7, v11

    .line 290
    goto/16 :goto_7

    :cond_d
    const/4 v1, 0x1

    if-eq v11, v1, :cond_e

    const/4 v1, 0x1

    sget v8, Lcom/android/internal/policy/impl/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int/2addr v1, v8

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v11

    sget v8, Lcom/android/internal/policy/impl/MultiTouchController;->ACTION_POINTER_UP:I

    if-eq v1, v8, :cond_e

    const/4 v1, 0x3

    if-eq v11, v1, :cond_e

    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    goto/16 :goto_9

    .line 297
    .end local v17           #processingHist:Z
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 298
    .end local v2           #pointerCount:I
    .end local v11           #action:I
    .end local v13           #histIdx:I
    .end local v14           #histLen:I
    :catch_0
    move-exception v12

    .line 300
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "MultiTouch"

    const-string v3, "onTouchEvent() failed"

    invoke-static {v1, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method protected setHandleSingleTouchEvents(Z)V
    .locals 0
    .parameter "handleSingleTouchEvents"

    .prologue
    .line 185
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiTouchController;->handleSingleTouchEvents:Z

    .line 186
    return-void
.end method

.method public setItemImageViewManager(Lcom/android/internal/policy/impl/ItemImageViewManager;)V
    .locals 0
    .parameter "itemimageviewmanager"

    .prologue
    .line 871
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    sput-object p1, Lcom/android/internal/policy/impl/MultiTouchController;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    .line 872
    return-void
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V
    .locals 0
    .parameter "lockscreen"

    .prologue
    .line 868
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    sput-object p1, Lcom/android/internal/policy/impl/MultiTouchController;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    .line 869
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 0
    .parameter "ztechangeableview"

    .prologue
    .line 865
    .local p0, this:Lcom/android/internal/policy/impl/MultiTouchController;,"Lcom/android/internal/policy/impl/MultiTouchController<TT;>;"
    sput-object p1, Lcom/android/internal/policy/impl/MultiTouchController;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    .line 866
    return-void
.end method
