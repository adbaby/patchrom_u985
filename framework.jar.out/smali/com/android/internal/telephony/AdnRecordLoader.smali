.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_ANR_RECORD_SIZE_DONE:I = 0x8

.field static final EVENT_EF_LINEAR_EMAIL_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_EF_LINEAR_IAP_RECORD_SIZE_DONE:I = 0xa

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EF_LINEAR_SNE_RECORD_SIZE_DONE:I = 0xc

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x7

.field static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_UPDATE_SNE_RECORD_DONE:I = 0xd

.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field adnEfid:[I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrEfid:[I

.field anrIndex:I

.field ef:I

.field emailEfid:[I

.field extInx:I

.field extRecId:I

.field extensionEF:I

.field iapEfid:[I

.field pbrIndex:I

.field pendingExtLoads:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field recordNumberInIap:I

.field result:Ljava/lang/Object;

.field sfi:[I

.field snelEfid:[I

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    iput v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    .line 40
    iput v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnEfid:[I

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfid:[I

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEfid:[I

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:[I

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrEfid:[I

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->snelEfid:[I

    .line 52
    iput v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 241
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 639
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    if-nez v2, :cond_1

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 644
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 646
    :cond_1
    :goto_1
    return-void

    .line 243
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 244
    .local v14, ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v13, v0

    .line 246
    .local v13, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 247
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 627
    .end local v13           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v16

    .line 628
    .local v16, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 634
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 251
    .end local v16           #exc:Ljava/lang/RuntimeException;
    .restart local v13       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v14       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 262
    .local v18, recordSize:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v3, 0x6f3a

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-nez v2, :cond_4

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v18, v3

    if-le v2, v3, :cond_4

    .line 263
    :cond_3
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  ++++++++++error  1recordSize.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordSize[2]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 266
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v3, 0x6f3a

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-lez v2, :cond_6

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    const/4 v3, 0x2

    aget v3, v18, v3

    if-le v2, v3, :cond_6

    .line 267
    :cond_5
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  ++++++++++error  2recordSize.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extRecId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordSize[2]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 271
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v3, 0x6f3a

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-lez v2, :cond_8

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    const/4 v3, 0x2

    aget v3, v18, v3

    if-le v2, v3, :cond_8

    .line 273
    :cond_7
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  ++++++++++error  3recordSize.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordSize[2]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 277
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v3, 0x6f3a

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-nez v2, :cond_a

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v18, v3

    if-le v2, v3, :cond_a

    .line 278
    :cond_9
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  ++++++++++error  4recordSize.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordSize[2]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 282
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v3, 0x6f3a

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-lez v2, :cond_c

    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_c

    .line 283
    :cond_b
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  ++++++++++error  5recordSize.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 287
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v3, 0x6f3a

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v18, v3

    if-le v2, v3, :cond_d

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v18, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnEfid:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 290
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  >250 getEFLinearRecordSize [ef]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recordNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    goto/16 :goto_0

    .line 296
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-nez v2, :cond_f

    .line 297
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  buildAdnString [ef]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v2, 0x0

    aget v2, v18, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(II)[B

    move-result-object v5

    .line 299
    .local v5, data:[B
    if-nez v5, :cond_e

    .line 300
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "wrong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 304
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 309
    .end local v5           #data:[B
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-nez v2, :cond_10

    invoke-virtual {v13}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_10

    .line 310
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  getEFLinearRecordSize [extensionEF]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    goto/16 :goto_0

    .line 316
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    const/16 v3, 0x6f4a

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    const/16 v3, 0x4f4a

    if-ne v2, v3, :cond_13

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-eqz v2, :cond_13

    .line 317
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  buildEXT1String [ef]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordSize[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/AdnRecord;->buildEXT1String(I)[B

    move-result-object v5

    .line 320
    .restart local v5       #data:[B
    if-nez v5, :cond_12

    .line 321
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 325
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 328
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 330
    .end local v5           #data:[B
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    const/16 v3, 0x6f4b

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    if-eqz v2, :cond_0

    .line 331
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MY  buildEXT2String [ef]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "recordSize[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/AdnRecord;->buildEXT1String(I)[B

    move-result-object v5

    .line 334
    .restart local v5       #data:[B
    if-nez v5, :cond_14

    .line 335
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 339
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 342
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 348
    .end local v5           #data:[B
    .end local v13           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v18           #recordSize:[I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 349
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v6, v0

    .line 351
    .local v6, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 352
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get email EF record size failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 355
    :cond_15
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v20, v0

    .line 357
    .local v20, recordSizeEmail:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_17

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    const/4 v3, 0x2

    aget v3, v20, v3

    if-le v2, v3, :cond_17

    .line 358
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 362
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    const/4 v3, 0x2

    aget v3, v20, v3

    if-le v2, v3, :cond_18

    .line 363
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    const/4 v3, 0x2

    aget v3, v20, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfid:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    goto/16 :goto_0

    .line 373
    :cond_18
    const/4 v2, 0x0

    aget v2, v20, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    aget v7, v7, v8

    invoke-virtual {v6, v2, v3, v4, v7}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v5

    .line 374
    .restart local v5       #data:[B
    if-nez v5, :cond_19

    .line 375
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 378
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .end local v6           #adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v7, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 381
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 385
    .end local v5           #data:[B
    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v20           #recordSizeEmail:[I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 386
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v6, v0

    .line 388
    .restart local v6       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1a

    .line 389
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get email EF record size failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 392
    :cond_1a
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 394
    .local v22, recordSizeSne:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_1c

    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v22, v3

    if-le v2, v3, :cond_1c

    .line 395
    :cond_1b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 399
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v22, v3

    if-le v2, v3, :cond_1d

    .line 400
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v22, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->snelEfid:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    goto/16 :goto_0

    .line 409
    :cond_1d
    const/4 v2, 0x0

    aget v2, v22, v2

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->buildSneString(I)[B

    move-result-object v5

    .line 410
    .restart local v5       #data:[B
    const-string v2, "ZLian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdnRecordLoader: EVENT_EF_LINEAR_SNE_RECORD_SIZE_DONE: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-nez v5, :cond_1e

    .line 412
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 415
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .end local v6           #adn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v7, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 418
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 422
    .end local v5           #data:[B
    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v22           #recordSizeSne:[I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 423
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v6, v0

    .line 425
    .restart local v6       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    .line 426
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get email EF record size failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 429
    :cond_1f
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 431
    .local v21, recordSizeIap:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_21

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v21, v3

    if-le v2, v3, :cond_21

    .line 432
    :cond_20
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 436
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v21, v3

    if-le v2, v3, :cond_22

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v21, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEfid:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    goto/16 :goto_0

    .line 448
    :cond_22
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(III)[B

    move-result-object v5

    .line 450
    .restart local v5       #data:[B
    if-nez v5, :cond_23

    .line 451
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 454
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .end local v6           #adn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 458
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 462
    .end local v5           #data:[B
    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v21           #recordSizeIap:[I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 463
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v6, v0

    .line 464
    .restart local v6       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_24

    .line 465
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get email EF record size failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 468
    :cond_24
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v19, v0

    .line 470
    .local v19, recordSizeAnr:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-lez v2, :cond_26

    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v19, v3

    if-le v2, v3, :cond_26

    .line 471
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 475
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v19, v3

    if-le v2, v3, :cond_27

    .line 476
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v19, v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrEfid:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    goto/16 :goto_0

    .line 485
    :cond_27
    const/4 v2, 0x0

    aget v7, v19, v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    aget v10, v2, v3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrIndex:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(IIIII)[B

    move-result-object v5

    .line 486
    .restart local v5       #data:[B
    if-nez v5, :cond_28

    .line 488
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ADN format"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 492
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 495
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 499
    .end local v5           #data:[B
    .end local v6           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v19           #recordSizeAnr:[I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 500
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    .line 501
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF adn email record failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 504
    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 505
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 509
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 510
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2a

    .line 511
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF adn sne record failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 514
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 518
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 519
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 520
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF adn anr record failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 523
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 524
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 527
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 528
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2c

    .line 529
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF adn anr record failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 532
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 537
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 538
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2d

    .line 539
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF adn record failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 542
    :cond_2d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 546
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 547
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 549
    .restart local v5       #data:[B
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2e

    .line 550
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 560
    :cond_2e
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-direct {v6, v2, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 561
    .restart local v6       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 563
    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v4, v6, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 577
    .end local v5           #data:[B
    .end local v6           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 578
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 579
    .restart local v5       #data:[B
    iget-object v2, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v6, v0

    .line 581
    .restart local v6       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2f

    .line 582
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 585
    :cond_2f
    sget-object v2, Lcom/android/internal/telephony/AdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADN extension EF: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    .line 592
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 598
    .end local v5           #data:[B
    .end local v6           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #ar:Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v14, v0

    .line 599
    .restart local v14       #ar:Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v15, v0

    .line 601
    .local v15, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_30

    .line 602
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v4, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 605
    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 607
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 609
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    .local v23, s:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 610
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v4, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v6, v3, v4, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 611
    .restart local v6       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 618
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v4, v6, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 609
    :cond_31
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 116
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 117
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 123
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 97
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 98
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 99
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 105
    return-void
.end method

.method public updateAdnEF(Lcom/android/internal/telephony/AdnRecord;IIII[ILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "adnEfid"
    .parameter "pin2"
    .parameter "extRecId"
    .parameter "response"

    .prologue
    .line 153
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 154
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 155
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 156
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    .line 157
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnEfid:[I

    .line 158
    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 159
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 160
    iput p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 164
    return-void
.end method

.method public updateAnrEF(Lcom/android/internal/telephony/AdnRecord;IIII[I[ILjava/lang/String;Landroid/os/Message;I)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "anrEfid"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "response"
    .parameter "anrIndex"

    .prologue
    .line 201
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 202
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 203
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 204
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    .line 205
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrEfid:[I

    .line 206
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:[I

    .line 207
    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 208
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 209
    iput p10, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrIndex:I

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 213
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 140
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 141
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 142
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 143
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 144
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 148
    return-void
.end method

.method public updateEmailEF(Lcom/android/internal/telephony/AdnRecord;IIIII[I[ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "indexInEmail"
    .parameter "emailEfid"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 169
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 170
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 171
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 172
    iput p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumberInIap:I

    .line 173
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    .line 174
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfid:[I

    .line 175
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:[I

    .line 176
    iput-object p10, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 177
    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 182
    return-void
.end method

.method public updateIapEF(Lcom/android/internal/telephony/AdnRecord;IIII[ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "iapEfid"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 187
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 188
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 189
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    .line 190
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEfid:[I

    .line 191
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 196
    return-void
.end method

.method public updateSneEF(Lcom/android/internal/telephony/AdnRecord;IIII[I[ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pbrIndex"
    .parameter "snelEfid"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 218
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 219
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 220
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 221
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pbrIndex:I

    .line 222
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->snelEfid:[I

    .line 223
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:[I

    .line 224
    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 225
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 230
    return-void
.end method
