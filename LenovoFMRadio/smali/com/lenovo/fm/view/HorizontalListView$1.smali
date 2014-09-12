.class Lcom/lenovo/fm/view/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
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
    .line 88
    iput-object p1, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    const/4 v2, 0x1

    #setter for: Lcom/lenovo/fm/view/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/lenovo/fm/view/HorizontalListView;->access$002(Lcom/lenovo/fm/view/HorizontalListView;Z)Z

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->invalidate()V

    .line 96
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    #calls: Lcom/lenovo/fm/view/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/lenovo/fm/view/HorizontalListView;->access$100(Lcom/lenovo/fm/view/HorizontalListView;)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->invalidate()V

    .line 103
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$1;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V

    .line 104
    return-void
.end method
