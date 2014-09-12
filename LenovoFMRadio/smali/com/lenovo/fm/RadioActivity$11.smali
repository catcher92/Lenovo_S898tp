.class Lcom/lenovo/fm/RadioActivity$11;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->startSearch()V
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
    .line 1091
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$11;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$11;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$11;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$11;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$11;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x1

    #calls: Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$1900(Lcom/lenovo/fm/RadioActivity;Z)V

    .line 1099
    return-void
.end method
