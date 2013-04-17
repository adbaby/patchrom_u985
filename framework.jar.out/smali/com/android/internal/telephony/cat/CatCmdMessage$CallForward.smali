.class public Lcom/android/internal/telephony/cat/CatCmdMessage$CallForward;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallForward"
.end annotation


# instance fields
.field public bEnable:Z

.field public callForwardNum:Ljava/lang/String;

.field public callMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallForward;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
