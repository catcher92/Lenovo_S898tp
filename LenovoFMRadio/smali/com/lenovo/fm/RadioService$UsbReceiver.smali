.class Lcom/lenovo/fm/RadioService$UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$UsbReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioService$UsbReceiver;-><init>(Lcom/lenovo/fm/RadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$UsbReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.exitrecording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1475
    :cond_0
    return-void
.end method
