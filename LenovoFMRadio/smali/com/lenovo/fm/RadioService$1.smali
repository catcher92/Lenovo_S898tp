.class Lcom/lenovo/fm/RadioService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 143
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$1;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lenovo.fm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "RadioService"

    const-string v2, "ExitFilter onRecieve"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$1;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->setspeakerEnable(Z)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$1;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 153
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$1;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/fm/RadioService$1;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/fm/RadioService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$1;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->stopService(Landroid/content/Intent;)Z

    .line 160
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
