.class public Landroid/text/method/DialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DialerKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getChar()[C

    move-result-object v0

    sput-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method private static getChar()[C
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/zte/zteConfig;->getTeleOperator()I

    move-result v0

    .line 119
    .local v0, Operator:I
    const-string v1, "HouJiong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    const/16 v1, 0x18

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 126
    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x16

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    goto :goto_0

    .line 121
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
        0x50t 0x0t
        0x57t 0x0t
    .end array-data

    .line 126
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
    .end array-data
.end method

.method public static getInstance()Landroid/text/method/DialerKeyListener;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Landroid/text/method/DialerKeyListener;

    invoke-direct {v0}, Landroid/text/method/DialerKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 42
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    goto :goto_0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x3

    return v0
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 8
    .parameter "event"
    .parameter "content"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-static {p2}, Landroid/text/method/DialerKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v7

    or-int v4, v6, v7

    .line 55
    .local v4, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v5

    .line 61
    .local v5, number:I
    and-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_1

    .line 62
    if-eqz v5, :cond_1

    .line 98
    .end local v5           #number:I
    :cond_0
    :goto_0
    return v5

    .line 67
    .restart local v5       #number:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    .line 69
    .local v3, match:I
    if-eqz v3, :cond_2

    move v5, v3

    .line 70
    goto :goto_0

    .line 79
    :cond_2
    if-eqz v4, :cond_0

    .line 80
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 81
    .local v2, kd:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 83
    .local v0, accepted:[C
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 85
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v1

    invoke-static {v0, v6}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v5, v6, v1

    goto :goto_0

    .line 84
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
