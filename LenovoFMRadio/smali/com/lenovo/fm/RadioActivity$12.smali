.class Lcom/lenovo/fm/RadioActivity$12;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->showSearchDialog()V
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
    .line 1132
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$12;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1134
    const-string v0, "RadioActivity"

    const-string v1, "User canceled searching progress."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$12;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 1140
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$12;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$2402(Lcom/lenovo/fm/RadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1141
    return-void
.end method
