.class Landroid/view/CustomVolumePanel$3;
.super Ljava/lang/Object;
.source "CustomVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 224
    iput-object p1, p0, Landroid/view/CustomVolumePanel$3;->this$0:Landroid/view/CustomVolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/view/CustomVolumePanel$3;->this$0:Landroid/view/CustomVolumePanel;

    const/4 v1, -0x1

    #setter for: Landroid/view/CustomVolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Landroid/view/CustomVolumePanel;->access$202(Landroid/view/CustomVolumePanel;I)I

    .line 227
    iget-object v0, p0, Landroid/view/CustomVolumePanel$3;->this$0:Landroid/view/CustomVolumePanel;

    #getter for: Landroid/view/CustomVolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/view/CustomVolumePanel;->access$300(Landroid/view/CustomVolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CustomVolumePanel$3;->this$0:Landroid/view/CustomVolumePanel;

    #getter for: Landroid/view/CustomVolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Landroid/view/CustomVolumePanel;->access$200(Landroid/view/CustomVolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 228
    return-void
.end method
