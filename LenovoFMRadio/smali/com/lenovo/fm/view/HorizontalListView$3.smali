.class Lcom/lenovo/fm/view/HorizontalListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/view/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/view/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/view/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/lenovo/fm/view/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/fm/view/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    float-to-int v2, p3

    invoke-static {v0, v2}, Lcom/lenovo/fm/view/HorizontalListView;->access$212(Lcom/lenovo/fm/view/HorizontalListView;I)I

    .line 331
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V

    .line 334
    const/4 v0, 0x1

    return v0

    .line 331
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    .line 339
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 340
    .local v11, viewRect:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0, v7}, Lcom/lenovo/fm/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 343
    .local v8, left:I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v9

    .line 344
    .local v9, right:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    .line 345
    .local v10, top:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 346
    .local v6, bottom:I
    invoke-virtual {v11, v8, v10, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/lenovo/fm/view/HorizontalListView;->access$300(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/lenovo/fm/view/HorizontalListView;->access$300(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/lenovo/fm/view/HorizontalListView;->access$400(Lcom/lenovo/fm/view/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v4}, Lcom/lenovo/fm/view/HorizontalListView;->access$500(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/lenovo/fm/view/HorizontalListView;->access$400(Lcom/lenovo/fm/view/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/lenovo/fm/view/HorizontalListView;->access$600(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/lenovo/fm/view/HorizontalListView;->access$600(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    iget-object v3, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/lenovo/fm/view/HorizontalListView;->access$400(Lcom/lenovo/fm/view/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v4}, Lcom/lenovo/fm/view/HorizontalListView;->access$500(Lcom/lenovo/fm/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/fm/view/HorizontalListView$3;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #getter for: Lcom/lenovo/fm/view/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/lenovo/fm/view/HorizontalListView;->access$400(Lcom/lenovo/fm/view/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 362
    .end local v2           #child:Landroid/view/View;
    .end local v6           #bottom:I
    .end local v8           #left:I
    .end local v9           #right:I
    .end local v10           #top:I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 340
    .restart local v2       #child:Landroid/view/View;
    .restart local v6       #bottom:I
    .restart local v8       #left:I
    .restart local v9       #right:I
    .restart local v10       #top:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
