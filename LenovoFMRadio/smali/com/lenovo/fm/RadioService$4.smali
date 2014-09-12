.class Lcom/lenovo/fm/RadioService$4;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    const/16 v3, 0x64

    if-ne v3, p2, :cond_0

    .line 493
    const-string v3, "RadioService"

    const-string v4, "onError: MEDIA_SERVER_DIED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 495
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Lcom/lenovo/fm/RadioService;->access$202(Lcom/lenovo/fm/RadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 496
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 498
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$300(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    const-string v4, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 503
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->isFmOn:Z
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$400(Lcom/lenovo/fm/RadioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 505
    iget-object v3, p0, Lcom/lenovo/fm/RadioService$4;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    move v1, v2

    .line 519
    :goto_0
    return v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 511
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 514
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
