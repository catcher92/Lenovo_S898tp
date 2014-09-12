.class Lcom/lenovo/fm/RadioService$3;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$3;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$3;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string v0, "RadioService"

    const-string v1, "RadioService oncreate turnonRadio "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$3;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 409
    :cond_0
    return-void
.end method
