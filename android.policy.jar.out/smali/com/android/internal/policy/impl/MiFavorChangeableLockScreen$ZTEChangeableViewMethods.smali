.class Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;
.super Ljava/lang/Object;
.source "MiFavorChangeableLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZTEChangeableViewMethods"
.end annotation


# instance fields
.field private final mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;Lcom/android/internal/policy/impl/ZTEChangeableView;)V
    .locals 0
    .parameter
    .parameter "ztechangeableview"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;->this$0:Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    .line 185
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiFavorChangeableLockScreen$ZTEChangeableViewMethods;->mZTEChangeableView:Lcom/android/internal/policy/impl/ZTEChangeableView;

    return-object v0
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 198
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
