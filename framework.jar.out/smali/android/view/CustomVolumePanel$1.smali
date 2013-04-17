.class Landroid/view/CustomVolumePanel$1;
.super Ljava/lang/Object;
.source "CustomVolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
.method constructor <init>(Landroid/view/CustomVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Landroid/view/CustomVolumePanel$1;->this$0:Landroid/view/CustomVolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/view/CustomVolumePanel$1;->this$0:Landroid/view/CustomVolumePanel;

    #calls: Landroid/view/CustomVolumePanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/CustomVolumePanel;->access$000(Landroid/view/CustomVolumePanel;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method
