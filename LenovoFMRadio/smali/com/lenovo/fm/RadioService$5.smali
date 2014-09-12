.class Lcom/lenovo/fm/RadioService$5;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioService;->mtkTuneRadio(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;

.field final synthetic val$freq:F


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioService;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$5;->this$0:Lcom/lenovo/fm/RadioService;

    iput p2, p0, Lcom/lenovo/fm/RadioService$5;->val$freq:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1005
    iget v1, p0, Lcom/lenovo/fm/RadioService$5;->val$freq:F

    invoke-static {v1}, Lcom/lenovo/fm/FMRadioNative;->tune(F)Z

    move-result v0

    .line 1006
    .local v0, isSuccessTune:Z
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtkTuneRadio  return isSuccessTune ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method
