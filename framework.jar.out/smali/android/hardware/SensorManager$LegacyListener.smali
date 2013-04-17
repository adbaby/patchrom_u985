.class Landroid/hardware/SensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    .locals 2
    .parameter
    .parameter "target"

    .prologue
    .line 1690
    iput-object p1, p0, Landroid/hardware/SensorManager$LegacyListener;->this$0:Landroid/hardware/SensorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1683
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mValues:[F

    .line 1687
    new-instance v0, Landroid/hardware/SensorManager$LmsFilter;

    iget-object v1, p0, Landroid/hardware/SensorManager$LegacyListener;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {v0, v1}, Landroid/hardware/SensorManager$LmsFilter;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

    .line 1691
    iput-object p2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 1692
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1693
    return-void
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 8
    .parameter "sensor"
    .parameter "values"
    .parameter "orientation"

    .prologue
    const/high16 v7, 0x4334

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1749
    aget v0, p2, v4

    .line 1750
    .local v0, x:F
    aget v1, p2, v5

    .line 1751
    .local v1, y:F
    aget v2, p2, v6

    .line 1753
    .local v2, z:F
    sparse-switch p1, :sswitch_data_0

    .line 1768
    :goto_0
    aput v0, p2, v4

    .line 1769
    aput v1, p2, v5

    .line 1770
    aput v2, p2, v6

    .line 1771
    const/4 v3, 0x3

    aput v0, p2, v3

    .line 1772
    const/4 v3, 0x4

    aput v1, p2, v3

    .line 1773
    const/4 v3, 0x5

    aput v2, p2, v3

    .line 1775
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    .line 1777
    sparse-switch p1, :sswitch_data_1

    .line 1792
    :cond_0
    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 1793
    aget v0, p2, v4

    .line 1794
    aget v1, p2, v5

    .line 1795
    aget v2, p2, v6

    .line 1797
    sparse-switch p1, :sswitch_data_2

    .line 1812
    :cond_1
    :goto_2
    return-void

    .line 1756
    :sswitch_0
    neg-float v2, v2

    .line 1757
    goto :goto_0

    .line 1759
    :sswitch_1
    neg-float v0, v0

    .line 1760
    neg-float v1, v1

    .line 1761
    neg-float v2, v2

    .line 1762
    goto :goto_0

    .line 1764
    :sswitch_2
    neg-float v0, v0

    .line 1765
    neg-float v1, v1

    goto :goto_0

    .line 1780
    :sswitch_3
    neg-float v3, v1

    aput v3, p2, v4

    .line 1781
    aput v0, p2, v5

    .line 1782
    aput v2, p2, v6

    goto :goto_1

    .line 1786
    :sswitch_4
    const/high16 v3, 0x4387

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x5a

    :goto_3
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    .line 1787
    aput v2, p2, v5

    .line 1788
    aput v1, p2, v6

    goto :goto_1

    .line 1786
    :cond_2
    const/16 v3, -0x10e

    goto :goto_3

    .line 1800
    :sswitch_5
    neg-float v3, v0

    aput v3, p2, v4

    .line 1801
    neg-float v3, v1

    aput v3, p2, v5

    .line 1802
    aput v2, p2, v6

    goto :goto_2

    .line 1806
    :sswitch_6
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_3

    sub-float v3, v0, v7

    :goto_4
    aput v3, p2, v4

    .line 1807
    neg-float v3, v1

    aput v3, p2, v5

    .line 1808
    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_2

    .line 1806
    :cond_3
    add-float v3, v0, v7

    goto :goto_4

    .line 1753
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch

    .line 1777
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x8 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 1797
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1711
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    :goto_0
    return-void

    .line 1712
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1720
    iget-object v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mValues:[F

    .line 1721
    .local v1, v:[F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 1722
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 1723
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 1724
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v0

    .line 1725
    .local v0, legacyType:I
    invoke-static {}, Landroid/hardware/SensorManager;->getRotation()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/SensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 1726
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1727
    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1728
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v3, 0x80

    invoke-interface {v2, v3, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 1730
    :cond_0
    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1731
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v5, v1, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager$LmsFilter;->filter(JF)F

    move-result v2

    aput v2, v1, v6

    .line 1732
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v7, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 1737
    :cond_1
    :goto_0
    return-void

    .line 1735
    :cond_2
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v0, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0
.end method

.method registerSensor(I)V
    .locals 1
    .parameter "legacyType"

    .prologue
    .line 1696
    iget v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1697
    return-void
.end method

.method unregisterSensor(I)Z
    .locals 3
    .parameter "legacyType"

    .prologue
    .line 1700
    iget v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1701
    const/16 v0, 0x81

    .line 1702
    .local v0, mask:I
    and-int v1, p1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1703
    const/4 v1, 0x0

    .line 1705
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
