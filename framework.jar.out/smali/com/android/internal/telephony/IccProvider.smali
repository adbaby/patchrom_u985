.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field static final DBG:Z = true

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_NUMBER2:Ljava/lang/String; = "number2"

.field private static final STR_NUMBER3:Ljava/lang/String; = "number3"

.field private static final STR_NUMBER4:Ljava/lang/String; = "number4"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_SNE:Ljava/lang/String; = "nickname"

.field private static final STR_SRECID:Ljava/lang/String; = "srecid"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string/jumbo v1, "number2"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "number3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "number4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "srecid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addEmailRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEmailRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 648
    const/4 v7, 0x0

    .line 656
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 658
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 659
    const/4 v1, 0x0

    aget-object v4, p4, v1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 668
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEmailRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 669
    return v7

    .line 664
    :catch_0
    move-exception v6

    .line 665
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 21
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"
    .parameter "number3"
    .parameter "number4"
    .parameter "nickname"
    .parameter "pin2"

    .prologue
    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",number2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number3 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "number4 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "nickname ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 609
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 617
    .local v19, success:[I
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 619
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 620
    const/16 v2, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v19, v2

    .line 622
    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v19, v2

    move-object/from16 v20, v19

    .line 640
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v19           #success:[I
    .local v20, success:[I
    :goto_0
    return-object v20

    .line 625
    .end local v20           #success:[I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #success:[I
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v2, 0x0

    aget-object v12, p4, v2

    move/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-interface/range {v1 .. v17}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 639
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v20, v19

    .line 640
    .end local v19           #success:[I
    .restart local v20       #success:[I
    goto :goto_0

    .line 630
    .end local v20           #success:[I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #success:[I
    :cond_2
    :try_start_1
    const-string v3, ""

    const-string v4, ""

    move/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p9

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    goto :goto_1

    .line 636
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v18

    .line 637
    .local v18, ex:Ljava/lang/SecurityException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 634
    .end local v18           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 21
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"
    .parameter "pin2"

    .prologue
    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sne="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 717
    .local v19, success:[I
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 719
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 720
    const/16 v2, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v19, v2

    .line 722
    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v19, v2

    move-object/from16 v20, v19

    .line 740
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v19           #success:[I
    .local v20, success:[I
    :goto_0
    return-object v20

    .line 725
    .end local v20           #success:[I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #success:[I
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    const/4 v2, 0x0

    aget-object v5, p4, v2

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v17, p9

    invoke-interface/range {v1 .. v17}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 739
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v20, v19

    .line 740
    .end local v19           #success:[I
    .restart local v20       #success:[I
    goto :goto_0

    .line 730
    .end local v20           #success:[I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #success:[I
    :cond_2
    :try_start_1
    const-string v5, ""

    const-string v6, ""

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p9

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    goto :goto_1

    .line 736
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v18

    .line 737
    .local v18, ex:Ljava/lang/SecurityException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 734
    .end local v18           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;)Z
    .locals 15
    .parameter "efType"
    .parameter "srecid"
    .parameter "pin2"

    .prologue
    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srecid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 747
    const/4 v13, 0x0

    .line 750
    .local v13, success:Z
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 752
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 753
    const/16 v2, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v14, v13

    .line 769
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v13           #success:Z
    .local v14, success:I
    :goto_0
    return v14

    .line 756
    .end local v14           #success:I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v13       #success:Z
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 757
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move/from16 v2, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 768
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move v14, v13

    .line 769
    .restart local v14       #success:I
    goto :goto_0

    .line 760
    .end local v14           #success:I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    :try_start_1
    const-string v3, ""

    const-string v4, ""

    move/from16 v2, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    goto :goto_1

    .line 765
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v12

    .line 766
    .local v12, ex:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 763
    .end local v12           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 8
    .parameter "efType"

    .prologue
    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 573
    const/4 v1, 0x0

    .line 575
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 577
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 578
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 587
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 589
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 590
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 591
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 592
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 593
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 580
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 582
    .local v3, ex:Landroid/os/RemoteException;
    const-string v6, "loadFromEf RemoteException"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 584
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    .end local v3           #ex:Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 17
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 812
    const/16 v15, 0x9

    new-array v6, v15, [Ljava/lang/Object;

    .line 813
    .local v6, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 815
    .local v12, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, emails:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, anr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr2()Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, anr2:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr3()Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, anr3:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v13

    .line 821
    .local v13, sne:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v14

    .line 823
    .local v14, srecid:I
    const/4 v15, 0x0

    aput-object v1, v6, v15

    .line 824
    const/4 v15, 0x1

    aput-object v12, v6, v15

    .line 826
    if-eqz v9, :cond_3

    .line 827
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v8, emailString:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    aget-object v15, v9, v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    .line 829
    move-object v5, v9

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v7, v5, v10

    .line 830
    .local v7, email:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding email:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 834
    .end local v7           #email:Ljava/lang/String;
    :cond_0
    const/4 v15, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    .line 842
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #emailString:Ljava/lang/StringBuilder;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :goto_1
    const/4 v15, 0x3

    aput-object v2, v6, v15

    .line 843
    const/4 v15, 0x4

    aput-object v3, v6, v15

    .line 844
    const/4 v15, 0x5

    aput-object v4, v6, v15

    .line 845
    const/4 v15, 0x6

    aput-object v13, v6, v15

    .line 846
    const/4 v15, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    .line 847
    const/16 v15, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    .line 849
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "yangtao loadRecord : anr2 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " anr3 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "sne = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "srecid ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 853
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v2           #anr:Ljava/lang/String;
    .end local v3           #anr2:Ljava/lang/String;
    .end local v4           #anr3:Ljava/lang/String;
    .end local v6           #contact:[Ljava/lang/Object;
    .end local v9           #emails:[Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #sne:Ljava/lang/String;
    .end local v14           #srecid:I
    :cond_1
    return-void

    .line 837
    .restart local v1       #alphaTag:Ljava/lang/String;
    .restart local v2       #anr:Ljava/lang/String;
    .restart local v3       #anr2:Ljava/lang/String;
    .restart local v4       #anr3:Ljava/lang/String;
    .restart local v6       #contact:[Ljava/lang/Object;
    .restart local v8       #emailString:Ljava/lang/StringBuilder;
    .restart local v9       #emails:[Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    .restart local v13       #sne:Ljava/lang/String;
    .restart local v14       #srecid:I
    :cond_2
    const/4 v15, 0x2

    const/16 v16, 0x0

    aput-object v16, v6, v15

    goto :goto_1

    .line 840
    .end local v8           #emailString:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v15, 0x2

    const/16 v16, 0x0

    aput-object v16, v6, v15

    goto :goto_1
.end method

.method  log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 856
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "inVal"

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 282
    .local v0, len:I
    move-object v1, p1

    .line 288
    .local v1, retVal:Ljava/lang/String;
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 21
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oldEmails"
    .parameter "oldAnr"
    .parameter "oldAnr2"
    .parameter "oldAnr3"
    .parameter "oldSne"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"
    .parameter "pin2"

    .prologue
    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldAnr2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldAnr3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldSne="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p11, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newSne="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

   invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 678
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 680
    .local v19, success:[I
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 682
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 683
    const/16 v2, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v19, v2

    .line 685
    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v19, v2

    move-object/from16 v20, v19

    .line 704
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v19           #success:[I
    .local v20, success:[I
    :goto_0
    return-object v20

    .line 688
    .end local v20           #success:[I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #success:[I
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 689
    const/4 v2, 0x0

    aget-object v5, p4, v2

    const/4 v2, 0x0

    aget-object v12, p11, v2

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-interface/range {v1 .. v17}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 703
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v20, v19

    .line 704
    .end local v19           #success:[I
    .restart local v20       #success:[I
    goto :goto_0

    .end local v20           #success:[I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #success:[I
    :cond_2
    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p16

    .line 694
    :try_start_1
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    goto :goto_1

    .line 700
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v18

    .line 701
    .local v18, ex:Ljava/lang/SecurityException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 698
    .end local v18           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "efType"
    .parameter "srecid"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "emails"
    .parameter "anr"
    .parameter "anr2"
    .parameter "anr3"
    .parameter "sne"
    .parameter "pin2"

    .prologue
    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srecid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newSne="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 776
    const/4 v13, 0x0

    .line 779
    .local v13, success:Z
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 781
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 782
    const/16 v2, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v14, v13

    .line 800
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v13           #success:Z
    .local v14, success:I
    :goto_0
    return v14

    .line 785
    .end local v14           #success:I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v13       #success:Z
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    const/4 v2, 0x0

    aget-object v5, p5, v2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p2

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnEmailRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 799
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move v14, v13

    .line 800
    .restart local v14       #success:I
    goto :goto_0

    .end local v14           #success:I
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p2

    move-object/from16 v6, p10

    .line 790
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    goto :goto_1

    .line 796
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v12

    .line 797
    .local v12, ex:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    .end local v12           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 29
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 294
    const/4 v12, 0x0

    .line 295
    .local v12, DelByIndex:Z
    const/16 v24, 0x0

    .line 296
    .local v24, success:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v23, v0

    .line 298
    .local v23, result:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "delete where = "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 300
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 301
    .local v19, match:I
    packed-switch v19, :pswitch_data_0

    .line 311
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot insert into URL: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 316
    .local v3, efType:I
    :goto_0
    const-string v4, ""

    .line 317
    .local v4, tag:Ljava/lang/String;
    const-string v5, ""

    .line 318
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 319
    .local v6, emails:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 321
    .local v11, pin2:Ljava/lang/String;
    const-string v7, ""

    .line 322
    .local v7, anr:Ljava/lang/String;
    const-string v8, ""

    .line 323
    .local v8, anr2:Ljava/lang/String;
    const-string v9, ""

    .line 324
    .local v9, anr3:Ljava/lang/String;
    const-string v10, ""

    .line 325
    .local v10, sne:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 326
    const/4 v2, 0x0

    const-string v27, ""

    aput-object v27, v6, v2

    .line 327
    const/4 v14, -0x1

    .line 330
    .local v14, Index:I
    const-string v2, "="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 331
    .local v13, Firstpair:[Ljava/lang/String;
    const-string v15, ""

    .line 333
    .local v15, Indexval:Ljava/lang/String;
    :try_start_0
    array-length v2, v13

    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v2, v0, :cond_1

    .line 334
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 335
    .local v16, Srecid:Ljava/lang/String;
    const-string/jumbo v2, "srecid"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const/4 v2, 0x1

    aget-object v15, v13, v2

    .line 337
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "update DelByIndex ,Indexval = "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 339
    if-gez v14, :cond_0

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "delete error Index = "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v2, 0x0

    .line 431
    .end local v16           #Srecid:Ljava/lang/String;
    :goto_1
    return v2

    .line 307
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #anr:Ljava/lang/String;
    .end local v8           #anr2:Ljava/lang/String;
    .end local v9           #anr3:Ljava/lang/String;
    .end local v10           #sne:Ljava/lang/String;
    .end local v11           #pin2:Ljava/lang/String;
    .end local v13           #Firstpair:[Ljava/lang/String;
    .end local v14           #Index:I
    .end local v15           #Indexval:Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 308
    .restart local v3       #efType:I
    goto :goto_0

    .line 344
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #anr:Ljava/lang/String;
    .restart local v8       #anr2:Ljava/lang/String;
    .restart local v9       #anr3:Ljava/lang/String;
    .restart local v10       #sne:Ljava/lang/String;
    .restart local v11       #pin2:Ljava/lang/String;
    .restart local v13       #Firstpair:[Ljava/lang/String;
    .restart local v14       #Index:I
    .restart local v15       #Indexval:Ljava/lang/String;
    .restart local v16       #Srecid:Ljava/lang/String;
    :cond_0
    const/4 v12, 0x1

    .line 353
    .end local v16           #Srecid:Ljava/lang/String;
    :cond_1
    :goto_2
    if-nez v12, :cond_d

    .line 355
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 356
    .local v25, tokens:[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v20, v0

    .line 358
    .local v20, n:I
    :cond_2
    :goto_3
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_d

    .line 359
    aget-object v22, v25, v20

    .line 360
    .local v22, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "parsing \'"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v27, "\'"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 362
    const-string v2, "="

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 369
    .local v21, pair:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 372
    .local v18, key:Ljava/lang/String;
    const-string v26, ""

    .line 373
    .local v26, val:Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v2, v0

    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v2, v0, :cond_3

    .line 374
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 375
    const/4 v2, 0x1

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 385
    :cond_3
    :goto_4
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 386
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 347
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #n:I
    .end local v21           #pair:[Ljava/lang/String;
    .end local v22           #param:Ljava/lang/String;
    .end local v25           #tokens:[Ljava/lang/String;
    .end local v26           #val:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 350
    .local v17, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "delete: error parsing where: "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 377
    .end local v17           #ex:Ljava/lang/NumberFormatException;
    .restart local v18       #key:Ljava/lang/String;
    .restart local v20       #n:I
    .restart local v21       #pair:[Ljava/lang/String;
    .restart local v22       #param:Ljava/lang/String;
    .restart local v25       #tokens:[Ljava/lang/String;
    .restart local v26       #val:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 378
    const/4 v2, 0x1

    aget-object v26, v21, v2

    goto :goto_4

    .line 381
    :cond_5
    const/4 v2, 0x1

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    goto :goto_4

    .line 387
    :cond_6
    const-string/jumbo v2, "number"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 389
    :cond_7
    const-string v2, "emails"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 391
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v6, v2

    goto/16 :goto_3

    .line 392
    :cond_8
    const-string/jumbo v2, "number2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 393
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 394
    :cond_9
    const-string/jumbo v2, "number3"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 395
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 396
    :cond_a
    const-string/jumbo v2, "number4"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 397
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 398
    :cond_b
    const-string/jumbo v2, "nickname"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 399
    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 400
    :cond_c
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 410
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #n:I
    .end local v21           #pair:[Ljava/lang/String;
    .end local v22           #param:Ljava/lang/String;
    .end local v25           #tokens:[Ljava/lang/String;
    .end local v26           #val:Ljava/lang/String;
    :cond_d
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_e

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 411
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 414
    :cond_e
    if-nez v12, :cond_10

    move-object/from16 v2, p0

    .line 416
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v23

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "update success = "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v27, 0x0

    aget v27, v23, v27

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v27, " ;result[1]"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v27, 0x1

    aget v27, v23, v27

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 418
    if-eqz v23, :cond_f

    const/4 v2, 0x1

    const/16 v27, 0x0

    aget v27, v23, v27

    move/from16 v0, v27

    if-ne v2, v0, :cond_f

    .line 420
    const/16 v24, 0x1

    .line 428
    :cond_f
    :goto_5
    if-nez v24, :cond_11

    .line 429
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 425
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v11}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;)Z

    move-result v24

    goto :goto_5

    .line 431
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 107
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 26
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 122
    const/4 v11, 0x0

    .line 123
    .local v11, pin2:Ljava/lang/String;
    const/16 v23, 0x0

    .line 124
    .local v23, success:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 126
    .local v20, result:[I
    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 128
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 129
    .local v18, match:I
    packed-switch v18, :pswitch_data_0

    .line 145
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cannot insert into URL: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 133
    .local v3, efType:I
    const/16 v2, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "insert efType is: "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 149
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, number:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, email:Ljava/lang/String;
    const-string/jumbo v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, anr:Ljava/lang/String;
    const-string/jumbo v2, "number3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, number3:Ljava/lang/String;
    const-string/jumbo v2, "number4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, number4:Ljava/lang/String;
    const-string/jumbo v2, "nickname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, nickname:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "insert: values tag:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " values number:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " values emails:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " values number2:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " values number3:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " values number4:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " values nickname:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, emails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 167
    const/4 v2, 0x0

    aput-object v14, v6, v2

    .line 168
    const/4 v12, -0x1

    .local v12, Index:I
    move-object/from16 v2, p0

    .line 171
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v20

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "update success = "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v24, 0x0

    aget v24, v20, v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, " ;result[1]"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v24, 0x1

    aget v24, v20, v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 173
    if-eqz v20, :cond_0

    const/4 v2, 0x1

    const/16 v24, 0x0

    aget v24, v20, v24

    move/from16 v0, v24

    if-ne v2, v0, :cond_0

    .line 175
    const/16 v23, 0x1

    .line 176
    const/4 v2, 0x1

    aget v12, v20, v2

    .line 179
    :cond_0
    if-nez v23, :cond_7

    .line 181
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v17

    .line 183
    .local v17, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v17, :cond_6

    .line 186
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 187
    .local v16, ext1recordSize:[I
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 189
    .local v19, recordSize:[I
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_4

    .line 190
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Error/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .local v13, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .local v21, resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 277
    .end local v16           #ext1recordSize:[I
    .end local v17           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v19           #recordSize:[I
    .end local v21           #resultUri:Landroid/net/Uri;
    .local v22, resultUri:Landroid/net/Uri;
    :goto_1
    return-object v22

    .line 138
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #anr:Ljava/lang/String;
    .end local v8           #number3:Ljava/lang/String;
    .end local v9           #number4:Ljava/lang/String;
    .end local v10           #nickname:Ljava/lang/String;
    .end local v12           #Index:I
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v14           #email:Ljava/lang/String;
    .end local v22           #resultUri:Landroid/net/Uri;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 140
    .restart local v3       #efType:I
    const/16 v2, 0x6f3b

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    .line 141
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 142
    goto/16 :goto_0

    .line 195
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #anr:Ljava/lang/String;
    .restart local v8       #number3:Ljava/lang/String;
    .restart local v9       #number4:Ljava/lang/String;
    .restart local v10       #nickname:Ljava/lang/String;
    .restart local v12       #Index:I
    .restart local v14       #email:Ljava/lang/String;
    .restart local v16       #ext1recordSize:[I
    .restart local v17       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19       #recordSize:[I
    :cond_1
    const/16 v2, 0x6f3a

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v19

    .line 196
    if-eqz v19, :cond_4

    .line 197
    const/16 v2, 0x6f3a

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v24, 0x2

    aget v24, v19, v24

    move/from16 v0, v24

    if-lt v2, v0, :cond_2

    .line 198
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21       #resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 200
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 201
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v22           #resultUri:Landroid/net/Uri;
    :cond_2
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x6f3a

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimAdnRecordsSize(I)I

    move-result v2

    const/16 v24, 0x6f3a

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSize(I)I

    move-result v24

    move/from16 v0, v24

    if-lt v2, v0, :cond_3

    .line 203
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21       #resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 205
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 207
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v22           #resultUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v24, 0x14

    move/from16 v0, v24

    if-le v2, v0, :cond_4

    .line 208
    const/16 v2, 0x6f4a

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v16

    .line 209
    if-eqz v16, :cond_4

    .line 210
    const/16 v2, 0x6f3a

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getExtensionSize(I)I

    move-result v2

    const/16 v24, 0x2

    aget v24, v16, v24

    move/from16 v0, v24

    if-lt v2, v0, :cond_4

    .line 211
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21       #resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 213
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 221
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v22           #resultUri:Landroid/net/Uri;
    :cond_4
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_6

    .line 222
    const/16 v2, 0x6f3b

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v19

    .line 223
    if-eqz v19, :cond_6

    .line 224
    const/16 v2, 0x6f3b

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v24, 0x2

    aget v24, v19, v24

    move/from16 v0, v24

    if-lt v2, v0, :cond_5

    .line 225
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21       #resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 227
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 229
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v22           #resultUri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v24, 0x14

    move/from16 v0, v24

    if-le v2, v0, :cond_6

    .line 230
    const/16 v2, 0x6f4b

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v16

    .line 231
    if-eqz v16, :cond_6

    .line 232
    const/16 v2, 0x6f3b

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getExtensionSize(I)I

    move-result v2

    const/16 v24, 0x2

    aget v24, v16, v24

    move/from16 v0, v24

    if-lt v2, v0, :cond_6

    .line 233
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .restart local v21       #resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 235
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 245
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v16           #ext1recordSize:[I
    .end local v17           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v19           #recordSize:[I
    .end local v22           #resultUri:Landroid/net/Uri;
    :catch_0
    move-exception v15

    .line 246
    .local v15, ex:Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 248
    .end local v15           #ex:Ljava/lang/SecurityException;
    :cond_6
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Error/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21       #resultUri:Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 250
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 253
    .end local v13           #buf:Ljava/lang/StringBuilder;
    .end local v22           #resultUri:Landroid/net/Uri;
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v13       #buf:Ljava/lang/StringBuilder;
    packed-switch v18, :pswitch_data_1

    .line 266
    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 275
    .restart local v21       #resultUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "resultUri = "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v22, v21

    .line 277
    .end local v21           #resultUri:Landroid/net/Uri;
    .restart local v22       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 256
    .end local v22           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v2, "adn/"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 260
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 243
    .end local v13           #buf:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 90
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :pswitch_0
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :pswitch_1
    const/16 v0, 0x6f3b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_2
    const/16 v0, 0x6f49

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 42
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 437
    const/16 v18, 0x0

    .line 438
    .local v18, pin2:Ljava/lang/String;
    const/16 v40, 0x0

    .line 439
    .local v40, success:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v38, v0

    .line 441
    .local v38, result:[I
    const-string/jumbo v2, "update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 443
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v35

    .line 444
    .local v35, match:I
    packed-switch v35, :pswitch_data_0

    .line 455
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot insert into URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 459
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, number:Ljava/lang/String;
    const/16 v32, 0x0

    .line 462
    .local v32, emails:[Ljava/lang/String;
    const-string/jumbo v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 463
    .local v11, newTag:Ljava/lang/String;
    const-string/jumbo v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 464
    .local v12, newNumber:Ljava/lang/String;
    const/4 v13, 0x0

    .line 466
    .local v13, newEmails:[Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 467
    .local v31, email:Ljava/lang/String;
    const-string/jumbo v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, anr:Ljava/lang/String;
    const-string/jumbo v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 469
    .local v36, newEmail:Ljava/lang/String;
    const-string/jumbo v2, "newNumber2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 470
    .local v14, newAnr:Ljava/lang/String;
    const-string/jumbo v2, "number3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, anr2:Ljava/lang/String;
    const-string/jumbo v2, "number4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, anr3:Ljava/lang/String;
    const-string/jumbo v2, "nickname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 473
    .local v10, sne:Ljava/lang/String;
    const-string/jumbo v2, "newNumber3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 474
    .local v15, newAnr2:Ljava/lang/String;
    const-string/jumbo v2, "newNumber4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 475
    .local v16, newAnr3:Ljava/lang/String;
    const-string/jumbo v2, "newNickname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 476
    .local v17, newSne:Ljava/lang/String;
    const-string/jumbo v2, "srecid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 479
    .local v39, srecid:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "update where:"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " tag:"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " number= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " emails= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " number2= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " number3= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " number4= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " sne= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "--- newTag= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " newNumber= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " newEmails= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " newNumber2= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " newNumber3= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " newNumber4= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " newSne= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " srecid= "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 496
    const/4 v6, 0x0

    .line 497
    .local v6, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 498
    const/4 v2, 0x0

    aput-object v31, v6, v2

    .line 499
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 500
    const/4 v2, 0x0

    aput-object v36, v13, v2

    .line 501
    if-eqz v11, :cond_0

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v11, v5

    .line 502
    :cond_1
    if-nez v4, :cond_2

    const-string v4, ""

    .line 505
    :cond_2
    if-eqz p3, :cond_3

    if-eqz v39, :cond_3

    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move-object/from16 v2, p0

    .line 507
    invoke-direct/range {v2 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v38

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "update success = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v19, 0x0

    aget v19, v38, v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " ;result[1]"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v19, 0x1

    aget v19, v38, v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 510
    if-eqz v38, :cond_4

    const/4 v2, 0x1

    const/16 v19, 0x0

    aget v19, v38, v19

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 512
    const/16 v40, 0x1

    .line 564
    :cond_4
    :goto_1
    if-nez v40, :cond_a

    .line 565
    const/4 v2, 0x0

    .line 567
    :goto_2
    return v2

    .line 450
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #oldEmails:[Ljava/lang/String;
    .end local v7           #anr:Ljava/lang/String;
    .end local v8           #anr2:Ljava/lang/String;
    .end local v9           #anr3:Ljava/lang/String;
    .end local v10           #sne:Ljava/lang/String;
    .end local v11           #newTag:Ljava/lang/String;
    .end local v12           #newNumber:Ljava/lang/String;
    .end local v13           #newEmails:[Ljava/lang/String;
    .end local v14           #newAnr:Ljava/lang/String;
    .end local v15           #newAnr2:Ljava/lang/String;
    .end local v16           #newAnr3:Ljava/lang/String;
    .end local v17           #newSne:Ljava/lang/String;
    .end local v31           #email:Ljava/lang/String;
    .end local v32           #emails:[Ljava/lang/String;
    .end local v36           #newEmail:Ljava/lang/String;
    .end local v39           #srecid:Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 451
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 452
    goto/16 :goto_0

    .line 517
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #oldEmails:[Ljava/lang/String;
    .restart local v7       #anr:Ljava/lang/String;
    .restart local v8       #anr2:Ljava/lang/String;
    .restart local v9       #anr3:Ljava/lang/String;
    .restart local v10       #sne:Ljava/lang/String;
    .restart local v11       #newTag:Ljava/lang/String;
    .restart local v12       #newNumber:Ljava/lang/String;
    .restart local v13       #newEmails:[Ljava/lang/String;
    .restart local v14       #newAnr:Ljava/lang/String;
    .restart local v15       #newAnr2:Ljava/lang/String;
    .restart local v16       #newAnr3:Ljava/lang/String;
    .restart local v17       #newSne:Ljava/lang/String;
    .restart local v31       #email:Ljava/lang/String;
    .restart local v32       #emails:[Ljava/lang/String;
    .restart local v36       #newEmail:Ljava/lang/String;
    .restart local v39       #srecid:Ljava/lang/String;
    :cond_5
    const-string v2, "="

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 518
    .local v37, pair:[Ljava/lang/String;
    const-string v41, ""

    .line 519
    .local v41, val:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v37, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 520
    .local v34, key:Ljava/lang/String;
    const/16 v21, -0x1

    .line 521
    .local v21, Index:I
    const/16 v30, -0x1

    .line 523
    .local v30, IndexID:I
    :try_start_0
    move-object/from16 v0, v37

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_6

    .line 524
    const-string/jumbo v2, "srecid"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 525
    const/4 v2, 0x1

    aget-object v41, v37, v2

    .line 526
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 536
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "update key = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ",val = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 537
    if-gez v21, :cond_8

    .line 540
    if-eqz v39, :cond_7

    :try_start_1
    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 542
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v30

    .line 549
    :cond_7
    :goto_4
    if-ltz v30, :cond_9

    .line 551
    move/from16 v21, v30

    :cond_8
    move-object/from16 v19, p0

    move/from16 v20, v3

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v27, v16

    move-object/from16 v28, v17

    move-object/from16 v29, v18

    .line 559
    invoke-direct/range {v19 .. v29}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    goto/16 :goto_1

    .line 529
    :catch_0
    move-exception v33

    .line 532
    .local v33, ex:Ljava/lang/NumberFormatException;
    const/16 v21, -0x1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "update: error parsing where: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 544
    .end local v33           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v33

    .line 545
    .restart local v33       #ex:Ljava/lang/NumberFormatException;
    const/16 v30, -0x1

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "update: error parsing srecid: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 555
    .end local v33           #ex:Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "delete error Index = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 556
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 567
    .end local v21           #Index:I
    .end local v30           #IndexID:I
    .end local v34           #key:Ljava/lang/String;
    .end local v37           #pair:[Ljava/lang/String;
    .end local v41           #val:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
