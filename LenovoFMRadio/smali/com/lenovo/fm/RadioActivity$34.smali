.class Lcom/lenovo/fm/RadioActivity$34;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$34;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3109
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$34;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->hasSleepTimerExpired()Z
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$7200(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v2

    .line 3111
    .local v2, sleepTimerExpired:Z
    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3113
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 3114
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 3115
    .local v3, statusUpdate:Landroid/os/Message;
    const/16 v4, 0x291

    iput v4, v3, Landroid/os/Message;->what:I

    .line 3116
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$34;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$7300(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3117
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$34;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->hasSleepTimerExpired()Z
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$7200(Lcom/lenovo/fm/RadioActivity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3118
    .end local v3           #statusUpdate:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3119
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 3122
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 3123
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3124
    .local v1, finished:Landroid/os/Message;
    const/16 v4, 0x290

    iput v4, v1, Landroid/os/Message;->what:I

    .line 3125
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$34;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$7300(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3127
    .end local v1           #finished:Landroid/os/Message;
    :cond_1
    return-void
.end method
