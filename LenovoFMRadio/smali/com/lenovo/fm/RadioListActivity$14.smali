.class Lcom/lenovo/fm/RadioListActivity$14;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioListActivity;->showSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$14;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity$14;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 1095
    return-void
.end method
