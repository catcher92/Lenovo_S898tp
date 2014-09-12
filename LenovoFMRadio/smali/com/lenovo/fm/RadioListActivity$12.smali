.class Lcom/lenovo/fm/RadioListActivity$12;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->startSearch()V
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
    .line 1055
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 1062
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$12;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 1065
    return-void
.end method
