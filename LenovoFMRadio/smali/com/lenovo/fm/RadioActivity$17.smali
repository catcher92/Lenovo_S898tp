.class Lcom/lenovo/fm/RadioActivity$17;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
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
    .line 1259
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$17;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-wide/high16 v2, 0x405b

    .line 1261
    const-string v0, "RadioActivity"

    const-string v1, "onClick TuneImageNextChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$17;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$17;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    :goto_0
    return-void

    .line 1266
    :cond_0
    sget-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    double-to-float v0, v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 1267
    sput-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$17;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/fm/RadioActivity;->isDownAndUP:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$3002(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 1270
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$17;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->seekStation()V
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3100(Lcom/lenovo/fm/RadioActivity;)V

    goto :goto_0
.end method
