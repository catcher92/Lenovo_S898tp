.class Lcom/lenovo/fm/RadioActivity$2;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 638
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$300(Lcom/lenovo/fm/RadioActivity;)I

    move-result v1

    if-eq p3, v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #setter for: Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I
    invoke-static {v1, p3}, Lcom/lenovo/fm/RadioActivity;->access$302(Lcom/lenovo/fm/RadioActivity;I)I

    .line 650
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->notifyDataSetChanged()V

    .line 652
    const/4 v0, -0x1

    .line 653
    .local v0, currentDatabase:I
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    iget-object v2, v2, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioDBOperation;->getAllFavoriteChannels()Landroid/database/Cursor;

    move-result-object v2

    #setter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$502(Lcom/lenovo/fm/RadioActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 655
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$500(Lcom/lenovo/fm/RadioActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$500(Lcom/lenovo/fm/RadioActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$500(Lcom/lenovo/fm/RadioActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "channelFreq"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 658
    const-string v1, "RadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentDatabase == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$500(Lcom/lenovo/fm/RadioActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 661
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$500(Lcom/lenovo/fm/RadioActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 662
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v2, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$502(Lcom/lenovo/fm/RadioActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 664
    :cond_3
    int-to-double v1, v0

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 666
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 667
    const-string v1, "RadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sCurrentChannelFreq =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$2;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
