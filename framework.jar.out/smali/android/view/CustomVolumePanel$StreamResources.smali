.class final enum Landroid/view/CustomVolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "CustomVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CustomVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/CustomVolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/CustomVolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/CustomVolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/CustomVolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/CustomVolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/CustomVolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/CustomVolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/CustomVolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Landroid/view/CustomVolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x10403d8

    const v5, 0x10802a5

    const v6, 0x10802a5

    move v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/view/CustomVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/CustomVolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 127
    new-instance v3, Landroid/view/CustomVolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0x10403d9

    const v8, 0x10802aa

    const v9, 0x10802ab

    move v5, v11

    move v6, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/CustomVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/CustomVolumePanel$StreamResources;->RingerStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 132
    new-instance v3, Landroid/view/CustomVolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, 0x10403da

    const v8, 0x10802a9

    const v9, 0x10802a9

    move v5, v12

    move v6, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/CustomVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/CustomVolumePanel$StreamResources;->VoiceStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 137
    new-instance v3, Landroid/view/CustomVolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const v7, 0x10403d5

    const v8, 0x10802a3

    const v9, 0x10802a4

    move v5, v13

    move v6, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/CustomVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/CustomVolumePanel$StreamResources;->AlarmStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 142
    new-instance v3, Landroid/view/CustomVolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const v7, 0x10403db

    const v8, 0x10802ad

    const v9, 0x10802ae

    move v5, v14

    move v6, v13

    move v10, v11

    invoke-direct/range {v3 .. v10}, Landroid/view/CustomVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/CustomVolumePanel$StreamResources;->MediaStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 147
    new-instance v3, Landroid/view/CustomVolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const v7, 0x10403dc

    const v8, 0x10802a7

    const v9, 0x10802a8

    move v10, v11

    invoke-direct/range {v3 .. v10}, Landroid/view/CustomVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/CustomVolumePanel$StreamResources;->NotificationStream:Landroid/view/CustomVolumePanel$StreamResources;

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/CustomVolumePanel$StreamResources;

    sget-object v1, Landroid/view/CustomVolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/CustomVolumePanel$StreamResources;->RingerStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Landroid/view/CustomVolumePanel$StreamResources;->VoiceStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v1, v0, v12

    sget-object v1, Landroid/view/CustomVolumePanel$StreamResources;->AlarmStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Landroid/view/CustomVolumePanel$StreamResources;->MediaStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Landroid/view/CustomVolumePanel$StreamResources;->NotificationStream:Landroid/view/CustomVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/CustomVolumePanel$StreamResources;->$VALUES:[Landroid/view/CustomVolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Landroid/view/CustomVolumePanel$StreamResources;->streamType:I

    .line 162
    iput p4, p0, Landroid/view/CustomVolumePanel$StreamResources;->descRes:I

    .line 163
    iput p5, p0, Landroid/view/CustomVolumePanel$StreamResources;->iconRes:I

    .line 164
    iput p6, p0, Landroid/view/CustomVolumePanel$StreamResources;->iconMuteRes:I

    .line 165
    iput-boolean p7, p0, Landroid/view/CustomVolumePanel$StreamResources;->show:Z

    .line 166
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/CustomVolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Landroid/view/CustomVolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/CustomVolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/CustomVolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Landroid/view/CustomVolumePanel$StreamResources;->$VALUES:[Landroid/view/CustomVolumePanel$StreamResources;

    invoke-virtual {v0}, [Landroid/view/CustomVolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/CustomVolumePanel$StreamResources;

    return-object v0
.end method
