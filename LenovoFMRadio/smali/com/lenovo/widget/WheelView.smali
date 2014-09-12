.class public Lcom/lenovo/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/widget/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/widget/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lcom/lenovo/widget/WheelRecycle;

.field private scroller:Lcom/lenovo/widget/WheelScroller;

.field scrollingListener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/widget/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iput v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 69
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 84
    iput-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 96
    new-instance v0, Lcom/lenovo/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelRecycle;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/lenovo/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$1;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    .line 215
    new-instance v0, Lcom/lenovo/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$2;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 124
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 69
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 84
    iput-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 96
    new-instance v0, Lcom/lenovo/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelRecycle;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/lenovo/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$1;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    .line 215
    new-instance v0, Lcom/lenovo/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$2;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 116
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 69
    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 84
    iput-boolean v1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 96
    new-instance v0, Lcom/lenovo/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelRecycle;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/lenovo/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$1;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    .line 215
    new-instance v0, Lcom/lenovo/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/widget/WheelView$2;-><init>(Lcom/lenovo/widget/WheelView;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 108
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/widget/WheelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/widget/WheelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/widget/WheelView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/widget/WheelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/widget/WheelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/widget/WheelView;)Lcom/lenovo/widget/WheelScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .parameter "index"
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    .line 903
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 905
    if-eqz p2, :cond_1

    .line 906
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 911
    :goto_0
    const/4 v1, 0x1

    .line 914
    :cond_0
    return v1

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 878
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    new-instance v5, Lcom/lenovo/widget/ItemsRange;

    invoke-direct {v5}, Lcom/lenovo/widget/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lenovo/widget/ItemsRange;)I

    .line 885
    :goto_0
    iget v2, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 886
    .local v0, addItems:I
    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 887
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lenovo/widget/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    iput v1, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    .line 886
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 881
    .end local v0           #addItems:I
    .end local v1           #i:I
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 891
    .restart local v0       #addItems:I
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .parameter "widthSize"
    .parameter "mode"

    .prologue
    const/high16 v5, 0x4000

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 527
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->initResourcesIfNecessary()V

    .line 530
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 536
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 538
    .local v0, width:I
    if-ne p2, v5, :cond_1

    .line 539
    move v0, p1

    .line 551
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 555
    return v0

    .line 541
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 544
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 546
    const/high16 v1, -0x8000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 547
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 869
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 871
    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8
    .parameter "delta"

    .prologue
    .line 706
    iget v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 708
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v3

    .line 709
    .local v3, itemHeight:I
    iget v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 711
    .local v0, count:I
    iget v6, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 712
    .local v5, pos:I
    iget-object v6, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v6}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 714
    .local v2, itemCount:I
    iget v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 715
    .local v1, fixPos:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 716
    const/4 v1, 0x0

    .line 718
    :cond_0
    iget-boolean v6, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 719
    if-lez v1, :cond_2

    .line 720
    add-int/lit8 v5, v5, -0x1

    .line 721
    add-int/lit8 v0, v0, 0x1

    .line 727
    :cond_1
    :goto_0
    if-gez v5, :cond_3

    .line 728
    add-int/2addr v5, v2

    goto :goto_0

    .line 722
    :cond_2
    if-gez v1, :cond_1

    .line 723
    add-int/lit8 v5, v5, 0x1

    .line 724
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 730
    :cond_3
    rem-int/2addr v5, v2

    .line 748
    :cond_4
    :goto_1
    iget v4, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 749
    .local v4, offset:I
    iget v6, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    if-eq v5, v6, :cond_a

    .line 750
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/widget/WheelView;->setCurrentItem(IZ)V

    .line 756
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 757
    iget v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 758
    iget v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 760
    :cond_5
    return-void

    .line 733
    .end local v4           #offset:I
    :cond_6
    if-gez v5, :cond_7

    .line 734
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 735
    const/4 v5, 0x0

    goto :goto_1

    .line 736
    :cond_7
    if-lt v5, v2, :cond_8

    .line 737
    iget v6, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 738
    add-int/lit8 v5, v2, -0x1

    goto :goto_1

    .line 739
    :cond_8
    if-lez v5, :cond_9

    if-lez v1, :cond_9

    .line 740
    add-int/lit8 v5, v5, -0x1

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 742
    :cond_9
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_4

    if-gez v1, :cond_4

    .line 743
    add-int/lit8 v5, v5, 0x1

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 752
    .restart local v4       #offset:I
    :cond_a
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 659
    .local v0, center:I
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 660
    .local v1, offset:I
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 642
    iget v1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    iget v2, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 644
    .local v0, top:I
    const/high16 v1, 0x4120

    neg-int v2, v0

    iget v3, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 649
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 624
    const-wide/high16 v1, 0x3ff8

    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 625
    .local v0, height:I
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 626
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 628
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 630
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 631
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 3
    .parameter "layout"

    .prologue
    const/4 v2, 0x0

    .line 489
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 493
    :cond_0
    iget v1, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    iget v2, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 496
    .local v0, desired:I
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 506
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 514
    :goto_0
    return v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    .line 511
    iget v0, p0, Lcom/lenovo/widget/WheelView;->itemHeight:I

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    .line 939
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 940
    :cond_0
    const/4 v1, 0x0

    .line 953
    :goto_0
    return-object v1

    .line 942
    :cond_1
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 943
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 944
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    invoke-virtual {v2}, Lcom/lenovo/widget/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 947
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 948
    add-int/2addr p1, v0

    goto :goto_1

    .line 952
    :cond_3
    rem-int/2addr p1, v0

    .line 953
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    invoke-virtual {v2}, Lcom/lenovo/widget/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/lenovo/widget/ItemsRange;
    .locals 7

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 782
    const/4 v3, 0x0

    .line 804
    :goto_0
    return-object v3

    .line 785
    :cond_0
    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 786
    .local v2, first:I
    const/4 v0, 0x1

    .line 788
    .local v0, count:I
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 789
    add-int/lit8 v2, v2, -0x1

    .line 790
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 793
    :cond_1
    iget v3, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_3

    .line 794
    iget v3, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    if-lez v3, :cond_2

    .line 795
    add-int/lit8 v2, v2, -0x1

    .line 797
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 800
    iget v3, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 801
    .local v1, emptyItems:I
    sub-int/2addr v2, v1

    .line 802
    int-to-double v3, v0

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 804
    .end local v1           #emptyItems:I
    :cond_3
    new-instance v3, Lcom/lenovo/widget/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/lenovo/widget/ItemsRange;-><init>(II)V

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 134
    new-instance v0, Lcom/lenovo/widget/WheelScroller;

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->scrollingListener:Lcom/lenovo/widget/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/widget/WheelScroller;-><init>(Landroid/content/Context;Lcom/lenovo/widget/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;

    .line 135
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/lenovo/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 473
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/lenovo/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lenovo/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 477
    :cond_2
    const v0, 0x7f02006a

    invoke-virtual {p0, v0}, Lcom/lenovo/widget/WheelView;->setBackgroundResource(I)V

    .line 479
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 597
    add-int/lit8 v0, p1, -0x14

    .line 599
    .local v0, itemsWidth:I
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 600
    return-void
.end method

.method private rebuildItems()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 813
    const/4 v3, 0x0

    .line 814
    .local v3, updated:Z
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemsRange()Lcom/lenovo/widget/ItemsRange;

    move-result-object v2

    .line 815
    .local v2, range:Lcom/lenovo/widget/ItemsRange;
    iget-object v6, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 816
    iget-object v6, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    iget-object v7, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/lenovo/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lenovo/widget/ItemsRange;)I

    move-result v0

    .line 817
    .local v0, first:I
    iget v6, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    if-eq v6, v0, :cond_4

    move v3, v4

    .line 818
    :goto_0
    iput v0, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    .line 824
    .end local v0           #first:I
    :goto_1
    if-nez v3, :cond_1

    .line 825
    iget v6, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_6

    :cond_0
    move v3, v4

    .line 829
    :cond_1
    :goto_2
    iget v6, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_8

    iget v6, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 830
    iget v6, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_3
    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getFirst()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 831
    invoke-direct {p0, v1, v4}, Lcom/lenovo/widget/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 840
    .end local v1           #i:I
    :cond_2
    :goto_4
    iget v0, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    .line 841
    .restart local v0       #first:I
    iget-object v4, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1       #i:I
    :goto_5
    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 842
    iget v4, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/lenovo/widget/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 844
    add-int/lit8 v0, v0, 0x1

    .line 841
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1           #i:I
    :cond_4
    move v3, v5

    .line 817
    goto :goto_0

    .line 820
    .end local v0           #first:I
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->createItemsLayout()V

    .line 821
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v5

    .line 825
    goto :goto_2

    .line 834
    .restart local v1       #i:I
    :cond_7
    iput v1, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    .line 830
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 837
    .end local v1           #i:I
    :cond_8
    invoke-virtual {v2}, Lcom/lenovo/widget/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    goto :goto_4

    .line 847
    .restart local v0       #first:I
    .restart local v1       #i:I
    :cond_9
    iput v0, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    .line 849
    return v3
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->calculateLayoutWidth(II)I

    .line 859
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->layout(II)V

    .line 861
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public addClickingListener(Lcom/lenovo/widget/OnWheelClickedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public addScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/lenovo/widget/adapters/WheelViewAdapter;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .parameter "clearCaches"

    .prologue
    .line 443
    if-eqz p1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    invoke-virtual {v0}, Lcom/lenovo/widget/WheelRecycle;->clearAll()V

    .line 445
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 448
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 454
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    .line 455
    return-void

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->recycle:Lcom/lenovo/widget/WheelRecycle;

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lenovo/widget/WheelView;->firstItem:I

    new-instance v3, Lcom/lenovo/widget/ItemsRange;

    invoke-direct {v3}, Lcom/lenovo/widget/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lenovo/widget/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/OnWheelChangedListener;

    .line 276
    .local v1, listener:Lcom/lenovo/widget/OnWheelChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/lenovo/widget/OnWheelChangedListener;->onChanged(Lcom/lenovo/widget/WheelView;II)V

    goto :goto_0

    .line 278
    .end local v1           #listener:Lcom/lenovo/widget/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .parameter "item"

    .prologue
    .line 342
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/OnWheelClickedListener;

    .line 343
    .local v1, listener:Lcom/lenovo/widget/OnWheelClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/lenovo/widget/OnWheelClickedListener;->onItemClicked(Lcom/lenovo/widget/WheelView;I)V

    goto :goto_0

    .line 345
    .end local v1           #listener:Lcom/lenovo/widget/OnWheelClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/OnWheelScrollListener;

    .line 314
    .local v1, listener:Lcom/lenovo/widget/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/lenovo/widget/OnWheelScrollListener;->onScrollingFinished(Lcom/lenovo/widget/WheelView;)V

    goto :goto_0

    .line 316
    .end local v1           #listener:Lcom/lenovo/widget/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 304
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/OnWheelScrollListener;

    .line 305
    .local v1, listener:Lcom/lenovo/widget/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/lenovo/widget/OnWheelScrollListener;->onScrollingStarted(Lcom/lenovo/widget/WheelView;)V

    goto :goto_0

    .line 307
    .end local v1           #listener:Lcom/lenovo/widget/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 604
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 606
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->updateView()V

    .line 612
    invoke-direct {p0, p1}, Lcom/lenovo/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 585
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/lenovo/widget/WheelView;->layout(II)V

    .line 586
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 560
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 561
    .local v4, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 562
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 563
    .local v5, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 565
    .local v2, heightSize:I
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->buildViewForMeasuring()V

    .line 567
    invoke-direct {p0, v5, v4}, Lcom/lenovo/widget/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 570
    .local v3, width:I
    const/high16 v6, 0x4000

    if-ne v1, v6, :cond_1

    .line 571
    move v0, v2

    .line 580
    .local v0, height:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/lenovo/widget/WheelView;->setMeasuredDimension(II)V

    .line 581
    return-void

    .line 573
    .end local v0           #height:I
    :cond_1
    iget-object v6, p0, Lcom/lenovo/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/lenovo/widget/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 575
    .restart local v0       #height:I
    const/high16 v6, -0x8000

    if-ne v1, v6, :cond_0

    .line 576
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 667
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getViewAdapter()Lcom/lenovo/widget/adapters/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 696
    :goto_0
    return v2

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 696
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/lenovo/widget/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 673
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 679
    :pswitch_1
    iget-boolean v2, p0, Lcom/lenovo/widget/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_1

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 681
    .local v0, distance:I
    if-lez v0, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 686
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 687
    .local v1, items:I
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/lenovo/widget/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/lenovo/widget/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 684
    .end local v1           #items:I
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public removeClickingListener(Lcom/lenovo/widget/OnWheelClickedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public removeScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .parameter "itemsToScroll"
    .parameter "time"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/lenovo/widget/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 772
    .local v0, distance:I
    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/lenovo/widget/WheelScroller;->scroll(II)V

    .line 773
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/widget/WheelView;->setCurrentItem(IZ)V

    .line 413
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .parameter "index"
    .parameter "animated"

    .prologue
    const/4 v6, 0x0

    .line 365
    iget-object v4, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 370
    .local v0, itemCount:I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 371
    :cond_2
    iget-boolean v4, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 372
    :goto_1
    if-gez p1, :cond_3

    .line 373
    add-int/2addr p1, v0

    goto :goto_1

    .line 375
    :cond_3
    rem-int/2addr p1, v0

    .line 380
    :cond_4
    iget v4, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    if-eq p1, v4, :cond_0

    .line 381
    if-eqz p2, :cond_7

    .line 382
    iget v4, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    sub-int v1, p1, v4

    .line 383
    .local v1, itemsToScroll:I
    iget-boolean v4, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_5

    .line 384
    iget v4, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 386
    .local v3, scroll:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 387
    if-gez v1, :cond_6

    move v1, v3

    .line 390
    .end local v3           #scroll:I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/lenovo/widget/WheelView;->scroll(II)V

    goto :goto_0

    .line 387
    .restart local v3       #scroll:I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 392
    .end local v1           #itemsToScroll:I
    .end local v3           #scroll:I
    :cond_7
    iput v6, p0, Lcom/lenovo/widget/WheelView;->scrollingOffset:I

    .line 394
    iget v2, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 395
    .local v2, old:I
    iput p1, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    .line 397
    iget v4, p0, Lcom/lenovo/widget/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/widget/WheelView;->notifyChangingListeners(II)V

    .line 399
    invoke-virtual {p0}, Lcom/lenovo/widget/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter "isCyclic"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/lenovo/widget/WheelView;->isCyclic:Z

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/widget/WheelView;->invalidateWheel(Z)V

    .line 434
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/widget/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    return-void
.end method

.method public setViewAdapter(Lcom/lenovo/widget/adapters/WheelViewAdapter;)V
    .locals 2
    .parameter "viewAdapter"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    .line 239
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->viewAdapter:Lcom/lenovo/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/lenovo/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/lenovo/widget/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 243
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/widget/WheelView;->invalidateWheel(Z)V

    .line 244
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 202
    iput p1, p0, Lcom/lenovo/widget/WheelView;->visibleItems:I

    .line 203
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/lenovo/widget/WheelView;->scroller:Lcom/lenovo/widget/WheelScroller;

    invoke-virtual {v0}, Lcom/lenovo/widget/WheelScroller;->stopScrolling()V

    .line 961
    return-void
.end method
