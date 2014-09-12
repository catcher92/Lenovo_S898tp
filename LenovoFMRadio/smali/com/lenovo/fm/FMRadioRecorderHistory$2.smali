.class Lcom/lenovo/fm/FMRadioRecorderHistory$2;
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
    .line 276
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$2;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$2;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsUnSelAll()V
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$100(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$2;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->cancelDeleteMode()V
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$200(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    .line 281
    return-void
.end method
