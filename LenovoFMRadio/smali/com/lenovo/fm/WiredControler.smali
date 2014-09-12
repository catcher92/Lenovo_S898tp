.class public Lcom/lenovo/fm/WiredControler;
.super Landroid/content/BroadcastReceiver;
.source "WiredControler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WiredControler"

.field private static listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

.field private static sDowntimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setListener(Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 23
    const-string v0, "WiredControler"

    const-string v1, "setListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sput-object p0, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/16 v12, 0x56

    const/16 v11, 0x55

    const/4 v10, 0x1

    .line 30
    const-string v6, "WiredControler"

    const-string v7, "WiredControler"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, intentAction:Ljava/lang/String;
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/view/KeyEvent;

    .line 34
    .local v5, keyevent:Landroid/view/KeyEvent;
    const-string v6, "android.intent.action.FM_BUTTON"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 36
    .local v4, keycode:I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 43
    .local v3, keyAction:I
    if-ne v4, v11, :cond_2

    if-ne v3, v10, :cond_2

    .line 44
    const-string v6, "WiredControler"

    const-string v7, "\u77ed\u6309\uff01\uff01\uff01"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    if-eqz v6, :cond_0

    .line 46
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    invoke-interface {v6}, Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;->onShortPressed()V

    .line 60
    .end local v3           #keyAction:I
    .end local v4           #keycode:I
    :cond_0
    :goto_0
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 62
    .restart local v4       #keycode:I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 63
    .restart local v3       #keyAction:I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    .line 64
    .local v0, downtime:J
    const-string v6, "WiredControler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keycode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " keyAction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " downtime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sDowntimestamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/lenovo/fm/WiredControler;->sDowntimestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v6, 0x4f

    if-ne v4, v6, :cond_3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "A7600"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 68
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    if-eqz v6, :cond_1

    .line 69
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    invoke-interface {v6}, Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;->onShortPressed()V

    .line 80
    .end local v0           #downtime:J
    .end local v3           #keyAction:I
    .end local v4           #keycode:I
    :cond_1
    :goto_1
    return-void

    .line 49
    .restart local v3       #keyAction:I
    .restart local v4       #keycode:I
    :cond_2
    if-ne v4, v12, :cond_0

    if-ne v3, v10, :cond_0

    .line 50
    const-string v6, "WiredControler"

    const-string v7, "\u957f\u6309\uff01\uff01\uff01"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    if-eqz v6, :cond_0

    .line 53
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    invoke-interface {v6}, Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;->onLongPressed()V

    goto :goto_0

    .line 71
    .restart local v0       #downtime:J
    :cond_3
    const/16 v6, 0xd3

    if-eq v4, v6, :cond_4

    if-ne v4, v12, :cond_5

    .line 72
    :cond_4
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    if-eqz v6, :cond_1

    .line 73
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    invoke-interface {v6}, Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;->onLongPressed()V

    goto :goto_1

    .line 74
    :cond_5
    if-ne v4, v11, :cond_1

    if-ne v3, v10, :cond_1

    .line 75
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    if-eqz v6, :cond_1

    .line 76
    sget-object v6, Lcom/lenovo/fm/WiredControler;->listener:Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;

    invoke-interface {v6}, Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;->onShortPressed()V

    goto :goto_1
.end method
