.class Lcom/lenovo/fm/RadioListActivity$6;
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
    .line 819
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 821
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 822
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    const-string v2, "RadioListActivity"

    const-string v3, "m_selectlistener has been clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1200(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/fm/RadioListActivity;->access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

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

    .line 835
    :goto_1
    return-void

    .line 830
    .end local v1           #i:I
    :cond_1
    const-string v2, "RadioListActivity"

    const-string v3, "m_selectlistener has beenot clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 832
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 833
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1200(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$6;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
