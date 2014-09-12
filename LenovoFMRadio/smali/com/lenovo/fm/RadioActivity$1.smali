.class Lcom/lenovo/fm/RadioActivity$1;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 203
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getchannlecount()I

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const-string v1, "RadioActivity"

    const-string v2, "getchannlecount = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 218
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    const-class v2, Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$1;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    const-string v2, "com.lenovo.leos.radio.RADIOLISTACTIVITY"

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 227
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
