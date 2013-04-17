.class Lcom/android/internal/policy/impl/ItemImageView$5;
.super Landroid/database/ContentObserver;
.source "ItemImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ItemImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ItemImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ItemImageView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView$5;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$5;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ItemImageView;->access$200(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Utilities;->numOfMissdeCalendar()I

    move-result v0

    .line 352
    .local v0, number:I
    if-lez v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$5;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ItemImageView;->access$402(Lcom/android/internal/policy/impl/ItemImageView;Z)Z

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$5;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/ItemImageView;->updateMissedNumber(I)V

    .line 358
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$5;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/ItemImageView;->ishascalendar:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ItemImageView;->access$402(Lcom/android/internal/policy/impl/ItemImageView;Z)Z

    goto :goto_0
.end method
