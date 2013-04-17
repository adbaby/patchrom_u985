.class Landroid/widget/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 422
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoRepeat:Z
    invoke-static {v0}, Landroid/widget/VideoView;->access$1500(Landroid/widget/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCompletion enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v0}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;I)I

    .line 427
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$1402(Landroid/widget/VideoView;I)I

    .line 428
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 431
    :cond_2
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
