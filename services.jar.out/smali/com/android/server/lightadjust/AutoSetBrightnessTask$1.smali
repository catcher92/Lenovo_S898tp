.class Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;
.super Ljava/util/TimerTask;
.source "AutoSetBrightnessTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lightadjust/AutoSetBrightnessTask;->getTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    #getter for: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;
    invoke-static {v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$200(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    #getter for: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mStep:I
    invoke-static {v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$100(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->getListData(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 63
    .local v1, value:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-static {v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$108(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)I

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    #getter for: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mBRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I
    invoke-static {v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$300(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->dynamicalAdjuest(I)V
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$400(Lcom/android/server/lightadjust/AutoSetBrightnessTask;I)V

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->updateBrightness(I)V
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$500(Lcom/android/server/lightadjust/AutoSetBrightnessTask;I)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    #getter for: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;
    invoke-static {v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$200(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->getListLastData()I

    move-result v0

    .line 72
    .local v0, targetValue:I
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    #getter for: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z
    invoke-static {v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$600(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    if-ne v0, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    #calls: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->setMaxContrast()V
    invoke-static {v2}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$700(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->cancel()Z

    .line 76
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$802(Lcom/android/server/lightadjust/AutoSetBrightnessTask;Z)Z

    .line 77
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    const-string v3, "End--->Task Finished!---"

    #calls: Lcom/android/server/lightadjust/AutoSetBrightnessTask;->sendLogInfo(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->access$900(Lcom/android/server/lightadjust/AutoSetBrightnessTask;Ljava/lang/String;)V

    .line 78
    const-string v2, "AUTOADJUST"

    const-string v3, "---task Finished!---"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
