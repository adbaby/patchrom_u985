.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mOriginatingAddress:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mimeType:Ljava/lang/String;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 67
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private dispatchWapPdu_CMCC_WBXML([BI[[B)V
    .locals 5
    .parameter "pdu"
    .parameter "port"
    .parameter "pdus"

    .prologue
    .line 1010
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC_WBXML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1015
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1021
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1023
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method private dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 982
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTIVITY_WBXML: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 988
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method private dispatchWapPdu_EMN_WBXML([BIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 996
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EMN_WBXML: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1002
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 396
    new-array v2, p5, [B

    .line 397
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    add-int v1, p4, p5

    .line 399
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 400
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 407
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 409
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 381
    new-array v0, p5, [B

    .line 382
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 389
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 391
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private dispatchWapPdu_SI([BIII)Z
    .locals 27
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 415
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, p4

    move/from16 v0, v23

    new-array v10, v0, [B

    .line 416
    .local v10, data:[B
    const/16 v23, 0x0

    array-length v0, v10

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    const/4 v11, 0x0

    .line 420
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 423
    .local v22, wbxml_version:I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 425
    :cond_0
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push version is Not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v23, 0x0

    move v11, v12

    .line 741
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v23

    .line 430
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "licong--Received SI push wbxml_version:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v23, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v23

    if-nez v23, :cond_2

    .line 436
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push publicId error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/16 v23, 0x0

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 439
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v17

    .line 440
    .local v17, publicId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int/lit8 v11, v23, 0x1

    .line 441
    .end local v12           #index:I
    .restart local v11       #index:I
    const-wide/16 v23, 0x5

    cmp-long v23, v23, v17

    if-eqz v23, :cond_3

    .line 442
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push Not SI index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 447
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v23

    if-nez v23, :cond_4

    .line 448
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push charset error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 451
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    .line 452
    .local v7, charSet:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 454
    const-wide/16 v23, 0x6a

    cmp-long v23, v23, v7

    if-eqz v23, :cond_5

    const-wide/16 v23, 0x4

    cmp-long v23, v23, v7

    if-eqz v23, :cond_5

    .line 455
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push charset Not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 461
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v23

    if-nez v23, :cond_6

    .line 462
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push table_strlen error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 465
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v20

    .line 466
    .local v20, table_strlen:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 467
    const-wide/16 v23, 0x0

    cmp-long v23, v23, v20

    if-eqz v23, :cond_7

    .line 468
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push string table Not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 472
    :cond_7
    int-to-long v0, v11

    move-wide/from16 v23, v0

    add-long v23, v23, v20

    move-wide/from16 v0, v23

    long-to-int v11, v0

    .line 474
    array-length v0, v10

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-lt v11, v0, :cond_8

    .line 475
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push No valid content index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 480
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-wide v7, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    .line 486
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    shr-int/lit8 v6, v23, 0x7

    .line 487
    .local v6, attrTag:I
    aget-byte v23, v10, v11

    and-int/lit8 v23, v23, 0x40

    shr-int/lit8 v9, v23, 0x6

    .line 488
    .local v9, conTag:I
    aget-byte v23, v10, v11

    and-int/lit8 v4, v23, 0x3f

    .line 489
    .local v4, SI_tag:I
    const/16 v23, 0x5

    move/from16 v0, v23

    if-eq v0, v4, :cond_9

    .line 490
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push Not SI 2 index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 493
    :cond_9
    add-int v19, v6, v9

    .line 494
    .local v19, siEndTagCount:I
    add-int/lit8 v11, v11, 0x1

    .line 496
    :cond_a
    :goto_1
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_1e

    if-lez v19, :cond_1e

    .line 498
    aget-byte v23, v10, v11

    and-int/lit8 v4, v23, 0x3f

    .line 499
    sparse-switch v4, :sswitch_data_0

    .line 697
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push not handled tag:0x%x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 501
    :sswitch_0
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 502
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push end tag not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 505
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 506
    add-int/lit8 v19, v19, -0x1

    .line 507
    goto :goto_1

    .line 509
    :sswitch_1
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    shr-int/lit8 v6, v23, 0x7

    .line 510
    aget-byte v23, v10, v11

    and-int/lit8 v23, v23, 0x40

    shr-int/lit8 v9, v23, 0x6

    .line 511
    add-int v23, v6, v9

    move/from16 v0, v23

    int-to-long v13, v0

    .line 512
    .local v13, indicationEndTagcount:J
    add-int/lit8 v11, v11, 0x1

    .line 513
    :goto_2
    array-length v0, v10

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-gt v11, v0, :cond_a

    const-wide/16 v23, 0x0

    cmp-long v23, v13, v23

    if-lez v23, :cond_a

    .line 514
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 515
    .local v5, attrId:I
    packed-switch v5, :pswitch_data_0

    .line 676
    :pswitch_0
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push attribute content type not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 517
    :pswitch_1
    const-wide/16 v23, 0x1

    sub-long v13, v13, v23

    .line 518
    add-int/lit8 v11, v11, 0x1

    .line 519
    goto :goto_2

    .line 521
    :pswitch_2
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 522
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push string table not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 525
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 529
    const-wide/16 v23, 0x4

    cmp-long v23, v23, v7

    if-nez v23, :cond_d

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextStringLatin1(I)Z

    move-result v23

    if-nez v23, :cond_e

    .line 531
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push latin1 text error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 535
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    move-result v23

    if-nez v23, :cond_e

    .line 536
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push utf8 text error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 540
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 542
    goto/16 :goto_2

    .line 545
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 546
    add-int/lit8 v11, v11, 0x1

    .line 547
    goto/16 :goto_2

    .line 549
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x6

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 550
    add-int/lit8 v11, v11, 0x1

    .line 551
    goto/16 :goto_2

    .line 553
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 554
    add-int/lit8 v11, v11, 0x1

    .line 555
    goto/16 :goto_2

    .line 557
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x8

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 558
    add-int/lit8 v11, v11, 0x1

    .line 559
    goto/16 :goto_2

    .line 561
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x9

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 562
    add-int/lit8 v11, v11, 0x1

    .line 563
    goto/16 :goto_2

    .line 565
    :pswitch_8
    add-int/lit8 v11, v11, 0x1

    .line 566
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v24, 0xc3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    .line 567
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push data type Not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 570
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 571
    aget-byte v23, v10, v11

    add-int v11, v11, v23

    .line 572
    add-int/lit8 v11, v11, 0x1

    .line 573
    goto/16 :goto_2

    .line 575
    :pswitch_9
    add-int/lit8 v11, v11, 0x1

    .line 576
    aget-byte v23, v10, v11

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 577
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0B string type not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 580
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v23

    if-nez v23, :cond_11

    .line 582
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0B url parse error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 585
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 587
    goto/16 :goto_2

    .line 589
    :pswitch_a
    add-int/lit8 v11, v11, 0x1

    .line 590
    aget-byte v23, v10, v11

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    .line 591
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0C string type not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 594
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v23

    if-nez v23, :cond_13

    .line 596
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0C url parse error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 599
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v25, Ljava/lang/String;

    const-string v26, "http://"

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 604
    :pswitch_b
    add-int/lit8 v11, v11, 0x1

    .line 605
    aget-byte v23, v10, v11

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    .line 606
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0D string type not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 609
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v23

    if-nez v23, :cond_15

    .line 611
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0D url parse error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 614
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v25, Ljava/lang/String;

    const-string v26, "http://www."

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 619
    :pswitch_c
    add-int/lit8 v11, v11, 0x1

    .line 620
    aget-byte v23, v10, v11

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    .line 621
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0E string type not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 624
    :cond_16
    add-int/lit8 v11, v11, 0x1

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v23

    if-nez v23, :cond_17

    .line 626
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0E url parse error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 629
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v25, Ljava/lang/String;

    const-string v26, "https://"

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 634
    :pswitch_d
    add-int/lit8 v11, v11, 0x1

    .line 635
    aget-byte v23, v10, v11

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 636
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0F string type not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 639
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v23

    if-nez v23, :cond_19

    .line 641
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push href 0x0F url parse error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 644
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v25, Ljava/lang/String;

    const-string v26, "https://www."

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 649
    :pswitch_e
    add-int/lit8 v11, v11, 0x1

    .line 650
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v24, 0xc3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    .line 651
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push data type Not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 654
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    .line 655
    aget-byte v23, v10, v11

    add-int v11, v11, v23

    .line 656
    add-int/lit8 v11, v11, 0x1

    .line 657
    goto/16 :goto_2

    .line 659
    :pswitch_f
    add-int/lit8 v11, v11, 0x1

    .line 660
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu_default. data[index] 41= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-byte v25, v10, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "index :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    aget-byte v23, v10, v11

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1b

    .line 662
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push SI ID type Not support index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 666
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 668
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received SI push SI ID parse error index at:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 671
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v23

    add-int v11, v11, v23

    .line 673
    goto/16 :goto_2

    .line 683
    .end local v5           #attrId:I
    .end local v13           #indicationEndTagcount:J
    :sswitch_2
    aget-byte v23, v10, v11

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    shr-int/lit8 v6, v23, 0x7

    .line 684
    aget-byte v23, v10, v11

    and-int/lit8 v23, v23, 0x40

    shr-int/lit8 v9, v23, 0x6

    .line 685
    add-int v15, v6, v9

    .line 686
    .local v15, infoEndTagCount:I
    add-int/lit8 v11, v11, 0x1

    .line 687
    :goto_3
    array-length v0, v10

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-gt v11, v0, :cond_a

    if-lez v15, :cond_a

    .line 689
    const/16 v23, 0x1

    aget-byte v24, v10, v11

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 690
    add-int/lit8 v15, v15, -0x1

    .line 692
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 704
    .end local v15           #infoEndTagCount:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 705
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu_default. si_id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v23, "WAP PUSH"

    const-string v24, "delete all the push message with the same si_id"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1f
    :goto_4
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI mimeType:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI transactionId:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI pduType:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI pdu :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI action = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI CharSet = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI href = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_20

    .line 723
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI NotifyText length = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_20
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI si_id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu SI address = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v16, Landroid/content/Intent;

    const-string v23, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string/jumbo v23, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    const-string/jumbo v23, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    const-string v23, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 733
    const-string v23, "href"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v23, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v23, "NotifyText"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v23, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v23, v0

    const-string v24, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 741
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 708
    .end local v16           #intent:Landroid/content/Intent;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 709
    :cond_22
    const-string v23, "WAP PUSH"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dispatchWapPdu_default. si_id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v23, "WAP PUSH"

    const-string v24, "don\'t save the push message"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private dispatchWapPdu_SL([BIII)Z
    .locals 23
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 749
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, p4

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 750
    .local v9, data:[B
    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    const/4 v10, 0x0

    .line 754
    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v19, v9, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 755
    .local v18, wbxml_version:I
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 756
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push version is Not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/16 v19, 0x0

    move v10, v11

    .line 960
    .end local v11           #index:I
    .restart local v10       #index:I
    :goto_0
    return v19

    .line 761
    .end local v10           #index:I
    .restart local v11       #index:I
    :cond_0
    new-instance v19, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v19

    if-nez v19, :cond_1

    .line 765
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push publicId error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v19, 0x0

    move v10, v11

    .end local v11           #index:I
    .restart local v10       #index:I
    goto :goto_0

    .line 768
    .end local v10           #index:I
    .restart local v11       #index:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v13

    .line 769
    .local v13, publicId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int/lit8 v10, v19, 0x1

    .line 770
    .end local v11           #index:I
    .restart local v10       #index:I
    const-wide/16 v19, 0x6

    cmp-long v19, v19, v13

    if-eqz v19, :cond_2

    .line 771
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push Not SL index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v19, 0x0

    goto :goto_0

    .line 776
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v19

    if-nez v19, :cond_3

    .line 777
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push charset error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 780
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    .line 781
    .local v6, charSet:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 783
    const-wide/16 v19, 0x6a

    cmp-long v19, v19, v6

    if-eqz v19, :cond_4

    const-wide/16 v19, 0x4

    cmp-long v19, v19, v6

    if-eqz v19, :cond_4

    .line 784
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push charset Not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 790
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 791
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SI push table_strlen error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 794
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    .line 795
    .local v16, table_strlen:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 796
    const-wide/16 v19, 0x0

    cmp-long v19, v19, v16

    if-eqz v19, :cond_6

    .line 797
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push string table Not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 801
    :cond_6
    int-to-long v0, v10

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    long-to-int v10, v0

    .line 803
    array-length v0, v9

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-lt v10, v0, :cond_7

    .line 804
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push No valid content index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 809
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    .line 814
    aget-byte v19, v9, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    shr-int/lit8 v5, v19, 0x7

    .line 815
    .local v5, attrTag:I
    aget-byte v19, v9, v10

    and-int/lit8 v19, v19, 0x40

    shr-int/lit8 v8, v19, 0x6

    .line 816
    .local v8, conTag:I
    aget-byte v19, v9, v10

    and-int/lit8 v4, v19, 0x3f

    .line 817
    .local v4, SL_tag:I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v0, v4, :cond_8

    .line 818
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push Not SI 2 index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 821
    :cond_8
    add-int v15, v5, v8

    .line 822
    .local v15, slEndTagCount:I
    add-int/lit8 v10, v10, 0x1

    .line 824
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_14

    if-lez v15, :cond_14

    .line 826
    aget-byte v19, v9, v10

    and-int/lit8 v4, v19, 0x3f

    .line 827
    packed-switch v4, :pswitch_data_0

    .line 919
    :pswitch_0
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push not handled tag:0x%x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 829
    :pswitch_1
    aget-byte v19, v9, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xc0

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 830
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push end tag not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 833
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 834
    add-int/lit8 v15, v15, -0x1

    .line 835
    goto :goto_1

    .line 837
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 838
    add-int/lit8 v10, v10, 0x1

    .line 839
    goto :goto_1

    .line 841
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 842
    add-int/lit8 v10, v10, 0x1

    .line 843
    goto/16 :goto_1

    .line 845
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 846
    add-int/lit8 v10, v10, 0x1

    .line 847
    goto/16 :goto_1

    .line 849
    :pswitch_5
    add-int/lit8 v10, v10, 0x1

    .line 850
    aget-byte v19, v9, v10

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 851
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x08 string type not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 854
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v19

    if-nez v19, :cond_b

    .line 856
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x08 url parse error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 859
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 861
    goto/16 :goto_1

    .line 863
    :pswitch_6
    add-int/lit8 v10, v10, 0x1

    .line 864
    aget-byte v19, v9, v10

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 865
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x09 string type not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 868
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v19

    if-nez v19, :cond_d

    .line 870
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x09 url parse error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 873
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/String;

    const-string v22, "http://"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 875
    goto/16 :goto_1

    .line 877
    :pswitch_7
    add-int/lit8 v10, v10, 0x1

    .line 878
    aget-byte v19, v9, v10

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 879
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x0A string type not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 882
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v19

    if-nez v19, :cond_f

    .line 884
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x0A url parse error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 887
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/String;

    const-string v22, "http://www."

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 889
    goto/16 :goto_1

    .line 891
    :pswitch_8
    add-int/lit8 v10, v10, 0x1

    .line 892
    aget-byte v19, v9, v10

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 893
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x0B string type not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 896
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v19

    if-nez v19, :cond_11

    .line 898
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x0B url parse error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 901
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/String;

    const-string v22, "https://"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 903
    goto/16 :goto_1

    .line 905
    :pswitch_9
    add-int/lit8 v10, v10, 0x1

    .line 906
    aget-byte v19, v9, v10

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 907
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x0C string type not support index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 910
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v19

    if-nez v19, :cond_13

    .line 912
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received SL push href 0x0C url parse error index at:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 915
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/String;

    const-string v22, "https://www."

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v19

    add-int v10, v10, v19

    .line 917
    goto/16 :goto_1

    .line 926
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "application/x-oma-DCD:DCD.ua"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 928
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SL_DCD: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v19, "href"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v19, v0

    const-string v20, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 934
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 937
    .end local v12           #intent:Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 938
    const-string v19, "WAP PUSH"

    const-string v20, "Received SL push not handled when action is cache "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 942
    :cond_16
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL mimeType:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL pduType:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL pdu :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL action = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL CharSet = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL href = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v19, "WAP PUSH"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dispatchWapPdu SL address = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    const-string/jumbo v19, "transactionId"

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    const-string/jumbo v19, "pduType"

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 954
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 955
    const-string v19, "href"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    const-string v19, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    const-string v19, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v19, v0

    const-string v20, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 960
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private dispatchWapPdu_SYNML_NOTIFICATION([BIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 968
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SYNML_NOTIFICATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 361
    new-array v2, p6, [B

    .line 362
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    add-int v1, p5, p6

    .line 366
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 367
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 374
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 376
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 377
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([BI[[B)I
    .locals 25
    .parameter "pdu"
    .parameter "port"
    .parameter "pdus"

    .prologue
    .line 89
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rx: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v23, 0x0

    .line 93
    .local v23, index:I
    add-int/lit8 v24, v23, 0x1

    .end local v23           #index:I
    .local v24, index:I
    aget-byte v3, p1, v23

    and-int/lit16 v5, v3, 0xff

    .line 94
    .local v5, transactionId:I
    add-int/lit8 v23, v24, 0x1

    .end local v24           #index:I
    .restart local v23       #index:I
    aget-byte v3, p1, v24

    and-int/lit16 v6, v3, 0xff

    .line 95
    .local v6, pduType:I
    const/4 v8, 0x0

    .line 97
    .local v8, headerLength:I
    const/4 v3, 0x6

    if-eq v6, v3, :cond_0

    const/4 v3, 0x7

    if-eq v6, v3, :cond_0

    .line 100
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v3, 0x1

    .line 356
    :goto_0
    return v3

    .line 105
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. Header Length error index at:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v3, 0x2

    goto :goto_0

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    long-to-int v8, v3

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int/lit8 v23, v3, 0x2

    .line 122
    move/from16 v7, v23

    .line 136
    .local v7, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. Header Content-Type error index at:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v3, 0x2

    goto :goto_0

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    .line 145
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. mimeType="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v16, v0

    .line 149
    .local v16, binaryContentType:I
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU.  binaryContentType= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sparse-switch v16, :sswitch_data_0

    .line 199
    :goto_1
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 153
    :sswitch_0
    const-string v3, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    .line 254
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int v23, v23, v3

    .line 256
    add-int v17, v7, v8

    .line 257
    .local v17, dataIndex:I
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU.  index= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU.  headerStartIndex= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU.  headerLength= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v20, 0x0

    .line 262
    .local v20, dispatchedByApplication:Z
    sparse-switch v16, :sswitch_data_1

    .line 347
    :cond_3
    :goto_3
    if-nez v20, :cond_4

    .line 348
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----Pdu_default---Received PDU.  transactionId= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----Pdu_default---Received PDU.  pduType= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----Pdu_default---Received PDU.  mimeType= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----Pdu_default---Received PDU.  headerStartIndex= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----Pdu_default---Received PDU.  headerLength= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 356
    :cond_4
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 156
    .end local v17           #dataIndex:I
    .end local v20           #dispatchedByApplication:Z
    :sswitch_1
    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 159
    :sswitch_2
    const-string v3, "application/vnd.wap.sic"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 162
    :sswitch_3
    const-string v3, "application/vnd.wap.slc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 165
    :sswitch_4
    const-string v3, "application/vnd.wap.coc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 168
    :sswitch_5
    const-string v3, "application/vnd.wap.mms-message"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 171
    :sswitch_6
    const-string v3, "application/vnd.docomo.pf"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 175
    :sswitch_7
    const-string v3, "application/vnd.syncml.notification"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 180
    :sswitch_8
    const-string v3, "application/vnd.wap.connectivity-wbxml"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 185
    :sswitch_9
    const-string v3, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 191
    :sswitch_a
    const-string v3, "application/vnd.cmcc.setting+wbxml"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    .line 195
    :sswitch_b
    const-string v3, "application/vnd.cmcc.bombing+wbxml"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_1

    .line 205
    .end local v16           #binaryContentType:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 206
    const/16 v16, 0x4a

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 207
    .end local v16           #binaryContentType:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 208
    const/16 v16, 0x4b

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 209
    .end local v16           #binaryContentType:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 210
    const/16 v16, 0x2e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 211
    .end local v16           #binaryContentType:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 212
    const/16 v16, 0x30

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 213
    .end local v16           #binaryContentType:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 214
    const/16 v16, 0x32

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 215
    .end local v16           #binaryContentType:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 216
    const/16 v16, 0x3e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 217
    .end local v16           #binaryContentType:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 218
    const/16 v16, 0x310

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 220
    .end local v16           #binaryContentType:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 221
    const/16 v16, 0x44

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 222
    .end local v16           #binaryContentType:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/x-oma-DCD:DCD.ua"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 223
    const/16 v16, 0x30

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 225
    .end local v16           #binaryContentType:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 226
    const/16 v16, 0x36

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 229
    .end local v16           #binaryContentType:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 230
    const/16 v16, 0x30a

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 232
    .end local v16           #binaryContentType:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.cmcc.setting+wbxml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 233
    const/16 v16, 0x30e

    .line 234
    .restart local v16       #binaryContentType:I
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----CMCC--binaryContentType = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 237
    .end local v16           #binaryContentType:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.cmcc.bombing+wbxml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 238
    const/16 v16, 0x25

    .line 239
    .restart local v16       #binaryContentType:I
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----CMCC--binaryContentType = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 243
    .end local v16           #binaryContentType:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 244
    const/16 v16, 0x45

    .restart local v16       #binaryContentType:I
    goto/16 :goto_2

    .line 248
    .end local v16           #binaryContentType:I
    :cond_13
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v3, 0x1

    goto/16 :goto_0

    .restart local v16       #binaryContentType:I
    .restart local v17       #dataIndex:I
    .restart local v20       #dispatchedByApplication:Z
    :sswitch_c
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 264
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 265
    const/16 v20, 0x1

    .line 266
    goto/16 :goto_3

    :sswitch_d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 268
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 269
    const/16 v20, 0x1

    .line 270
    goto/16 :goto_3

    .line 274
    :sswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_SI([BIII)Z

    move-result v20

    .line 275
    if-nez v20, :cond_3

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_3

    .line 282
    :sswitch_f
    new-instance v19, Ljava/lang/String;

    const-string v3, "application/x-oma-DCD:DCD.ua"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 283
    .local v19, dcd_id_string:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 284
    .local v18, dcd_id_byte:[B
    move-object/from16 v0, v18

    array-length v3, v0

    if-lt v8, v3, :cond_15

    .line 285
    const/16 v21, 0x0

    .line 286
    .local v21, headerStartIndexOffset:I
    :goto_4
    move-object/from16 v0, v18

    array-length v3, v0

    add-int v3, v3, v21

    if-gt v3, v8, :cond_15

    .line 288
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    move-object/from16 v0, v18

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_14

    .line 289
    add-int v3, v7, v21

    add-int v3, v3, v22

    aget-byte v3, p1, v3

    aget-byte v4, v18, v22

    if-eq v3, v4, :cond_16

    .line 293
    :cond_14
    move-object/from16 v0, v18

    array-length v3, v0

    move/from16 v0, v22

    if-ne v0, v3, :cond_17

    .line 294
    const-string v3, "application/x-oma-DCD:DCD.ua"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    .line 302
    .end local v21           #headerStartIndexOffset:I
    .end local v22           #i:I
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_SL([BIII)Z

    move-result v20

    .line 303
    if-nez v20, :cond_3

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_3

    .line 288
    .restart local v21       #headerStartIndexOffset:I
    .restart local v22       #i:I
    :cond_16
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 297
    :cond_17
    add-int/lit8 v21, v21, 0x1

    .line 298
    goto :goto_4

    .line 310
    .end local v18           #dcd_id_byte:[B
    .end local v19           #dcd_id_string:Ljava/lang/String;
    .end local v21           #headerStartIndexOffset:I
    .end local v22           #i:I
    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_SYNML_NOTIFICATION([BIII)V

    .line 311
    const/16 v20, 0x1

    .line 312
    goto/16 :goto_3

    .line 316
    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V

    .line 317
    const/16 v20, 0x1

    .line 318
    goto/16 :goto_3

    .line 322
    :sswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN_WBXML([BIII)V

    .line 324
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CMCC_WBXML([BI[[B)V

    .line 326
    const/16 v20, 0x1

    .line 327
    goto/16 :goto_3

    .line 333
    :sswitch_13
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CMCC_WBXML([BI[[B)V

    .line 334
    const/16 v20, 0x1

    .line 335
    goto/16 :goto_3

    .line 339
    :sswitch_14
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CMCC_WBXML([BI[[B)V

    .line 340
    const/16 v20, 0x1

    .line 341
    goto/16 :goto_3

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_b
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_8
        0x3e -> :sswitch_5
        0x44 -> :sswitch_7
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x30a -> :sswitch_9
        0x30e -> :sswitch_a
        0x310 -> :sswitch_6
    .end sparse-switch

    .line 262
    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_14
        0x2e -> :sswitch_e
        0x30 -> :sswitch_f
        0x32 -> :sswitch_c
        0x36 -> :sswitch_11
        0x3e -> :sswitch_d
        0x44 -> :sswitch_10
        0x30a -> :sswitch_12
        0x30e -> :sswitch_13
    .end sparse-switch
.end method

.method public dispatchWapPdu([BLjava/lang/String;I[[B)I
    .locals 1
    .parameter "pdu"
    .parameter "address"
    .parameter "port"
    .parameter "pdus"

    .prologue
    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BI[[B)I

    move-result v0

    return v0
.end method
