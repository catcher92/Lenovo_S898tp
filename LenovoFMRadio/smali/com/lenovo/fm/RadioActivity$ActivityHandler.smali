.class Lcom/lenovo/fm/RadioActivity$ActivityHandler;
.super Landroid/os/Handler;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1530
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity$ActivityHandler;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f040066

    const/4 v3, 0x0

    .line 1532
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1534
    :sswitch_0
    const-string v1, "RadioActivity"

    const-string v2, "SEEK_IS_OVERTIME!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPhoneStateChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1538
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1539
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    goto :goto_0

    .line 1544
    :sswitch_1
    const-string v1, "RadioActivity"

    const-string v2, "OPEN DEVICE IS OVERTIME!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1546
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1547
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1549
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    goto/16 :goto_0

    .line 1554
    :sswitch_2
    const-string v1, "RadioActivity"

    const-string v2, "SCAN_IS_OVERTIME!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1556
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 1558
    :cond_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 1564
    :sswitch_3
    const-string v1, "RadioActivity"

    const-string v2, "UPDATE UI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1568
    :sswitch_4
    const-string v1, "RadioActivity"

    const-string v2, "SHOW_HEADSETWARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1570
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1574
    :cond_5
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1575
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->showHeadsetDialog()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3900(Lcom/lenovo/fm/RadioActivity;)V

    goto/16 :goto_0

    .line 1581
    :sswitch_5
    const-string v1, "RadioActivity"

    const-string v2, "HIDEN_HEADSETWARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 1596
    :sswitch_6
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$4008(Lcom/lenovo/fm/RadioActivity;)I

    .line 1597
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, sdPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->isHaveAvailableStorage(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/lenovo/fm/RadioActivity;->access$1000(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1601
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1603
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #setter for: Lcom/lenovo/fm/RadioActivity;->isRecording:Z
    invoke-static {v1, v3}, Lcom/lenovo/fm/RadioActivity;->access$902(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 1604
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->performRecordStop()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1400(Lcom/lenovo/fm/RadioActivity;)V

    .line 1605
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->saveRecordingAsync()V

    .line 1606
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1610
    :cond_6
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1612
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->recordTime:I
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$4000(Lcom/lenovo/fm/RadioActivity;)I

    move-result v1

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_7

    .line 1613
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->recordTime:I
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$4000(Lcom/lenovo/fm/RadioActivity;)I

    move-result v4

    #calls: Lcom/lenovo/fm/RadioActivity;->formatIntToTimeString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/fm/RadioActivity;->access$4100(Lcom/lenovo/fm/RadioActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1617
    :cond_7
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->recordTime:I
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$4000(Lcom/lenovo/fm/RadioActivity;)I

    move-result v4

    #calls: Lcom/lenovo/fm/RadioActivity;->formatIntToTimerString2(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/fm/RadioActivity;->access$4200(Lcom/lenovo/fm/RadioActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1624
    .end local v0           #sdPath:Ljava/lang/String;
    :sswitch_7
    const-string v1, "RadioActivity"

    const-string v2, "handler HIDEN_RECORDING_TIMER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1532
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_6
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_4
        0x7d6 -> :sswitch_5
        0x7d7 -> :sswitch_7
    .end sparse-switch
.end method
