.class Lcom/android/internal/policy/impl/ItemImageView$4;
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
    .line 342
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageView$4;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/ItemImageView$4;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ItemImageView$4;->this$0:Lcom/android/internal/policy/impl/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/Utilities;
    invoke-static {v1}, Lcom/android/internal/policy/impl/ItemImageView;->access$200(Lcom/android/internal/policy/impl/ItemImageView;)Lcom/android/internal/policy/impl/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Utilities;->numOfUnreadEmail()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ItemImageView;->updateMissedNumber(I)V

    .line 346
    return-void
.end method
