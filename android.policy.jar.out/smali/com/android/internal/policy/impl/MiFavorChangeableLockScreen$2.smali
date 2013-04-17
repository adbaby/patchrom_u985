.class Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiFavorChangeableLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->dismissCling(Lcom/android/internal/policy/impl/Cling;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

.field final synthetic val$cling:Lcom/android/internal/policy/impl/Cling;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;Lcom/android/internal/policy/impl/Cling;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->val$cling:Lcom/android/internal/policy/impl/Cling;

    iput-object p3, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->val$cling:Lcom/android/internal/policy/impl/Cling;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/Cling;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->val$cling:Lcom/android/internal/policy/impl/Cling;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Cling;->cleanup()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;->access$200(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$2;->val$flag:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 276
    return-void
.end method
