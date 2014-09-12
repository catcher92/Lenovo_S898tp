.class Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/FMRadioRecorderHistory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.fm.action.headsetplug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$600(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$600(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    const-string v1, "com.lenovo.leos.radio.RADIOACTIVITY"

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->finish()V

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {v0}, Lcom/lenovo/fm/Util;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->finish()V

    goto :goto_0
.end method
