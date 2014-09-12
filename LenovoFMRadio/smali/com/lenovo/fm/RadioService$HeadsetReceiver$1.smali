.class Lcom/lenovo/fm/RadioService$HeadsetReceiver$1;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioService$HeadsetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/fm/RadioService$HeadsetReceiver;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioService$HeadsetReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver$1;->this$1:Lcom/lenovo/fm/RadioService$HeadsetReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$HeadsetReceiver$1;->this$1:Lcom/lenovo/fm/RadioService$HeadsetReceiver;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService$HeadsetReceiver;->this$0:Lcom/lenovo/fm/RadioService;

    #calls: Lcom/lenovo/fm/RadioService;->switchAudioToHeadset()V
    invoke-static {v0}, Lcom/lenovo/fm/RadioService;->access$1200(Lcom/lenovo/fm/RadioService;)V

    .line 1509
    return-void
.end method
