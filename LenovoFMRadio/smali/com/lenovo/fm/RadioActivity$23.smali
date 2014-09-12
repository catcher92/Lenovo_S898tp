.class Lcom/lenovo/fm/RadioActivity$23;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Lcom/lenovo/widget/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->initDialog(Landroid/view/View;)[[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;

.field final synthetic val$cities:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;[[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2369
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$23;->this$0:Lcom/lenovo/fm/RadioActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioActivity$23;->val$cities:[[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/lenovo/widget/WheelView;)V
    .locals 4
    .parameter "wheel"

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$23;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/fm/RadioActivity;->scrolling:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$5702(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 2376
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$23;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$23;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$5500(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$23;->val$cities:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity$23;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;
    invoke-static {v3}, Lcom/lenovo/fm/RadioActivity;->access$5300(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/widget/WheelView;->getCurrentItem()I

    move-result v3

    #calls: Lcom/lenovo/fm/RadioActivity;->updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/fm/RadioActivity;->access$5800(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V

    .line 2377
    return-void
.end method

.method public onScrollingStarted(Lcom/lenovo/widget/WheelView;)V
    .locals 2
    .parameter "wheel"

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$23;->this$0:Lcom/lenovo/fm/RadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/fm/RadioActivity;->scrolling:Z
    invoke-static {v0, v1}, Lcom/lenovo/fm/RadioActivity;->access$5702(Lcom/lenovo/fm/RadioActivity;Z)Z

    .line 2372
    return-void
.end method
