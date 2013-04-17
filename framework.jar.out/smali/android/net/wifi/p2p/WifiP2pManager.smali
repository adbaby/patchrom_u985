.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_CONNECT:I = 0x2200d

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200e

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200f

.field public static final CONNECT:I = 0x2200a

.field public static final CONNECT_FAILED:I = 0x2200b

.field public static final CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CREATE_GROUP:I = 0x22010

.field public static final CREATE_GROUP_FAILED:I = 0x22011

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x22012

.field public static final DISABLE_P2P:I = 0x22004

.field public static final DISABLE_P2P_FAILED:I = 0x22005

.field public static final DISABLE_P2P_SUCCEEDED:I = 0x22006

.field public static final DISCOVER_PEERS:I = 0x22007

.field public static final DISCOVER_PEERS_FAILED:I = 0x22008

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22009

.field public static final ENABLE_P2P:I = 0x22001

.field public static final ENABLE_P2P_FAILED:I = 0x22002

.field public static final ENABLE_P2P_SUCCEEDED:I = 0x22003

.field public static final ERROR:I = 0x0

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final REMOVE_GROUP:I = 0x22013

.field public static final REMOVE_GROUP_FAILED:I = 0x22014

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22015

.field public static final REQUEST_CONNECTION_INFO:I = 0x22018

.field public static final REQUEST_GROUP_INFO:I = 0x2201a

.field public static final REQUEST_PEERS:I = 0x22016

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22019

.field public static final RESPONSE_GROUP_INFO:I = 0x2201b

.field public static final RESPONSE_PEERS:I = 0x22017

.field public static final STOP_DISCOVER_PEERS:I = 0x2201c

.field public static final STOP_DISCOVER_PEERS_FAILED:I = 0x2201d

.field public static final STOP_DISCOVER_PEERS_SUCCEEDED:I = 0x2201e

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_STATE_FAILED:I = 0x4

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 290
    return-void
.end method


# virtual methods
.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2200d

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public cancelDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2201c

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 572
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2200a

    const/4 v2, 0x0

    invoke-virtual {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 610
    if-nez p1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22010

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22004

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22007

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->setWifiAddrToNvram()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_1
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 674
    :goto_0
    return-object v1

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiP2pState()I
    .locals 4

    .prologue
    .line 687
    :try_start_0
    const-string v1, "WifiP2pManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiP2pState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v3}, Landroid/net/wifi/p2p/IWifiP2pManager;->getWifiP2pEnabledState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getWifiP2pEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 690
    :goto_0
    return v1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 5
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 467
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 474
    :cond_0
    :goto_0
    return-object v0

    .line 469
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    .line 470
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 474
    goto :goto_0
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22013

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22018

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2201a

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 4
    .parameter "c"
    .parameter "listener"

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22016

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method
