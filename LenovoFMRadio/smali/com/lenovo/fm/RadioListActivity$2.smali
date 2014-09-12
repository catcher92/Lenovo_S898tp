.class Lcom/lenovo/fm/RadioListActivity$2;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 238
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$2;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$2;->this$0:Lcom/lenovo/fm/RadioListActivity;

    check-cast p2, Lcom/lenovo/fm/RadioService$MyBinder;

    .end local p2
    check-cast p2, Lcom/lenovo/fm/RadioService$MyBinder;

    invoke-virtual {p2}, Lcom/lenovo/fm/RadioService$MyBinder;->getService()Lcom/lenovo/fm/RadioService;

    move-result-object v1

    #setter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$202(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 243
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$2;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    const-string v1, "com.lenovo.leos.radio.RADIOLISTACTIVITY"

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$2;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioListActivity;->setListData()V

    .line 245
    const-string v0, "RadioListActivity"

    const-string v1, "in onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$2;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$202(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 251
    const-string v0, "RadioListActivity"

    const-string v1, "in onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
