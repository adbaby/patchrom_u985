.class Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "ZTEDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ZTEDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const v1, 0x10202a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    :cond_0
    invoke-static {}, Landroid/text/format/DateUtils;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 131
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_0
    return-void

    .line 137
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
