.class Lcom/lenovo/fm/RadioListActivity$8;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->showDeleteAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v6, 0x7f040024

    const/4 v5, 0x0

    .line 855
    const-string v2, "RadioListActivity"

    const-string v3, "delete all"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$800(Lcom/lenovo/fm/RadioListActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 857
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 858
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_SelectedPosition:I
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1400(Lcom/lenovo/fm/RadioListActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 861
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v3, "channelFreq"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->deleteChannel(I)Z

    .line 864
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 866
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 894
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 873
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 875
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 877
    .restart local v0       #cursor:Landroid/database/Cursor;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 878
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v3, "channelFreq"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->deleteChannel(I)Z

    .line 872
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 882
    :cond_3
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1600(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 883
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 884
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1200(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v3, 0x1

    #setter for: Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z
    invoke-static {v2, v3}, Lcom/lenovo/fm/RadioListActivity;->access$802(Lcom/lenovo/fm/RadioListActivity;Z)Z

    .line 888
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v3, 0x7f030004

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioListActivity;->setContentView(I)V

    .line 889
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 890
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 892
    :cond_4
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$8;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #calls: Lcom/lenovo/fm/RadioListActivity;->optionmenu_change()V
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1500(Lcom/lenovo/fm/RadioListActivity;)V

    goto/16 :goto_0
.end method
