.class Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$1;
.super Ljava/lang/Object;
.source "MiFavorChangeableLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "MiFavorSlideLockScreen"

    const-string v1, "mOnResumeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mImgLock:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->access$100(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$1;->this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->mAnimationScale:Landroid/view/animation/ScaleAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->access$000(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    return-void
.end method
