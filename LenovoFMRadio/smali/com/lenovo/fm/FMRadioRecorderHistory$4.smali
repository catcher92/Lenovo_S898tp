.class Lcom/lenovo/fm/FMRadioRecorderHistory$4;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$4;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$4;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    check-cast p2, Lcom/lenovo/fm/RadioService$MyBinder;

    .end local p2
    check-cast p2, Lcom/lenovo/fm/RadioService$MyBinder;

    invoke-virtual {p2}, Lcom/lenovo/fm/RadioService$MyBinder;->getService()Lcom/lenovo/fm/RadioService;

    move-result-object v1

    #setter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$602(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 394
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$4;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$600(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    const-string v1, "com.lenovo.leos.radio.RECORDERHISTORY"

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 395
    const-string v0, "FMRadioRecorderHistory"

    const-string v1, "history in onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$4;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$602(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;

    .line 401
    const-string v0, "FMRadioRecorderHistory"

    const-string v1, "history in onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method
