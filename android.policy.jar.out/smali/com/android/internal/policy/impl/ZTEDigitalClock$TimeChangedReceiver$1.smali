.class Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "ZTEDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/policy/impl/ZTEDigitalClock;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;ZLcom/android/internal/policy/impl/ZTEDigitalClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ZTEDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ZTEDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/ZTEDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->access$002(Lcom/android/internal/policy/impl/ZTEDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZTEDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/ZTEDigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ZTEDigitalClock;->updateTime()V

    .line 104
    return-void
.end method
