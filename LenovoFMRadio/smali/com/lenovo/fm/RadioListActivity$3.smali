.class Lcom/lenovo/fm/RadioListActivity$3;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 636
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 640
    const-string v2, "RadioListActivity"

    const-string v3, "m_RenamePositiveButton"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1300(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v3, 0x7f040018

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 663
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-static {v1}, Lcom/lenovo/fm/Util;->isNameUseable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040074

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 653
    :cond_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 658
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_SelectedPosition:I
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$1400(Lcom/lenovo/fm/RadioListActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 659
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v3, "channelFreq"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/fm/RadioService;->updateChannelName(Ljava/lang/String;I)V

    .line 661
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$3;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    goto :goto_0
.end method
