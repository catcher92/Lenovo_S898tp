.class Lcom/lenovo/fm/RadioService$6;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$6;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1403
    const-string v4, "RadioService"

    const-string v5, "RadioService  setSpeakerPhoneOn "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1406
    .local v0, time:J
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/lenovo/fm/RadioService$6;->this$0:Lcom/lenovo/fm/RadioService;

    #getter for: Lcom/lenovo/fm/RadioService;->mForcedUseForMedia:I
    invoke-static {v5}, Lcom/lenovo/fm/RadioService;->access$900(Lcom/lenovo/fm/RadioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1410
    .local v2, time2:J
    const-string v4, "RadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RadioService  setSpeakerPhoneOn time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return-void
.end method
