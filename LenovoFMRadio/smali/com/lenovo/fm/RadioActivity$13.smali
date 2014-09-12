.class Lcom/lenovo/fm/RadioActivity$13;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->showSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$13;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1148
    const-string v0, "RadioActivity"

    const-string v1, "Dismiss searching progress."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$13;->this$0:Lcom/lenovo/fm/RadioActivity;

    #calls: Lcom/lenovo/fm/RadioActivity;->enableOperateBtn()V
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$2500(Lcom/lenovo/fm/RadioActivity;)V

    .line 1150
    return-void
.end method
