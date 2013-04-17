.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.hardware.action.OTG_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "otg_no"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, iOtgNo:I
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v3, 0x1

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateOtgNotification(ZI)V
    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$200(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;ZI)V

    .line 277
    .end local v1           #iOtgNo:I
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string v2, "android.hardware.action.OTG_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "otg_no"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 270
    .restart local v1       #iOtgNo:I
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateOtgNotification(ZI)V
    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$200(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;ZI)V

    goto :goto_0

    .line 275
    .end local v1           #iOtgNo:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
