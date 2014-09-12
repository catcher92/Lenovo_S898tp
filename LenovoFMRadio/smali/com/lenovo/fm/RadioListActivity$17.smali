.class Lcom/lenovo/fm/RadioListActivity$17;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Lcom/lenovo/widget/OnWheelChangedListener;


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
    .line 1214
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$17;->this$0:Lcom/lenovo/fm/RadioListActivity;

    iput-object p2, p0, Lcom/lenovo/fm/RadioListActivity$17;->val$cities:[[Ljava/lang/String;

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
    .line 1216
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$17;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->scrolling:Z
    invoke-static {v0}, Lcom/lenovo/fm/RadioListActivity;->access$2200(Lcom/lenovo/fm/RadioListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$17;->this$0:Lcom/lenovo/fm/RadioListActivity;

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity$17;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;
    invoke-static {v1}, Lcom/lenovo/fm/RadioListActivity;->access$2000(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity$17;->val$cities:[[Ljava/lang/String;

    #calls: Lcom/lenovo/fm/RadioListActivity;->updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, p3}, Lcom/lenovo/fm/RadioListActivity;->access$2300(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V

    .line 1219
    :cond_0
    return-void
.end method
