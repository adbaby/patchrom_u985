.class Lcom/android/server/TwService$MyHanlder;
.super Landroid/os/Handler;
.source "TwService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHanlder"
.end annotation


# static fields
.field private static final GET_GSM_AUTH:I = 0x2

.field private static final GET_IMSI:I = 0x1

.field private static final GET_SIM_TYPE:I = 0x0

.field private static final GET_UMTS_AUTH:I = 0x3


# instance fields
.field private ar:Landroid/os/AsyncResult;

.field final synthetic this$0:Lcom/android/server/TwService;


# direct methods
.method private constructor <init>(Lcom/android/server/TwService;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TwService;Lcom/android/server/TwService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/TwService$MyHanlder;-><init>(Lcom/android/server/TwService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 417
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] msg.what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] GET_SIM_TYPE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v6, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_SIM_TYPE_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v6}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getIccCardType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto :goto_0

    .line 426
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, imsi:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v1, mStringBuffer:Ljava/lang/StringBuffer;
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getIdentity] imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_1

    .line 431
    const-string v6, "@wlan.mnc0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v6, ".mcc"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const-string v6, ".3gppnetwork.org"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] GET_IMSI = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v6, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_IMSI_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v6}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v6

    invoke-static {v6, v0}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 442
    .end local v0           #imsi:Ljava/lang/String;
    .end local v1           #mStringBuffer:Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] GET_GSM_AUTH rand = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 444
    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->SIMData:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/TwService;->access$200(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->doSimAuth(Ljava/lang/String;)Landroid/telephony/SimAuthCnf;

    move-result-object v2

    .line 445
    .local v2, sim:Landroid/telephony/SimAuthCnf;
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] GET_GSM_AUTH = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v6, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_GSM_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v6}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/telephony/SimAuthCnf;->sres:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/telephony/SimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 450
    .end local v2           #sim:Landroid/telephony/SimAuthCnf;
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->USIMData:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/TwService;->access$300(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 451
    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->USIMData:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/TwService;->access$300(Lcom/android/server/TwService;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, tmpAr:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/TwService$MyHanlder;->this$0:Lcom/android/server/TwService;

    #getter for: Lcom/android/server/TwService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/TwService;->access$100(Lcom/android/server/TwService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v3, v7

    aget-object v8, v3, v9

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->doUsimAuth(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/UsimAuthCnf;

    move-result-object v4

    .line 453
    .local v4, usim:Landroid/telephony/UsimAuthCnf;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    .local v5, usimsb:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Landroid/telephony/UsimAuthCnf;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    iget-object v6, v4, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/telephony/UsimAuthCnf;->resAuts:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    :cond_2
    iget-object v6, v4, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/telephony/UsimAuthCnf;->ck:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    :cond_3
    iget-object v6, v4, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/telephony/UsimAuthCnf;->ik:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    :cond_4
    iget-object v6, v4, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/telephony/UsimAuthCnf;->kc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    :cond_5
    const-string v6, "TwService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] GET_UMTS_AUTH = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v6, Landroid/net/wifi/TwNative$T_Tw_Event;->EVENT_SET_UMTS_AUTH_ACTION:Landroid/net/wifi/TwNative$T_Tw_Event;

    invoke-virtual {v6}, Landroid/net/wifi/TwNative$T_Tw_Event;->ordinal()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/wifi/TwNative;->TwDoCommand(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
