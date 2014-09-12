.class Lcom/lenovo/fm/RadioActivity$15;
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
    .line 1177
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f020017

    const/high16 v8, 0x447a

    const/high16 v7, 0x4120

    const/4 v6, 0x1

    const v5, 0x7f040025

    .line 1179
    const-string v1, "RadioActivity"

    const-string v2, "TuneImageFavorite has been clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 1183
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide/high16 v3, 0x4024

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 1189
    .local v0, freq:I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1190
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3, v5}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    .line 1194
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3, v5}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$2600(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 1203
    :goto_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1205
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3, v5}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$2600(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 1224
    .end local v0           #freq:I
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->NotifyDataSetChanged()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2800(Lcom/lenovo/fm/RadioActivity;)V

    .line 1225
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->favoriChannelPosition()I
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$2900(Lcom/lenovo/fm/RadioActivity;)I

    move-result v2

    #setter for: Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$302(Lcom/lenovo/fm/RadioActivity;I)I

    .line 1226
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->notifyDataSetChanged()V

    .line 1227
    return-void

    .line 1186
    :cond_1
    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .restart local v0       #freq:I
    goto/16 :goto_0

    .line 1197
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3, v5}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    .line 1200
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3, v5}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$2600(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1209
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v3, v5}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$2600(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1213
    :cond_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->isFavorite(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1214
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1216
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->cancelFavorite(I)V

    goto/16 :goto_2

    .line 1218
    :cond_5
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$2700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1220
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$15;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioService;->addFavorite(I)V

    goto/16 :goto_2
.end method
