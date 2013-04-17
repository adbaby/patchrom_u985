.class public Lcom/nvidia/NvCpuClient;
.super Ljava/lang/Object;
.source "NvCpuClient.java"

# interfaces
.implements Lcom/nvidia/NvCpuClientConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "NvCpuClient"


# instance fields
.field private mNativeNvCpuClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Lcom/nvidia/NvCpuClient;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    .line 110
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->init()V

    .line 111
    return-void
.end method

.method private native init()V
.end method

.method private static native nativeClassInit()V
.end method

.method private native release()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget v0, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->release()V

    .line 122
    :cond_0
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    if-eqz v1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->release()V

    :cond_1
    throw v0
.end method

.method public native pokeCPU(IJJ)V
.end method

.method public native requestCpuFreqMax(IJJ)V
.end method

.method public native requestCpuFreqMaxHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestCpuFreqMin(IJJ)V
.end method

.method public native requestCpuFreqMinHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestMaxOnlineCpuCount(IJJ)V
.end method

.method public native requestMaxOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestMinOnlineCpuCount(IJJ)V
.end method

.method public native requestMinOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;
.end method
