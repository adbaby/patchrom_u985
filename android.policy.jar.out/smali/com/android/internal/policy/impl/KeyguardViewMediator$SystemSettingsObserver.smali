.class Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 282
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 283
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "pm_lock_flag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    return-void
.end method

.method public onChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    const-wide/16 v10, 0x7d0

    const v9, 0x1080027

    const/16 v8, 0x7d9

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 296
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pm_lock_flag"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 299
    .local v1, lock_flag:I
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system setting change, lock_flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-ne v1, v6, :cond_2

    .line 302
    sget-boolean v3, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDMLocked:Z

    if-eq v3, v6, :cond_0

    .line 303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 305
    const v3, 0x10404d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const-string v3, "  "

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderShow:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$102(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 309
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderShow:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setType(I)V

    .line 315
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderShow:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 317
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderShow:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 318
    const-string v3, "KeyguardViewMediator"

    const-string v4, "com.android.lockscreen.emergencyscreen.show "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 321
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 322
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 312
    .restart local v0       #ab:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderShow:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 325
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_2
    if-nez v1, :cond_0

    .line 327
    sget-boolean v3, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDMLocked:Z

    if-ne v3, v6, :cond_0

    .line 328
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .restart local v0       #ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 330
    const v3, 0x10404d7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 331
    const-string v3, "  "

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderHide:Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderHide:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setType(I)V

    .line 334
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderHide:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 336
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->builderHide:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 337
    const-string v3, "KeyguardViewMediator"

    const-string v4, "com.android.lockscreen.emergencyscreen.hide "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 340
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$SystemSettingsObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
