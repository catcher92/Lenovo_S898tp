.class Lcom/lenovo/fm/RadioActivity$31;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->showHeadsetDialog()V
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
    .line 2744
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 2746
    const-string v1, "RadioActivity"

    const-string v2, "mHeadsetDialog onDismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2749
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->osc:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$6900(Lcom/lenovo/fm/RadioActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2751
    const-string v1, "RadioActivity"

    const-string v2, "HeadSetDialog: Failed to Start Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2763
    const-string v1, "RadioActivity"

    const-string v2, "mHeadsetDialog onDismiss turn off radio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2766
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2767
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 2768
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 2777
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 2779
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lenovo/fm/RadioService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2781
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v2, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$202(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 2783
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2784
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->updatePreferences()V

    .line 2788
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2791
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.lenovo.fm"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 2798
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_3
    :goto_2
    return-void

    .line 2754
    :cond_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v2, 0x1

    #setter for: Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$7002(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 2756
    const-string v1, "RadioActivity"

    const-string v2, "HeadSetDialog: Start Service completed successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2771
    :cond_5
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2773
    :cond_6
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    goto :goto_1

    .line 2792
    :cond_7
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2794
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2796
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$31;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    goto :goto_2
.end method
