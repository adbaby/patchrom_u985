.class public Landroid/view/CustomVolumePanel;
.super Landroid/os/Handler;
.source "CustomVolumePanel.java"

# interfaces
.implements Landroid/widget/CustomSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CustomVolumePanel$StreamControl;,
        Landroid/view/CustomVolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Landroid/view/CustomVolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "CustomVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/CustomVolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    sput-boolean v3, Landroid/view/CustomVolumePanel;->LOGD:Z

    .line 170
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/CustomVolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/CustomVolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Landroid/view/CustomVolumePanel$StreamResources;->RingerStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/CustomVolumePanel$StreamResources;->VoiceStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/CustomVolumePanel$StreamResources;->MediaStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/CustomVolumePanel$StreamResources;->NotificationStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/CustomVolumePanel$StreamResources;->AlarmStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 8
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, -0x2

    .line 193
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    .line 194
    iput-object p1, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    .line 195
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    iput-object p2, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 198
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 201
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900b4

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    .line 202
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    new-instance v4, Landroid/view/CustomVolumePanel$1;

    invoke-direct {v4, p0}, Landroid/view/CustomVolumePanel$1;-><init>(Landroid/view/CustomVolumePanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    const v4, 0x102033a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 209
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    const v4, 0x102033b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 210
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    const v4, 0x102033d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    .line 211
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    const v4, 0x102033c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mDivider:Landroid/view/View;

    .line 213
    new-instance v3, Landroid/view/CustomVolumePanel$2;

    const v4, 0x10302fe

    invoke-direct {v3, p0, p1, v4}, Landroid/view/CustomVolumePanel$2;-><init>(Landroid/view/CustomVolumePanel;Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    .line 222
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v4, "Volume control"

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 224
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v4, Landroid/view/CustomVolumePanel$3;

    invoke-direct {v4, p0}, Landroid/view/CustomVolumePanel$3;-><init>(Landroid/view/CustomVolumePanel;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 231
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 232
    .local v2, window:Landroid/view/Window;
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 233
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 234
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v7, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 236
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 238
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 239
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 242
    const v3, 0x40028

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 245
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    new-array v3, v3, [Landroid/media/ToneGenerator;

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 246
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Landroid/view/CustomVolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/CustomVolumePanel;->mVoiceCapable:Z

    .line 249
    iget-boolean v3, p0, Landroid/view/CustomVolumePanel;->mVoiceCapable:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/view/CustomVolumePanel;->mShowCombinedVolumes:Z

    .line 251
    iget-boolean v3, p0, Landroid/view/CustomVolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 252
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_1
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->listenToRingerMode()V

    .line 259
    return-void

    .line 249
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/view/CustomVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/CustomVolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/CustomVolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/CustomVolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/CustomVolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 330
    iget-boolean v3, p0, Landroid/view/CustomVolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 342
    :cond_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 334
    sget-object v3, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/CustomVolumePanel$StreamResources;->streamType:I

    .line 335
    .local v2, streamType:I
    sget-object v3, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/CustomVolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 332
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_3
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/CustomVolumePanel$StreamControl;

    .line 339
    .local v1, sc:Landroid/view/CustomVolumePanel$StreamControl;
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    invoke-direct {p0, v1}, Landroid/view/CustomVolumePanel;->updateSlider(Landroid/view/CustomVolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 372
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 373
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 282
    iget-object v7, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 284
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 285
    iget-object v7, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 286
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 287
    sget-object v7, Landroid/view/CustomVolumePanel;->STREAMS:[Landroid/view/CustomVolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 288
    .local v5, streamRes:Landroid/view/CustomVolumePanel$StreamResources;
    iget v6, v5, Landroid/view/CustomVolumePanel$StreamResources;->streamType:I

    .line 289
    .local v6, streamType:I
    iget-boolean v7, p0, Landroid/view/CustomVolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_0

    sget-object v7, Landroid/view/CustomVolumePanel$StreamResources;->NotificationStream:Landroid/view/CustomVolumePanel$StreamResources;

    if-ne v5, v7, :cond_0

    .line 290
    sget-object v5, Landroid/view/CustomVolumePanel$StreamResources;->RingerStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 292
    :cond_0
    new-instance v4, Landroid/view/CustomVolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/CustomVolumePanel$StreamControl;-><init>(Landroid/view/CustomVolumePanel;Landroid/view/CustomVolumePanel$1;)V

    .line 293
    .local v4, sc:Landroid/view/CustomVolumePanel$StreamControl;
    iput v6, v4, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    .line 294
    const v7, 0x10900b6

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 295
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x102033e

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 297
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 298
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/CustomVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 299
    iget v7, v5, Landroid/view/CustomVolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->iconRes:I

    .line 300
    iget v7, v5, Landroid/view/CustomVolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->iconMuteRes:I

    .line 301
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/CustomVolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x10202e5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CustomSeekBar;

    iput-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    .line 303
    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 305
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    iget-object v8, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/CustomSeekBar;->setMax(I)V

    .line 306
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/CustomSeekBar;->setOnSeekBarChangeListener(Landroid/widget/CustomSeekBar$OnSeekBarChangeListener;)V

    .line 307
    iget-object v7, v4, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/CustomSeekBar;->setTag(Ljava/lang/Object;)V

    .line 308
    iget-object v7, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 303
    .end local v2           #plusOne:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 310
    .end local v4           #sc:Landroid/view/CustomVolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/CustomVolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_3
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 360
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 361
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 362
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 366
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 666
    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 667
    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 668
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 575
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 578
    :try_start_1
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 586
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/CustomVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 581
    const-string v1, "CustomVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 278
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/CustomVolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/CustomVolumePanel$4;-><init>(Landroid/view/CustomVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 313
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 315
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/CustomVolumePanel$StreamControl;

    .line 316
    .local v0, active:Landroid/view/CustomVolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 317
    const-string v1, "CustomVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    .line 326
    :goto_0
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->addOtherVolumes()V

    .line 327
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 321
    iput p1, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    .line 322
    iget-object v1, v0, Landroid/view/CustomVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    invoke-direct {p0, v0}, Landroid/view/CustomVolumePanel;->updateSlider(Landroid/view/CustomVolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 661
    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 662
    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/CustomVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 663
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 596
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/CustomVolumePanel$StreamControl;

    .line 597
    .local v0, sc:Landroid/view/CustomVolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 598
    iput p1, v0, Landroid/view/CustomVolumePanel$StreamControl;->iconRes:I

    .line 599
    iput p2, v0, Landroid/view/CustomVolumePanel$StreamControl;->iconMuteRes:I

    .line 600
    iget-object v2, v0, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/CustomVolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/CustomVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    :cond_0
    return-void

    .line 600
    :cond_1
    iget v1, v0, Landroid/view/CustomVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private updateSlider(Landroid/view/CustomVolumePanel$StreamControl;)V
    .locals 4
    .parameter "sc"

    .prologue
    .line 346
    iget-object v1, p1, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p1, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CustomSeekBar;->setProgress(I)V

    .line 347
    iget v1, p1, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/CustomVolumePanel;->isMuted(I)Z

    move-result v0

    .line 348
    .local v0, muted:Z
    iget-object v2, p1, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/view/CustomVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    iget v1, p1, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p1, Landroid/view/CustomVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x10802ac

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :cond_0
    return-void

    .line 348
    :cond_1
    iget v1, p1, Landroid/view/CustomVolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 378
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 379
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 380
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/CustomVolumePanel$StreamControl;

    .line 381
    .local v2, sc:Landroid/view/CustomVolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/CustomVolumePanel;->updateSlider(Landroid/view/CustomVolumePanel$StreamControl;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v2           #sc:Landroid/view/CustomVolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 617
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 620
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/CustomVolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/CustomVolumePanel;->onFreeResources()V

    goto :goto_0

    .line 630
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/CustomVolumePanel;->onStopSounds()V

    goto :goto_0

    .line 635
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/CustomVolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 640
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/CustomVolumePanel;->onVibrate()V

    goto :goto_0

    .line 645
    :pswitch_5
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 647
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 652
    :pswitch_6
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->updateStates()V

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 692
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 693
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->expand()V

    .line 695
    :cond_0
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->resetTimeout()V

    .line 696
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 607
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 610
    :cond_0
    iget-object v1, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 606
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 612
    :cond_1
    monitor-exit p0

    .line 613
    return-void

    .line 612
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 533
    invoke-virtual {p0, v2}, Landroid/view/CustomVolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {p0, v2}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 536
    invoke-virtual {p0}, Landroid/view/CustomVolumePanel;->onStopSounds()V

    .line 539
    :cond_0
    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/CustomVolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 541
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 542
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 543
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/CustomVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/CustomVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 545
    :cond_1
    monitor-exit p0

    .line 546
    return-void

    .line 545
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/CustomSeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/widget/CustomSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 673
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_1

    instance-of v2, v1, Landroid/view/CustomVolumePanel$StreamControl;

    if-eqz v2, :cond_1

    .line 674
    sget-boolean v2, Landroid/view/CustomVolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 675
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged:progress == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 677
    check-cast v0, Landroid/view/CustomVolumePanel$StreamControl;

    .line 678
    .local v0, sc:Landroid/view/CustomVolumePanel$StreamControl;
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 679
    iget-object v2, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/CustomVolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 682
    .end local v0           #sc:Landroid/view/CustomVolumePanel$StreamControl;
    :cond_1
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->resetTimeout()V

    .line 683
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 428
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 432
    .local v0, index:I
    :goto_0
    iput-boolean v8, p0, Landroid/view/CustomVolumePanel;->mRingIsSilent:Z

    .line 434
    sget-boolean v4, Landroid/view/CustomVolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 435
    const-string v4, "CustomVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 443
    .local v1, max:I
    packed-switch p1, :pswitch_data_0

    .line 504
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/CustomVolumePanel$StreamControl;

    .line 505
    .local v3, sc:Landroid/view/CustomVolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 506
    iget-object v4, v3, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    invoke-virtual {v4}, Landroid/widget/CustomSeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 507
    iget-object v4, v3, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/CustomSeekBar;->setMax(I)V

    .line 509
    :cond_2
    iget-object v4, v3, Landroid/view/CustomVolumePanel$StreamControl;->seekbarView:Landroid/widget/CustomSeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/CustomSeekBar;->setProgress(I)V

    .line 512
    :cond_3
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 513
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 514
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/CustomVolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 516
    iget-boolean v4, p0, Landroid/view/CustomVolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_4

    .line 517
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->collapse()V

    .line 519
    :cond_4
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 523
    :cond_5
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v8}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 527
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/CustomVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/CustomVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 529
    :cond_6
    return-void

    .line 428
    .end local v0           #index:I
    .end local v1           #max:I
    .end local v3           #sc:Landroid/view/CustomVolumePanel$StreamControl;
    :cond_7
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_0

    .line 447
    .restart local v0       #index:I
    .restart local v1       #max:I
    :pswitch_1
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 449
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 450
    iput-boolean v7, p0, Landroid/view/CustomVolumePanel;->mRingIsSilent:Z

    goto :goto_1

    .line 457
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_2
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_8

    .line 461
    const v4, 0x10802a5

    const v5, 0x10802a6

    invoke-direct {p0, v4, v5}, Landroid/view/CustomVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 463
    :cond_8
    const v4, 0x10802ad

    const v5, 0x10802ae

    invoke-direct {p0, v4, v5}, Landroid/view/CustomVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 474
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 475
    add-int/lit8 v1, v1, 0x1

    .line 476
    goto/16 :goto_1

    .line 484
    :pswitch_4
    iget-object v4, p0, Landroid/view/CustomVolumePanel;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 486
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 487
    iput-boolean v7, p0, Landroid/view/CustomVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 498
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/CustomSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 686
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 552
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 553
    iget-object v3, p0, Landroid/view/CustomVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 554
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 552
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 558
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 559
    return-void

    .line 558
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/CustomSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 689
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 401
    sget-boolean v0, Landroid/view/CustomVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "CustomVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 404
    iget v0, p0, Landroid/view/CustomVolumePanel;->mActiveStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 405
    invoke-direct {p0, p1}, Landroid/view/CustomVolumePanel;->reorderSliders(I)V

    .line 407
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/CustomVolumePanel;->onShowVolumeChanged(II)V

    .line 410
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/view/CustomVolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 411
    invoke-virtual {p0, v3}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 412
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/CustomVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/CustomVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 415
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 416
    invoke-virtual {p0, v3}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 417
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 418
    invoke-virtual {p0}, Landroid/view/CustomVolumePanel;->onStopSounds()V

    .line 421
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 422
    invoke-virtual {p0, v4}, Landroid/view/CustomVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/CustomVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->resetTimeout()V

    .line 425
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0, v1}, Landroid/view/CustomVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/view/CustomVolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 388
    invoke-direct {p0}, Landroid/view/CustomVolumePanel;->createSliders()V

    .line 390
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/CustomVolumePanel;->removeMessages(I)V

    .line 391
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/CustomVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
