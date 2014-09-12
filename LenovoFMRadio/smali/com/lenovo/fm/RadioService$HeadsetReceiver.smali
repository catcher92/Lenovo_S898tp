.class Lcom/lenovo/fm/RadioService$HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1478
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioService$HeadsetReceiver;-><init>(Lcom/lenovo/fm/RadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f080043

    const/16 v8, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent.ACTION_HEADSET_PLUG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_backgroundshow:Z
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$1000(Lcom/lenovo/fm/RadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/fm/RadioService;->access$1100(Lcom/lenovo/fm/RadioService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.headsetplug"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    const-string v5, "state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1489
    const-string v2, "state"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1490
    const-string v2, "RadioService"

    const-string v3, "HEADSET PLUG"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z
    invoke-static {v2, v7}, Lcom/lenovo/fm/RadioService;->access$102(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1492
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    const-string v2, "RadioService"

    const-string v3, "InternalWireSupport, switch to long"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v6}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1499
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.exitdialog"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1502
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->requestAudioFocus()Z

    .line 1505
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/lenovo/fm/RadioService$HeadsetReceiver$1;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioService$HeadsetReceiver$1;-><init>(Lcom/lenovo/fm/RadioService$HeadsetReceiver;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1511
    .local v0, SwitchAudioToHeadset:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1513
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1300(Lcom/lenovo/fm/RadioService;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1514
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1400(Lcom/lenovo/fm/RadioService;)Landroid/widget/RemoteViews;

    move-result-object v2

    const v3, 0x7f020063

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1517
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1518
    .local v1, nm:Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1300(Lcom/lenovo/fm/RadioService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1522
    .end local v0           #SwitchAudioToHeadset:Ljava/lang/Thread;
    .end local v1           #nm:Landroid/app/NotificationManager;
    :cond_3
    const-string v2, "state"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1523
    const-string v2, "RadioService"

    const-string v3, "Radio Service HEADSET UNPLUG"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z
    invoke-static {v2, v6}, Lcom/lenovo/fm/RadioService;->access$102(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1525
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1526
    const-string v2, "RadioService"

    const-string v3, "HEADSET UNPLUG no short support"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1500(Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/FMRecorder;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1500(Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/FMRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/FMRecorder;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1529
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.exitrecording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1535
    :cond_4
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_isSeeking:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1600(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_isScaning:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1700(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1536
    :cond_5
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 1537
    const-string v2, "RadioService"

    const-string v3, "if cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_6
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1541
    const-string v2, "RadioService"

    const-string v3, "HEADSET unplugstop"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 1543
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1544
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1300(Lcom/lenovo/fm/RadioService;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1545
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1400(Lcom/lenovo/fm/RadioService;)Landroid/widget/RemoteViews;

    move-result-object v2

    const v3, 0x7f020060

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1548
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1549
    .restart local v1       #nm:Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1300(Lcom/lenovo/fm/RadioService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1552
    .end local v1           #nm:Landroid/app/NotificationManager;
    :cond_7
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_backgroundshow:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1000(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1100(Lcom/lenovo/fm/RadioService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1554
    const-string v2, "RadioService"

    const-string v3, "HEADSET UNPLUG action_exit_radio"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.exit"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1558
    :cond_8
    const-string v2, "RadioService"

    const-string v3, "HEADSET UNPLUG"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-string v2, "RadioService"

    const-string v3, "InternalWireSupport, switch to short"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v7}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    goto/16 :goto_0
.end method
