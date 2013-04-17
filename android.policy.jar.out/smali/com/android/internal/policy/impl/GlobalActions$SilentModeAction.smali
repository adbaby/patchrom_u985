.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 541
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 542
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 543
    return-void

    .line 534
    :array_0
    .array-data 0x4
        0x64t 0x2t 0x2t 0x1t
        0x65t 0x2t 0x2t 0x1t
        0x66t 0x2t 0x2t 0x1t
        0x67t 0x2t 0x2t 0x1t
    .end array-data
.end method

.method public static chmodFile(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 621
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 622
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 624
    .local v2, status:I
    if-eqz v2, :cond_0

    .line 625
    const-string v3, "vDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyTreeIoHandler#chmod 777  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to changmod!__lyy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 552
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 547
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 557
    const v5, 0x1090041

    invoke-virtual {p4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 570
    .local v4, v:Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    .line 571
    const/4 v3, -0x1

    .line 572
    .local v3, selectedIndex:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "current_profile"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    .local v0, currentMode:I
    if-ne v0, v6, :cond_1

    .line 575
    const/4 v3, 0x2

    .line 589
    :cond_0
    :goto_0
    const-string v5, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectedIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 591
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 592
    .local v2, itemView:Landroid/view/View;
    if-ne v3, v1, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 594
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 595
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 577
    .end local v1           #i:I
    .end local v2           #itemView:Landroid/view/View;
    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 579
    const/4 v3, 0x0

    goto :goto_0

    .line 581
    :cond_2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 583
    const/4 v3, 0x1

    goto :goto_0

    .line 585
    :cond_3
    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 587
    const/4 v3, 0x3

    goto :goto_0

    .restart local v1       #i:I
    .restart local v2       #itemView:Landroid/view/View;
    :cond_4
    move v5, v7

    .line 592
    goto :goto_2

    .line 598
    .end local v2           #itemView:Landroid/view/View;
    :cond_5
    return-object v4
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-nez v8, :cond_0

    .line 676
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 639
    .local v3, index:I
    const/4 v6, 0x0

    .line 640
    .local v6, preferMode:I
    if-nez v3, :cond_2

    .line 642
    const/4 v6, 0x2

    .line 656
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.settings.profile.switchprofile"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, broadcast:Landroid/content/Intent;
    const-string v8, "prefer_mode"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    const/high16 v8, 0x3000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 662
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 663
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 665
    .local v7, ringerMode:I
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/current_mode.txt"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 667
    .local v4, out:Ljava/io/FileOutputStream;
    const-string v8, "GlobalActions"

    const-string v9, "file can write__lyy"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 669
    .local v5, p:Ljava/io/PrintStream;
    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(I)V

    .line 670
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v2           #file:Ljava/io/File;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v5           #p:Ljava/io/PrintStream;
    :goto_2
    const-string v8, "/data/current_mode.txt"

    invoke-static {v8}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->chmodFile(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v7           #ringerMode:I
    :cond_2
    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 646
    const/4 v6, 0x3

    goto :goto_1

    .line 648
    :cond_3
    const/4 v8, 0x2

    if-ne v3, v8, :cond_4

    .line 650
    const/4 v6, 0x1

    goto :goto_1

    .line 652
    :cond_4
    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    .line 654
    const/4 v6, 0x4

    goto :goto_1

    .line 672
    .restart local v0       #broadcast:Landroid/content/Intent;
    .restart local v7       #ringerMode:I
    :catch_0
    move-exception v1

    .line 673
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to save!__lyy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method
