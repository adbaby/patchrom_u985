.class Lcom/android/server/ConnectivityService$WlanSettingsChangeObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WlanSettingsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1
    .parameter

    .prologue
    .line 3737
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WlanSettingsChangeObserver;->this$0:Lcom/android/server/ConnectivityService;

    .line 3738
    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3739
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 3742
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3743
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WlanSettingsChangeObserver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->onWlanPrefered()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)V

    .line 3745
    return-void
.end method
