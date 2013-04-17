.class public Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "ProfileVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ProfileVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsRingerSeekBar:Z

.field private mLastProgress:I

.field public mLastVolume:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field public mSystemCurrentVolume:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/ProfileVolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "originalVolume"

    .prologue
    const/4 v1, -0x1

    .line 267
    iput-object p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 242
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 245
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    .line 249
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 251
    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 268
    iput-object p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 269
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 270
    iput p4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 271
    iput-object p3, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 272
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 274
    invoke-direct {p0, p3, p5}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;I)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;III)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "originalVolume"
    .parameter "defaultUriType"

    .prologue
    const/4 v1, -0x1

    .line 305
    iput-object p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 242
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 245
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    .line 249
    iput v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 251
    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 306
    iput-object p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 307
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 308
    iput p4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 309
    iput-object p3, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    .line 311
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    .line 313
    invoke-direct {p0, p3, p5, p6}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;II)V

    .line 314
    return-void
.end method

.method static synthetic access$000(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;I)V
    .locals 5
    .parameter "seekBar"
    .parameter "originalVolume"

    .prologue
    const/4 v3, 0x2

    .line 278
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 280
    iput p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 281
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    iput p2, v1, Landroid/preference/ProfileVolumePreference;->mLastRingerVolume:I

    .line 282
    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 283
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 285
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 289
    const/4 v0, 0x0

    .line 297
    .local v0, defaultUri:Landroid/net/Uri;
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 299
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 300
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 303
    :cond_0
    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;II)V
    .locals 4
    .parameter "seekBar"
    .parameter "originalVolume"
    .parameter "defaultUriType"

    .prologue
    const/4 v3, 0x3

    .line 317
    if-ne v3, p3, :cond_1

    .line 318
    const-string v1, "ProfileVolumePreference"

    const-string v2, "Profile initSeekBar() STREAM_MUSIC == defaultUriType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 325
    :goto_0
    iput p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 326
    iput p2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 328
    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 329
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, defaultUri:Landroid/net/Uri;
    if-ne p3, v3, :cond_2

    .line 337
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 344
    :goto_1
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 345
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 348
    :cond_0
    return-void

    .line 321
    .end local v0           #defaultUri:Landroid/net/Uri;
    :cond_1
    const-string v1, "ProfileVolumePreference"

    const-string v2, "Profile initSeekBar() STREAM_MUSIC == defaultUriType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    .line 338
    .restart local v0       #defaultUri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x5

    if-ne p3, v1, :cond_3

    .line 339
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_1

    .line 341
    :cond_3
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private sample()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/ProfileVolumePreference;->onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V

    .line 403
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 404
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 417
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 418
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 422
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 368
    if-nez p3, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, p2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 432
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 433
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 434
    iget v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 435
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 425
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 426
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    .line 427
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    .line 429
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 383
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 386
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->sample()V

    .line 389
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 377
    iput p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 378
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSystemCurrentVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 364
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 393
    iget v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    .line 394
    iget-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/ProfileVolumePreference;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v1, v0, Landroid/preference/ProfileVolumePreference;->mLastRingerVolume:I

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 399
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 353
    iget-boolean v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mIsRingerSeekBar:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    const-string v0, "ProfileVolumePreference"

    const-string v1, "Profile stop() mIsRingerSeekBar == true unregisterContentObserver(mVolumeObserver)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 359
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 410
    :cond_0
    return-void
.end method
