.class Lcom/android/server/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SOFTAP_START_POWERMODE_ALARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    const-string v2, "WifiService"

    const-string v3, "WifiStateMachine.ACTION_WIFI_AP_START_SLEEP_POLICY_ALARM  received\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v2, v1}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SOFTAP_STOP_POWERMODE_ALARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    const-string v3, "WifiService"

    const-string v4, "WifiStateMachine.ACTION_WIFI_AP_STOP_SLEEP_POLICY_ALARM  received\n"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v3, v2}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SOFTAP_SLEEPPOLICY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 443
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mZTECustom:Landroid/net/Wifi/ZTEWifiCustom;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/net/Wifi/ZTEWifiCustom;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Wifi/ZTEWifiCustom;->shouldStartApSleepPolicyAlarm()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    .local v1, shouldStartAlarm:Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v2, v1}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    .line 449
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldAlarm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #shouldStartAlarm:Z
    :cond_4
    move v1, v2

    .line 443
    goto :goto_1

    .line 451
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.server.WifiManager.action.WIFI_AP_SLEEP_POLICY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, isSTAConnected:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isSTAConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 457
    :goto_2
    if-eqz v0, :cond_6

    .line 458
    iget-object v2, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mZTECustom:Landroid/net/Wifi/ZTEWifiCustom;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/net/Wifi/ZTEWifiCustom;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApSleepPolicyInterval()I

    move-result v3

    #setter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v2, v3}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 460
    :cond_6
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-static {v3}, Lcom/android/server/WifiService;->access$1110(Lcom/android/server/WifiService;)I

    .line 461
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)I

    move-result v3

    if-nez v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    if-eq v3, v6, :cond_7

    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 465
    :cond_7
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v3

    goto :goto_2
.end method
