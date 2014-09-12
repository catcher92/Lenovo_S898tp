.class Lcom/lenovo/fm/RadioActivity$RadioReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1671
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity$RadioReceiver;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1675
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRecive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.play"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1678
    const-string v5, "RadioActivity"

    const-string v6, "ACTION_PLAY_RADIO"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1681
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getcallstate()I

    move-result v5

    if-nez v5, :cond_3

    .line 1686
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PLAY_RADIO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v7}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/fm/RadioService;->getcallstate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1690
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2200(Lcom/lenovo/fm/RadioActivity;)V

    .line 1691
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 1692
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 1693
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1694
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1696
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1697
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f02003b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1698
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->releaseWakeLock()V

    .line 1699
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v6, 0x0

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    .line 1701
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->updateHorListView()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2300(Lcom/lenovo/fm/RadioActivity;)V

    .line 1702
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isBackStagePlay:Z
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4300(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "K860"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "K900"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1703
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 2124
    :cond_1
    :goto_0
    return-void

    .line 1681
    :cond_2
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1708
    :cond_3
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isBackStage:Z
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4500(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isBackStagePlay:Z
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4300(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1709
    :cond_4
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 1710
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mPlay_ButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4400(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1706
    :cond_5
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mPlay_ButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4400(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1713
    :cond_6
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1719
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1720
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 1721
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 1723
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2200(Lcom/lenovo/fm/RadioActivity;)V

    .line 1724
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1726
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1727
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    goto/16 :goto_0

    .line 1729
    :cond_7
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto/16 :goto_0

    .line 1734
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.headsetplug"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1737
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1738
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1740
    :cond_9
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1741
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1743
    :cond_a
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1744
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1746
    :cond_b
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 1747
    const-string v5, "RadioActivity"

    const-string v6, "RadioActivity Handler HEADSET PLUG"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1749
    :cond_c
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 1750
    const-string v5, "RadioActivity"

    const-string v6, "RadioActivity Handler HEADSET UNPLUG"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->IsInternalWireSupport()Z
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4600(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1753
    const-string v5, "RadioActivity"

    const-string v6, "RadioActivity Handler HEADSET UNPLUG showwarning"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1757
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.batterylow"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1759
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_BATTERY_LOW"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1764
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.localechanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1766
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_LOCALE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1769
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1771
    :cond_f
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1772
    :cond_10
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 1773
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1775
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    goto/16 :goto_0

    .line 1777
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.updateui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1778
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_UPDATEUI "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1780
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1781
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1782
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent.ACTION_UPDATEUI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v7}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020066

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1785
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 1786
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v6, 0x1

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    goto/16 :goto_0

    .line 1789
    :cond_12
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1791
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent.ACTION_UPDATEUI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v7}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f02003b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1794
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 1795
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->updateHorListView()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2300(Lcom/lenovo/fm/RadioActivity;)V

    .line 1796
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v6, 0x0

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    goto/16 :goto_0

    .line 1800
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.tunetolast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1802
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_TUNE_TO_LAST"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getcallstate()I

    move-result v5

    if-nez v5, :cond_1

    .line 1808
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_LastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4700(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1809
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.tunetonext"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1811
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_TUNE_TO_NEXT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v5

    if-eqz v5, :cond_15

    :goto_1
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getcallstate()I

    move-result v5

    if-nez v5, :cond_1

    .line 1817
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_NextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4800(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1813
    :cond_15
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1818
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.exit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1820
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_EXIT_RADIO"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 1823
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->exitRec()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4900(Lcom/lenovo/fm/RadioActivity;)V

    .line 1824
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2200(Lcom/lenovo/fm/RadioActivity;)V

    .line 1825
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1826
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 1827
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 1828
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1829
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 1855
    :cond_17
    :goto_2
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 1857
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/lenovo/fm/RadioService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1859
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v6, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$202(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 1861
    :cond_18
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 1862
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->updatePreferences()V

    .line 1864
    :cond_19
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_EXIT_RADIO force stop activity"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1868
    .local v0, am:Landroid/app/ActivityManager;
    const-string v5, "com.lenovo.fm"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1834
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_1a
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1836
    :cond_1b
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 1838
    :cond_1c
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1840
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1841
    :cond_1d
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1843
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1845
    :cond_1e
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1848
    :cond_1f
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1849
    :cond_20
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 1850
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1853
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    goto/16 :goto_2

    .line 1870
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.deviceopened"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1872
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_OPENED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 1875
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1877
    :cond_22
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 1879
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_OPENED~~~~~~ tuning Radio!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    sget-wide v6, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->tuneRadio(I)I

    .line 1886
    :cond_23
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1887
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.deviceseeked"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1889
    const-string v5, "RadioActivity"

    const-string v6, "RadioActivity Intent.ACTION_DEVICE_SEEKED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-nez v5, :cond_25

    .line 1892
    const-string v5, "RadioActivity"

    const-string v6, "ACTION_DEVICE_SEEKED m_RadioService == null, return"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1895
    :cond_25
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->setRelateSeekBar(Z)V

    .line 1896
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1898
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const-string v6, "channel"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    #calls: Lcom/lenovo/fm/RadioActivity;->toDouble(F)D
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$5000(Lcom/lenovo/fm/RadioActivity;F)D

    move-result-wide v5

    sput-wide v5, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 1900
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioActivity Intent.ACTION_DEVICE_SEEKED CurrentChannelFrqMTK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioActivity Intent.ACTION_DEVICE_SEEKED intentFrqMTK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "channel"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v5

    if-nez v5, :cond_26

    .line 1907
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1908
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 1910
    :cond_26
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 1911
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v6, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 1912
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1913
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 1917
    :cond_27
    const-string v5, "channel"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    sput-wide v5, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 1919
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "seek callback m_currentchannel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const-string v6, "channel"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->tune2NewChannel(I)V

    .line 1923
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v6, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 1924
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 1925
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1927
    :cond_28
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1931
    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.deviceseekedstart"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1934
    const-string v5, "channel"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    sput-wide v5, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 1935
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioActivity Intent.ACTION_DEVICE_SEEKED start CurrentChannelFrqMTK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioActivity Intent.ACTION_DEVICE_SEEKED start intentFrqMTK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "channel"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1947
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 1948
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v6, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :goto_3
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1954
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1956
    :cond_2a
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1957
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->startFM()V

    goto/16 :goto_0

    .line 1949
    :catch_0
    move-exception v1

    .line 1951
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1959
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "seek_failed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1961
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_seeked fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 1963
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1965
    :cond_2c
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1966
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1969
    :cond_2d
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1974
    :cond_2e
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1975
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 1977
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 1979
    :cond_2f
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1980
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    goto/16 :goto_0

    .line 1983
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.devicescanfinished"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1985
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_SCAN_FINISHED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lenovo.leos.radio.RADIOACTIVITY"

    if-ne v5, v6, :cond_1

    .line 1989
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1997
    :goto_4
    const-string v5, "channel"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v7}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v7

    float-to-double v7, v7

    div-double/2addr v5, v7

    sput-wide v5, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 2000
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2002
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2004
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 1993
    :cond_31
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    const-string v6, "channel"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioService;->tune2NewChannel(I)V

    goto :goto_4

    .line 2006
    :cond_32
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 2007
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v7, 0x7f040028

    invoke-virtual {v6, v7}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2010
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v8, 0x7f040029

    invoke-virtual {v7, v8}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_hasfound:I
    invoke-static {v7}, Lcom/lenovo/fm/RadioActivity;->access$5100(Lcom/lenovo/fm/RadioActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v8, 0x7f04002b

    invoke-virtual {v7, v8}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2017
    :cond_33
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2018
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2021
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.phonescanexit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2022
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2023
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2024
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.exitrecording"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2025
    const-string v5, "RadioActivity"

    const-string v6, "RadioActivity Intent.EXIT_RECORDING"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2027
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020045

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2033
    :goto_5
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->exitRec()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$4900(Lcom/lenovo/fm/RadioActivity;)V

    goto/16 :goto_0

    .line 2029
    :cond_36
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020046

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 2034
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.record.error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 2035
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isRecording:Z
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$900(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2036
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v6, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->isRecording:Z
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$902(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 2037
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->performRecordStop()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1400(Lcom/lenovo/fm/RadioActivity;)V

    .line 2038
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2039
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020045

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2041
    :cond_38
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020046

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2046
    :cond_39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.devicescaned"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 2049
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2050
    const-string v5, "channel"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2051
    .local v2, freq:I
    const-string v5, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent.ACTION_DEVICE_SCANED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/fm/RadioService;->isFavorite(I)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 2055
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_SCANED: channel overwrite"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/fm/RadioService;->deleteChannel(I)Z

    .line 2058
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v8, 0x7f040025

    invoke-virtual {v7, v8}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-float v7, v2

    iget-object v8, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v8}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    .line 2072
    :goto_6
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$5108(Lcom/lenovo/fm/RadioActivity;)I

    .line 2074
    int-to-double v5, v2

    const-wide v7, 0x408f400000000000L

    div-double v3, v5, v7

    .line 2075
    .local v3, temp:D
    sput-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    goto/16 :goto_0

    .line 2061
    .end local v3           #temp:D
    :cond_3a
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 2062
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_SCANED: channel new add"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v8, 0x7f040025

    invoke-virtual {v7, v8}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-float v7, v2

    iget-object v8, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v8}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    goto :goto_6

    .line 2068
    :cond_3b
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_SCANED: channel is favorite. Ignore."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2087
    .end local v2           #freq:I
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.devicescaning"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2089
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_SCANING"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lenovo.leos.radio.RADIOACTIVITY"

    if-ne v5, v6, :cond_1

    .line 2093
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2094
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v7, 0x7f040027

    invoke-virtual {v6, v7}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2097
    :cond_3d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.devicescancanceled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2099
    const-string v5, "RadioActivity"

    const-string v6, "Intent.ACTION_DEVICE_SCAN_CANCELED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2101
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    goto/16 :goto_0

    .line 2103
    :cond_3e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.fm.action.exitdialog"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2104
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2105
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 2106
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2107
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 2108
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 2109
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 2110
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v6, 0x1

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v5, v6}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    goto/16 :goto_0

    .line 2114
    :cond_3f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2115
    const-string v5, "RadioActivity"

    const-string v6, "Airplane mode status changed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/fm/Util;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2118
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2120
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->exitFMRadio()V
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$5200(Lcom/lenovo/fm/RadioActivity;)V

    .line 2121
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioActivity;->finish()V

    goto/16 :goto_0
.end method
