.class public interface abstract Lcom/android/internal/policy/impl/MultiTouchController$MultiTouchObjectCanvas;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiTouchObjectCanvas"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDraggableObjectAtPoint(Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getPositionAndScale(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;",
            ")V"
        }
    .end annotation
.end method

.method public abstract selectObject(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setPositionAndScale(Ljava/lang/Object;Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/internal/policy/impl/MultiTouchController$PositionAndScale;",
            "Lcom/android/internal/policy/impl/MultiTouchController$PointInfo;",
            ")Z"
        }
    .end annotation
.end method
