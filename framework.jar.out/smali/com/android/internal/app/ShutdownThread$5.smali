.class Lcom/android/internal/app/ShutdownThread$5;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownThread;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$5;->this$0:Lcom/android/internal/app/ShutdownThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "mReboot is false , run -begin shutanimation..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Landroid/os/ShutAnimation;->startShutAnima()V

    .line 326
    return-void
.end method
