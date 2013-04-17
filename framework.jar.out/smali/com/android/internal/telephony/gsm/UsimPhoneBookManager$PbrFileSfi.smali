.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFileSfi"
.end annotation


# instance fields
.field mSfiFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    .line 1369
    const/4 v1, 0x0

    .line 1370
    .local v1, recNum:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1371
    .local v3, record:[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1372
    .local v2, recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    .end local v2           #recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v3           #record:[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 8
    .parameter "tlv"
    .parameter
    .parameter "parentTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, 0x2

    .line 1403
    const/4 v3, 0x0

    .line 1405
    .local v3, tagNumberWithinParentTag:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    .line 1406
    .local v2, tag:I
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_1

    const/16 v4, 0xca

    if-ne v2, v4, :cond_1

    .line 1407
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1408
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1410
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 1436
    :cond_2
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 1437
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1438
    return-void

    .line 1423
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1424
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1425
    array-length v4, v0

    if-le v4, v7, :cond_3

    .line 1426
    aget-byte v1, v0, v7

    .line 1427
    .local v1, sfi:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  sfi parseEf ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    .end local v1           #sfi:I
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const-string v5, "MY  Don\'t have sfi"

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .parameter "tlv"
    .parameter "recNum"

    .prologue
    .line 1380
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1382
    .local v3, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1383
    .local v1, tag:I
    packed-switch v1, :pswitch_data_0

    .line 1396
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1397
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    return-void

    .line 1387
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1389
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 1391
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1392
    .local v2, tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    goto :goto_0

    .line 1383
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
