.class Lcom/lenovo/lightsettings/LightService$4;
.super Landroid/os/Handler;
.source "LightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lightsettings/LightService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lightsettings/LightService;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightService$4;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    return-void

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$4;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handleMsgQuery()V
    invoke-static {v0}, Lcom/lenovo/lightsettings/LightService;->access$300(Lcom/lenovo/lightsettings/LightService;)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$4;->this$0:Lcom/lenovo/lightsettings/LightService;

    #calls: Lcom/lenovo/lightsettings/LightService;->handCallQuery()V
    invoke-static {v0}, Lcom/lenovo/lightsettings/LightService;->access$400(Lcom/lenovo/lightsettings/LightService;)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$4;->this$0:Lcom/lenovo/lightsettings/LightService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/lenovo/lightsettings/LightService;->handleCALLQueryEnd(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lightsettings/LightService;->access$500(Lcom/lenovo/lightsettings/LightService;I)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
