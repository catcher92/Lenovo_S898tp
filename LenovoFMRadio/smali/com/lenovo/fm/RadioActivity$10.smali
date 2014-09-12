.class Lcom/lenovo/fm/RadioActivity$10;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioActivity;->startSearch()V
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
    .line 1080
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$10;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1084
    const-string v0, "RadioActivity"

    const-string v1, "Auto Scan Button has been canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$10;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1088
    return-void
.end method
