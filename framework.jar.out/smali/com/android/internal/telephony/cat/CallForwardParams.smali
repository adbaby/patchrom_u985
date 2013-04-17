.class Lcom/android/internal/telephony/cat/CallForwardParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field bEnable:Z

.field callForwardNum:Ljava/lang/String;

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ZLjava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "bEnable"
    .parameter "Num"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 143
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallForwardParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 144
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/CallForwardParams;->bEnable:Z

    .line 145
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CallForwardParams;->callForwardNum:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method
