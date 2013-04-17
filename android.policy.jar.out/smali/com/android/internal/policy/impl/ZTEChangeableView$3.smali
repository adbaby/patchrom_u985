.class Lcom/android/internal/policy/impl/ZTEChangeableView$3;
.super Landroid/os/Handler;
.source "ZTEChangeableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ZTEChangeableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$3;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$3;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->access$102(Lcom/android/internal/policy/impl/ZTEChangeableView;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView$3;->this$0:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->showUnlockView()V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
