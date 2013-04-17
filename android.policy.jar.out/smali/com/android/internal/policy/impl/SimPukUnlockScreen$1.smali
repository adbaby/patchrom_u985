.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;
.super Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 7
    .parameter "success"

    .prologue
    const v6, 0x10400cd

    .line 296
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 299
    :cond_0
    if-eqz p1, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 303
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 328
    :goto_0
    return-void

    .line 309
    :cond_1
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 312
    .local v0, attemptsRemaining:I
    const-string v3, "SimPukUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimLockChangedResponse attemptsRemaining = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-ltz v0, :cond_2

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10400cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #attemptsRemaining:I
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    .restart local v0       #attemptsRemaining:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x10400cd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 321
    .end local v0           #attemptsRemaining:I
    :catch_0
    move-exception v2

    .line 322
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
