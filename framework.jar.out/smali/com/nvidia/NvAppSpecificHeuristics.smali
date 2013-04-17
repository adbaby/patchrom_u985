.class public Lcom/nvidia/NvAppSpecificHeuristics;
.super Ljava/lang/Object;
.source "NvAppSpecificHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvAppSpecificHeuristics$App;
    }
.end annotation


# static fields
.field private static final DEBUG_NV_APP_PROFILE:Z = false

.field private static final EXTRA_HW_ACCELERATION_PROPERTY:Ljava/lang/String; = "persist.sys.extra_hw_accel"

.field private static final TAG:Ljava/lang/String; = "NvAppSpecificHeuristics"

.field private static final emcCapDefault:I

.field private static final mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v7, 0x4

    const v8, 0x16a65700

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    const/16 v0, 0x12

    new-array v6, v0, [Lcom/nvidia/NvAppSpecificHeuristics$App;

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v0, v1, v3, v2, v7}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v0, v6, v2

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v0, v1, v3, v2, v7}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v0, v6, v3

    const/4 v0, 0x2

    new-instance v1, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v5, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v1, v5, v3, v2, v7}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v1, v6, v0

    const/4 v0, 0x3

    new-instance v1, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v5, "com.netflix.mediaclient"

    invoke-direct {v1, v5, v3, v2, v4}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v1, v6, v0

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.android.browser"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v0, v6, v7

    const/4 v0, 0x5

    new-instance v1, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v5, "com.android.launcher"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v1, v6, v0

    const/4 v0, 0x6

    new-instance v1, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v5, "com.android.systemui"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v1, v6, v0

    const/4 v0, 0x7

    new-instance v1, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v5, "com.android.gallery3d"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZI)V

    aput-object v1, v6, v0

    const/16 v7, 0x8

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.vectorunit.bluesoco"

    const v5, 0xc28cb00

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0x9

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.imangi.templerun"

    const v5, 0xc28cb00

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0xa

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.UCMobile"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0xb

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.sina.mfweibo"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0xc

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.baidu.BaiduMap"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0xd

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.autonavi.minimap"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0xe

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.tigerknows"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0xf

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.tencent.map"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0x10

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.mapbar.android.mapbarmap"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    const/16 v7, 0x11

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.telenav.app.android.cmcc"

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    aput-object v0, v6, v7

    sput-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static canForceHwUi(Ljava/lang/String;)Z
    .locals 4
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/nvidia/NvAppSpecificHeuristics;->isExtraHwAccelerationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    invoke-static {p0}, Lcom/nvidia/NvAppSpecificHeuristics;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 182
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    if-nez v3, :cond_3

    .line 181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_3
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getAppSpecificEmcCap(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, emcCap:I
    if-nez p0, :cond_0

    move v1, v0

    .line 270
    .end local v0           #emcCap:I
    .local v1, emcCap:I
    :goto_0
    return v1

    .line 258
    .end local v1           #emcCap:I
    .restart local v0       #emcCap:I
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 259
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->emcCap:I

    if-gtz v3, :cond_2

    .line 258
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    :cond_2
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget v0, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->emcCap:I

    move v1, v0

    .line 267
    .end local v0           #emcCap:I
    .restart local v1       #emcCap:I
    goto :goto_0

    .end local v1           #emcCap:I
    .restart local v0       #emcCap:I
    :cond_3
    move v1, v0

    .line 270
    .end local v0           #emcCap:I
    .restart local v1       #emcCap:I
    goto :goto_0
.end method

.method public static getAppSpecificMinOnlineCpuOnStartup(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 221
    const/4 v1, -0x1

    .line 223
    .local v1, numCpu:I
    if-nez p0, :cond_0

    move v2, v1

    .line 244
    .end local v1           #numCpu:I
    .local v2, numCpu:I
    :goto_0
    return v2

    .line 231
    .end local v2           #numCpu:I
    .restart local v1       #numCpu:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 232
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->minOnlineCpuOnStartup:I

    if-gtz v3, :cond_2

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_2
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->minOnlineCpuOnStartup:I

    move v2, v1

    .line 240
    .end local v1           #numCpu:I
    .restart local v2       #numCpu:I
    goto :goto_0

    .end local v2           #numCpu:I
    .restart local v1       #numCpu:I
    :cond_3
    move v2, v1

    .line 244
    .end local v1           #numCpu:I
    .restart local v2       #numCpu:I
    goto :goto_0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appName"

    .prologue
    .line 157
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 158
    .local v0, index:I
    if-gez v0, :cond_0

    .line 159
    const-string v1, "NvAppSpecificHeuristics"

    const-string v2, "appName does not contain \'/\'. the packageName cannot be extracted from appName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    .line 162
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static isExtraHwAccelerationEnabled()Z
    .locals 3

    .prologue
    .line 149
    const-string/jumbo v1, "persist.sys.extra_hw_accel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    .local v0, enabled:Z
    return v0
.end method

.method public static setAppSettingsTskinValue(I)V
    .locals 1
    .parameter "tskinValue"

    .prologue
    .line 314
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 315
    :cond_0
    const-string v0, "/sys/kernel/debug/tegra_thermal/performance_sw"

    invoke-static {v0, p0}, Lcom/nvidia/NvAppSpecificHeuristics;->writeSysFile(Ljava/lang/String;I)V

    .line 317
    :cond_1
    return-void
.end method

.method public static wantDoubleBuffering(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 197
    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 206
    sget-object v2, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceDoubleBuffering:Z

    if-nez v2, :cond_3

    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_3
    sget-object v2, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static writeSysFile(Ljava/lang/String;I)V
    .locals 5
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, outStream:Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 281
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .local v3, outStream:Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 284
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 290
    .end local v3           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/PrintWriter;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    goto :goto_0
.end method


# virtual methods
.method public setAppHeuristicsEmcCap(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 294
    invoke-static {p1}, Lcom/nvidia/NvAppSpecificHeuristics;->getAppSpecificEmcCap(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, emcCap:I
    if-nez v0, :cond_0

    .line 300
    const-string v1, "/d/clock/emc/max"

    const v2, 0x1fc4ef40

    invoke-static {v1, v2}, Lcom/nvidia/NvAppSpecificHeuristics;->writeSysFile(Ljava/lang/String;I)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v1, "/d/clock/emc/max"

    invoke-static {v1, v0}, Lcom/nvidia/NvAppSpecificHeuristics;->writeSysFile(Ljava/lang/String;I)V

    goto :goto_0
.end method
