.class Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;-><init>(Lcom/lenovo/fm/RadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1572
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1573
    const-string v1, "RadioService"

    const-string v2, "language change"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1575
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 1577
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1578
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->updatePreferences()V

    .line 1579
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1580
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 1581
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 1582
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 1583
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopSelf()V

    .line 1586
    :cond_2
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1587
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1, v3}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 1593
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1596
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.lenovo.fm"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.localechanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1600
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_3
    return-void

    .line 1589
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0
.end method
