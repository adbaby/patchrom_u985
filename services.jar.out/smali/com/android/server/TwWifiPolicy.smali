.class public Lcom/android/server/TwWifiPolicy;
.super Landroid/telephony/PhoneStateListener;
.source "TwWifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TwWifiPolicy$1;,
        Lcom/android/server/TwWifiPolicy$MyHanlder;,
        Lcom/android/server/TwWifiPolicy$WifiReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NODATAMESSAGE:I = 0x0

.field static final SECURITY_EAP:I = 0x4

.field static final SECURITY_EAP_SIM:I = 0x1

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x3

.field static final SECURITY_WAPI_CERT:I = 0x6

.field static final SECURITY_WAPI_PSK:I = 0x5

.field static final SECURITY_WEP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwWifiPolicy"

.field private static isConnectWifi:Z

.field private static isHandConnect:Z

.field private static isWifiConnect:Z

.field private static isWifiConnecting:Z


# instance fields
.field private isDataDisConnecting:Z

.field private isDisConnectingHaveDate:Z

.field private isDisconnect:Z

.field private isFirstOpenWifi:Z

.field private isGetIPAddress:Z

.field private isMoblieDataConnect:Z

.field private isScanDoneAfterWlanOpen:Z

.field private isWifiDataConnect:Z

.field private lastShowTime:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mShowTime:I

.field private mWifiIntentFilter:Landroid/content/IntentFilter;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Lcom/android/server/TwWifiPolicy$WifiReceiver;

.field private myHanlder:Lcom/android/server/TwWifiPolicy$MyHanlder;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/android/server/TwWifiPolicy;->isHandConnect:Z

    .line 77
    sput-boolean v0, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 78
    sput-boolean v0, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    .line 80
    sput-boolean v0, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 72
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isDisconnect:Z

    .line 75
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    .line 81
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isDataDisConnecting:Z

    .line 82
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isGetIPAddress:Z

    .line 84
    const v1, 0x36ee80

    iput v1, p0, Lcom/android/server/TwWifiPolicy;->mShowTime:I

    .line 85
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/TwWifiPolicy;->lastShowTime:J

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TwWifiPolicy;->isFirstOpenWifi:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z

    .line 101
    iput-object p1, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    .line 106
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 108
    const-string v1, "TwWifiPolicy"

    const-string v2, "Wifi Service is not started\n"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const-string v1, "TwWifiPolicy"

    const-string v2, "WIFI receiver regist\n"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    .line 113
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.TW_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/android/server/TwWifiPolicy$WifiReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/TwWifiPolicy$WifiReceiver;-><init>(Lcom/android/server/TwWifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/TwWifiPolicy;->mWifiReceiver:Lcom/android/server/TwWifiPolicy$WifiReceiver;

    .line 118
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mWifiReceiver:Lcom/android/server/TwWifiPolicy$WifiReceiver;

    iget-object v3, p0, Lcom/android/server/TwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 120
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/16 v1, 0xdc

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 126
    new-instance v1, Lcom/android/server/TwWifiPolicy$MyHanlder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/TwWifiPolicy$MyHanlder;-><init>(Lcom/android/server/TwWifiPolicy;Lcom/android/server/TwWifiPolicy$1;)V

    iput-object v1, p0, Lcom/android/server/TwWifiPolicy;->myHanlder:Lcom/android/server/TwWifiPolicy$MyHanlder;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TwWifiPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/TwWifiPolicy;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TwWifiPolicy;Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/TwWifiPolicy;->handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TwWifiPolicy;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/TwWifiPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/TwWifiPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/TwWifiPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/TwWifiPolicy;->isDataDisConnecting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TwWifiPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/TwWifiPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/TwWifiPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/TwWifiPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    return p1
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 664
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 667
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 671
    goto :goto_0

    .line 674
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 676
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 677
    goto :goto_0

    .line 679
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 680
    const/4 v0, 0x6

    goto :goto_0

    .line 682
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 14
    .parameter "info"
    .parameter "bssid"

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 205
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_2

    .line 206
    const-string v6, "qxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNetworkStateChanged] ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " info.getDetailedState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TwWifiPolicy;->initConnectivityManager()V

    .line 210
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_3

    .line 211
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isGetIPAddress:Z

    .line 214
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_7

    .line 215
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isGetIPAddress:Z

    .line 216
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    .line 217
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    .line 218
    const-string v6, "TwWifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleNetworkStateChanged] isMoblieDataConnect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_choose_network_type_dialog"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, chooseConnectType:I
    const-string v7, "wifi_prefer_value"

    monitor-enter v7

    .line 267
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v8, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 268
    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, mConnectSSID:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 310
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    goto/16 :goto_0

    .line 270
    .end local v3           #mConnectSSID:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_prefer_value"

    const-string v9, "1"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 303
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 274
    :pswitch_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_prefer_value"

    const-string v9, "1"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 278
    :pswitch_2
    const-string v6, "TwWifiPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNetworkStateChanged, DetailedState.CONNECTED: isMoblieDataConnect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    if-eqz v6, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/TwWifiPolicy;->lastShowTime:J

    iget v6, p0, Lcom/android/server/TwWifiPolicy;->mShowTime:I

    int-to-long v12, v6

    add-long/2addr v10, v12

    cmp-long v6, v8, v10

    if-lez v6, :cond_5

    .line 280
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_prefer_value"

    const-string v9, "1"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v1, dataconnectIntent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 283
    const-string v6, "wlan_name"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :cond_4
    const-string v6, "android.settings.DataConncetDialog"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

   # invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/TwWifiPolicy;->lastShowTime:J

    goto/16 :goto_1

    .line 292
    .end local v1           #dataconnectIntent:Landroid/content/Intent;
    :cond_5
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_prefer_value"

    const-string v9, "1"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 301
    :cond_6
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_prefer_value"

    const-string v9, "1"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 375
    .end local v0           #chooseConnectType:I
    :cond_7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_a

    .line 376
    const-string v6, "TwWifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiDataConnect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    if-eqz v6, :cond_8

    .line 379
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 382
    :cond_8
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    .line 397
    const-string v6, "TwWifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNetworkStateChanged, DetailedState.DISCONNECTED: isWifiDataConnect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    if-eqz v6, :cond_9

    sget-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    if-eqz v6, :cond_9

    .line 399
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_prefer_value"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v5, "1"

    .line 400
    .local v5, wlanPreferValue:Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 401
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v2, disConnectDialog:Landroid/content/Intent;
    const-string v6, "android.settings.WifiDisConnectDialog"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

  #  invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 409
    .end local v2           #disConnectDialog:Landroid/content/Intent;
    .end local v5           #wlanPreferValue:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    goto/16 :goto_0

    .line 412
    :cond_a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_0

    .line 427
    sget-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    if-eqz v6, :cond_b

    .line 428
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 430
    :cond_b
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    .line 431
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "wifiState"

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string v0, "TwWifiPolicy"

    const-string v1, "[handleWifiStateChanged]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/android/server/TwWifiPolicy;->initConnectivityManager()V

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TwWifiPolicy;->isDisconnect:Z

    goto :goto_0

    .line 182
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/TwWifiPolicy;->isFirstOpenWifi:Z

    if-eqz v0, :cond_0

    .line 183
    iput-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isFirstOpenWifi:Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/TwWifiPolicy;->initCMCC()V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TwWifiPolicy;->wifiConnectCMCC()V

    goto :goto_0

    .line 189
    :pswitch_2
    sput-boolean v2, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    .line 190
    sput-boolean v2, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 191
    sput-boolean v2, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initCMCC()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 580
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_cmcc_connect_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 583
    .local v0, cmccConnectType:I
    invoke-direct {p0, v4, v0}, Lcom/android/server/TwWifiPolicy;->saveCmccConfig(ZI)V

    .line 585
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_cmcc_edu_connect_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 588
    .local v1, cmccEduconnectType:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/TwWifiPolicy;->saveCmccConfig(ZI)V

    .line 589
    return-void
.end method

.method private initConnectivityManager()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "TwWifiPolicy"

    const-string v1, "[initConnectivityManager]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 139
    :cond_0
    return-void
.end method

.method private isAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 552
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_auto_connection"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 554
    .local v0, isAutoConnect:I
    if-ne v0, v1, :cond_0

    .line 557
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 655
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 656
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 658
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 660
    .end local p0
    :cond_0
    return-object p0
.end method

.method private saveCmccConfig(ZI)V
    .locals 13
    .parameter "isCmcc"
    .parameter "connectType"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 594
    if-eqz p1, :cond_2

    .line 595
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 596
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v9, "wifi_default_accesspoint_ssid"

    invoke-static {v3, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v8, "CMCC"

    .line 602
    .end local v3           #cr:Landroid/content/ContentResolver;
    .local v8, ssid:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 603
    .local v7, priorityCMCC:I
    const/4 v1, 0x0

    .line 606
    .local v1, configFound:Z
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 607
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    .line 608
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 609
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/TwWifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 610
    invoke-static {v0}, Lcom/android/server/TwWifiPolicy;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 611
    .local v5, mSecurity:I
    if-eqz v5, :cond_1

    if-ne v5, v11, :cond_0

    .line 613
    :cond_1
    const/4 v1, 0x1

    .line 614
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 616
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    .line 598
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #configFound:Z
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mSecurity:I
    .end local v7           #priorityCMCC:I
    .end local v8           #ssid:Ljava/lang/String;
    :cond_2
    const-string v8, "CMCC-EDU"

    .restart local v8       #ssid:Ljava/lang/String;
    goto :goto_0

    .line 622
    .restart local v1       #configFound:Z
    .restart local v2       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v7       #priorityCMCC:I
    :cond_3
    if-nez v1, :cond_4

    .line 652
    :goto_2
    return-void

    .line 628
    :cond_4
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 629
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 630
    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 632
    if-nez p2, :cond_6

    .line 633
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 634
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->pcsc:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v10, " "

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 635
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->eapol:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 639
    :cond_5
    :goto_3
    const-string v9, "TwWifiPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addNetwork(config) config = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 642
    .local v6, networkId:I
    const-string v9, "TwWifiPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "networkId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v6, v12}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 645
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 646
    if-eqz p1, :cond_7

    .line 647
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_cmcc_connect_type"

    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 636
    .end local v6           #networkId:I
    :cond_6
    if-ne p2, v11, :cond_5

    .line 637
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 649
    .restart local v6       #networkId:I
    :cond_7
    iget-object v9, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_cmcc_edu_connect_type"

    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public static setConnectWifi()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 502
    sget-boolean v0, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    if-nez v0, :cond_0

    .line 503
    sput-boolean v1, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    .line 504
    sput-boolean v1, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    .line 506
    :cond_0
    return-void
.end method

.method public static setHandConnect()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/TwWifiPolicy;->isHandConnect:Z

    .line 132
    return-void
.end method

.method private wifiConnectCMCC()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 509
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_auto_connection"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 512
    .local v5, isAutoConnect:I
    if-ne v5, v8, :cond_1

    .line 513
    const/4 v4, 0x1

    .line 517
    .local v4, isAuto:Z
    :goto_0
    if-nez v4, :cond_3

    iget-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isDisconnect:Z

    if-eqz v6, :cond_3

    .line 518
    const-string v6, "qxy"

    const-string v7, "disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 521
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 522
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 523
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_1

    .line 515
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isAuto:Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #isAuto:Z
    goto :goto_0

    .line 527
    .restart local v2       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 528
    iput-boolean v10, p0, Lcom/android/server/TwWifiPolicy;->isDisconnect:Z

    .line 530
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_cmcc_auto_connection"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 532
    .local v0, CMCCAutoConnection:I
    if-eqz v4, :cond_6

    iget-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isDisconnect:Z

    if-eqz v6, :cond_6

    if-eq v0, v8, :cond_6

    .line 533
    const-string v6, "qxy"

    const-string v7, "CMCC disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 535
    .restart local v2       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_5

    .line 536
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 537
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    const-string v6, "TwWifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC disconnect ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v6, "TwWifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC disconnect ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_default_accesspoint_ssid"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-eqz v1, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_default_accesspoint_ssid"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 540
    iget-object v6, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 541
    const-string v6, "TwWifiPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC disconnect ssid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 545
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iput-boolean v10, p0, Lcom/android/server/TwWifiPolicy;->isDisconnect:Z

    .line 548
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_6
    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 437
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 439
    sget-boolean v2, Lcom/android/server/TwWifiPolicy;->isWifiConnecting:Z

    if-nez v2, :cond_0

    .line 440
    packed-switch p1, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 445
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/TwWifiPolicy;->initConnectivityManager()V

    .line 446
    const-string v2, "TwWifiPolicy.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TelephonyManager data state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v2, "TwWifiPolicy"

    const-string v3, "==========[onDataActivity] have DATA ========"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isGetIPAddress:Z

    if-nez v2, :cond_1

    .line 449
    iput-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    .line 451
    :cond_1
    const-string v2, "TwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataActivity] have DATA isMoblieDataConnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z

    .line 453
    const-string v2, "TwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataActivity] have DATA isDataDisConnecting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/TwWifiPolicy;->isDataDisConnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isDataDisConnecting:Z

    if-eqz v2, :cond_4

    .line 455
    iput-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z

    .line 461
    :goto_1
    const-string v2, "TwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataActivity] isWifiConnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "TwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataActivity] isConnectWifi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v2, "TwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataActivity] isGetIPAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/TwWifiPolicy;->isGetIPAddress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/TwWifiPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/TwWifiPolicy;->isWifiConnect:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isGetIPAddress:Z

    if-nez v2, :cond_0

    .line 466
    const-string v2, "TwWifiPolicy"

    const-string v3, "[onDataActivity] have DATA 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TwWifiPolicy;->results:Ljava/util/List;

    .line 468
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_disenable_auto_connection_dialog"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 472
    .local v1, showNetworkTypeDialog:I
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->results:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/TwWifiPolicy;->isScanDoneAfterWlanOpen:Z

    if-eqz v2, :cond_0

    .line 473
    :cond_3
    const-string v2, "TwWifiPolicy"

    const-string v3, "[onDataActivity] have DATA2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, networkTypeDialogIntent:Landroid/content/Intent;
    const-string v2, "android.settings.NetWorkTypeDialog"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 478
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mContext:Landroid/content/Context;

 #   invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    sput-boolean v6, Lcom/android/server/TwWifiPolicy;->isConnectWifi:Z

    goto/16 :goto_0

    .line 457
    .end local v0           #networkTypeDialogIntent:Landroid/content/Intent;
    .end local v1           #showNetworkTypeDialog:I
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z

    goto/16 :goto_1

    .line 485
    :pswitch_1
    const-string v2, "TwWifiPolicy"

    const-string v3, "========[onDataActivity] no DATA======="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iput-boolean v5, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    .line 488
    const-string v2, "TwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataActivity] no DATA   sendEmptyMessageDelayed   isMoblieDataConnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/TwWifiPolicy;->isMoblieDataConnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-boolean v6, p0, Lcom/android/server/TwWifiPolicy;->isDataDisConnecting:Z

    .line 490
    iget-object v2, p0, Lcom/android/server/TwWifiPolicy;->myHanlder:Lcom/android/server/TwWifiPolicy$MyHanlder;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/TwWifiPolicy$MyHanlder;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
