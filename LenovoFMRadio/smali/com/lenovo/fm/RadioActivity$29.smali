.class Lcom/lenovo/fm/RadioActivity$29;
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
    .line 2685
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 2691
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity$29;->editStart:I

    .line 2692
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity$29;->editEnd:I

    .line 2693
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2694
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v2, 0x7f040017

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2697
    iget v1, p0, Lcom/lenovo/fm/RadioActivity$29;->editStart:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/lenovo/fm/RadioActivity$29;->editEnd:I

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2698
    iget v0, p0, Lcom/lenovo/fm/RadioActivity$29;->editStart:I

    .line 2699
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2700
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2702
    .end local v0           #tempSelection:I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2703
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    const-string v2, ""

    #setter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$6702(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2705
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2707
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    const-string v1, ""

    #setter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$6702(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2714
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2715
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    const-string v1, ""

    #setter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$6702(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2722
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$29;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    return-void
.end method
