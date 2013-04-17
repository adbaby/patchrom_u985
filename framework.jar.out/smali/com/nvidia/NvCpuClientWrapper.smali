.class public Lcom/nvidia/NvCpuClientWrapper;
.super Ljava/lang/Object;
.source "NvCpuClientWrapper.java"

# interfaces
.implements Lcom/nvidia/NvCpuClientConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "NvCpuClientWrapper"


# instance fields
.field private mNvCpuClient:Lcom/nvidia/NvCpuClient;

.field private mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

.field private mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

.field private mNvCpuMinFreqHdl:Ljava/io/FileDescriptor;

.field private mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/nvidia/NvCpuClient;

    invoke-direct {v0}, Lcom/nvidia/NvCpuClient;-><init>()V

    iput-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    .line 52
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    .line 53
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinFreqHdl:Ljava/io/FileDescriptor;

    .line 54
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    .line 55
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized NvClearCpuMaxFreq()V
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v1, "NvCpuClientWrapper"

    const-string v2, "Trouble closing mNvCpuMaxFreqHdl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized NvClearCpuMaxOnline()V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v1, "NvCpuClientWrapper"

    const-string v2, "Trouble closing mNvCpuMaxOnlineHdl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized NvClearCpuMinOnline()V
    .locals 3

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v1, "NvCpuClientWrapper"

    const-string v2, "Trouble closing mNvCpuMinOnlineHdl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized NvSetCpuMaxFreq(I)V
    .locals 3
    .parameter "cpuMaxFreq"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 87
    .local v0, now:J
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/nvidia/NvCpuClientWrapper;->NvClearCpuMaxFreq()V

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMaxHandle(IJ)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 86
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public NvSetCpuMaxFreq(IJ)V
    .locals 6
    .parameter "cpuMaxFreq"
    .parameter "timeoutNs"

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 63
    .local v4, now:J
    iget-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMax(IJJ)V

    .line 64
    return-void
.end method

.method public declared-synchronized NvSetCpuMaxOnline(I)V
    .locals 3
    .parameter "cpuMaxOnline"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 109
    .local v0, now:J
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/nvidia/NvCpuClientWrapper;->NvClearCpuMaxOnline()V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/nvidia/NvCpuClient;->requestMaxOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 108
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public NvSetCpuMinFreq(IJ)V
    .locals 6
    .parameter "cpuMinFreq"
    .parameter "timeoutNs"

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 71
    .local v4, now:J
    iget-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMin(IJJ)V

    .line 72
    return-void
.end method

.method public declared-synchronized NvSetCpuMinOnline(I)V
    .locals 3
    .parameter "cpuMinOnline"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 98
    .local v0, now:J
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/nvidia/NvCpuClientWrapper;->NvClearCpuMinOnline()V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/nvidia/NvCpuClient;->requestMinOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 97
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public NvSetCpuMinOnline(IJ)V
    .locals 6
    .parameter "cpuMinOnline"
    .parameter "timeoutNs"

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 79
    .local v4, now:J
    iget-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestMinOnlineCpuCount(IJJ)V

    .line 80
    return-void
.end method
