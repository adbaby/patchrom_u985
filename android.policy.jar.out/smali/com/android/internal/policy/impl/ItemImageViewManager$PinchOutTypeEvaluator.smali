.class public Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;
.super Ljava/lang/Object;
.source "ItemImageViewManager.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ItemImageViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinchOutTypeEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/ItemImageViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;->this$0:Lcom/android/internal/policy/impl/ItemImageViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 377
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 374
    check-cast p2, Ljava/lang/Float;

    .end local p2
    check-cast p3, Ljava/lang/Float;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/ItemImageViewManager$PinchOutTypeEvaluator;->evaluate(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
