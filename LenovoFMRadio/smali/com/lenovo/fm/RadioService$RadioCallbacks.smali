.class public Lcom/lenovo/fm/RadioService$RadioCallbacks;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Landroid/hardware/FmRadio$IEventCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method public constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1904
    return-void
.end method

.method public onCancelEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1895
    const-string v0, "RadioService"

    const-string v1, "onSearch/SeekCancelEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->m_isSeeking:Z
    invoke-static {v0, v2}, Lcom/lenovo/fm/RadioService;->access$1602(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1897
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->m_isScaning:Z
    invoke-static {v0, v2}, Lcom/lenovo/fm/RadioService;->access$1702(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1898
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.devicescancanceled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1899
    return-void
.end method

.method public onScanEvent(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 1909
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    rem-int/lit8 v0, p1, 0x64

    sub-int/2addr p1, v0

    .line 1911
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioService;->m_isScaning:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioService;->access$1702(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1913
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.devicescanfinished"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "channel"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1915
    return-void
.end method

.method public onSearchingEvent()V
    .locals 3

    .prologue
    .line 1920
    const-string v0, "RadioService"

    const-string v1, "onSearchingEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.devicescaning"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1922
    return-void
.end method

.method public onSeekEvent(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 1826
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device seeked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    rem-int/lit8 v0, p1, 0x64

    sub-int/2addr p1, v0

    .line 1828
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioService;->m_isSeeking:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioService;->access$1602(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1831
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.deviceseeked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "channel"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1833
    return-void
.end method

.method public onStereoEvent(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1838
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device onStereo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return-void
.end method

.method public onTuneEvent(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 1848
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device tuned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioService;->m_isTuning:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioService;->access$2202(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1850
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_isScaning:Z
    invoke-static {v0}, Lcom/lenovo/fm/RadioService;->access$1700(Lcom/lenovo/fm/RadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    rem-int/lit8 v0, p1, 0x64

    sub-int/2addr p1, v0

    .line 1852
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.devicescaned"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "channel"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1855
    :cond_0
    return-void
.end method

.method public onTurnOffEvent()V
    .locals 2

    .prologue
    .line 1860
    const-string v0, "RadioService"

    const-string v1, "onTurnOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    iget-object v1, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$2300(Lcom/lenovo/fm/RadioService;)Landroid/hardware/FmRadio;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/FmRadio;->isFmOn()Z

    move-result v1

    #setter for: Lcom/lenovo/fm/RadioService;->isFmOn:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioService;->access$402(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1863
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->isFmOn:Z
    invoke-static {v0}, Lcom/lenovo/fm/RadioService;->access$400(Lcom/lenovo/fm/RadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    const-string v0, "RadioService"

    const-string v1, "device is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :goto_0
    return-void

    .line 1869
    :cond_0
    const-string v0, "RadioService"

    const-string v1, "device turnoff failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTurnOnEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1877
    const-string v0, "RadioService"

    const-string v1, "onTurnOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    iget-object v1, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;
    invoke-static {v1}, Lcom/lenovo/fm/RadioService;->access$2300(Lcom/lenovo/fm/RadioService;)Landroid/hardware/FmRadio;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/FmRadio;->isFmOn()Z

    move-result v1

    #setter for: Lcom/lenovo/fm/RadioService;->isFmOn:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioService;->access$402(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1880
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTurnOnEvent() isFmOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->isFmOn:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioService;->access$400(Lcom/lenovo/fm/RadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #setter for: Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z
    invoke-static {v0, v3}, Lcom/lenovo/fm/RadioService;->access$2402(Lcom/lenovo/fm/RadioService;Z)Z

    .line 1882
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->isFmOn:Z
    invoke-static {v0}, Lcom/lenovo/fm/RadioService;->access$400(Lcom/lenovo/fm/RadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    const-string v0, "RadioService"

    const-string v1, "onTurnOnEvent() success, sending broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.action.deviceopened"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1891
    :goto_0
    return-void

    .line 1886
    :cond_0
    const-string v0, "RadioService"

    const-string v1, "onTurnOnEvent() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$RadioCallbacks;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device open failed"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
