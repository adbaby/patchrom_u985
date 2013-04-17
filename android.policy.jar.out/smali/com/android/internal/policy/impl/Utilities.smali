.class final Lcom/android/internal/policy/impl/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final OFFSET_HIGHT:F = 0.0f

.field private static final OFFSET_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Utilities"

.field private static mNumOfMissdeCalendar:I

.field private static mNumOfMissdeCall:I

.field private static mNumOfUnreadEmail:I

.field private static mNumOfUnreadMessage:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput v0, Lcom/android/internal/policy/impl/Utilities;->mNumOfMissdeCall:I

    .line 33
    sput v0, Lcom/android/internal/policy/impl/Utilities;->mNumOfUnreadMessage:I

    .line 34
    sput v0, Lcom/android/internal/policy/impl/Utilities;->mNumOfUnreadEmail:I

    .line 35
    sput v0, Lcom/android/internal/policy/impl/Utilities;->mNumOfMissdeCalendar:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v8, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 289
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 290
    .local v3, height:I
    const-string v5, "taoyong taoyong "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width and height"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 292
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 297
    return-object v0

    .line 291
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static hasMissNum()Z
    .locals 2

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, hasMissNum:Z
    sget v1, Lcom/android/internal/policy/impl/Utilities;->mNumOfMissdeCall:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/Utilities;->mNumOfUnreadMessage:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/Utilities;->mNumOfUnreadEmail:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/Utilities;->mNumOfMissdeCalendar:I

    if-eqz v1, :cond_1

    .line 424
    :cond_0
    const/4 v0, 0x1

    .line 426
    :cond_1
    return v0
.end method


# virtual methods
.method public numOfMissdeCalendar()I
    .locals 9

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 398
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 400
    .local v8, missedCalendars:I
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const-string v3, "(state=1)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 404
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    .end local v6           #cs:Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfMissdeCalendar.missedCalendars="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sput v8, Lcom/android/internal/policy/impl/Utilities;->mNumOfMissdeCalendar:I

    .line 416
    return v8

    .line 408
    :catch_0
    move-exception v7

    .line 409
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatemissedCalendars:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 410
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 411
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadEmail-SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public numOfMissdeCall()I
    .locals 9

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 302
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 304
    .local v8, missedCalls:I
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const-string v3, "(type=3 AND new>0 )"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    .end local v6           #cs:Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfMissdeCall.missedCalls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sput v8, Lcom/android/internal/policy/impl/Utilities;->mNumOfMissdeCall:I

    .line 319
    return v8

    .line 312
    :catch_0
    move-exception v7

    .line 313
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMissCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 315
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numOfMissdeCall-SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public numOfUnreadEmail()I
    .locals 10

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 367
    .local v9, unreadEmail:I
    :try_start_0
    const-string v1, "content://com.android.email.provider/mailbox/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unreadCount"

    aput-object v4, v2, v3

    const-string v3, "unreadCount > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 375
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 376
    const-string v1, "displayName"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const-string v1, "unreadCount"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v9, v1

    .line 379
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 375
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 382
    .end local v8           #i:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v6           #cs:Landroid/database/Cursor;
    :cond_2
    :goto_1
    sput v9, Lcom/android/internal/policy/impl/Utilities;->mNumOfUnreadEmail:I

    .line 393
    return v9

    .line 388
    :catch_0
    move-exception v7

    .line 389
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadEmail-SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 386
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 384
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public numOfUnreadMessage()I
    .locals 10

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 325
    .local v9, unReadMessage:I
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "subject"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "body"

    aput-object v4, v2, v3

    const-string v3, "(type = 1 AND read = 0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    .local v8, smsCs:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v9, v1

    .line 332
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    .end local v8           #smsCs:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sub"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "sub_cs"

    aput-object v4, v2, v3

    const-string v3, "(msg_box = 1 AND read= 0 AND (m_type = 130 OR m_type = 132) )"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    .local v7, msmCs:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v9, v1

    .line 351
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 359
    .end local v7           #msmCs:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadMessage.sms+mms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sput v9, Lcom/android/internal/policy/impl/Utilities;->mNumOfUnreadMessage:I

    .line 361
    return v9

    .line 334
    :catch_0
    move-exception v6

    .line 335
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 336
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 337
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadMessage-SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 353
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v6

    .line 354
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 355
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v6

    .line 356
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Utilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUnreadMessage-SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "num"
    .parameter "src"

    .prologue
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 44
    .local v20, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 45
    .local v10, height:I
    const-string v21, "Utilities"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "width="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "height="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 47
    .local v15, newIcon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 48
    .local v12, iconABit:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 49
    .local v13, iconBBit:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v9, cv:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800cf

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 51
    .local v14, iconBg:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 52
    .local v6, bgWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 53
    .local v5, bgHight:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 54
    .local v8, bitWidth:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 55
    .local v7, bitHight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/16 v22, 0x0

    sub-float v21, v21, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v9, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    move-object/from16 v11, p2

    .line 58
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    if-ltz p1, :cond_1

    const/16 v21, 0x9

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 60
    sub-int v21, v20, v6

    sub-int v22, v6, v8

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-float v18, v21, v22

    .line 61
    .local v18, offsetX:F
    sub-int v21, v5, v7

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-float v19, v21, v22

    .line 62
    .local v19, offsetY:F
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object/from16 p2, v11

    .line 284
    .end local v18           #offsetX:F
    .end local v19           #offsetY:F
    .end local p2
    :cond_0
    :goto_1
    return-object p2

    .line 64
    .restart local v18       #offsetX:F
    .restart local v19       #offsetY:F
    .restart local p2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 65
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 68
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 69
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 72
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 73
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 76
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 77
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 80
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 81
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 84
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 85
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 88
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 89
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 92
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 93
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 96
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 97
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 100
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 101
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 104
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 105
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 108
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 109
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 112
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 113
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 116
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 117
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 120
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 121
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 124
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 125
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 128
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 129
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 132
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 133
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 136
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 137
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 140
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 141
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 147
    .end local v18           #offsetX:F
    .end local v19           #offsetY:F
    :cond_1
    const/16 v21, 0xa

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v21, 0x63

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 148
    sub-int v21, v20, v6

    mul-int/lit8 v22, v8, 0x2

    sub-int v22, v6, v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-float v16, v21, v22

    .line 149
    .local v16, offsetAbitX:F
    int-to-float v0, v8

    move/from16 v21, v0

    add-float v17, v16, v21

    .line 150
    .local v17, offsetBbitX:F
    sub-int v21, v5, v7

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-float v19, v21, v22

    .line 152
    .restart local v19       #offsetY:F
    div-int/lit8 v3, p1, 0xa

    .line 153
    .local v3, aBit:I
    rem-int/lit8 v4, p1, 0xa

    .line 154
    .local v4, bBit:I
    const-string v21, "taoyong"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "aBitaBit"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v21, "taoyong"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bBitbBit"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    packed-switch v3, :pswitch_data_1

    .line 200
    :goto_2
    packed-switch v4, :pswitch_data_2

    :goto_3
    move-object/from16 p2, v11

    .line 282
    goto/16 :goto_1

    .line 158
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 159
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 162
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 163
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 166
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 167
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 170
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 171
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 174
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 175
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 178
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 179
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 182
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 183
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 186
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 187
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 191
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 192
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 195
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 196
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 202
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 203
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 206
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 207
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 210
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 211
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 214
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 215
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 218
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 219
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 222
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 223
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 226
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 227
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 230
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 231
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 234
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 235
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 238
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 239
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 242
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 243
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 246
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 247
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 250
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 251
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 254
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 255
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 258
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 259
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 260
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 262
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 263
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 266
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 267
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 270
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 271
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 272
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 274
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800d9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 275
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 276
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 278
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 279
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 200
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
