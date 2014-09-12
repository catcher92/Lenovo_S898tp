.class Lcom/lenovo/fm/RadioListActivity$13;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->showSearchDialog()V
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
    .line 1083
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$13;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$13;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$13;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$13;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$702(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1089
    return-void
.end method
