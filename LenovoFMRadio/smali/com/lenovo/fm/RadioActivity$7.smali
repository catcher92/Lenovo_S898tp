.class Lcom/lenovo/fm/RadioActivity$7;
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
    .line 935
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$7;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const-wide/high16 v10, 0x405b

    const-wide v8, 0x4055e00000000000L

    const-wide/high16 v6, 0x4059

    const-wide v4, 0x408f400000000000L

    .line 937
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freq Minus Button has been clicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$7;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$7;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    const-string v0, "RadioActivity"

    const-string v1, "Freq Minus Button isHeadSetPlug false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-void

    .line 943
    :cond_0
    sget-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    mul-double/2addr v0, v4

    sub-double/2addr v0, v6

    div-double/2addr v0, v4

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    .line 944
    sput-wide v8, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 950
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$7;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 951
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$7;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 953
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$7;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_1
    sget-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    mul-double/2addr v0, v4

    sub-double/2addr v0, v6

    div-double/2addr v0, v4

    cmpl-double v0, v0, v10

    if-lez v0, :cond_2

    .line 946
    sput-wide v10, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    goto :goto_1

    .line 948
    :cond_2
    sget-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    mul-double/2addr v0, v4

    sub-double/2addr v0, v6

    div-double/2addr v0, v4

    sput-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    goto :goto_1
.end method
