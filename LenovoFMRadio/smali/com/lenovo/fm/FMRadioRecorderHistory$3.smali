.class Lcom/lenovo/fm/FMRadioRecorderHistory$3;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$3;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$3;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 309
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$3;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsSelAll()V
    invoke-static {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$400(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$3;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsUnSelAll()V
    invoke-static {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$100(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    goto :goto_0
.end method
