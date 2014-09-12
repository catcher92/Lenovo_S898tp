.class Lcom/lenovo/fm/RadioActivity$19;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 1422
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    check-cast p2, Lcom/lenovo/fm/RadioService$MyBinder;

    .end local p2
    check-cast p2, Lcom/lenovo/fm/RadioService$MyBinder;

    invoke-virtual {p2}, Lcom/lenovo/fm/RadioService$MyBinder;->getService()Lcom/lenovo/fm/RadioService;

    move-result-object v1

    #setter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$202(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 1427
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1458
    :goto_0
    return-void

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->isDBOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->open()Lcom/lenovo/fm/RadioDBOperation;

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    iget-object v1, v1, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioDBOperation;->getAllFavoriteChannels()Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$502(Lcom/lenovo/fm/RadioActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1436
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3200(Lcom/lenovo/fm/RadioActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$3202(Lcom/lenovo/fm/RadioActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1442
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->cursorToList()V
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3300(Lcom/lenovo/fm/RadioActivity;)V

    .line 1443
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v1, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    #setter for: Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$402(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;)Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    .line 1444
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListView:Lcom/lenovo/fm/view/HorizontalListView;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/view/HorizontalListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/view/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1446
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    const-string v1, "com.lenovo.leos.radio.RADIOACTIVITY"

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mLastFreq:D
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3500(Lcom/lenovo/fm/RadioActivity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 1450
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mLastFreq:D
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3500(Lcom/lenovo/fm/RadioActivity;)D

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 1454
    :goto_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->setRelateSeekBar(Z)V

    .line 1455
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 1457
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1439
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$3202(Lcom/lenovo/fm/RadioActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1440
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$3202(Lcom/lenovo/fm/RadioActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    .line 1452
    :cond_3
    const-wide v0, 0x4058733333333333L

    sput-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 1462
    const-string v0, "RadioActivity"

    const-string v1, "in onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 1467
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    const-class v3, Lcom/lenovo/fm/RadioService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioActivity;->stopService(Landroid/content/Intent;)Z

    .line 1470
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    #setter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0, v4}, Lcom/lenovo/fm/RadioActivity;->access$202(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 1472
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$19;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioActivity;->finish()V

    .line 1473
    return-void
.end method
