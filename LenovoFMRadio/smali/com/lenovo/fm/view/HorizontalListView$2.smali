.class Lcom/lenovo/fm/view/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/view/HorizontalListView;->onLayout(ZIIII)V
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
    .line 193
    iput-object p1, p0, Lcom/lenovo/fm/view/HorizontalListView$2;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/fm/view/HorizontalListView$2;->this$0:Lcom/lenovo/fm/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/lenovo/fm/view/HorizontalListView;->requestLayout()V

    .line 196
    return-void
.end method
