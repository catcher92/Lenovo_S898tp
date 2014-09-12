.class Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioListActivity$EditListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iput p2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 473
    const-string v2, "RadioListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "favorite button is press "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->val$index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->DBoperating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const-string v2, "RadioListActivity"

    const-string v3, "favor DB operating busy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 483
    .local v0, cursor:Landroid/database/Cursor;
    iget v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->val$index:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 484
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "channelFreq"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 489
    .local v1, freq:I
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/fm/RadioService;->isFavorite(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/fm/RadioService;->cancelFavorite(I)V

    .line 494
    :goto_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/fm/RadioService;->addFavorite(I)V

    goto :goto_1
.end method
