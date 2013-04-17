.class final Lcom/android/internal/app/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_SET_NEXT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, alarmintent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "zte.com.cn.emode.action.SHUT_DOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/internal/app/ShutdownThread;->access$100(Landroid/content/Context;)V

    .line 142
    return-void
.end method
