.class Lcom/lenovo/fm/RadioService$9$2;
.super Ljava/lang/Thread;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioService$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/fm/RadioService$9;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioService$9;)V
    .locals 0
    .parameter

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2053
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekstation m_CurrentChannelFreq2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v3, v3, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$2700(Lcom/lenovo/fm/RadioService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x1

    #setter for: Lcom/lenovo/fm/RadioService;->m_isSeeking:Z
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioService;->access$1602(Lcom/lenovo/fm/RadioService;Z)Z

    .line 2058
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$2700(Lcom/lenovo/fm/RadioService;)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->direction:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$2800(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/fm/FMRadioNative;->seek(FZ)F

    move-result v0

    .line 2060
    .local v0, seekStation:F
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x0

    #setter for: Lcom/lenovo/fm/RadioService;->m_isSeeking:Z
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioService;->access$1602(Lcom/lenovo/fm/RadioService;Z)Z

    .line 2061
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #calls: Lcom/lenovo/fm/RadioService;->toDouble(F)D
    invoke-static {v1, v0}, Lcom/lenovo/fm/RadioService;->access$2900(Lcom/lenovo/fm/RadioService;F)D

    move-result-wide v1

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 2062
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekstation m_CurrentChannelFreq2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v3, v3, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F
    invoke-static {v3}, Lcom/lenovo/fm/RadioService;->access$2700(Lcom/lenovo/fm/RadioService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekstation seekStation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekstation mCurrentfreq= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide v3, 0x4055e00000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide/high16 v3, 0x405b

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 2071
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.deviceseekedstart"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "channel"

    sget-wide v4, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2083
    :goto_0
    return-void

    .line 2075
    :cond_0
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekstation fale mCurrentfreq= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$2700(Lcom/lenovo/fm/RadioService;)F

    move-result v2

    #calls: Lcom/lenovo/fm/RadioService;->toDouble(F)D
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioService;->access$2900(Lcom/lenovo/fm/RadioService;F)D

    move-result-wide v1

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 2078
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$9$2;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.deviceseekedstart"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "channel"

    sget-wide v4, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
