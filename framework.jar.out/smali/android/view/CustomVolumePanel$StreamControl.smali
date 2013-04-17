.class Landroid/view/CustomVolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "CustomVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CustomVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field seekbarView:Landroid/widget/CustomSeekBar;

.field streamType:I

.field final synthetic this$0:Landroid/view/CustomVolumePanel;


# direct methods
.method private constructor <init>(Landroid/view/CustomVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Landroid/view/CustomVolumePanel$StreamControl;->this$0:Landroid/view/CustomVolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/CustomVolumePanel;Landroid/view/CustomVolumePanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/view/CustomVolumePanel$StreamControl;-><init>(Landroid/view/CustomVolumePanel;)V

    return-void
.end method
