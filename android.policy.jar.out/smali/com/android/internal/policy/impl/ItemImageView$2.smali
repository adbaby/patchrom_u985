.class Lcom/android/internal/policy/impl/ItemImageView$2;
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
    .line 322
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ItemImageView;->access$200(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Utilities;->numOfMissdeCall()I

    move-result v0

    .line 326
    .local v0, number:I
    if-lez v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ItemImageView;->access$302(Lcom/android/internal/policy/impl/ItemImageView;Z)Z

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/ItemImageView;->updateMissedNumber(I)V

    .line 333
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$2;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/ItemImageView;->isStartCallLog:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ItemImageView;->access$302(Lcom/android/internal/policy/impl/ItemImageView;Z)Z

    goto :goto_0
.end method
