.class Landroid/webkit/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field static final HEADER_STR:Ljava/lang/String; = "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final URI_PROTOCOL:I = 0x100

.field private static final mAboutBlank:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"


# instance fields
.field private mCacheMode:I

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptResponse:Landroid/webkit/WebResourceResponse;

.field private final mListener:Landroid/webkit/LoadListener;

.field private final mMethod:Ljava/lang/String;

.field private mNetwork:Landroid/webkit/Network;

.field private mPostData:[B

.field private mReferrer:Ljava/lang/String;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mUaprofHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Landroid/webkit/FrameLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/FrameLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    .locals 5
    .parameter "listener"
    .parameter "settings"
    .parameter "method"
    .parameter "interceptResponse"

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Landroid/webkit/FrameLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 68
    iput-object p3, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    .line 69
    iput v4, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 70
    iput-object p2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    .line 71
    iput-object p4, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    .line 72
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040021

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private handleCache()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 306
    iget v3, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    packed-switch v3, :pswitch_data_0

    .line 359
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v2

    .line 362
    :goto_0
    return v2

    .line 317
    :pswitch_0
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 319
    .local v1, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_0

    .line 320
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_0

    .line 326
    :cond_0
    const/16 v0, -0xe

    .line 327
    .local v0, err:I
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 344
    .end local v0           #err:I
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 346
    .restart local v1       #result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_1

    .line 347
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_0

    .line 362
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :cond_1
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z
    .locals 8
    .parameter "url"
    .parameter "loadListener"
    .parameter "settings"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x65

    const/4 v2, 0x1

    .line 160
    sget-boolean v3, Landroid/webkit/FrameLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 165
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local p0
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v2, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3}, Landroid/webkit/FileLoader;->load()V

    .line 233
    .end local v1           #url:Ljava/lang/String;
    :goto_0
    return v2

    .line 166
    .restart local p0
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/16 v3, -0xc

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040007

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local p0
    .restart local v1       #url:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/FileLoader;

    invoke-direct {v4, v1, p1, v2, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v5, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3}, Landroid/webkit/FileLoader;->load()V

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/FileLoader;

    invoke-direct {v4, v1, p1, v5, v2}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 198
    :cond_4
    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 199
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    new-instance v3, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v4

    invoke-direct {v3, v1, p1, v7, v4}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3}, Landroid/webkit/FileLoader;->load()V

    goto :goto_0

    .line 204
    :cond_5
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v5

    invoke-direct {v4, v1, p1, v7, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 210
    :cond_6
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 214
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 215
    new-instance v3, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v3}, Landroid/webkit/ContentLoader;->load()V

    goto/16 :goto_0

    .line 218
    :cond_7
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v3

    new-instance v4, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v3, v6, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 224
    :cond_8
    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 226
    new-instance v3, Landroid/webkit/DataLoader;

    invoke-direct {v3, v1, p1}, Landroid/webkit/DataLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v3}, Landroid/webkit/DataLoader;->load()V

    goto/16 :goto_0

    .line 228
    :cond_9
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 229
    const-string v3, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/webkit/LoadListener;->data([BI)V

    .line 230
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->endData()V

    goto/16 :goto_0

    .line 233
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private populateHeaders()V
    .locals 7

    .prologue
    .line 402
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_0
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "content-type"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_1
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    monitor-enter v5

    .line 412
    :try_start_0
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, password:Ljava/lang/String;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 417
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, proxyHeader:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v1}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #proxyHeader:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 428
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_3
    return-void

    .line 414
    .end local v0           #cookie:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private populateStaticHeaders()V
    .locals 6

    .prologue
    .line 371
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, accept:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 373
    :cond_0
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept"

    const-string/jumbo v5, "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept-Charset"

    const-string/jumbo v5, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, acceptLanguage:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 379
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept-Language"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_2
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "User-Agent"

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/zte/zteConfig;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, productName:Ljava/lang/String;
    const-string v3, "http://www.zte.com.cn/mobile/uaprof/ZTE V985.xml"

    iput-object v3, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    .line 391
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 392
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string/jumbo v4, "x-wap-profile"

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mUaprofHeader:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_3
    return-void
.end method

.method private startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 288
    new-instance v0, Landroid/webkit/CacheLoader;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    .line 290
    .local v0, cacheLoader:Landroid/webkit/CacheLoader;
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->setCacheLoader(Landroid/webkit/CacheLoader;)V

    .line 291
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/webkit/CacheLoader;->load()V

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public executeLoad()Z
    .locals 6

    .prologue
    const v5, 0x1040007

    const/16 v4, -0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, url:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v3, :cond_2

    .line 114
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebResourceResponse;->loader(Landroid/webkit/LoadListener;)Landroid/webkit/StreamLoader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/StreamLoader;->load()V

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mInterceptResponse:Landroid/webkit/WebResourceResponse;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4, v5}, Landroid/webkit/WebResourceResponse;->loader(Landroid/webkit/LoadListener;)Landroid/webkit/StreamLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v2

    .line 127
    goto :goto_0

    .line 131
    :cond_3
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->verifyURLEncoding(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v2

    .line 135
    goto :goto_0

    .line 137
    :cond_4
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    .line 138
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    invoke-virtual {p0}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    move-result v1

    goto :goto_0

    .line 141
    :cond_5
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 144
    :cond_6
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, v3, v4}, Landroid/webkit/FrameLoader;->handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/16 v3, -0xa

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040008

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v2

    .line 154
    goto/16 :goto_0
.end method

.method public getLoadListener()Landroid/webkit/LoadListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    return-object v0
.end method

.method handleHTTPLoad()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 238
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 240
    :cond_0
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateStaticHeaders()V

    .line 241
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateHeaders()V

    .line 244
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleCache()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/LoadListener;->setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V

    .line 275
    :cond_1
    :goto_0
    return v3

    .line 258
    :cond_2
    const/4 v2, 0x0

    .line 259
    .local v2, ret:Z
    const/16 v0, -0xa

    .line 262
    .local v0, error:I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-object v8, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 271
    :goto_1
    if-nez v2, :cond_1

    .line 272
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 273
    const/4 v3, 0x0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, ex:Landroid/net/ParseException;
    const/16 v0, -0xc

    .line 270
    goto :goto_1

    .line 266
    .end local v1           #ex:Landroid/net/ParseException;
    :catch_1
    move-exception v1

    .line 269
    .local v1, ex:Ljava/lang/RuntimeException;
    const/16 v0, -0xc

    goto :goto_1
.end method

.method public setCacheMode(I)V
    .locals 0
    .parameter "cacheMode"

    .prologue
    .line 90
    iput p1, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 91
    return-void
.end method

.method public setContentTypeForPost(Ljava/lang/String;)V
    .locals 0
    .parameter "postContentType"

    .prologue
    .line 86
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 95
    return-void
.end method

.method public setPostData([B)V
    .locals 0
    .parameter "postData"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    .line 83
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 78
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method
