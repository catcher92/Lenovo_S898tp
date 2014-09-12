.class Lcom/lenovo/fm/RadioService$9$1;
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
    .line 2026
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$9$1;->this$1:Lcom/lenovo/fm/RadioService$9;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2029
    const-string v2, "RadioService"

    const-string v3, "RadioService handler Start_Scan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$9$1;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->startScan()[I

    move-result-object v0

    .line 2031
    .local v0, startScanChannels:[I
    if-eqz v0, :cond_0

    .line 2032
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanChannels returned first= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$9$1;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->freq:I
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$2600(Lcom/lenovo/fm/RadioService;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float v1, v2, v3

    .line 2036
    .local v1, tmp:F
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$9$1;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.deviceseeked"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "channel"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2042
    .end local v1           #tmp:F
    :goto_0
    return-void

    .line 2039
    :cond_0
    const-string v2, "RadioService"

    const-string v3, "RadioService handler Start_Scan--> scan no channel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$9$1;->this$1:Lcom/lenovo/fm/RadioService$9;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService$9;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "seek_failed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
