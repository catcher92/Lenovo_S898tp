.class Lcom/lenovo/fm/RadioActivity$22;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Lcom/lenovo/widget/OnWheelChangedListener;


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
    .line 2361
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$22;->this$0:Lcom/lenovo/fm/RadioActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioActivity$22;->val$cities:[[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/lenovo/widget/WheelView;II)V
    .locals 3
    .parameter "wheel"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$22;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->scrolling:Z
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$5700(Lcom/lenovo/fm/RadioActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$22;->this$0:Lcom/lenovo/fm/RadioActivity;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$22;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioActivity;->access$5500(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity$22;->val$cities:[[Ljava/lang/String;

    #calls: Lcom/lenovo/fm/RadioActivity;->updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, p3}, Lcom/lenovo/fm/RadioActivity;->access$5800(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V

    .line 2366
    :cond_0
    return-void
.end method
