.class Lcom/lenovo/fm/RadioListActivity$16;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->showSearchManualDialog()V
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
    .line 1163
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$16;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$16;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$16;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1168
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$16;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$2102(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1170
    :cond_0
    return-void
.end method
