.class Lcom/lenovo/fm/RadioActivity$35;
.super Landroid/os/Handler;
.source "RadioActivity.java"


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
    .line 3142
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 3144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3178
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3179
    return-void

    .line 3146
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2200(Lcom/lenovo/fm/RadioActivity;)V

    .line 3147
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 3148
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 3149
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3150
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 3156
    :goto_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 3157
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 3158
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 3159
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lenovo/fm/RadioService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3161
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v2, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$202(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 3163
    const-string v1, "RadioActivity"

    const-string v2, "sleepexpired, stopFM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3167
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.lenovo.fm"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 3152
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1

    .line 3172
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$35;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->updateExpiredSleepTime()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$7400(Lcom/lenovo/fm/RadioActivity;)V

    goto/16 :goto_0

    .line 3144
    :pswitch_data_0
    .packed-switch 0x290
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
