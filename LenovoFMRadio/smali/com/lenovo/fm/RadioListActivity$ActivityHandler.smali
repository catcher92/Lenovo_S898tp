.class Lcom/lenovo/fm/RadioListActivity$ActivityHandler;
.super Landroid/os/Handler;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 965
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 967
    :pswitch_0
    const-string v0, "RadioListActivity"

    const-string v1, "SCAN_IS_OVERTIME!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getScaningStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->cancelseek()Z

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.leos.radio.RADIOLISTACTIVITY"

    if-ne v0, v1, :cond_2

    .line 974
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x7d4
        :pswitch_0
    .end packed-switch
.end method
