.class Lcom/lenovo/fm/RadioListActivity$9;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioListActivity;
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
    .line 899
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$9;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 901
    const-string v3, "RadioListActivity"

    const-string v4, "showDeleteAlert"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v2, 0x0

    .line 904
    .local v2, isMove:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$9;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 905
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$9;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$9;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 907
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 912
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    if-eqz v2, :cond_2

    .line 913
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$9;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #calls: Lcom/lenovo/fm/RadioListActivity;->showDeleteAlert()V
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$1700(Lcom/lenovo/fm/RadioListActivity;)V

    .line 919
    :goto_1
    return-void

    .line 904
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    :cond_2
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$9;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04003a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
