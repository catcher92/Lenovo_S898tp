.class Lcom/lenovo/fm/RadioActivity$20;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->showSearchManualDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;

.field final synthetic val$cities:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;[[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioActivity$20;->val$cities:[[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    .line 2260
    const/4 v3, 0x0

    .line 2261
    .local v3, startChannel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2262
    .local v1, endChannel:Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$5300(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2264
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->countryAdapter:Lcom/lenovo/fm/RadioActivity$CountryAdapter;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$5400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioActivity$CountryAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$5300(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/fm/RadioActivity$CountryAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2270
    :cond_0
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$5500(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2272
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->val$cities:[[Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$5300(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v5}, Lcom/lenovo/fm/RadioActivity;->access$5500(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v5

    aget-object v1, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2279
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2280
    .local v2, input_freq:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sput-wide v4, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 2282
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2283
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2285
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    .line 2290
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->tuneChannel()V
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$700(Lcom/lenovo/fm/RadioActivity;)V

    .line 2292
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/lenovo/fm/RadioActivity;->access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V

    .line 2293
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$5600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2294
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$5600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->cancel()V

    .line 2295
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v5, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;
    invoke-static {v4, v5}, Lcom/lenovo/fm/RadioActivity;->access$5602(Lcom/lenovo/fm/RadioActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2297
    .end local v2           #input_freq:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1

    .line 2274
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2275
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_1

    .line 2287
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #input_freq:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity$20;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v4}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    goto :goto_0
.end method
