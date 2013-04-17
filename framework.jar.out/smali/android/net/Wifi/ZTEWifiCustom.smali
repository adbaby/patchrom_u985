.class public Landroid/net/Wifi/ZTEWifiCustom;
.super Ljava/lang/Object;
.source "ZTEWifiCustom.java"


# static fields
.field private static final MACLIST_PRE:Ljava/lang/String; = "MAC="

.field private static final TAG:Ljava/lang/String; = "ZTEWifiCustom"

.field private static final mSTAListPath:Ljava/lang/String; = "/proc/WIFI_STA_LIST"

.field public static final shouldStartApSleepPolicyAlarm:Ljava/lang/String; = "android.net.wifi.ZTEWifiCustomer.shouldStartApSleepPolicyAlarm"

.field public static final startApSleepPolicyAlarm:Ljava/lang/String; = "android.net.wifi.ZTEWifiCustomer.startApSleepPolicyAlarm"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    .line 49
    return-void
.end method

.method public static GetMACBits(I)Ljava/lang/String;
    .locals 4
    .parameter "length"

    .prologue
    .line 478
    const-string v1, "11:22:33:44:55:66"

    .line 480
    .local v1, wifi_mac_addr:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, wifiMacAddr:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static GetRandomNum(I)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    .line 448
    const-string v1, ""

    .line 450
    .local v1, mResult:Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 452
    .local v2, rand:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 453
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 454
    .local v3, temp:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v3           #temp:I
    :cond_0
    return-object v1
.end method

.method public static IPchangeFromIntToString(I)Ljava/lang/String;
    .locals 2
    .parameter "addrInt"

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IPchangeFromStringToInt(Ljava/lang/String;)I
    .locals 6
    .parameter "addrStr"

    .prologue
    .line 431
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, parts:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v0, v5, 0x18

    .line 433
    .local v0, a:I
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v1, v5, 0x10

    .line 434
    .local v1, b:I
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v2, v5, 0x8

    .line 435
    .local v2, c:I
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 437
    .local v3, d:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    or-int/2addr v5, v3

    return v5
.end method

.method private calDhcpEndIp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApIpAsInt()I

    move-result v2

    .line 490
    .local v2, ip:I
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApMaskAsInt()I

    move-result v3

    .line 491
    .local v3, mask:I
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApMaskAsPrefix()I

    move-result v4

    .line 492
    .local v4, maskPrefix:I
    const/4 v0, 0x0

    .line 494
    .local v0, endPart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    rsub-int/lit8 v5, v4, 0x20

    if-ge v1, v5, :cond_0

    .line 495
    shl-int/lit8 v5, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    and-int v5, v3, v2

    or-int/2addr v5, v0

    invoke-static {v5}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private convertQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x22

    .line 38
    if-nez p1, :cond_0

    .line 42
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getMaskPrefix(I)I
    .locals 4
    .parameter "mask"

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 465
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 466
    add-int/lit8 v0, v0, 0x1

    .line 470
    :goto_1
    shr-int/lit8 p0, p0, 0x1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 473
    :cond_1
    return v0
.end method


# virtual methods
.method public getApSsid()Ljava/lang/String;
    .locals 9

    .prologue
    .line 124
    const-string v4, ""

    .line 127
    .local v4, ssid:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v7, "wifi_ap_ssid"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 130
    iget-object v6, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 131
    .local v5, ssidCatalog:[I
    const-string v6, "ZTEWifiCustom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApSsid() R.array.config_wifi_ap_ssid_catalog, ssidCatalog.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, ""

    .line 135
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 136
    .local v1, i:I
    const-string v6, "ZTEWifiCustom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApSsid() ssidCatalog:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10404fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    goto :goto_1

    .line 142
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Landroid/net/Wifi/ZTEWifiCustom;->GetMACBits(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    goto :goto_1

    .line 146
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Landroid/net/Wifi/ZTEWifiCustom;->GetRandomNum(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    goto :goto_1

    .line 150
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    goto :goto_1

    .line 153
    :pswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    goto/16 :goto_1

    .line 156
    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    goto/16 :goto_1

    .line 159
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    goto/16 :goto_1

    .line 162
    :pswitch_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 166
    .end local v1           #i:I
    :cond_0
    iget-object v6, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v7, "wifi_ap_ssid"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    const-string v6, "ZTEWifiCustom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApSsid() ssid :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #ssidCatalog:[I
    :cond_1
    return-object v4

    .line 137
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
    .end packed-switch
.end method

.method public getChannelNum()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 176
    const/4 v0, -0x1

    .line 177
    .local v0, apChannelNum:I
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_channel_num"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 181
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getChannelNum() no Settings.Secure.WIFI_AP_CHANNEL_NUM"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 183
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_channel_num"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelNum() apChannelNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v0
.end method

.method public getMacFilter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    const-string v0, ""

    .line 254
    .local v0, ap_MacFilter:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_macfilter"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getMacFilter() no Settings.Secure.WIFI_AP_MACFILTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040501

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_macfilter"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMacFilter() ap_MacFilter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v0
.end method

.method public getMacList()Ljava/lang/String;
    .locals 7

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getMacFilter()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, macFilter:Ljava/lang/String;
    const/4 v1, 0x0

    .line 529
    .local v1, macList:Ljava/lang/String;
    const-string v2, ""

    .line 531
    .local v2, retString:Ljava/lang/String;
    const-string v4, "MAC="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 532
    .local v3, startPos:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 533
    const-string v4, "ZTEWifiCustom"

    const-string v5, "getMacList() startPos = -1, set MacList=null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 547
    :goto_0
    return-object v4

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    if-ne v4, v5, :cond_1

    .line 539
    const-string v4, "ZTEWifiCustom"

    const-string v5, "getMacList() MacList No mac, set MacList=null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 540
    goto :goto_0

    .line 543
    :cond_1
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    const-string v4, ","

    const-string v5, "\n"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    const-string v4, "ZTEWifiCustom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMacMode() retString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0, v2}, Landroid/net/Wifi/ZTEWifiCustom;->convertQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getMacMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 503
    const-string v3, ""

    .line 505
    .local v3, retString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getMacFilter()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, macFilter:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_0

    .line 509
    const-string v5, "ZTEWifiCustom"

    const-string v6, "getMacMode() tokens.length()=0, set MacMod=0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v5, "0"

    .line 522
    :goto_0
    return-object v5

    .line 513
    :cond_0
    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 514
    .local v0, firstToken:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, parts:[Ljava/lang/String;
    array-length v5, v2

    if-nez v5, :cond_1

    .line 516
    const-string v5, "ZTEWifiCustom"

    const-string v6, "getMacMode() parts.length()=0, set MacMod=0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v5, "0"

    goto :goto_0

    .line 520
    :cond_1
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 521
    const-string v5, "ZTEWifiCustom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMacMode() retString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    .line 522
    goto :goto_0
.end method

.method public getMaxClients()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 211
    const-string v1, ""

    .line 212
    .local v1, wifitype:Ljava/lang/String;
    const/4 v0, -0x1

    .line 214
    .local v0, ap_MaxClients:I
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "wifi_ap_max_clients"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 217
    const-string v2, "ZTEWifiCustom"

    const-string v3, "MaxClients() no Settings.Secure.WIFI_AP_MAX_CLIENTS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string/jumbo v2, "wifi.chip.type"

    const-string v3, "UnKnown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "ZTEWifiCustom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxClients() wifi.chip.type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 223
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 244
    :goto_0
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "wifi_ap_max_clients"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    :cond_0
    const-string v2, "ZTEWifiCustom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxClients() wifiConfig.ap_MaxClients="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v0

    .line 226
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 228
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WCN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 233
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreamble()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 193
    const/4 v0, -0x1

    .line 195
    .local v0, ap_Preamble:I
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_preamble"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 198
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getPreamble() no Settings.Secure.WIFI_AP_PREAMBLE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 202
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_preamble"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreambleno() ap_Preamble="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v0
.end method

.method public getSTAListNumber()I
    .locals 14

    .prologue
    const/4 v10, -0x1

    .line 81
    const/16 v11, 0x180

    new-array v6, v11, [C

    .line 82
    .local v6, liststr:[C
    const/4 v1, 0x0

    .line 83
    .local v1, charread:I
    const/4 v7, 0x0

    .line 86
    .local v7, maccount:I
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v11, "/proc/WIFI_STA_LIST"

    invoke-direct {v3, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, file:Ljava/io/FileReader;
    invoke-virtual {v3, v6}, Ljava/io/FileReader;->read([C)I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 89
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v12, v1}, Ljava/lang/String;-><init>([CII)V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, maclist:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v9, v0, v4

    .line 91
    .local v9, s:Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 92
    const-string v11, "ZTEWifiCustom"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "STAListNumber() mac:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " maccount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #file:Ljava/io/FileReader;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #maclist:[Ljava/lang/String;
    .end local v9           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v11, "ZTEWifiCustom"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "STAListNumber() FileNotFoundException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v10

    .line 98
    :catch_1
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "ZTEWifiCustom"

    const-string v12, "STAListNumber() Exception"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 102
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/FileReader;
    :cond_0
    const-string v10, "ZTEWifiCustom"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "STAListNumber() return "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v7

    .line 103
    goto :goto_1
.end method

.method public getWifiApDhcpIpEnd()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x10404ff

    .line 383
    const-string v0, ""

    .line 385
    .local v0, ap_DhcpIPEnd:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getWifiApDhcpIpEnd() ap_DhcpIPEnd.equals default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Landroid/net/Wifi/ZTEWifiCustom;->calDhcpEndIp()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_ip_end"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    :cond_0
    :goto_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApDhcpIpEnd() ap_DhcpIPEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v0

    .line 394
    :cond_1
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_ip_end"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 396
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getWifiApDhcpIpEnd() no Settings.Secure.WIFI_AP_DHCP_IP_END"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_ip_end"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getWifiApDhcpIpStart()Ljava/lang/String;
    .locals 4

    .prologue
    .line 362
    const-string v0, ""

    .line 364
    .local v0, ap_DhcpIPStart:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_ip_start"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getWifiApDhcpIpStart() no Settings.Secure.WIFI_AP_DHCP_IP_START"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_ip_start"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApDhcpIpStart() ap_DhcpIPStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-object v0
.end method

.method public getWifiApDhcpLeaseTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 412
    const-string v0, ""

    .line 414
    .local v0, ap_DhcpLeaseTime:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_leasetime"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 417
    const-string v1, "ZTEWifiCustom"

    const-string v2, "getWifiApDhcpLeaseTime() no Settings.Secure.WIFI_AP_DHCP_LEASETIME"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040500

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_leasetime"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApDhcpLeaseTime() ap_DhcpLeaseTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v0
.end method

.method public getWifiApIpAsInt()I
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApIpAsStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWifiApIpAsStr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 270
    const-string v1, ""

    .line 271
    .local v1, ipAddr:Ljava/lang/String;
    const/4 v0, -0x1

    .line 273
    .local v0, ap_IPAddr:I
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "wifi_ap_ip_addr"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 276
    const-string v2, "ZTEWifiCustom"

    const-string v3, "getWifiApIp() no Settings.Secure.WIFI_AP_IP_ADDR"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 278
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "wifi_ap_ip_addr"

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    :goto_0
    const-string v2, "ZTEWifiCustom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApIpAsStr()  ap_IPAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 282
    :cond_0
    invoke-static {v1}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromStringToInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getWifiApMaskAsInt()I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApMaskAsStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWifiApMaskAsPrefix()I
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApMaskAsStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->getMaskPrefix(I)I

    move-result v0

    return v0
.end method

.method public getWifiApMaskAsStr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    const-string v1, ""

    .line 302
    .local v1, mask:Ljava/lang/String;
    const/4 v0, -0x1

    .line 304
    .local v0, apMask:I
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "wifi_ap_netmask"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 307
    const-string v2, "ZTEWifiCustom"

    const-string v3, "getWifiApMaskAsStr() no Settings.Secure.WIFI_AP_NETMASK"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 309
    iget-object v2, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "wifi_ap_netmask"

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    :goto_0
    const-string v2, "ZTEWifiCustom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApMaskAsStr()  apMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v0}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromIntToString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    :cond_0
    invoke-static {v1}, Landroid/net/Wifi/ZTEWifiCustom;->IPchangeFromStringToInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getWifiApSleepPolicyInterval()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, sleepPolicy:I
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_sleep_policy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 70
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 71
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_sleep_policy"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WifiApSleepPolicyInterval:WIFI_AP_SLEEP_POLICY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0
.end method

.method public isSsidHided()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 109
    const/4 v0, -0x1

    .line 111
    .local v0, apHideSsdiType:I
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_hide_ssid"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 112
    const-string v1, "ZTEWifiCustom"

    const-string v2, "isSsidHided() no Settings.Secure.WIFI_AP_HIDE_SSID"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 114
    :goto_0
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_hide_ssid"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSsidHided() apHideSsdiType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiApDhcpEnabled()Z
    .locals 4

    .prologue
    .line 342
    const-string v0, ""

    .line 344
    .local v0, ap_DhcpEnable:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    const-string v1, "ZTEWifiCustom"

    const-string v2, "isWifiApDhcpEnabled() no Settings.Secure.WIFI_AP_DHCP_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_ap_dhcp_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    :cond_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifiApDhcpEnabled() ap_DhcpEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public shouldStartApSleepPolicyAlarm()Z
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, shouldStart:Z
    iget-object v1, p0, Landroid/net/Wifi/ZTEWifiCustom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_0
    const-string v1, "ZTEWifiCustom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZTE Custom.shouldStartApSleepPolicyAlarm() shouldStart = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/net/Wifi/ZTEWifiCustom;->getWifiApSleepPolicyInterval()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
