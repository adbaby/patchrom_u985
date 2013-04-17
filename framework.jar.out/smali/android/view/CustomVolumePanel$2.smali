.class Landroid/view/CustomVolumePanel$2;
.super Landroid/app/Dialog;
.source "CustomVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/CustomVolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/CustomVolumePanel;


# direct methods
.method constructor <init>(Landroid/view/CustomVolumePanel;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    iput-object p1, p0, Landroid/view/CustomVolumePanel$2;->this$0:Landroid/view/CustomVolumePanel;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/view/CustomVolumePanel$2;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Landroid/view/CustomVolumePanel$2;->this$0:Landroid/view/CustomVolumePanel;

    #calls: Landroid/view/CustomVolumePanel;->forceTimeout()V
    invoke-static {v0}, Landroid/view/CustomVolumePanel;->access$100(Landroid/view/CustomVolumePanel;)V

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
