.class Lcom/lenovo/fm/RadioListActivity$15;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->showSearchManualDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;

.field final synthetic val$cities:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioListActivity;[[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioListActivity$15;->val$cities:[[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "arg0"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1110
    const/4 v4, 0x0

    .line 1111
    .local v4, startChannel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1112
    .local v1, endChannel:Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$1800(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1114
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->countryAdapter:Lcom/lenovo/fm/RadioListActivity$CountryAdapter;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$1900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$CountryAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v6}, Lcom/lenovo/fm/RadioListActivity;->access$1800(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/fm/RadioListActivity$CountryAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1121
    :cond_0
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$2000(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1123
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->val$cities:[[Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v6}, Lcom/lenovo/fm/RadioListActivity;->access$1800(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v6}, Lcom/lenovo/fm/RadioListActivity;->access$2000(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v6

    aget-object v1, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1131
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v3, v5

    .line 1135
    .local v3, input_freq:F
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1136
    const/high16 v5, 0x4120

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 1141
    .local v2, freq:I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1142
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1143
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040070

    invoke-static {v5, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1144
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1145
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    .line 1146
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #setter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v5, v12}, Lcom/lenovo/fm/RadioListActivity;->access$2102(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1160
    .end local v2           #freq:I
    .end local v3           #input_freq:F
    :cond_2
    :goto_1
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1125
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1126
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1138
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #input_freq:F
    :cond_3
    const/high16 v5, 0x447a

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .restart local v2       #freq:I
    goto :goto_0

    .line 1150
    :cond_4
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v8, 0x7f040025

    invoke-virtual {v7, v8}, Lcom/lenovo/fm/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v11, v11}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    .line 1154
    :cond_5
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v5}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 1156
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1157
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/lenovo/fm/RadioListActivity;->access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    .line 1158
    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity$15;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #setter for: Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v5, v12}, Lcom/lenovo/fm/RadioListActivity;->access$2102(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1
.end method
