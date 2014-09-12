.class public Lcom/lenovo/fm/view/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field private mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    .line 49
    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    .line 53
    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 59
    iput-boolean v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataChanged:Z

    .line 88
    new-instance v0, Lcom/lenovo/fm/view/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/view/HorizontalListView$1;-><init>(Lcom/lenovo/fm/view/HorizontalListView;)V

    iput-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 311
    new-instance v0, Lcom/lenovo/fm/view/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/view/HorizontalListView$3;-><init>(Lcom/lenovo/fm/view/HorizontalListView;)V

    iput-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 63
    invoke-direct {p0}, Lcom/lenovo/fm/view/HorizontalListView;->initView()V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/fm/view/HorizontalListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/fm/view/HorizontalListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/fm/view/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$212(Lcom/lenovo/fm/view/HorizontalListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/fm/view/HorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .parameter "child"
    .parameter "viewPos"

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x8000

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 142
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 147
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lenovo/fm/view/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 151
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .parameter "dx"

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, edge:I
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 208
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/lenovo/fm/view/HorizontalListView;->fillListRight(II)V

    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 215
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/lenovo/fm/view/HorizontalListView;->fillListLeft(II)V

    .line 217
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .parameter "leftEdge"
    .parameter "dx"

    .prologue
    .line 241
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    if-ltz v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/fm/view/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 246
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    .line 247
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 249
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .parameter "rightEdge"
    .parameter "dx"

    .prologue
    .line 221
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, child:Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/fm/view/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 228
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 229
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    .line 232
    :cond_0
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_1

    .line 233
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    .line 235
    :cond_1
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    .line 238
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mCurrentX:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    .line 72
    const v0, 0x7fffffff

    iput v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    .line 73
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 74
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/view/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .parameter "dx"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 273
    iget v4, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    .line 274
    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    .line 275
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 276
    invoke-virtual {p0, v2}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 278
    .local v1, childWidth:I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 280
    add-int/2addr v3, v1

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    .end local v2           #i:I
    .end local v3           #left:I
    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0, v3}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, child:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 254
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDisplayOffset:I

    .line 255
    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0, v0}, Lcom/lenovo/fm/view/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 257
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I

    .line 258
    invoke-virtual {p0, v3}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 264
    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0, v0}, Lcom/lenovo/fm/view/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 266
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mRightViewIndex:I

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 269
    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/fm/view/HorizontalListView;->initView()V

    .line 131
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->removeAllViewsInLayout()V

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 293
    .local v0, handled:Z
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 307
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 308
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V

    .line 303
    const/4 v0, 0x1

    return v0

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 158
    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 163
    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mCurrentX:I

    .line 164
    .local v1, oldCurrentX:I
    invoke-direct {p0}, Lcom/lenovo/fm/view/HorizontalListView;->initView()V

    .line 165
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->removeAllViewsInLayout()V

    .line 166
    iput v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    .line 167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataChanged:Z

    .line 170
    .end local v1           #oldCurrentX:I
    :cond_2
    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 172
    .local v2, scrollx:I
    iput v2, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    .line 175
    .end local v2           #scrollx:I
    :cond_3
    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    if-gtz v3, :cond_4

    .line 176
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    .line 177
    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 179
    :cond_4
    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    iget v4, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    if-lt v3, v4, :cond_5

    .line 180
    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mMaxX:I

    iput v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    .line 181
    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 184
    :cond_5
    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mCurrentX:I

    iget v4, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    sub-int v0, v3, v4

    .line 186
    .local v0, dx:I
    invoke-direct {p0, v0}, Lcom/lenovo/fm/view/HorizontalListView;->removeNonVisibleItems(I)V

    .line 187
    invoke-direct {p0, v0}, Lcom/lenovo/fm/view/HorizontalListView;->fillList(I)V

    .line 188
    invoke-direct {p0, v0}, Lcom/lenovo/fm/view/HorizontalListView;->positionItems(I)V

    .line 190
    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    iput v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mCurrentX:I

    .line 192
    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    new-instance v3, Lcom/lenovo/fm/view/HorizontalListView$2;

    invoke-direct {v3, p0}, Lcom/lenovo/fm/view/HorizontalListView$2;-><init>(Lcom/lenovo/fm/view/HorizontalListView;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/view/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0           #dx:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/lenovo/fm/view/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 287
    invoke-virtual {p0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lenovo/fm/view/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 125
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 126
    invoke-direct {p0}, Lcom/lenovo/fm/view/HorizontalListView;->reset()V

    .line 127
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 86
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lenovo/fm/view/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 81
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 138
    return-void
.end method
