.class Lcom/lenovo/fm/RadioService$9;
.super Landroid/os/Handler;
.source "RadioService.java"


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
    .line 1995
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1997
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1998
    .local v0, what:I
    sparse-switch v0, :sswitch_data_0

    .line 2089
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2000
    :sswitch_1
    const-string v1, "RadioService"

    const-string v2, "handler EXIT_FM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2004
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->powerDown()Z

    .line 2005
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->closeDevice()Z

    .line 2008
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2009
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 2010
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x0

    #setter for: Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioService;->access$202(Lcom/lenovo/fm/RadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_0

    .line 2015
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->saveRecording()V

    goto :goto_0

    .line 2018
    :sswitch_3
    const-string v1, "RadioService"

    const-string v2, "Handler startRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #calls: Lcom/lenovo/fm/RadioService;->startRecording()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$2500(Lcom/lenovo/fm/RadioService;)V

    goto :goto_0

    .line 2023
    :sswitch_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopRecording()V

    goto :goto_0

    .line 2026
    :sswitch_5
    new-instance v1, Lcom/lenovo/fm/RadioService$9$1;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioService$9$1;-><init>(Lcom/lenovo/fm/RadioService$9;)V

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService$9$1;->start()V

    goto :goto_0

    .line 2051
    :sswitch_6
    new-instance v1, Lcom/lenovo/fm/RadioService$9$2;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioService$9$2;-><init>(Lcom/lenovo/fm/RadioService$9;)V

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService$9$2;->start()V

    goto :goto_0

    .line 1998
    :sswitch_data_0
    .sparse-switch
        0x31261 -> :sswitch_2
        0x31262 -> :sswitch_3
        0x31263 -> :sswitch_4
        0x31264 -> :sswitch_5
        0x31265 -> :sswitch_6
        0x31266 -> :sswitch_1
        0x3b9aca00 -> :sswitch_0
    .end sparse-switch
.end method
