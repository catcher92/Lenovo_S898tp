.class Lcom/lenovo/widget/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 175
    iput-object p1, p0, Lcom/lenovo/widget/WheelScroller$1;->this$0:Lcom/lenovo/widget/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller$1;->this$0:Lcom/lenovo/widget/WheelScroller;

    #setter for: Lcom/lenovo/widget/WheelScroller;->lastScrollY:I
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelScroller;->access$002(Lcom/lenovo/widget/WheelScroller;I)I

    .line 187
    const v9, 0x7fffffff

    .line 188
    .local v9, maxY:I
    const v10, -0x7fffffff

    .line 189
    .local v10, minY:I
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller$1;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/widget/WheelScroller;->access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/widget/WheelScroller$1;->this$0:Lcom/lenovo/widget/WheelScroller;

    #getter for: Lcom/lenovo/widget/WheelScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/lenovo/widget/WheelScroller;->access$000(Lcom/lenovo/widget/WheelScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller$1;->this$0:Lcom/lenovo/widget/WheelScroller;

    #calls: Lcom/lenovo/widget/WheelScroller;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/widget/WheelScroller;->access$200(Lcom/lenovo/widget/WheelScroller;I)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method
