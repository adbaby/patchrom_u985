.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 347
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 350
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;I)I

    .line 351
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v1}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 354
    :cond_0
    return-void
.end method
