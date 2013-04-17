.class public Lcom/android/internal/policy/impl/ZTEDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "ZTEDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ZTEDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;,
        Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final M12:Ljava/lang/String; = "h:mm a"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "ZTEDigitalClock"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeHour0:Landroid/widget/ImageView;

.field private mTimeHour1:Landroid/widget/ImageView;

.field private mTimeMinute0:Landroid/widget/ImageView;

.field private mTimeMinute1:Landroid/widget/ImageView;

.field private timeArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 74
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAttached:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mHandler:Landroid/os/Handler;

    .line 76
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->timeArray:[I

    .line 178
    return-void

    .line 76
    nop

    :array_0
    .array-data 0x4
        0x6t 0x6t 0x8t 0x1t
        0x7t 0x6t 0x8t 0x1t
        0x8t 0x6t 0x8t 0x1t
        0x9t 0x6t 0x8t 0x1t
        0xat 0x6t 0x8t 0x1t
        0xbt 0x6t 0x8t 0x1t
        0xct 0x6t 0x8t 0x1t
        0xdt 0x6t 0x8t 0x1t
        0xet 0x6t 0x8t 0x1t
        0xft 0x6t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/ZTEDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/ZTEDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ZTEDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormat:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 264
    return-void

    .line 261
    :cond_0
    const-string v0, "h:mm a"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 198
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 200
    iget v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAttached:I

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/ZTEDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 214
    new-instance v1, Lcom/android/internal/policy/impl/ZTEDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/ZTEDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->updateTime()V

    .line 220
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 226
    iget v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAttached:I

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 236
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 237
    iput-object v2, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 185
    const v1, 0x10202a2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 186
    .local v0, timeDisplay:Landroid/widget/LinearLayout;
    const v1, 0x10202a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeHour1:Landroid/widget/ImageView;

    .line 187
    const v1, 0x10202a4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeHour0:Landroid/widget/ImageView;

    .line 188
    const v1, 0x10202a6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeMinute1:Landroid/widget/ImageView;

    .line 189
    const v1, 0x10202a7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeMinute0:Landroid/widget/ImageView;

    .line 190
    new-instance v1, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->setDateFormat()V

    .line 194
    return-void
.end method

.method public updateTime()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x3a

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, time:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, hour:I
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, minute:I
    const-string v4, "ZTEDigitalClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  minute="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeHour1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->timeArray:[I

    div-int/lit8 v6, v0, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeHour0:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->timeArray:[I

    rem-int/lit8 v6, v0, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeMinute1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->timeArray:[I

    div-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mTimeMinute0:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->timeArray:[I

    rem-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->setIsMorning(Z)V

    .line 258
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->updateTime()V

    .line 243
    return-void
.end method
