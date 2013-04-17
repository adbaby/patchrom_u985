.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
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
    .line 1090
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1230
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 7
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 1186
    const/4 v0, 0x2

    .line 1187
    .local v0, defaultSleepPolicy:I
    invoke-static {}, Lcom/zte/zteConfig;->getTeleOperator()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1188
    const/4 v0, 0x1

    .line 1196
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_sleep_policy"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1200
    .local v1, wifiSleepPolicy:I
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yzx, stayAwakeConditions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pluggedType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wifiSleepPolicy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    if-ne v1, v6, :cond_3

    .line 1211
    :cond_1
    :goto_1
    return v2

    .line 1191
    .end local v1           #wifiSleepPolicy:I
    :cond_2
    invoke-static {}, Lcom/zte/zteConfig;->getTeleOperator()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1193
    const/4 v0, 0x0

    goto :goto_0

    .line 1205
    .restart local v1       #wifiSleepPolicy:I
    :cond_3
    if-ne v1, v2, :cond_4

    if-nez p2, :cond_1

    .line 1211
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_idle_ms"

    const-wide/32 v13, 0xdbba0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1098
    .local v2, idleMillis:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "stay_on_while_plugged_in"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1101
    .local v6, stayAwakeConditions:I
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1102
    const-string v11, "WifiService"

    const-string v12, "yzx, ACTION_SCREEN_ON"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1108
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1110
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 1111
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;Z)V

    .line 1175
    :cond_1
    :goto_0
    return-void

    .line 1112
    :cond_2
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1113
    const-string v11, "WifiService"

    const-string v12, "yzx, ACTION_SCREEN_OFF"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1126
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1128
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v11, v11, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_4

    .line 1129
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "yzx, setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1135
    :cond_4
    const-wide/16 v9, 0x0

    .line 1136
    .local v9, triggertime:J
    invoke-static {}, Lcom/zte/zteConfig;->getTeleOperator()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0xea60

    add-long v9, v11, v13

    .line 1141
    :goto_1
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "yzx, setting ACTION_DEVICE_IDLE when not connected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v9, v10, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1139
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x1d4c0

    add-long v9, v11, v13

    goto :goto_1

    .line 1145
    .end local v9           #triggertime:J
    :cond_6
    const-string v11, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1146
    const-string v11, "WifiService"

    const-string v12, "yzx, ACTION_DEVICE_IDLE"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1148
    :cond_7
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1156
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1160
    .local v4, pluggedType:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long v7, v11, v2

    .line 1163
    .local v7, triggerTime:J
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "yzx, setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v8, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1166
    .end local v7           #triggerTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v11, v4}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1167
    .end local v4           #pluggedType:I
    :cond_9
    const-string v11, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1168
    const-string v11, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1170
    .local v5, state:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1171
    .end local v5           #state:I
    :cond_a
    const-string v11, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const-string v12, "phoneinECMState"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v11, v12}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;Z)Z

    .line 1173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
