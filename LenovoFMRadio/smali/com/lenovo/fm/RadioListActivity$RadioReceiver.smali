.class Lcom/lenovo/fm/RadioListActivity$RadioReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f040025

    const/high16 v7, 0x447a

    const/4 v6, 0x0

    const/16 v5, 0x7d4

    const/4 v4, 0x0

    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "com.android.fm.action.play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "RadioListActivity"

    const-string v2, "RadioListActivity PlayRadioReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "com.android.fm.action.batterylow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const-string v1, "RadioListActivity"

    const-string v2, "RadioListActivity ACTION_BATTERY_LOW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "com.android.fm.action.headsetplug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    const-string v1, "RadioListActivity"

    const-string v2, "RadioListActivity ACTION_HEADSET_PLUG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S820"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    const-string v2, "com.lenovo.leos.radio.RADIOACTIVITY"

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioListActivity;->finish()V

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "com.android.fm.action.localechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    const-string v1, "RadioListActivity"

    const-string v2, "RadioListActivity ACTION_LOCALE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.devicescanfinished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_DEVICE_SCAN_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lenovo.leos.radio.RADIOLISTACTIVITY"

    if-ne v1, v2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->tune2NewChannel(I)V

    .line 288
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v3, 0x7f040028

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v4, 0x7f040029

    invoke-virtual {v3, v4}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_hasfound:I
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$400(Lcom/lenovo/fm/RadioListActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v4, 0x7f04002b

    invoke-virtual {v3, v4}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$500(Lcom/lenovo/fm/RadioListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$500(Lcom/lenovo/fm/RadioListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 297
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.devicescaned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 299
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lenovo.leos.radio.RADIOLISTACTIVITY"

    if-ne v1, v2, :cond_0

    .line 300
    const-string v1, "channel"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, freq:I
    const-string v1, "RadioListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_DEVICE_SCANED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->isFavorite(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 305
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_DEVICE_SCANED: channel overwrite"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->deleteChannel(I)Z

    .line 308
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v3, v8}, Lcom/lenovo/fm/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$408(Lcom/lenovo/fm/RadioListActivity;)I

    goto/16 :goto_0

    .line 311
    :cond_7
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 312
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_DEVICE_SCANED: channel new add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v3, v8}, Lcom/lenovo/fm/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    goto :goto_1

    .line 318
    :cond_8
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_DEVICE_SCANED: channel is favorite. Ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v0           #freq:I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.devicescaning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 336
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_DEVICE_SCANING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lenovo.leos.radio.RADIOLISTACTIVITY"

    if-ne v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v3, 0x7f040027

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 341
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 343
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_EXIT_RADIO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 345
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 347
    :cond_b
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 349
    :cond_c
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 350
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 352
    :cond_d
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 354
    :cond_e
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 355
    :cond_f
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 356
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$600(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$600(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lenovo/fm/RadioService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 359
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #setter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1, v6}, Lcom/lenovo/fm/RadioListActivity;->access$202(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 361
    :cond_10
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioListActivity;->finish()V

    goto/16 :goto_0

    .line 362
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.deviceseeked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 363
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 365
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #setter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1, v6}, Lcom/lenovo/fm/RadioListActivity;->access$702(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 366
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    goto/16 :goto_0

    .line 368
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.tunetonext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 370
    const-string v1, "zhaijy"

    const-string v2, "action exit radio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    goto/16 :goto_0

    .line 372
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.exitdialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 373
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 375
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #setter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1, v6}, Lcom/lenovo/fm/RadioListActivity;->access$702(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 377
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "seek_failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 379
    const-string v1, "RadioListActivity"

    const-string v2, "Intent.ACTION_DEVICE_seeked fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 381
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 385
    :cond_15
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 389
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 390
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-static {v1}, Lcom/lenovo/fm/Util;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioListActivity;->finish()V

    goto/16 :goto_0

    .line 393
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.fm.action.phonescanexit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$500(Lcom/lenovo/fm/RadioListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$500(Lcom/lenovo/fm/RadioListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
