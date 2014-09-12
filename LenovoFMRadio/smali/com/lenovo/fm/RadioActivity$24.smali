.class Lcom/lenovo/fm/RadioActivity$24;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->setSleepAlarm(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioActivity$24;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "a0"
    .parameter "a1"

    .prologue
    .line 2469
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6000()I

    move-result v2

    #setter for: Lcom/lenovo/fm/RadioActivity;->isEnter:I
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$5902(Lcom/lenovo/fm/RadioActivity;I)I

    .line 2470
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6200()I

    move-result v2

    #setter for: Lcom/lenovo/fm/RadioActivity;->isSelectPos:I
    invoke-static {v1, v2}, Lcom/lenovo/fm/RadioActivity;->access$6102(Lcom/lenovo/fm/RadioActivity;I)I

    .line 2471
    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6200()I

    move-result v1

    if-lez v1, :cond_1

    .line 2472
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2474
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->endSleepTime()V

    .line 2475
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6200()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/fm/RadioService;->startSleepTime(J)V

    .line 2477
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->initiateSleepThread()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6300(Lcom/lenovo/fm/RadioActivity;)V

    .line 2478
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$24;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04004a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/lenovo/fm/RadioActivity;->access$6200()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2508
    :cond_0
    :goto_0
    return-void

    .line 2485
    :catch_0
    move-exception v0

    .line 2487
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2491
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2493
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->cancelSleepMode(Z)V

    .line 2494
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->endSleepTime()V

    .line 2495
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->stopSleepThread2()V
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$6400(Lcom/lenovo/fm/RadioActivity;)V

    .line 2496
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$24;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$24;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2502
    :catch_1
    move-exception v0

    .line 2504
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
