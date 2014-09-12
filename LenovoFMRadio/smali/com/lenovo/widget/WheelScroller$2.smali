.class Lcom/lenovo/widget/WheelScroller$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widget/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widget/WheelScroller;


# direct methods
.method constructor <init>(Lcom/lenovo/widget/WheelScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 222
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 223
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 224
    .local v0, currY:I
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$000(Lcom/lenovo/widget/WheelScroller;)I

    move-result v2

    sub-int v1, v2, v0

    .line 225
    .local v1, delta:I
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #setter for: Lcom/lenovo/widget/WheelScroller;->lastScrollY:I
    invoke-static {v2, v0}, Lcom/lenovo/widget/WheelScroller;->access$002(Lcom/lenovo/widget/WheelScroller;I)I

    .line 226
    if-eqz v1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$300(Lcom/lenovo/widget/WheelScroller;)Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lenovo/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 234
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$400(Lcom/lenovo/widget/WheelScroller;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 239
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    #calls: Lcom/lenovo/widget/WheelScroller;->justify()V
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$500(Lcom/lenovo/widget/WheelScroller;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$2;->this$0:Lcom/lenovo/widget/WheelScroller;

    invoke-virtual {v2}, Lcom/lenovo/widget/WheelScroller;->finishScrolling()V

    goto :goto_0
.end method
