.class public Lcom/android/internal/policy/impl/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field static final LOCKSCREEN_IMAGEVIEW_CLING:Ljava/lang/String; = "lockscreen_imageview_cling"

.field static final LOCKSCREEN_IMAGEVIEW_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_lockscreen_imageview_dismissed"

.field static final LOCKSCREEN_UNLOCK_CLING:Ljava/lang/String; = "lockscreen_unlock_cling"

.field static final LOCKSCREEN_UNLOCK_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_lockscreen_unlock_dismissed"

.field private static final TAG:Ljava/lang/String; = "Cling"


# instance fields
.field private PunchThroughPositionX:I

.field private PunchThroughPositionY:I

.field private isShow:Ljava/lang/String;

.field key:Ljava/lang/String;

.field private mAppIconSize:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mButtonBarHeight:I

.field private mCling:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

.field private mIsInitialized:Z

.field private mItemAlphaRadius:F

.field private mPositionData:[I

.field private mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

.field private mPunchThroughGraphicCenterRadius:I

.field private mRevealRadius:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mUnlockAlphaRadius:F

.field private punchThroughPosition:[I

.field private touchRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0xa0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const-string v0, "showNavigationBar"

    iput-object v0, p0, Lcom/android/internal/policy/impl/Cling;->key:Ljava/lang/String;

    .line 58
    iput v2, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    .line 59
    const/16 v0, 0x117

    iput v0, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    .line 61
    iput v2, p0, Lcom/android/internal/policy/impl/Cling;->touchRadius:I

    .line 63
    const/high16 v0, 0x430c

    iput v0, p0, Lcom/android/internal/policy/impl/Cling;->mItemAlphaRadius:F

    .line 64
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/android/internal/policy/impl/Cling;->mUnlockAlphaRadius:F

    .line 65
    iput v1, p0, Lcom/android/internal/policy/impl/Cling;->mScreenWidth:I

    .line 66
    iput v1, p0, Lcom/android/internal/policy/impl/Cling;->mScreenHeight:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Cling;->punchThroughPosition:[I

    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/Cling;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private getPunchThroughPosition()[I
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/Cling;->punchThroughPosition:[I

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/Cling;->punchThroughPosition:[I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/Cling;->punchThroughPosition:[I

    return-object v0
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/android/internal/policy/impl/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object v0, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 154
    iput-object v0, p0, Lcom/android/internal/policy/impl/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Cling;->mIsInitialized:Z

    .line 156
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 179
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/Cling;->mIsInitialized:Z

    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getMeasuredHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 196
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    :goto_0
    const/4 v2, -0x1

    .line 220
    .local v2, cx:I
    const/4 v3, -0x1

    .line 221
    .local v3, cy:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 222
    .local v5, dw:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 224
    .local v4, dh:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Cling;->getPunchThroughPosition()[I

    move-result-object v6

    .line 225
    .local v6, pos:[I
    aget v2, v6, v10

    .line 226
    const/4 v7, 0x1

    aget v3, v6, v7

    .line 227
    if-le v2, v11, :cond_1

    if-le v3, v11, :cond_1

    .line 228
    int-to-float v7, v2

    int-to-float v8, v3

    iget v9, p0, Lcom/android/internal/policy/impl/Cling;->mRevealRadius:F

    iget-object v10, p0, Lcom/android/internal/policy/impl/Cling;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v5, 0x2

    sub-int v8, v2, v8

    div-int/lit8 v9, v4, 0x2

    sub-int v9, v3, v9

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v2

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    iget-object v7, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    :cond_1
    invoke-virtual {p1, v0, v12, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #cx:I
    .end local v3           #cy:I
    .end local v4           #dh:I
    .end local v5           #dw:I
    .end local v6           #pos:[I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 239
    return-void

    .line 199
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v1       #c:Landroid/graphics/Canvas;
    :cond_3
    const/high16 v7, -0x6700

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method init([ILjava/lang/String;)V
    .locals 9
    .parameter "positionData"
    .parameter "cling"

    .prologue
    const v8, 0x1050057

    const v7, 0x1050050

    const v6, 0x105004f

    .line 86
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/Cling;->mIsInitialized:Z

    if-nez v3, :cond_2

    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/Cling;->mPositionData:[I

    .line 99
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 100
    iget-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v4, 0xffffff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 106
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 107
    .local v0, mCreationOrientation:I
    const-string v3, "enterprise_U985"

    invoke-static {}, Lcom/zte/zteConfig;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 109
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    .line 110
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    .line 111
    iget-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/Cling;->isShow:Ljava/lang/String;

    .line 112
    const-string v3, "hide"

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->isShow:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    .line 135
    :cond_0
    :goto_0
    const v3, 0x1050051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->mItemAlphaRadius:F

    .line 136
    const v3, 0x1050052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->mUnlockAlphaRadius:F

    .line 137
    const v3, 0x1050053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->touchRadius:I

    .line 138
    const-string v3, "Cling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PunchThroughPositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PunchThroughPositionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p2, p0, Lcom/android/internal/policy/impl/Cling;->mCling:Ljava/lang/String;

    .line 140
    const-string v3, "lockscreen_imageview_cling"

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->mCling:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    const v3, 0x1080619

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 142
    iget v3, p0, Lcom/android/internal/policy/impl/Cling;->mItemAlphaRadius:F

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->mRevealRadius:F

    .line 147
    :cond_1
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/Cling;->mIsInitialized:Z

    .line 149
    .end local v0           #mCreationOrientation:I
    .end local v1           #newConfig:Landroid/content/res/Configuration;
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_2
    return-void

    .line 116
    .restart local v0       #mCreationOrientation:I
    .restart local v1       #newConfig:Landroid/content/res/Configuration;
    .restart local v2       #r:Landroid/content/res/Resources;
    :cond_3
    const v3, 0x1050054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    .line 117
    const v3, 0x1050055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    .line 118
    iget-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/Cling;->isShow:Ljava/lang/String;

    .line 119
    const-string v3, "hide"

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->isShow:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const v3, 0x1050056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    goto/16 :goto_0

    .line 125
    :cond_4
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionX:I

    .line 126
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/Cling;->isShow:Ljava/lang/String;

    .line 128
    const-string v3, "hide"

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->isShow:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->PunchThroughPositionY:I

    goto/16 :goto_0

    .line 143
    :cond_5
    const-string v3, "lockscreen_unlock_cling"

    iget-object v4, p0, Lcom/android/internal/policy/impl/Cling;->mCling:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const v3, 0x108038c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 145
    iget v3, p0, Lcom/android/internal/policy/impl/Cling;->mUnlockAlphaRadius:F

    iput v3, p0, Lcom/android/internal/policy/impl/Cling;->mRevealRadius:F

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Cling;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/high16 v9, 0x4000

    .line 167
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Cling;->getPunchThroughPosition()[I

    move-result-object v2

    .line 168
    .local v2, pos:[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aget v6, v2, v3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    aget v8, v2, v4

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 170
    .local v0, diff:D
    iget v5, p0, Lcom/android/internal/policy/impl/Cling;->touchRadius:I

    int-to-double v5, v5

    cmpg-double v5, v0, v5

    if-gez v5, :cond_0

    .line 174
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method
