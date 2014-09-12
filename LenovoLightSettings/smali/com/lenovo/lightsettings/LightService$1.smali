.class final Lcom/lenovo/lightsettings/LightService$1;
.super Landroid/database/ContentObserver;
.source "LightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lightsettings/LightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/16 v2, 0x130

    .line 155
    const-string v0, "LightSettings-lser"

    const-string v1, "SMS onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-string v0, "LightServicer------>leos is recore call log,so do nothing"

    invoke-static {v0}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
