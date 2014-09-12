.class Lcom/lenovo/fm/RadioService$8;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 1633
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 7
    .parameter "focusChange"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1636
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioFocusChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    packed-switch p1, :pswitch_data_0

    .line 1695
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1641
    :pswitch_1
    const-string v2, "RadioService"

    const-string v3, "AUDIOFOCUS_GAIN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z
    invoke-static {v2, v5}, Lcom/lenovo/fm/RadioService;->access$1902(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1643
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->hasInternalWire:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$000(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1646
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->isSpeakerON:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$2000(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1647
    invoke-static {v5, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result v1

    .line 1649
    .local v1, err:I
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_GAIN : AudioSystem.setForceUse FORCE_SPEAKER err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :goto_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mUserPause:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$2100(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1660
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1661
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 1663
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 1665
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    :goto_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1671
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v5}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1672
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.updateui"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1653
    .end local v1           #err:I
    :cond_3
    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result v1

    .line 1655
    .restart local v1       #err:I
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_GAIN : AudioSystem.setForceUse FORCE_NONE err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1666
    :catch_0
    move-exception v0

    .line 1668
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1678
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #err:I
    :pswitch_2
    const-string v2, "RadioService"

    const-string v3, "AUDIOFOCUS_LOSS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z
    invoke-static {v2, v6}, Lcom/lenovo/fm/RadioService;->access$1902(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1680
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isMute()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1681
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.exitrecording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1682
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.updateui"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1683
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1684
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.phonescanexit"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1685
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 1686
    iget-object v2, p0, Lcom/lenovo/fm/RadioService$8;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v6}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1688
    :cond_4
    invoke-static {v5, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto/16 :goto_0

    .line 1637
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
