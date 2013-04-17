.class Lcom/android/server/TelephonyRegistry$MyHandler;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$MyHandler;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 159
    :pswitch_0
    const-string v1, "TelephonyRegistry"

    const-string v2, "EVENT_SEND_STICKY_BROADCAST_INTENT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 161
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$MyHandler;->this$0:Lcom/android/server/TelephonyRegistry;

    #getter for: Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$000(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
