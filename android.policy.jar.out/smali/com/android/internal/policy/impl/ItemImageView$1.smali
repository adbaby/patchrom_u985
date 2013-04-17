.class Lcom/android/internal/policy/impl/ItemImageView$1;
.super Landroid/os/Handler;
.source "ItemImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ItemImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ItemImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ItemImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    #calls: Lcom/android/internal/policy/impl/ItemImageView;->updateRingModeSource()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageView;->access$000(Lcom/android/internal/policy/impl/ItemImageView;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/ItemImageView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageView;->access$100(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissImageViewCling(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/ItemImageView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ItemImageView;->access$100(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->gotoUnlock()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
