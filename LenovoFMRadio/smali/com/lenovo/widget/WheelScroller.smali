.class public Lcom/lenovo/widget/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/widget/WheelScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/widget/WheelScroller$ScrollingListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lcom/lenovo/widget/WheelScroller$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelScroller$1;-><init>(Lcom/lenovo/widget/WheelScroller;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 197
    iput v2, p0, Lcom/lenovo/widget/WheelScroller;->MESSAGE_SCROLL:I

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/widget/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 220
    new-instance v0, Lcom/lenovo/widget/WheelScroller$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelScroller$2;-><init>(Lcom/lenovo/widget/WheelScroller;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lenovo/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 92
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 94
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 96
    iput-object p2, p0, Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    .line 97
    iput-object p1, p0, Lcom/lenovo/widget/WheelScroller;->context:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/widget/WheelScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/widget/WheelScroller;->lastScrollY:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/widget/WheelScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/lenovo/widget/WheelScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/widget/WheelScroller;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/widget/WheelScroller;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/widget/WheelScroller;)Lcom/lenovo/widget/WheelScroller$ScrollingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/widget/WheelScroller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/widget/WheelScroller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/widget/WheelScroller;->justify()V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    return-void
.end method

.method private justify()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelScroller$ScrollingListener;->onJustify()V

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/widget/WheelScroller;->setNextMessage(I)V

    .line 252
    return-void
.end method

.method private setNextMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/lenovo/widget/WheelScroller;->clearMessages()V

    .line 208
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/widget/WheelScroller;->isScrollingPerformed:Z

    .line 260
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelScroller$ScrollingListener;->onStarted()V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/lenovo/widget/WheelScroller$ScrollingListener;->onFinished()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widget/WheelScroller;->isScrollingPerformed:Z

    .line 272
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/lenovo/widget/WheelScroller;->justify()V

    .line 171
    :cond_1
    return v3

    .line 148
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/lenovo/widget/WheelScroller;->lastTouchedY:F

    .line 149
    iget-object v1, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 150
    invoke-direct {p0}, Lcom/lenovo/widget/WheelScroller;->clearMessages()V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/lenovo/widget/WheelScroller;->lastTouchedY:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 156
    .local v0, distanceY:I
    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/lenovo/widget/WheelScroller;->startScrolling()V

    .line 158
    iget-object v1, p0, Lcom/lenovo/widget/WheelScroller;->listener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    invoke-interface {v1, v0}, Lcom/lenovo/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/lenovo/widget/WheelScroller;->lastTouchedY:F

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 122
    iput v1, p0, Lcom/lenovo/widget/WheelScroller;->lastScrollY:I

    .line 124
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :goto_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 126
    invoke-direct {p0, v1}, Lcom/lenovo/widget/WheelScroller;->setNextMessage(I)V

    .line 128
    invoke-direct {p0}, Lcom/lenovo/widget/WheelScroller;->startScrolling()V

    .line 129
    return-void

    .line 124
    :cond_0
    const/16 v5, 0x190

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "interpolator"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 108
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/lenovo/widget/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 109
    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 136
    return-void
.end method
