.class public Lcom/android/internal/policy/impl/ChangeableDrawTextView;
.super Lcom/android/internal/policy/impl/DrawTextView;
.source "ChangeableDrawTextView.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "ChangeableDrawTextView"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ChangeableDrawTextView;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/DrawTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v1, "ChangeableDrawTextView"

    iput-object v1, p0, Lcom/android/internal/policy/impl/ChangeableDrawTextView;->TAG:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ChangeableDrawTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x105004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    .line 32
    const v1, 0x105004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->vOffset:F

    .line 33
    const v1, 0x105004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    .line 34
    const v1, 0x10404f0

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPromptStringId:I

    .line 35
    return-void
.end method
