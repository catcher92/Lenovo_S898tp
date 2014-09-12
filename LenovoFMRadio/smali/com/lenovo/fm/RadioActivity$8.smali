.class Lcom/lenovo/fm/RadioActivity$8;
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
    .line 957
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f020066

    const/4 v3, 0x0

    .line 959
    const-string v1, "RadioActivity"

    const-string v2, "Last Channel Button has been clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 961
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getAllchannels()Landroid/database/Cursor;

    move-result-object v0

    .line 962
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 963
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 964
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 965
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    const-string v1, "channelPlaying"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 970
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 971
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    const-string v1, "channelFreq"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 975
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 976
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_1
    return-void

    .line 985
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 986
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    const-string v1, "channelFreq"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->defaultAry:F
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$600(Lcom/lenovo/fm/RadioActivity;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 989
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 991
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 992
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 993
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 996
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v2, 0x7f040024

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1001
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$8;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v2, 0x7f040026

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
