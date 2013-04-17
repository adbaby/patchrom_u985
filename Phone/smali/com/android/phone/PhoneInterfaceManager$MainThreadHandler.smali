.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    const-string v13, "PhoneInterfaceManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .local v7, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v14, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v13, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13, v4}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .end local v4           #onCompleted:Landroid/os/Message;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_0

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_0

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v13, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_1
    monitor-enter v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v13

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v13

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v13}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v13}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v3, 0x0

    .local v3, hungUp:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .local v6, phoneType:I
    const/4 v13, 0x2

    if-ne v6, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CMD_END_CALL: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v3, :cond_3

    const-string v13, "hung up!"

    :goto_3
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v14, v13}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v13

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v13

    :cond_1
    const/4 v13, 0x1

    if-ne v6, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    goto :goto_2

    :cond_2
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected phone type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_3
    const-string v13, "no call to hang up"

    goto :goto_3

    .end local v3           #hungUp:Z
    .end local v6           #phoneType:I
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "[ZTE_CMMB] PhoneInterfaceManager.java CMD_DO_SIM_AUTH "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v13, 0x3f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .restart local v4       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v14

    iget-object v13, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13, v4}, Lcom/android/internal/telephony/IccCard;->doSimAuth(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v4           #onCompleted:Landroid/os/Message;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "[ZTE_CMMB] PhoneInterfaceManager.java EVENT_DO_SIM_AUTH_DONE "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .local v9, ret:Landroid/os/Bundle;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_4

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "ar.result != null "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Landroid/telephony/SimAuthCnf;

    .local v10, simAuth:Landroid/telephony/SimAuthCnf;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simAuth = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v10, v9}, Landroid/telephony/SimAuthCnf;->fillInNotifierBundle(Landroid/os/Bundle;)V

    iput-object v9, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v13

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v13

    .end local v10           #simAuth:Landroid/telephony/SimAuthCnf;
    :cond_4
    new-instance v10, Landroid/telephony/SimAuthCnf;

    invoke-direct {v10}, Landroid/telephony/SimAuthCnf;-><init>()V

    .restart local v10       #simAuth:Landroid/telephony/SimAuthCnf;
    goto :goto_4

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v9           #ret:Landroid/os/Bundle;
    .end local v10           #simAuth:Landroid/telephony/SimAuthCnf;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "[ZTE_CMMB] PhoneInterfaceManager.java CMD_DO_USIM_AUTH "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v13, 0x3f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .restart local v4       #onCompleted:Landroid/os/Message;
    iget-object v5, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/PhoneInterfaceManager$Paramter;

    .local v5, paramter:Lcom/android/phone/PhoneInterfaceManager$Paramter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    iget-object v14, v5, Lcom/android/phone/PhoneInterfaceManager$Paramter;->arg1:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/phone/PhoneInterfaceManager$Paramter;->arg2:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v4}, Lcom/android/internal/telephony/IccCard;->doUsimAuth(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v4           #onCompleted:Landroid/os/Message;
    .end local v5           #paramter:Lcom/android/phone/PhoneInterfaceManager$Paramter;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "[ZTE_CMMB] PhoneInterfaceManager.java EVENT_DO_USIM_AUTH_DONE "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, data:Landroid/os/Bundle;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_5

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "ar.result != null "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/UsimAuthCnf;

    .local v12, usimAuth:Landroid/telephony/UsimAuthCnf;
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "usimAuth = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/telephony/UsimAuthCnf;->fillInNotifierBundle(Landroid/os/Bundle;)V

    iput-object v2, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v13

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v13

    .end local v12           #usimAuth:Landroid/telephony/UsimAuthCnf;
    :cond_5
    new-instance v12, Landroid/telephony/UsimAuthCnf;

    invoke-direct {v12}, Landroid/telephony/UsimAuthCnf;-><init>()V

    .restart local v12       #usimAuth:Landroid/telephony/UsimAuthCnf;
    goto :goto_5

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:Landroid/os/Bundle;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v12           #usimAuth:Landroid/telephony/UsimAuthCnf;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "[ZTE_CMMB] PhoneInterfaceManager.java CMD_GET_LAC_CID "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v13, 0x3f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .restart local v4       #onCompleted:Landroid/os/Message;
    iget-object v11, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .local v11, tmp:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tmp.intValue() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v13, v13, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14, v4}, Lcom/android/internal/telephony/IccCard;->getLacCid(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v4           #onCompleted:Landroid/os/Message;
    .end local v7           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v11           #tmp:Ljava/lang/Integer;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "[ZTE_CMMB] PhoneInterfaceManager.java EVENT_GET_LAC_CID_DONE "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .restart local v7       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_6

    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v14, "ar.result != null "

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .local v8, response:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "response = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v7

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v13

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v13

    .end local v8           #response:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #response:Ljava/lang/String;
    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
        0x3f3 -> :sswitch_a
        0x3f4 -> :sswitch_b
    .end sparse-switch
.end method
