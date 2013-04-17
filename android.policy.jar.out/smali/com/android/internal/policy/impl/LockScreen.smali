.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field protected static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field protected static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field protected static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field protected mCreationOrientation:I

.field protected mEnableMenuKeyInLockScreen:Z

.field protected mKeyboardHidden:I

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field protected mSilentMode:Z

.field protected mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field protected mUnlockWidget:Landroid/view/View;

.field protected mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

.field protected mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v1, 0x1

    .line 338
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 339
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 340
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 341
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 345
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 347
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->createLockScreenLayout(Landroid/content/Context;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->createStatusViewManager()V

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 362
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 365
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->createUnlockWidget()V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 321
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 322
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 323
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 324
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 298
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 299
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 304
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 310
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 298
    goto :goto_0

    :cond_1
    move v0, v3

    .line 300
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 304
    goto :goto_2

    .line 308
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 507
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 508
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 509
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 510
    return-void
.end method

.method protected createLockScreenLayout(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 374
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 376
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 377
    const v1, 0x1090056

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const v1, 0x1090059

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method protected createStatusViewManager()V
    .locals 6

    .prologue
    .line 387
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 389
    return-void
.end method

.method protected createUnlockWidget()V
    .locals 10

    .prologue
    .line 395
    const v6, 0x10202b4

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 396
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/widget/SlidingTab;

    if-eqz v6, :cond_0

    .line 397
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/widget/SlidingTab;

    .line 398
    .local v3, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 399
    const v6, 0x1040313

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 400
    const v6, 0x10802de

    const v7, 0x10803bf

    const v8, 0x10803a0

    const v9, 0x10803b3

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 405
    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 406
    .local v2, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 407
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 423
    .end local v2           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    .end local v3           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 427
    return-void

    .line 408
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/widget/WaveView;

    if-eqz v6, :cond_1

    .line 409
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v4, Lcom/android/internal/widget/WaveView;

    .line 410
    .local v4, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 411
    .local v5, waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 412
    iput-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto :goto_0

    .line 413
    .end local v4           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v5           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v6, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 415
    .local v0, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 416
    .local v1, multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 417
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto :goto_0

    .line 419
    .end local v0           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v1           #multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized unlock widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 467
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 479
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 490
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 522
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 514
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 515
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 516
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 519
    :cond_0
    return-void

    .line 514
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 447
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 448
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 450
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 451
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 452
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 451
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
