.class Lcom/lenovo/fm/RadioListActivity$18;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Lcom/lenovo/widget/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->initDialog(Landroid/view/View;)[[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;

.field final synthetic val$cities:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioListActivity;[[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$18;->this$0:Lcom/lenovo/fm/RadioListActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioListActivity$18;->val$cities:[[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/lenovo/widget/WheelView;)V
    .locals 4
    .parameter "wheel"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$18;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioListActivity;->scrolling:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$2202(Lcom/lenovo/fm/RadioListActivity;Z)Z

    .line 1229
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$18;->this$0:Lcom/lenovo/fm/RadioListActivity;

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$18;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$2000(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$18;->val$cities:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity$18;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v3}, Lcom/lenovo/fm/RadioListActivity;->access$1800(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v3

    #calls: Lcom/lenovo/fm/RadioListActivity;->updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/fm/RadioListActivity;->access$2300(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V

    .line 1230
    return-void
.end method

.method public onScrollingStarted(Lcom/lenovo/widget/WheelView;)V
    .locals 2
    .parameter "wheel"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$18;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/fm/RadioListActivity;->scrolling:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioListActivity;->access$2202(Lcom/lenovo/fm/RadioListActivity;Z)Z

    .line 1225
    return-void
.end method
