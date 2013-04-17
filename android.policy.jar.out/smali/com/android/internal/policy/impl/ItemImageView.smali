.class public Lcom/android/internal/policy/impl/ItemImageView;
.super Landroid/widget/ImageView;
.source "ItemImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_LOCK_SCREEN_SETTING:Ljava/lang/String; = "action_lock_screen_setting"

.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x190L

.field private static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final MISSED_CALLS:I = 0x1

.field public static final MISSED_EMAILS:I = 0x1

.field public static final MISSED_MESSAGES:I = 0x1

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x12c

.field private static final MSG_START_UNLOCK:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "ItemImageView"


# instance fields
.field private isStartCallLog:Z

.field private ishascalendar:Z

.field private mAppComponentNameItem:[Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCalendarObserver:Landroid/database/ContentObserver;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mEmailObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mItemBgId:[I

.field private mItemId:I

.field private mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

.field private mMessagesObserver:Landroid/database/ContentObserver;

.field private mMissedCallsObserver:Landroid/database/ContentObserver;

.field mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceID:I

.field private mUtilities:Lcom/android/internal/policy/impl/Utilities;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v5, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_conponentname_item1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "lockscreen_conponentname_item2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lockscreen_conponentname_item3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen_conponentname_item4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen_conponentname_item5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen_conponentname_item6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    .line 49
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemBgId:[I

    .line 57
    iput v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    .line 65
    iput-object v5, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 71
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z

    .line 72
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z

    .line 322
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$2;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    .line 336
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$3;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    .line 342
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$4;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    .line 348
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$5;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 400
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ItemImageView$6;-><init>(Lcom/android/internal/policy/impl/ItemImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x86t 0x3t 0x8t 0x1t
        0x87t 0x3t 0x8t 0x1t
        0x88t 0x3t 0x8t 0x1t
        0x89t 0x3t 0x8t 0x1t
        0x8at 0x3t 0x8t 0x1t
        0x8bt 0x3t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v5, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_conponentname_item1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "lockscreen_conponentname_item2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lockscreen_conponentname_item3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen_conponentname_item4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen_conponentname_item5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen_conponentname_item6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    .line 49
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemBgId:[I

    .line 57
    iput v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    .line 65
    iput-object v5, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 71
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z

    .line 72
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z

    .line 322
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$2;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    .line 336
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$3;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    .line 342
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$4;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    .line 348
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ItemImageView$5;-><init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 400
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ItemImageView$6;-><init>(Lcom/android/internal/policy/impl/ItemImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/internal/policy/impl/Utilities;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/Utilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    .line 85
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/ItemImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lcom/android/internal/policy/impl/ItemImageView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ItemImageView$1;-><init>(Lcom/android/internal/policy/impl/ItemImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mHandler:Landroid/os/Handler;

    .line 102
    return-void

    .line 49
    nop

    :array_0
    .array-data 0x4
        0x86t 0x3t 0x8t 0x1t
        0x87t 0x3t 0x8t 0x1t
        0x88t 0x3t 0x8t 0x1t
        0x89t 0x3t 0x8t 0x1t
        0x8at 0x3t 0x8t 0x1t
        0x8bt 0x3t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ItemImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->updateRingModeSource()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/Utilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/ItemImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/ItemImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/ItemImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "packageManager"
    .parameter "componentname"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 272
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 277
    goto :goto_0

    .line 275
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 276
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalMode()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerMessagesObserver()V
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 286
    return-void
.end method

.method private registerMissedCalendarsObserver()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    return-void
.end method

.method private registerMissedCallsObserver()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    return-void
.end method

.method private registerMissedEmailsObserver()V
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "content://com.android.email.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    return-void
.end method

.method private toggleRingMode()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    .line 391
    .local v0, vibe:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 397
    .end local v0           #vibe:Z
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 302
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 307
    return-void
.end method

.method private updateRingModeSource()V
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->updateSourceId()V

    .line 415
    iget v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mSourceID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    .line 416
    return-void
.end method

.method private updateSourceId()V
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const v0, 0x1080365

    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mSourceID:I

    .line 378
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10802ee

    :goto_1
    iput v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mSourceID:I

    goto :goto_0

    :cond_1
    const v0, 0x108035b

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->unRegisterContentObserver()V

    goto :goto_0
.end method

.method public initRingMode()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEChangeableView;->stopTimer()V

    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    if-nez v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->toggleRingMode()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/ItemImageView;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z

    if-eqz v0, :cond_3

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 129
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.alerts.AlertActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 132
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_4

    .line 134
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.lockscreensetting"

    const-string v2, "com.android.lockscreensetting.LockScreenSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "action_lock_screen_setting"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "item_id"

    iget v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 115
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    .line 148
    return-void
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V
    .locals 0
    .parameter "lockscreen"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mLockScreen:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    .line 154
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 0
    .parameter "ztechangeableview"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    .line 151
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1
    .parameter "intent"
    .parameter "tag"

    .prologue
    .line 156
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 170
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateIconBitmap()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x10802a1

    .line 174
    iget v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    if-nez v3, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->updateRingModeSource()V

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ItemImageView;->invalidate()V

    .line 204
    return-void

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, componentNameString:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    iput-object v7, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 182
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 184
    :cond_1
    iput-object v7, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 186
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 187
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/ItemImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 193
    :cond_2
    iput-object v7, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 194
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 198
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateIconBitmapAndNumber()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x10802a1

    .line 206
    iget v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    if-nez v4, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->updateRingModeSource()V

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ItemImageView;->invalidate()V

    .line 265
    return-void

    .line 211
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/policy/impl/ItemImageView;->mItemId:I

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, componentNameString:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    iput-object v8, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 214
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 216
    :cond_1
    iput-object v8, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 217
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 218
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    .line 219
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 220
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/ItemImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a

    .line 224
    const-string v4, "com.android.mms/com.android.mms.MainUISelection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 225
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/Utilities;->numOfUnreadMessage()I

    move-result v2

    .line 226
    .local v2, number:I
    if-lez v2, :cond_2

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/policy/impl/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->registerMessagesObserver()V

    .line 252
    .end local v2           #number:I
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 230
    :cond_4
    const-string v4, "com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/Utilities;->numOfMissdeCall()I

    move-result v2

    .line 232
    .restart local v2       #number:I
    if-lez v2, :cond_5

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/policy/impl/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z

    .line 236
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z

    .line 237
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->registerMissedCallsObserver()V

    goto :goto_1

    .line 238
    .end local v2           #number:I
    :cond_6
    const-string v4, "com.android.email/com.android.email.activity.Welcome"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 239
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/Utilities;->numOfUnreadEmail()I

    move-result v2

    .line 240
    .restart local v2       #number:I
    if-lez v2, :cond_7

    .line 241
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/policy/impl/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->registerMissedEmailsObserver()V

    goto :goto_1

    .line 244
    .end local v2           #number:I
    :cond_8
    const-string v4, "com.android.calendar/com.android.calendar.AllInOneActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/Utilities;->numOfMissdeCalendar()I

    move-result v2

    .line 246
    .restart local v2       #number:I
    if-lez v2, :cond_9

    .line 247
    iget-object v4, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/policy/impl/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 248
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z

    .line 250
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ItemImageView;->registerMissedCalendarsObserver()V

    goto :goto_1

    .line 254
    .end local v2           #number:I
    :cond_a
    iput-object v8, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 255
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 259
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public updateMissedNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 310
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/ItemImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 311
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 312
    if-lez p1, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/policy/impl/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/ItemImageView;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ZTEChangeableView;->updateImgLock()V

    .line 321
    return-void

    .line 317
    :cond_1
    const v2, 0x10802a1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ItemImageView;->setImageResource(I)V

    goto :goto_0
.end method
