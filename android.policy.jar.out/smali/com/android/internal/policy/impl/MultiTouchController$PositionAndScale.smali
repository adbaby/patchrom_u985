.class public Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionAndScale"
.end annotation


# instance fields
.field private angle:F

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private updateAngle:Z

.field private updateScale:Z

.field private updateScaleXY:Z

.field private xOff:F

.field private yOff:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 746
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScale:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateAngle:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleY:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 746
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->angle:F

    return v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateAngle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->angle:F

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScale:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleX:F

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleY:F

    goto :goto_0
.end method

.method public getXOff()F
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method protected set(FFFFFF)V
    .locals 3
    .parameter "xOff"
    .parameter "yOff"
    .parameter "scale"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "angle"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 772
    iput p1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->xOff:F

    .line 773
    iput p2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->yOff:F

    .line 774
    cmpl-float v1, p3, v2

    if-nez v1, :cond_0

    move p3, v0

    .end local p3
    :cond_0
    iput p3, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F

    .line 775
    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    move p4, v0

    .end local p4
    :cond_1
    iput p4, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleX:F

    .line 776
    cmpl-float v1, p5, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleY:F

    .line 777
    iput p6, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->angle:F

    .line 778
    return-void

    :cond_2
    move v0, p5

    .line 776
    goto :goto_0
.end method

.method public set(FFZFZFFZF)V
    .locals 3
    .parameter "xOff"
    .parameter "yOff"
    .parameter "updateScale"
    .parameter "scale"
    .parameter "updateScaleXY"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "updateAngle"
    .parameter "angle"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 759
    iput p1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->xOff:F

    .line 760
    iput p2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->yOff:F

    .line 761
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScale:Z

    .line 762
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    .end local p4
    :cond_0
    iput p4, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scale:F

    .line 763
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    .line 764
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    .end local p6
    :cond_1
    iput p6, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleX:F

    .line 765
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->scaleY:F

    .line 766
    iput-boolean p8, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->updateAngle:Z

    .line 767
    iput p9, p0, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->angle:F

    .line 768
    return-void

    :cond_2
    move v0, p7

    .line 765
    goto :goto_0
.end method
