.class Lcom/lenovo/fm/RadioActivity$5;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide v8, 0x4058733333333333L

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 782
    const-string v1, "RadioActivity"

    const-string v2, "Play Button has been clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const-string v1, "RadioActivity"

    const-string v2, "Play Button has been clicked isHeadSetPlug false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-nez v1, :cond_a

    .line 790
    const-string v1, "RadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   pppp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 792
    const-string v1, "RadioActivity"

    const-string v2, "Play Button has been clicked ---> start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 799
    :cond_1
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 802
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    .line 808
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 809
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 810
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    const-string v1, "channelFreq"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 814
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 821
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 822
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 827
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 828
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 831
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 832
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 833
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->isFavori()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1800(Lcom/lenovo/fm/RadioActivity;)V

    .line 834
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v1, v5}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    .line 891
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->updateHorListView()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2300(Lcom/lenovo/fm/RadioActivity;)V

    goto/16 :goto_0

    .line 804
    :cond_5
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    goto/16 :goto_1

    .line 815
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_6
    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    cmpl-double v1, v1, v6

    if-nez v1, :cond_7

    .line 816
    sput-wide v8, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 817
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 818
    :cond_7
    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    cmpl-double v1, v1, v6

    if-eqz v1, :cond_3

    .line 819
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 844
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_8
    const-string v1, "RadioActivity"

    const-string v2, "Play Button has been clicked Radio start else"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 847
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 852
    :goto_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$2002(Lcom/lenovo/fm/RadioActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 853
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v3, 0x7f040026

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 856
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 857
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 849
    :cond_9
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    goto :goto_4

    .line 859
    :cond_a
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 861
    const-string v1, "RadioActivity"

    const-string v2, "Play Button has been clicked Radio Pause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2200(Lcom/lenovo/fm/RadioActivity;)V

    .line 864
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 865
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 866
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 867
    invoke-static {v5, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 869
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/fm/RadioService;->setmUserPause(Z)V

    .line 870
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 872
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 875
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 876
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 877
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "channelFreq"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/fm/RadioService;->updateChannelPlaying(II)V

    .line 882
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_b
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->releaseWakeLock()V

    .line 886
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$5;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v1, v4}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    goto/16 :goto_3

    .line 889
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_c
    const-string v1, "RadioActivity"

    const-string v2, "m_RadioService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
