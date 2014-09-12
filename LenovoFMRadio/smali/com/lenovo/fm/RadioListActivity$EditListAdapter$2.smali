.class Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 500
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iput p2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "arg0"
    .parameter "checked"

    .prologue
    .line 504
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->val$index:I

    invoke-virtual {v2, v3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, mSelectCounts:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    add-int/lit8 v1, v1, 0x1

    .line 508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #calls: Lcom/lenovo/fm/RadioListActivity;->updateUI()V
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1000(Lcom/lenovo/fm/RadioListActivity;)V

    .line 516
    if-nez v1, :cond_2

    .line 517
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1200(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v3, v3, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :goto_1
    return-void

    .line 520
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v2, v2, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1200(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v4, v4, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/fm/RadioListActivity;->access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;->this$1:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    iget-object v4, v4, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/fm/RadioListActivity;->access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
