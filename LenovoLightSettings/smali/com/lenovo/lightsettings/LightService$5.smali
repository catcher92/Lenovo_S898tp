.class Lcom/lenovo/lightsettings/LightService$5;
.super Landroid/content/BroadcastReceiver;
.source "LightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lightsettings/LightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lightsettings/LightService;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x130

    const/16 v11, 0x64

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, action:Ljava/lang/String;
    const-string v5, "LightSettings-lser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    const-string v5, "status"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 374
    .local v3, pluggedInStatus:I
    const-string v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 375
    .local v1, batteryLevel:I
    sput v1, Lcom/lenovo/lightsettings/LightManager;->mBatteryLevel:I

    .line 377
    const-string v5, "LightSettings-lser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED, pluggedInStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", batteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-lt v1, v11, :cond_1

    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #getter for: Lcom/lenovo/lightsettings/LightService;->mIsFirstFull:Z
    invoke-static {v5}, Lcom/lenovo/lightsettings/LightService;->access$600(Lcom/lenovo/lightsettings/LightService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 384
    if-lt v1, v11, :cond_0

    .line 386
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #setter for: Lcom/lenovo/lightsettings/LightService;->mIsFirstFull:Z
    invoke-static {v5, v9}, Lcom/lenovo/lightsettings/LightService;->access$602(Lcom/lenovo/lightsettings/LightService;Z)Z

    .line 388
    const-string v5, "LightSettings-lser"

    const-string v6, "isFull"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sput-boolean v8, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    .line 390
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    const/4 v6, 0x4

    #calls: Lcom/lenovo/lightsettings/LightService;->handleLight(I)V
    invoke-static {v5, v6}, Lcom/lenovo/lightsettings/LightService;->access$700(Lcom/lenovo/lightsettings/LightService;I)V

    .line 480
    .end local v1           #batteryLevel:I
    .end local v3           #pluggedInStatus:I
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v1       #batteryLevel:I
    .restart local v3       #pluggedInStatus:I
    :cond_1
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #setter for: Lcom/lenovo/lightsettings/LightService;->mIsFirstFull:Z
    invoke-static {v5, v8}, Lcom/lenovo/lightsettings/LightService;->access$602(Lcom/lenovo/lightsettings/LightService;Z)Z

    .line 398
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 399
    sput-boolean v9, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    .line 404
    :goto_1
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handlerUsbStatus()V
    invoke-static {v5}, Lcom/lenovo/lightsettings/LightService;->access$800(Lcom/lenovo/lightsettings/LightService;)V

    .line 407
    if-gt v1, v10, :cond_0

    .line 408
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    const/16 v6, 0x9

    #calls: Lcom/lenovo/lightsettings/LightService;->handleLight(I)V
    invoke-static {v5, v6}, Lcom/lenovo/lightsettings/LightService;->access$700(Lcom/lenovo/lightsettings/LightService;I)V

    goto :goto_0

    .line 402
    :cond_2
    sput-boolean v8, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    goto :goto_1

    .line 412
    .end local v1           #batteryLevel:I
    .end local v3           #pluggedInStatus:I
    :cond_3
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 414
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, state:Ljava/lang/String;
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 419
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #setter for: Lcom/lenovo/lightsettings/LightService;->isInCalling:Z
    invoke-static {v5, v9}, Lcom/lenovo/lightsettings/LightService;->access$902(Lcom/lenovo/lightsettings/LightService;Z)Z

    .line 420
    const-string v5, "LightSettings-lser"

    const-string v6, "handleLight(HANDLE_LIGHT_INCOMING_CALL);"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handleLight(I)V
    invoke-static {v5, v9}, Lcom/lenovo/lightsettings/LightService;->access$700(Lcom/lenovo/lightsettings/LightService;I)V

    goto :goto_0

    .line 425
    :cond_4
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #setter for: Lcom/lenovo/lightsettings/LightService;->isInCalling:Z
    invoke-static {v5, v8}, Lcom/lenovo/lightsettings/LightService;->access$902(Lcom/lenovo/lightsettings/LightService;Z)Z

    .line 426
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handleLight(I)V
    invoke-static {v5, v10}, Lcom/lenovo/lightsettings/LightService;->access$700(Lcom/lenovo/lightsettings/LightService;I)V

    .line 427
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v5

    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 430
    .end local v4           #state:Ljava/lang/String;
    :cond_5
    const-string v5, "com.android.phone.NotificationMgr.MissedCall_intent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "MissedCallNumber"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 435
    .local v2, missedCall:I
    const-string v5, "LightSettings-lser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MissedCall_intent received, missedCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sput v2, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    .line 438
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handleMissCallChange(I)V
    invoke-static {v5, v2}, Lcom/lenovo/lightsettings/LightService;->access$1000(Lcom/lenovo/lightsettings/LightService;I)V

    goto/16 :goto_0

    .line 440
    .end local v2           #missedCall:I
    :cond_6
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 442
    :cond_7
    sput-boolean v9, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    .line 444
    const-string v5, "LightSettings-lser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handlerUsbStatus()V
    invoke-static {v5}, Lcom/lenovo/lightsettings/LightService;->access$800(Lcom/lenovo/lightsettings/LightService;)V

    goto/16 :goto_0

    .line 446
    :cond_8
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 449
    :cond_9
    const-string v5, "LightSettings-lser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sput-boolean v8, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    .line 451
    iget-object v5, p0, Lcom/lenovo/lightsettings/LightService$5;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handlerUsbStatus()V
    invoke-static {v5}, Lcom/lenovo/lightsettings/LightService;->access$800(Lcom/lenovo/lightsettings/LightService;)V

    goto/16 :goto_0

    .line 453
    :cond_a
    const-string v5, "com.lenovo.leos.cloud.sync.SmsRestore.Start"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 454
    invoke-static {v8}, Lcom/lenovo/lightsettings/LightService;->access$202(Z)Z

    goto/16 :goto_0

    .line 455
    :cond_b
    const-string v5, "com.lenovo.leos.cloud.sync.SmsRestore.Finish"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 456
    invoke-static {v9}, Lcom/lenovo/lightsettings/LightService;->access$202(Z)Z

    goto/16 :goto_0

    .line 457
    :cond_c
    const-string v5, " com.lenovo.leos.cloud.sync.CalllogRestore.Start"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 458
    invoke-static {v8}, Lcom/lenovo/lightsettings/LightService;->access$002(Z)Z

    goto/16 :goto_0

    .line 459
    :cond_d
    const-string v5, "com.lenovo.leos.cloud.sync.CalllogRestore.Finish"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 460
    invoke-static {v9}, Lcom/lenovo/lightsettings/LightService;->access$002(Z)Z

    goto/16 :goto_0

    .line 461
    :cond_e
    const-string v5, "com.leonovo.light.OTHER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    const-string v5, "LightSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server---has reciver other nogiton br-serv----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "has_other_noti"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v5, "has_other_noti"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/lenovo/lightsettings/LightManager;->mOtherNotion:Z

    .line 464
    invoke-static {}, Lcom/lenovo/lightsettings/LightManager;->update_light_status()V

    goto/16 :goto_0
.end method
