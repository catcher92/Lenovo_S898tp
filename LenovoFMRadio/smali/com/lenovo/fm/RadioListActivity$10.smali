.class Lcom/lenovo/fm/RadioListActivity$10;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private editStart:I

.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$10;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 930
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$1300(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->editStart:I

    .line 931
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$1300(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->editEnd:I

    .line 933
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 934
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v2, 0x7f040017

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 938
    iget v0, p0, Lcom/lenovo/fm/RadioListActivity$10;->editStart:I

    .line 939
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$1300(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$10;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$1300(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 942
    .end local v0           #tempSelection:I
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 947
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 952
    return-void
.end method
