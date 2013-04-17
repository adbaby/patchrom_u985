.class Lcom/android/server/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2926
    iput-object p1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->waitValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const-wide/high16 v4, 0x402e

    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->waitValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v1

    iget v1, v1, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    mul-double/2addr v0, v4

    double-to-int v0, v0

    const/16 v1, 0xff

    iget-object v4, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLockedSensor(IIII)V

    .line 2932
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->waitValue:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mLcdValue:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6202(Lcom/android/server/PowerManagerService;I)I

    .line 2933
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->waitValue:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->formerValue:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6302(Lcom/android/server/PowerManagerService;I)I

    .line 2935
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->waitValue:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->realValue:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6402(Lcom/android/server/PowerManagerService;I)I

    .line 2937
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->startF:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;Z)Z

    .line 2939
    return-void

    .line 2929
    :cond_0
    const-wide v0, 0x3ff199999999999aL

    goto :goto_0
.end method
