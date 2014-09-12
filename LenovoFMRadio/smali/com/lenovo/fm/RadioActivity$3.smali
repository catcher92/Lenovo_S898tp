.class Lcom/lenovo/fm/RadioActivity$3;
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
    .line 674
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 676
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->isRecording:Z
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$900(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 677
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040037

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 714
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040038

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 688
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, sdPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->isHaveAvailableStorage(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/lenovo/fm/RadioActivity;->access$1000(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 695
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v3, 0x1

    #setter for: Lcom/lenovo/fm/RadioActivity;->isRecording:Z
    invoke-static {v2, v3}, Lcom/lenovo/fm/RadioActivity;->access$902(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 696
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->performRecord()V
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$1200(Lcom/lenovo/fm/RadioActivity;)V

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->startTimer()V
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$1300(Lcom/lenovo/fm/RadioActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 703
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04006e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 707
    .end local v1           #sdPath:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #setter for: Lcom/lenovo/fm/RadioActivity;->isRecording:Z
    invoke-static {v2, v4}, Lcom/lenovo/fm/RadioActivity;->access$902(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 708
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->performRecordStop()V
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$1400(Lcom/lenovo/fm/RadioActivity;)V

    .line 709
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->saveRecordingAsync()V

    .line 711
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$3;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/fm/RadioActivity;->access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020045

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
