.class public Landroid/net/wifi/TwManager;
.super Ljava/lang/Object;
.source "TwManager.java"


# static fields
.field public static final EXTRA_TW_STATE:Ljava/lang/String; = "tw_state"

.field public static final EXTRA_WLAN_NAME:Ljava/lang/String; = "wlan_name"

.field private static final TAG:Ljava/lang/String; = "TwManager"

.field public static final TWSERVICE:Ljava/lang/String; = "tw_wifi"

.field public static final TW_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.TW_STATE_CHANGED"

.field public static final WEB_PORTAL_OPEN:Z = false

.field public static final WIFI_CMCC_DEFAULT_CONNECT_TYPE:I = 0x1

.field public static final WIFI_CMCC_EAP_SIM_CONNECT_TYPE:I = 0x0

.field public static final WIFI_CMCC_WEBPORTAL_CONNECT_TYPE:I = 0x1

.field public static final WIFI_DISCONNETING_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_DISCONNETING_ACTION"


# instance fields
.field mService:Landroid/net/wifi/ITwManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/ITwManager;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string/jumbo v0, "qxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TwManager] service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    .line 81
    return-void
.end method

.method private static getSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isCMCCAp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "Ssid"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    const-string/jumbo v2, "qxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCMCCAp Ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 242
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    const-string/jumbo v2, "wifi_default_accesspoint_ssid"

    invoke-static {p0, v2}, Landroid/net/wifi/TwManager;->getSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    const-string v2, "CMCC-EDU"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 242
    goto :goto_0
.end method


# virtual methods
.method public getGsmAuth(Ljava/lang/String;)I
    .locals 2
    .parameter "rand"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/ITwManager;->getGsmAuth(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getImsi()I
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->getImsi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSimType()I
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->getSimType()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v1, 0x0

    .line 129
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTwState()Landroid/net/wifi/TwState;
    .locals 2

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->getTwState()Landroid/net/wifi/TwState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUmtsAuth(Ljava/lang/String;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/ITwManager;->getUmtsAuth(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v1, 0x0

    .line 156
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public reSetTwState()I
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->reSetTwState()V

    .line 220
    :goto_0
    const/4 v1, 0x0

    .line 224
    :goto_1
    return v1

    .line 219
    :cond_0
    const-string/jumbo v1, "qxy"

    const-string/jumbo v2, "reSetTwState mService==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public twWpaInit()I
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->twWpaInit()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public twWpaUnInit()I
    .locals 2

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->twWpaUnInit()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public webPortalLogin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 163
    new-instance v0, Landroid/net/wifi/TwManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/TwManager$1;-><init>(Landroid/net/wifi/TwManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/TwManager$1;->start()V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public webPortalLogout()I
    .locals 3

    .prologue
    .line 187
    const-string v1, "TwManager"

    const-string v2, "[webPortalLogout]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Landroid/net/wifi/TwManager;->mService:Landroid/net/wifi/ITwManager;

    invoke-interface {v1}, Landroid/net/wifi/ITwManager;->webPortalLogout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    const/4 v1, 0x0

    .line 198
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
