.class Lcom/lenovo/fm/RadioService$LowBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowBatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$LowBatteryReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1455
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioService$LowBatteryReceiver;-><init>(Lcom/lenovo/fm/RadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    const-string v0, "RadioService"

    const-string v1, "Intent.ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$LowBatteryReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.batterylow"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1464
    :cond_0
    return-void
.end method
