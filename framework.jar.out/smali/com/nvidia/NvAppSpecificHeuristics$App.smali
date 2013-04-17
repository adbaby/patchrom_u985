.class Lcom/nvidia/NvAppSpecificHeuristics$App;
.super Ljava/lang/Object;
.source "NvAppSpecificHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvAppSpecificHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field public final emcCap:I

.field public final forceDoubleBuffering:Z

.field public final forceHwUi:Z

.field public final minOnlineCpuOnStartup:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZI)V
    .locals 6
    .parameter "_packageName"
    .parameter "_forceHwUi"
    .parameter "_forceDoubleBuffering"
    .parameter "_minOnlineCpuOnStartup"

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZZII)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZII)V
    .locals 0
    .parameter "_packageName"
    .parameter "_forceHwUi"
    .parameter "_forceDoubleBuffering"
    .parameter "_minOnlineCpuOnStartup"
    .parameter "_emcCap"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    .line 55
    iput-boolean p2, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    .line 56
    iput-boolean p3, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceDoubleBuffering:Z

    .line 57
    iput p4, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->minOnlineCpuOnStartup:I

    .line 58
    iput p5, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->emcCap:I

    .line 59
    return-void
.end method
