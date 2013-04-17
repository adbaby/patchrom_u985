.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewBase$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static final LOCKSCREEN_WALLPAPER_FILE:Ljava/lang/String; = "etc/customize/default_lockscreen"

.field private static final TAG:Ljava/lang/String; = "KeyguardViewBase"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewBase$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->resetBackground()V

    .line 102
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 243
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 244
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    .line 245
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    .line 320
    :cond_1
    :goto_1
    return v3

    .line 251
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_1

    .line 267
    :cond_3
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_4

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 282
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    const/16 v2, 0x18

    if-ne v1, v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v6, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 286
    :cond_5
    const/4 v2, -0x1

    goto :goto_2

    .line 300
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 301
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 313
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch

    .line 301
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    :pswitch_0
    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 326
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 327
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .locals 9

    .prologue
    .line 110
    :try_start_0
    const-string v6, "KeyguardViewBase"

    const-string v7, "setBackgroundDrawable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mContext:Landroid/content/Context;

    const-string v7, "wallpaper"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 112
    .local v5, wm:Landroid/app/WallpaperManager;
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getLockscreen()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_1

    .line 115
    const-string v6, "KeyguardViewBase"

    const-string v7, "change Lockscreen background!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardViewBase$FastBitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/internal/policy/impl/KeyguardViewBase$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/policy/impl/KeyguardViewBase$1;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #wm:Landroid/app/WallpaperManager;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/customize/default_lockscreen"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v1, default_lockscreen:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    .local v4, s:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 123
    const-string v6, "KeyguardViewBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set wallpaper. Couldn\'t get bitmap for path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_1
    if-eqz v4, :cond_0

    .line 131
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 135
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #default_lockscreen:Ljava/io/File;
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #s:Ljava/io/InputStream;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v3

    .line 136
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v6, "KeyguardViewBase"

    const-string v7, "file not found: etc/customize/default_lockscreen"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 126
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #default_lockscreen:Ljava/io/File;
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #s:Ljava/io/InputStream;
    .restart local v5       #wm:Landroid/app/WallpaperManager;
    :cond_2
    :try_start_3
    invoke-virtual {v5, v0}, Landroid/app/WallpaperManager;->setLockscreenBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    new-instance v6, Lcom/android/internal/policy/impl/KeyguardViewBase$FastBitmapDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/internal/policy/impl/KeyguardViewBase$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/policy/impl/KeyguardViewBase$1;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 130
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_3

    .line 131
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    .end local v1           #default_lockscreen:Ljava/io/File;
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #s:Ljava/io/InputStream;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :catch_1
    move-exception v3

    .line 139
    .local v3, e:Ljava/io/IOException;
    const-string v6, "KeyguardViewBase"

    const-string v7, "setBackgroundDrawable"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 142
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "KeyguardViewBase"

    const-string v7, "setBackgroundDrawable"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 153
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method

.method public isDisplayDesktop()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

