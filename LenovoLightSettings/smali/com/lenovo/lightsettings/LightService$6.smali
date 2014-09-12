.class Lcom/lenovo/lightsettings/LightService$6;
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
    .line 488
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightService$6;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 490
    const/4 v7, 0x0

    .line 491
    .local v7, curMsg:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 501
    .local v6, count:I
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$6;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-virtual {v0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/lenovo/lightsettings/LightUtils;->NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 505
    if-eqz v7, :cond_0

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    .line 507
    sget v0, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    add-int/2addr v6, v0

    .line 508
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$6;->this$0:Lcom/lenovo/lightsettings/LightService;

    sget v1, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    #calls: Lcom/lenovo/lightsettings/LightService;->handleUnreadMsgChange(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lightsettings/LightService;->access$1100(Lcom/lenovo/lightsettings/LightService;I)V

    .line 510
    :cond_0
    const-string v0, "LightSettings-lser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThread(),THREAD_TYPE_MSG LightManager.mUnreadMMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    if-eqz v7, :cond_1

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$6;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-virtual {v0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CONTENT_URI"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lightsettings/LightUtils;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/lenovo/lightsettings/LightUtils;->NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATE"

    invoke-static {v9}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " desc"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 536
    if-eqz v7, :cond_2

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    .line 538
    sget v0, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    add-int/2addr v6, v0

    .line 541
    :cond_2
    const-string v0, "LightSettings-lser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThread(),THREAD_TYPE_MSG mUnreadSMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$6;->this$0:Lcom/lenovo/lightsettings/LightService;

    sget v1, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    #calls: Lcom/lenovo/lightsettings/LightService;->handleUnreadMsgChange(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lightsettings/LightService;->access$1100(Lcom/lenovo/lightsettings/LightService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    if-eqz v7, :cond_3

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_3
    :goto_1
    return-void

    .line 513
    :catch_0
    move-exception v8

    .line 514
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "LightSettings-lser"

    const-string v1, "run ....query msg exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    if-eqz v7, :cond_1

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 517
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 546
    :catch_1
    move-exception v8

    .line 547
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "LightSettings-lser"

    const-string v1, "run .... query sms exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 550
    if-eqz v7, :cond_3

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 550
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_5

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
