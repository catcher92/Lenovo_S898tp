.class Lcom/lenovo/fm/RadioActivity$28;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private editStart:I

.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2653
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 2668
    const-string v1, "RadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_FrequencyEdit1 afterTextChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity$28;->editStart:I

    .line 2670
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity$28;->editEnd:I

    .line 2672
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2673
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2675
    iget v1, p0, Lcom/lenovo/fm/RadioActivity$28;->editStart:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/lenovo/fm/RadioActivity$28;->editEnd:I

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2676
    iget v0, p0, Lcom/lenovo/fm/RadioActivity$28;->editStart:I

    .line 2677
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2678
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2680
    .end local v0           #tempSelection:I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$6702(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2681
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2682
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2659
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_FrequencyEdit1 beforeTextChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2663
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_FrequencyEdit1 onTextChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$28;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2665
    return-void
.end method
