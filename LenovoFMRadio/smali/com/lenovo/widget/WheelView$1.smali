.class Lcom/lenovo/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/lenovo/widget/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/lenovo/widget/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$000(Lcom/lenovo/widget/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v0}, Lcom/lenovo/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 160
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #setter for: Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelView;->access$002(Lcom/lenovo/widget/WheelView;Z)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #setter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelView;->access$202(Lcom/lenovo/widget/WheelView;I)I

    .line 164
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 165
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$200(Lcom/lenovo/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelView;->access$300(Lcom/lenovo/widget/WheelView;)Lcom/lenovo/widget/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$200(Lcom/lenovo/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/widget/WheelScroller;->scroll(II)V

    .line 171
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #calls: Lcom/lenovo/widget/WheelView;->doScroll(I)V
    invoke-static {v1, p1}, Lcom/lenovo/widget/WheelView;->access$100(Lcom/lenovo/widget/WheelView;I)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v0

    .line 148
    .local v0, height:I
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$200(Lcom/lenovo/widget/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #setter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v1, v0}, Lcom/lenovo/widget/WheelView;->access$202(Lcom/lenovo/widget/WheelView;I)I

    .line 150
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$300(Lcom/lenovo/widget/WheelView;)Lcom/lenovo/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/widget/WheelScroller;->stopScrolling()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$200(Lcom/lenovo/widget/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    neg-int v2, v0

    #setter for: Lcom/lenovo/widget/WheelView;->scrollingOffset:I
    invoke-static {v1, v2}, Lcom/lenovo/widget/WheelView;->access$202(Lcom/lenovo/widget/WheelView;I)I

    .line 153
    iget-object v1, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    #getter for: Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;
    invoke-static {v1}, Lcom/lenovo/widget/WheelView;->access$300(Lcom/lenovo/widget/WheelView;)Lcom/lenovo/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/widget/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelView;->access$002(Lcom/lenovo/widget/WheelView;Z)Z

    .line 141
    iget-object v0, p0, Lcom/lenovo/widget/WheelView$1;->this$0:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v0}, Lcom/lenovo/widget/WheelView;->notifyScrollingListenersAboutStart()V

    .line 142
    return-void
.end method
