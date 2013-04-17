.class public Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointInfo"
.end annotation


# instance fields
.field private action:I

.field private angle:F

.field private angleIsCalculated:Z

.field private diameter:F

.field private diameterIsCalculated:Z

.field private diameterSq:F

.field private diameterSqIsCalculated:Z

.field private dx:F

.field private dy:F

.field private eventTime:J

.field private isDown:Z

.field private isMultiTouch:Z

.field private numPoints:I

.field private pointerIdxs:[I

.field private pressureMid:F

.field private pressures:[F

.field private xMid:F

.field private xs:[F

.field private yMid:F

.field private ys:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    .line 489
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    .line 490
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressures:[F

    .line 491
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pointerIdxs:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 485
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V

    return-void
.end method

.method private julery_isqrt(I)I
    .locals 6
    .parameter "val"

    .prologue
    .line 623
    const/4 v3, 0x0

    .local v3, g:I
    const v0, 0x8000

    .local v0, b:I
    const/16 v1, 0xf

    .local v1, bshft:I
    move v2, v1

    .line 625
    .end local v1           #bshft:I
    .local v2, bshft:I
    :goto_0
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v0

    add-int/lit8 v1, v2, -0x1

    .end local v2           #bshft:I
    .restart local v1       #bshft:I
    shl-int v4, v5, v2

    .local v4, temp:I
    if-lt p1, v4, :cond_0

    .line 626
    add-int/2addr v3, v0

    .line 627
    sub-int/2addr p1, v4

    .line 629
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_1

    .line 630
    return v3

    :cond_1
    move v2, v1

    .end local v1           #bshft:I
    .restart local v2       #bshft:I
    goto :goto_0
.end method

.method private set(I[F[F[F[IIZJ)V
    .locals 5
    .parameter "numPoints"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "pointerIdxs"
    .parameter "action"
    .parameter "isDown"
    .parameter "eventTime"

    .prologue
    .line 514
    const-string v3, "MultiTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got here 8 - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, p2, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const/4 v2, 0x1

    aget v2, p2, v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    const/4 v2, 0x1

    aget v2, p3, v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iput-wide p8, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->eventTime:J

    .line 517
    iput p6, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->action:I

    .line 518
    iput p1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->numPoints:I

    .line 519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_2

    .line 520
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    aget v3, p2, v0

    aput v3, v2, v0

    .line 521
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    aget v3, p3, v0

    aput v3, v2, v0

    .line 522
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressures:[F

    aget v3, p4, v0

    aput v3, v2, v0

    .line 523
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pointerIdxs:[I

    aget v3, p5, v0

    aput v3, v2, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 514
    .end local v0           #i:I
    :cond_0
    const/4 v2, 0x0

    aget v2, p2, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget v2, p3, v2

    goto :goto_1

    .line 525
    .restart local v0       #i:I
    :cond_2
    iput-boolean p7, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown:Z

    .line 526
    const/4 v2, 0x2

    if-lt p1, v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 528
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v2, :cond_7

    .line 529
    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xMid:F

    .line 530
    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->yMid:F

    .line 531
    const/4 v2, 0x0

    aget v2, p4, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressureMid:F

    .line 532
    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x0

    aget v3, p2, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    .line 533
    const/4 v2, 0x1

    aget v2, p3, v2

    const/4 v3, 0x0

    aget v3, p3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    .line 534
    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    iget v3, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    iget v4, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 535
    .local v1, spaceOfPoint:F
    invoke-static {}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1100()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    if-eqz p7, :cond_5

    invoke-static {}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1200()Z

    move-result v2

    if-nez v2, :cond_5

    .line 536
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1102(F)F

    .line 537
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1202(Z)Z

    .line 563
    :cond_3
    :goto_4
    const-string v2, "lcj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spaceOfPoint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v1           #spaceOfPoint:F
    :goto_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 573
    return-void

    .line 526
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 538
    .restart local v1       #spaceOfPoint:F
    :cond_5
    if-nez p7, :cond_3

    .line 540
    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->pokeWakelock()V

    .line 541
    invoke-static {}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1100()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    .line 542
    const-string v2, "lcj"

    const-string v3, "open-----------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1102(F)F

    .line 545
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1202(Z)Z

    .line 546
    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ZTEChangeableView;->isUnlockViewManagerVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ZTEChangeableView;->showItemImageView()V

    goto :goto_4

    .line 550
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1100()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 551
    const-string v2, "lcj"

    const-string v3, "close-----------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1102(F)F

    .line 553
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiTouchController;->access$1202(Z)Z

    .line 554
    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ZTEChangeableView;->isItemImageViewManagerVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchInAnimation()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ItemImageViewManager;->isStartPinchOutAnimation()Z

    move-result v2

    if-nez v2, :cond_3

    .line 558
    sget-object v2, Lcom/android/internal/policy/impl/MultiTouchController;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ZTEChangeableView;->showUnlockView()V

    goto/16 :goto_4

    .line 566
    .end local v1           #spaceOfPoint:F
    :cond_7
    const/4 v2, 0x0

    aget v2, p2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xMid:F

    .line 567
    const/4 v2, 0x0

    aget v2, p3, v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->yMid:F

    .line 568
    const/4 v2, 0x0

    aget v2, p4, v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressureMid:F

    .line 569
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    iput v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    goto/16 :goto_5
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->action:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 737
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method public getMultiTouchAngle()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 669
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angleIsCalculated:Z

    if-nez v0, :cond_0

    .line 670
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v0, :cond_1

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angle:F

    .line 674
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 676
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angle:F

    return v0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angle:F

    goto :goto_0
.end method

.method public getMultiTouchDiameter()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    if-nez v2, :cond_1

    .line 645
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v2, :cond_2

    .line 646
    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    .line 659
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 661
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    return v1

    .line 651
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->getMultiTouchDiameterSq()F

    move-result v0

    .line 652
    .local v0, diamSq:F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    :goto_1
    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    .line 654
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 655
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    .line 656
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 657
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    goto :goto_0

    .line 652
    :cond_4
    const/high16 v1, 0x4380

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->julery_isqrt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4180

    div-float/2addr v1, v2

    goto :goto_1
.end method

.method public getMultiTouchDiameterSq()F
    .locals 3

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    if-nez v0, :cond_0

    .line 636
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    iget v2, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSq:F

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 639
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSq:F

    return v0

    .line 636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchHeight()F
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchWidth()F
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumTouchPoints()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->numPoints:I

    return v0
.end method

.method public getPointerIndices()[I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pointerIdxs:[I

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressureMid:F

    return v0
.end method

.method public getPressures()[F
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressures:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xMid:F

    return v0
.end method

.method public getXs()[F
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    return-object v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->yMid:F

    return v0
.end method

.method public getYs()[F
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown:Z

    return v0
.end method

.method public isMultiTouch()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    return v0
.end method

.method public set(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 580
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->numPoints:I

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->numPoints:I

    .line 581
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->numPoints:I

    if-ge v0, v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    iget-object v2, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 583
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    iget-object v2, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->ys:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressures:[F

    iget-object v2, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressures:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pointerIdxs:[I

    iget-object v2, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pointerIdxs:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xMid:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->xMid:F

    .line 588
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->yMid:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->yMid:F

    .line 589
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressureMid:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->pressureMid:F

    .line 590
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dx:F

    .line 591
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->dy:F

    .line 592
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameter:F

    .line 593
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSq:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSq:F

    .line 594
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angle:F

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angle:F

    .line 595
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isDown:Z

    .line 596
    iget v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->action:I

    iput v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->action:I

    .line 597
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 598
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 599
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 600
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 601
    iget-wide v1, p1, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->eventTime:J

    iput-wide v1, p0, Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;->eventTime:J

    .line 602
    return-void
.end method
