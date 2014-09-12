.class Lcom/lenovo/lightsettings/LightService$7;
.super Ljava/lang/Object;
.source "LightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lightsettings/LightService;->getThread(I)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lightsettings/LightService;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightService$7;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 560
    const/4 v6, 0x0

    .line 571
    .local v6, curCall:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$7;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-virtual {v0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "new"

    aput-object v4, v2, v3

    const-string v3, " type=3 AND new=1 "

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 579
    if-eqz v6, :cond_0

    .line 580
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    .line 583
    :cond_0
    const-string v0, "LightSettings-lser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThread(),THREAD_TYPE_CALL missCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lightsettings/LightService;->access$100()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x131

    sget v3, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_1
    if-eqz v6, :cond_2

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_2
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v7

    .line 592
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "LightSettings-lser"

    const-string v1, "run ....call exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    if-eqz v6, :cond_2

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 595
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
