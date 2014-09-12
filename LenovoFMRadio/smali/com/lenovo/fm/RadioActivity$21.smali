.class Lcom/lenovo/fm/RadioActivity$21;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->showSearchManualDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$21;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$21;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$5600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$21;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$5600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2305
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$21;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$5602(Lcom/lenovo/fm/RadioActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2307
    :cond_0
    return-void
.end method
