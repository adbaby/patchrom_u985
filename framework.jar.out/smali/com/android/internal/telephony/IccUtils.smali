.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 17
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    const-string v14, ""

    .line 273
    :goto_0
    return-object v14

    .line 182
    :cond_0
    const/4 v14, 0x1

    move/from16 v0, p2

    if-lt v0, v14, :cond_4

    .line 183
    aget-byte v14, p0, p1

    const/16 v15, -0x80

    if-ne v14, v15, :cond_4

    .line 184
    add-int/lit8 v14, p2, -0x1

    div-int/lit8 v13, v14, 0x2

    .line 185
    .local v13, ucslen:I
    const/4 v11, 0x0

    .line 188
    .local v11, ret:Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v14, p1, 0x1

    mul-int/lit8 v15, v13, 0x2

    const-string/jumbo v16, "utf-16be"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v12, v0, v14, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #ret:Ljava/lang/String;
    .local v12, ret:Ljava/lang/String;
    move-object v11, v12

    .line 194
    .end local v12           #ret:Ljava/lang/String;
    .restart local v11       #ret:Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_4

    .line 197
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    .line 199
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 200
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-nez v14, :cond_2

    .line 201
    move v13, v7

    .line 206
    :cond_1
    :goto_3
    if-lez v13, :cond_3

    add-int/lit8 v14, v13, -0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xffff

    if-ne v14, v15, :cond_3

    .line 207
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 189
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 190
    .local v6, ex:Ljava/io/UnsupportedEncodingException;
    const-string v14, "IccUtils"

    const-string v15, "implausible UnsupportedEncodingException"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 199
    .end local v6           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #i:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 209
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 214
    .end local v7           #i:I
    .end local v11           #ret:Ljava/lang/String;
    .end local v13           #ucslen:I
    :cond_4
    const/4 v8, 0x0

    .line 215
    .local v8, isucs2:Z
    const/4 v3, 0x0

    .line 216
    .local v3, base:C
    const/4 v9, 0x0

    .line 218
    .local v9, len:I
    const/4 v14, 0x3

    move/from16 v0, p2

    if-lt v0, v14, :cond_8

    aget-byte v14, p0, p1

    const/16 v15, -0x7f

    if-ne v14, v15, :cond_8

    .line 219
    add-int/lit8 v14, p1, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 220
    add-int/lit8 v14, p2, -0x3

    if-le v9, v14, :cond_5

    .line 221
    add-int/lit8 v9, p2, -0x3

    .line 223
    :cond_5
    add-int/lit8 v14, p1, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x7

    int-to-char v3, v14

    .line 224
    add-int/lit8 p1, p1, 0x3

    .line 225
    const/4 v8, 0x1

    .line 237
    :cond_6
    :goto_4
    if-eqz v8, :cond_c

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v11, ret:Ljava/lang/StringBuilder;
    :goto_5
    if-lez v9, :cond_b

    .line 243
    aget-byte v14, p0, p1

    if-gez v14, :cond_7

    .line 244
    aget-byte v14, p0, p1

    and-int/lit8 v14, v14, 0x7f

    add-int/2addr v14, v3

    int-to-char v14, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 p1, p1, 0x1

    .line 246
    add-int/lit8 v9, v9, -0x1

    .line 251
    :cond_7
    const/4 v4, 0x0

    .line 252
    .local v4, count:I
    :goto_6
    if-ge v4, v9, :cond_a

    add-int v14, p1, v4

    aget-byte v14, p0, v14

    if-ltz v14, :cond_a

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 226
    .end local v4           #count:I
    .end local v11           #ret:Ljava/lang/StringBuilder;
    :cond_8
    const/4 v14, 0x4

    move/from16 v0, p2

    if-lt v0, v14, :cond_6

    aget-byte v14, p0, p1

    const/16 v15, -0x7e

    if-ne v14, v15, :cond_6

    .line 227
    add-int/lit8 v14, p1, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 228
    add-int/lit8 v14, p2, -0x4

    if-le v9, v14, :cond_9

    .line 229
    add-int/lit8 v9, p2, -0x4

    .line 231
    :cond_9
    add-int/lit8 v14, p1, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v15, p1, 0x3

    aget-byte v15, p0, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-char v3, v14

    .line 233
    add-int/lit8 p1, p1, 0x4

    .line 234
    const/4 v8, 0x1

    goto :goto_4

    .line 255
    .restart local v4       #count:I
    .restart local v11       #ret:Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int p1, p1, v4

    .line 259
    sub-int/2addr v9, v4

    .line 260
    goto :goto_5

    .line 262
    .end local v4           #count:I
    :cond_b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 265
    .end local v11           #ret:Ljava/lang/StringBuilder;
    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 266
    .local v10, resource:Landroid/content/res/Resources;
    const-string v5, ""

    .line 268
    .local v5, defaultCharset:Ljava/lang/String;
    const v14, 0x1040020

    :try_start_1
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 273
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v14}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 270
    :catch_1
    move-exception v14

    goto :goto_7
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 52
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 53
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 63
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 58
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 48
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    if-gt v2, v4, :cond_0

    .line 60
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 426
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 427
    const/4 v0, -0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 323
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 339
    :goto_0
    return-object v3

    .line 325
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 330
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 332
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 336
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 132
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 135
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 136
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 139
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 74
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 76
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 77
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 78
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 87
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 82
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 83
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 84
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 521
    if-nez p0, :cond_1

    .line 522
    const/4 v4, 0x0

    .line 536
    :cond_0
    return-object v4

    .line 525
    :cond_1
    new-array v4, p2, [I

    .line 526
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 527
    .local v3, endIndex:I
    move v5, p1

    .line 528
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 529
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 531
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 535
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 110
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 113
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 114
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 117
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 278
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 280
    :goto_0
    return v0

    .line 279
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 280
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 299
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 310
    :cond_0
    return-object v1

    .line 301
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 303
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 305
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 306
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 305
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 471
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 472
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 504
    :goto_0
    return-object v2

    .line 477
    :cond_0
    const/4 v0, 0x1

    .line 478
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 493
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 494
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 495
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 496
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 497
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 498
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 499
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 500
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 498
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 480
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 481
    goto :goto_1

    .line 483
    :pswitch_2
    const/4 v0, 0x3

    .line 484
    goto :goto_1

    .line 486
    :pswitch_3
    const/16 v0, 0xf

    .line 487
    goto :goto_1

    .line 489
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 503
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 504
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 509
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 510
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 515
    :cond_0
    new-array v0, p2, [I

    .line 517
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 352
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 353
    :cond_0
    const-string v2, ""

    .line 390
    :cond_1
    :goto_0
    return-object v2

    .line 356
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 377
    const-string v2, ""

    .line 385
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 360
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 361
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 362
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 363
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 367
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 369
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 370
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 371
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 400
    const/4 v8, 0x0

    .line 401
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 402
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 403
    .local v3, height:I
    mul-int v4, v10, v3

    .line 405
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 407
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 408
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 409
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 410
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 412
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 413
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 414
    const/4 v0, 0x7

    .line 416
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 419
    :cond_0
    if-eq v6, v4, :cond_1

    .line 420
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 443
    const/4 v6, 0x0

    .line 444
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 445
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 446
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 447
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 448
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 451
    .local v1, clutOffset:I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 452
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 453
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 456
    :cond_0
    const/4 v5, 0x0

    .line 457
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 458
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 465
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 461
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method
