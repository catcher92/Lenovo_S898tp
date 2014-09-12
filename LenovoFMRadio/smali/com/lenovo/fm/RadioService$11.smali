.class Lcom/lenovo/fm/RadioService$11;
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
    .line 2191
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$11;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2193
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2213
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2214
    return-void

    .line 2195
    :pswitch_0
    const-string v1, "RadioService"

    const-string v2, "mUIUpdateHandlerHandler - SLEEPTIMER_EXPIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$11;->this$0:Lcom/lenovo/fm/RadioService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J
    invoke-static {v1, v2, v3}, Lcom/lenovo/fm/RadioService;->access$3202(Lcom/lenovo/fm/RadioService;J)J

    .line 2198
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$11;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopFM()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2199
    :catch_0
    move-exception v0

    .line 2201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2206
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    const-string v1, "RadioService"

    const-string v2, "mUIUpdateHandlerHandler - SLEEPTIMER_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$11;->this$0:Lcom/lenovo/fm/RadioService;

    #calls: Lcom/lenovo/fm/RadioService;->updateExpiredSleepTime()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$3300(Lcom/lenovo/fm/RadioService;)V

    goto :goto_0

    .line 2193
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
