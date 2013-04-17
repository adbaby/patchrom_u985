.class public Lcom/android/internal/policy/impl/DrawTextView;
.super Landroid/view/View;
.source "DrawTextView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private curColor:I

.field private emergencyText:Ljava/lang/String;

.field private firstStart:Z

.field private mContext:Landroid/content/Context;

.field private mH:F

.field private mPathPaint:Landroid/graphics/Paint;

.field public mPromptStringId:I

.field public mR:F

.field public mTextSize:I

.field private mW:F

.field private paintText:Landroid/graphics/Paint;

.field private pathCWJ:Landroid/graphics/Path;

.field public vOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "DrawTextView"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    .line 22
    iput v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    .line 23
    iput v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    .line 24
    iput-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    .line 26
    iput-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    .line 27
    iput-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    .line 31
    const/high16 v0, -0x3ee0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->vOffset:F

    .line 32
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    .line 33
    const v0, 0x10404f0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPromptStringId:I

    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/DrawTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string v0, "DrawTextView"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    .line 22
    iput v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    .line 23
    iput v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    .line 24
    iput-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    .line 26
    iput-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    .line 27
    iput-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    .line 31
    const/high16 v0, -0x3ee0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->vOffset:F

    .line 32
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    .line 33
    const v0, 0x10404f0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPromptStringId:I

    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method getTextColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPromptStringId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergencyText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DrawTextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/internal/policy/impl/DrawTextView;->vOffset:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    const v1, -0x7fffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    :cond_1
    return-void
.end method

.method public setText(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPromptStringId:I

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->invalidate()V

    .line 128
    return-void
.end method

.method setTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    return-void
.end method
