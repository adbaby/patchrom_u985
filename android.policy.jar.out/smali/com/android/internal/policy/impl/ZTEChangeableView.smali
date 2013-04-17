.class public Lcom/android/internal/policy/impl/ZTEChangeableView;
.super Landroid/widget/FrameLayout;
.source "ZTEChangeableView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SHOW_UNLOCK_VIEW:I = 0x1

.field private static final MSG_UPDATE_ICON:I = 0xc8

.field private static final SHOW_DURATION_TIME:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "ZTEChangeableView"


# instance fields
.field handler:Landroid/os/Handler;

.field private isStartTimer:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

.field private mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

.field private mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

.field private mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private multiTouchController:Lcom/android/internal/policy/impl/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/policy/impl/MultiTouchController",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/ZTEChangeableView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ZTEChangeableView$2;-><init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Lcom/android/internal/policy/impl/ZTEChangeableView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ZTEChangeableView$3;-><init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->handler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z

    .line 85
    new-instance v1, Lcom/android/internal/policy/impl/ZTEChangeableView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ZTEChangeableView$2;-><init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v1, Lcom/android/internal/policy/impl/ZTEChangeableView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ZTEChangeableView$3;-><init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->handler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Lcom/android/internal/policy/impl/MultiTouchController;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/MultiTouchController;-><init>(Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->multiTouchController:Lcom/android/internal/policy/impl/MultiTouchController;

    .line 50
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->multiTouchController:Lcom/android/internal/policy/impl/MultiTouchController;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/MultiTouchController;->setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->makeItemView()V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, mUpdateIconFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v1, Lcom/android/internal/policy/impl/ZTEChangeableView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ZTEChangeableView$1;-><init>(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ZTEChangeableView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/ZTEChangeableView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 156
    return-void
.end method

.method private makeItemView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x10900c0

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/ItemImageViewManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    .line 76
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->multiTouchController:Lcom/android/internal/policy/impl/MultiTouchController;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MultiTouchController;->setItemImageViewManager(Lcom/android/internal/policy/impl/ItemImageViewManager;)V

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->updateIconBitmap()V

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->addView(Landroid/view/View;)V

    .line 79
    const v1, 0x10900c1

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/UnlockViewManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/UnlockViewManager;->setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/ItemImageViewManager;->setUnlockViewManager(Lcom/android/internal/policy/impl/UnlockViewManager;)V

    .line 83
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->cleanUp()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 114
    return-void
.end method

.method public getDraggableObjectAtPoint(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 0
    .parameter "pt"

    .prologue
    .line 217
    return-object p0
.end method

.method public getPositionAndScale(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)V
    .locals 10
    .parameter "obj"
    .parameter "objPosAndScaleOut"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 221
    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    move-object v0, p2

    move v2, v1

    move v6, v1

    move v7, v1

    move v8, v5

    move v9, v1

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;->set(FFZFZFFZF)V

    .line 222
    return-void
.end method

.method public isItemImageViewManagerVisible()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartTimer()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z

    return v0
.end method

.method public isUnlockViewManagerVisible()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 121
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->getIsStartParticleAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->multiTouchController:Lcom/android/internal/policy/impl/MultiTouchController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->stopOnLongClick()V

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ZTEChangeableView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public selectObject(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)V
    .locals 0
    .parameter "obj"
    .parameter "pt"

    .prologue
    .line 226
    return-void
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V
    .locals 2
    .parameter "lockscreen"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->multiTouchController:Lcom/android/internal/policy/impl/MultiTouchController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiTouchController;->setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V

    .line 127
    return-void
.end method

.method public setPositionAndScale(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)Z
    .locals 1
    .parameter "obj"
    .parameter "update"
    .parameter "touchPoint"

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public showItemImageView()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageViewManager;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->hideUnlockCling()V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->startPinchOutAnimation()V

    .line 184
    :cond_0
    return-void
.end method

.method public showPromptString()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->showPromptString()V

    .line 162
    :cond_0
    return-void
.end method

.method public showUnlockView()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockViewManager;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->hideImageViewCling()V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->startPinchInAnimation()V

    .line 172
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->isRemoveImageViewCling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->handler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, message:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->isStartTimer:Z

    .line 200
    return-void
.end method

.method public updateIconBitmapAndNumber()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ItemImageViewManager;->updateIconBitmapAndNumber()V

    .line 108
    :cond_0
    return-void
.end method

.method public updateImgLock()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockViewManager;->updateImgLock()V

    .line 102
    :cond_0
    return-void
.end method
