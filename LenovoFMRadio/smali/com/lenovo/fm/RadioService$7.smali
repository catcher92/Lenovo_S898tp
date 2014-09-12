.class Lcom/lenovo/fm/RadioService$7;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1604
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1606
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_MutedByCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_MutedByCall:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$1800(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-eqz p1, :cond_2

    .line 1609
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1614
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isMute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.exitrecording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1617
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.updateui"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1618
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 1619
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 1620
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v4}, Lcom/lenovo/fm/RadioService;->setPhoneStateChanged(Z)V

    .line 1621
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v3}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    goto :goto_0

    .line 1625
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v3}, Lcom/lenovo/fm/RadioService;->setPhoneStateChanged(Z)V

    .line 1626
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$7;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    goto :goto_0
.end method
