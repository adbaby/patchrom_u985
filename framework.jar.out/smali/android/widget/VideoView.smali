.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentvolume:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCanplaypause:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDecreased:Z

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPauseflag:Z

.field private mPostflag:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTempVideoHeight:I

.field private mTempVideoWidth:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRepeat:Z

.field private mVideoWidth:I

.field private final setAudioVolume:Ljava/lang/Runnable;

.field private suspendtime:I

.field private tempvolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 78
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 79
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    iput-boolean v1, p0, Landroid/widget/VideoView;->mPauseflag:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mPostflag:Z

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->currentvolume:I

    .line 99
    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/VideoView;->tempvolume:I

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    .line 103
    iput-boolean v1, p0, Landroid/widget/VideoView;->mDecreased:Z

    .line 104
    iput-boolean v1, p0, Landroid/widget/VideoView;->mVideoRepeat:Z

    .line 105
    iput v1, p0, Landroid/widget/VideoView;->suspendtime:I

    .line 107
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->setAudioVolume:Ljava/lang/Runnable;

    .line 346
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 357
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 419
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 438
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 491
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 533
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 116
    iput-object p1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    iput-object p1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 78
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 79
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    iput-boolean v1, p0, Landroid/widget/VideoView;->mPauseflag:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mPostflag:Z

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->currentvolume:I

    .line 99
    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/VideoView;->tempvolume:I

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    .line 103
    iput-boolean v1, p0, Landroid/widget/VideoView;->mDecreased:Z

    .line 104
    iput-boolean v1, p0, Landroid/widget/VideoView;->mVideoRepeat:Z

    .line 105
    iput v1, p0, Landroid/widget/VideoView;->suspendtime:I

    .line 107
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->setAudioVolume:Ljava/lang/Runnable;

    .line 346
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 357
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 419
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 438
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 491
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 533
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 128
    iput-object p1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->currentvolume:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/VideoView;->mVideoRepeat:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$2102(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2202(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/VideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$402(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$502(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$602(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 339
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 341
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 342
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 344
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 339
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iput-boolean v3, p0, Landroid/widget/VideoView;->mCanplaypause:Z

    .line 194
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 195
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 196
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 197
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 198
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 199
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 200
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 201
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 202
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 203
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 204
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 744
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 238
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-direct {p0, v6}, Landroid/widget/VideoView;->release(Z)V

    .line 256
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 257
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 258
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 259
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/VideoView;->mDuration:I

    .line 260
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 261
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 262
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 263
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 264
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 265
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 266
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 267
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 268
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 271
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 272
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    iput v5, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 276
    iput v5, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 277
    iget-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 279
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    iput v5, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 282
    iput v5, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 283
    iget-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private openVideo(I)V
    .locals 8
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 289
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0, v6}, Landroid/widget/VideoView;->release(Z)V

    .line 296
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 298
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 299
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/VideoView;->mDuration:I

    .line 300
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 301
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 302
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 303
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 304
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 305
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setSeekTime(I)V

    .line 306
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 307
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 308
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 309
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 312
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 313
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    iput v5, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 317
    iput v5, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 318
    iget-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 320
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    iput v5, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 323
    iput v5, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 324
    iget-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 571
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 573
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 574
    if-eqz p1, :cond_0

    .line 575
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 578
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 751
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 738
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 707
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 713
    :goto_0
    return v0

    .line 709
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 710
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0

    .line 712
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 713
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 599
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 606
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 607
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 609
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 611
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 635
    :cond_1
    :goto_1
    return v1

    .line 599
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 614
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 617
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 618
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 620
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 623
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 625
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 627
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 631
    :cond_7
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 635
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 135
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-nez v2, :cond_0

    .line 136
    iget v2, p0, Landroid/widget/VideoView;->mTempVideoWidth:I

    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 137
    iget v2, p0, Landroid/widget/VideoView;->mTempVideoHeight:I

    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 139
    :cond_0
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 140
    .local v1, width:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 141
    .local v0, height:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_1

    .line 142
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 144
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 156
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroid/widget/VideoView;->mDecreased:Z

    if-eqz v2, :cond_3

    .line 157
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 161
    :goto_1
    return-void

    .line 145
    :cond_2
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 147
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 582
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 585
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 593
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 656
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 660
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 663
    :cond_0
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mPauseflag:Z

    .line 665
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 164
    move v0, p1

    .line 165
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 166
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 168
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 189
    :goto_0
    return v0

    .line 173
    :sswitch_0
    move v0, p1

    .line 174
    goto :goto_0

    .line 181
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 182
    goto :goto_0

    .line 186
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 687
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->tempvolume:I

    .line 690
    iget v1, p0, Landroid/widget/VideoView;->tempvolume:I

    iput v1, p0, Landroid/widget/VideoView;->currentvolume:I

    .line 691
    iget-object v1, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 692
    iget-object v1, p0, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/VideoView;->setAudioVolume:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    iget v1, p0, Landroid/widget/VideoView;->suspendtime:I

    invoke-direct {p0, v1}, Landroid/widget/VideoView;->openVideo(I)V

    .line 694
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resume if enter suspendtime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/VideoView;->suspendtime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    return-void

    .line 696
    :cond_1
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resume else enter suspendtime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/VideoView;->suspendtime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 724
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 332
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 333
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 334
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 517
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 518
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 530
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 531
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 506
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 507
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 207
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 208
    return-void
.end method

.method public setVideoRepeat()V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mVideoRepeat:Z

    .line 780
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 212
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 219
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 221
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 222
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 223
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 224
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 647
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 650
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 652
    :cond_0
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 653
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 229
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 231
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 232
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 234
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 668
    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/VideoView;->tempvolume:I

    .line 669
    invoke-virtual {p0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->suspendtime:I

    .line 671
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 673
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 675
    :cond_0
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iput v0, p0, Landroid/widget/VideoView;->mTempVideoWidth:I

    .line 676
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    iput v0, p0, Landroid/widget/VideoView;->mTempVideoHeight:I

    .line 677
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspend enter mVideoWidth =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTempVideoWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/VideoView;->mTempVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspend enter mVideoHeight =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTempVideoHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/VideoView;->mTempVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 680
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspend enter suspendtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/VideoView;->suspendtime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method public zoom()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 765
    iget-boolean v0, p0, Landroid/widget/VideoView;->mDecreased:Z

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/VideoView;->mDecreased:Z

    .line 769
    const-string/jumbo v0, "zhy"

    const-string/jumbo v1, "zoom holder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 777
    :cond_0
    return-void

    .line 771
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mDecreased:Z

    .line 772
    const-string/jumbo v0, "zhy"

    const-string v1, "decrease holder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
