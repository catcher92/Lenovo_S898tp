.class Lcom/lenovo/fm/RadioListActivity$7;
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
    .line 838
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$7;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$7;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$802(Lcom/lenovo/fm/RadioListActivity;Z)Z

    .line 842
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$7;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->setContentView(I)V

    .line 843
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$7;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #calls: Lcom/lenovo/fm/RadioListActivity;->optionmenu_change()V
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$1500(Lcom/lenovo/fm/RadioListActivity;)V

    .line 844
    return-void
.end method
