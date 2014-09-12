.class Lcom/lenovo/fm/RadioService$10;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2145
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$10;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2147
    iget-object v4, p0, Lcom/lenovo/fm/RadioService$10;->this$0:Lcom/lenovo/fm/RadioService;

    #calls: Lcom/lenovo/fm/RadioService;->hasSleepTimerExpired()Z
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$3000(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    .line 2149
    .local v2, sleepTimerExpired:Z
    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2151
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2152
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2153
    .local v3, statusUpdate:Landroid/os/Message;
    const/16 v4, 0x64

    iput v4, v3, Landroid/os/Message;->what:I

    .line 2154
    iget-object v4, p0, Lcom/lenovo/fm/RadioService$10;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$3100(Lcom/lenovo/fm/RadioService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2155
    iget-object v4, p0, Lcom/lenovo/fm/RadioService$10;->this$0:Lcom/lenovo/fm/RadioService;

    #calls: Lcom/lenovo/fm/RadioService;->hasSleepTimerExpired()Z
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$3000(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    .line 2156
    const-string v4, "RadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSleepProcessing send SLEEPTIMER_UPDATE handler, sleepTimerExpired = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2158
    .end local v3           #statusUpdate:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2159
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2162
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 2163
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2164
    .local v1, finished:Landroid/os/Message;
    const/16 v4, 0x63

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2165
    iget-object v4, p0, Lcom/lenovo/fm/RadioService$10;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$3100(Lcom/lenovo/fm/RadioService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2167
    .end local v1           #finished:Landroid/os/Message;
    :cond_1
    return-void
.end method
