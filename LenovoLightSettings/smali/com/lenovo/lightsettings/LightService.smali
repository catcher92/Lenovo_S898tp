.class public Lcom/lenovo/lightsettings/LightService;
.super Landroid/app/Service;
.source "LightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lightsettings/LightService$LocalBinder;
    }
.end annotation


# static fields
.field private static final BLOCK_QUEUE_SIZE:I = 0x5

.field public static final CALL_QUERY:I = 0x130

.field public static final CALL_QUERY_END:I = 0x131

.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final DBG:Z = true

.field private static final MAX_POOL_SIZE:I = 0x2

.field public static final MSG_QUERY:I = 0x12d

.field public static final MSG_QUERY_END:I = 0x12f

.field private static final TAG:Ljava/lang/String; = "LightSettings-lser"

.field private static final THREAD_TYPE_CALL:I = 0x2

.field private static final THREAD_TYPE_MSG:I = 0x1

.field private static isListenerCallLogObserver:Z

.field private static isListenerSmsObserver:Z

.field private static final sCallObserver:Landroid/database/ContentObserver;

.field private static sHandler:Landroid/os/Handler;

.field private static final sMSGObserver:Landroid/database/ContentObserver;


# instance fields
.field private isInCalling:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFirstFull:Z

.field private mLightManager:Lcom/lenovo/lightsettings/LightManager;

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    sput-boolean v0, Lcom/lenovo/lightsettings/LightService;->isListenerSmsObserver:Z

    .line 71
    sput-boolean v0, Lcom/lenovo/lightsettings/LightService;->isListenerCallLogObserver:Z

    .line 151
    new-instance v0, Lcom/lenovo/lightsettings/LightService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/lenovo/lightsettings/LightService$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/lenovo/lightsettings/LightService;->sCallObserver:Landroid/database/ContentObserver;

    .line 168
    new-instance v0, Lcom/lenovo/lightsettings/LightService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/lenovo/lightsettings/LightService$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/lenovo/lightsettings/LightService;->sMSGObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/lenovo/lightsettings/LightService;->mIsFirstFull:Z

    .line 64
    iput-boolean v0, p0, Lcom/lenovo/lightsettings/LightService;->isInCalling:Z

    .line 365
    new-instance v0, Lcom/lenovo/lightsettings/LightService$5;

    invoke-direct {v0, p0}, Lcom/lenovo/lightsettings/LightService$5;-><init>(Lcom/lenovo/lightsettings/LightService;)V

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/lenovo/lightsettings/LightService;->isListenerCallLogObserver:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/lenovo/lightsettings/LightService;->isListenerCallLogObserver:Z

    return p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/lightsettings/LightService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/lightsettings/LightService;->handleMissCallChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/lightsettings/LightService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/lightsettings/LightService;->handleUnreadMsgChange(I)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/lenovo/lightsettings/LightService;->isListenerSmsObserver:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/lenovo/lightsettings/LightService;->isListenerSmsObserver:Z

    return p0
.end method

.method static synthetic access$300(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->handleMsgQuery()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->handCallQuery()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/lightsettings/LightService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/lightsettings/LightService;->handleCALLQueryEnd(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/lightsettings/LightService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/lightsettings/LightService;->mIsFirstFull:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/lightsettings/LightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lenovo/lightsettings/LightService;->mIsFirstFull:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/lightsettings/LightService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/lightsettings/LightService;->handleLight(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->handlerUsbStatus()V

    return-void
.end method

.method static synthetic access$902(Lcom/lenovo/lightsettings/LightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lenovo/lightsettings/LightService;->isInCalling:Z

    return p1
.end method

.method private getThread(I)Ljava/lang/Thread;
    .locals 4
    .parameter "type"

    .prologue
    .line 485
    const-string v1, "LightSettings-lser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke getThread("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 488
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #thread:Ljava/lang/Thread;
    new-instance v1, Lcom/lenovo/lightsettings/LightService$6;

    invoke-direct {v1, p0}, Lcom/lenovo/lightsettings/LightService$6;-><init>(Lcom/lenovo/lightsettings/LightService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    .restart local v0       #thread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 605
    return-object v0

    .line 556
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 557
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #thread:Ljava/lang/Thread;
    new-instance v1, Lcom/lenovo/lightsettings/LightService$7;

    invoke-direct {v1, p0}, Lcom/lenovo/lightsettings/LightService$7;-><init>(Lcom/lenovo/lightsettings/LightService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .restart local v0       #thread:Ljava/lang/Thread;
    goto :goto_0
.end method

.method private declared-synchronized handCallQuery()V
    .locals 1

    .prologue
    .line 611
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->getThread(I)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleCALLQueryEnd(I)V
    .locals 1
    .parameter "missCall"

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    .line 621
    sget v0, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->handleMissCallChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleCommand(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 269
    const-string v0, "LightSettings-lser"

    const-string v1, "+++++++++First to send poweron light close request!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method private handleLight(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightService;->mLightManager:Lcom/lenovo/lightsettings/LightManager;

    iget-object v0, v1, Lcom/lenovo/lightsettings/LightManager;->mMainHandler:Lcom/lenovo/lightsettings/LightManager$MainHandler;

    .line 87
    .local v0, handle:Landroid/os/Handler;
    packed-switch p1, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    const-string v1, "IncomingCall"

    const-string v2, "switch"

    invoke-static {p0, v1, v2, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 91
    const-string v1, "LightSettings-lser"

    const-string v2, "HANDLE_LIGHT_INCOMING_CALL....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v1, "IncomingCall"

    const-string v2, "switch"

    invoke-static {p0, v1, v2, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 100
    const-string v1, "LightSettings-lser"

    const-string v2, "HANDLE_LIGHT_INCOMING_CALL_END"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->handCallQuery()V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-boolean v1, p0, Lcom/lenovo/lightsettings/LightService;->isInCalling:Z

    if-nez v1, :cond_0

    .line 112
    const-string v1, "LightSettings-lser"

    const-string v2, "sendEmptyMessage(MainHandler.MSG_MISS_SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 119
    :pswitch_4
    const-string v1, "LightSettings-lser"

    const-string v2, "HANDLE_LIGHT_MISSING_CALL:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v1, "LightThread_"

    const-string v2, "HANDLE_LIGHT_MISSING_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 126
    :pswitch_5
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    :pswitch_6
    const-string v1, "LightSettings-lser"

    const-string v2, "HANDLE_LIGHT_NO_MISSING_CALL or HANDLE_LIGTH_NO_UNREAD_MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 134
    :pswitch_7
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 139
    :pswitch_8
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 142
    :pswitch_9
    const-string v1, "LowBattery"

    const-string v2, "switch"

    invoke-static {p0, v1, v2, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 144
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private handleMissCallChange(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/16 v3, 0x12d

    .line 666
    const-string v0, "LightSettings-lser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ff handleMissCallChange: count =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    if-gtz p1, :cond_0

    .line 668
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->handleLight(I)V

    .line 669
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 674
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mLightManager:Lcom/lenovo/lightsettings/LightManager;

    if-eqz v0, :cond_1

    .line 679
    :goto_1
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->handleLight(I)V

    goto :goto_0

    .line 677
    :cond_1
    const-string v0, "LightSettings-lser"

    const-string v1, "mLightManager ==null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized handleMsgQuery()V
    .locals 1

    .prologue
    .line 628
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->getThread(I)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleUnreadMsgChange(I)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 646
    const-string v0, "LightSettings-lser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ff handleUnreadMsgChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-gtz p1, :cond_0

    .line 649
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->handleLight(I)V

    .line 655
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->handleLight(I)V

    goto :goto_0
.end method

.method private handlerUsbStatus()V
    .locals 1

    .prologue
    .line 658
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/LightService;->handleLight(I)V

    .line 659
    return-void
.end method

.method private registEventsBroardcast()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "MTK_ACTION_UNREAD_CHANGED"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/IntentEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "com.lenovo.leos.cloud.sync.SmsRestore.Start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "com.lenovo.leos.cloud.sync.SmsRestore.Finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.lenovo.leos.cloud.sync.CalllogRestore.Start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v1, "com.lenovo.leos.cloud.sync.CalllogRestore.Finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v1, "com.leonovo.light.OTHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "LightSettings-lser"

    const-string v2, "registEventsBroardcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/lightsettings/LightService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->unregisterObserver()V

    .line 321
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CONTENT_URI"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsSmsEx;->getConstantUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lightsettings/LightService;->sMSGObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/lightsettings/LightService;->sCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    const-string v0, "LightSettings-lser"

    const-string v1, "registerObserver :SMS & MMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method private unregistEventsBroardcast()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "LightSettings-lser"

    const-string v1, "unregistEventsBroardcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/lightsettings/LightService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    return-void
.end method

.method private declared-synchronized unregisterObserver()V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/lenovo/lightsettings/LightService;->sMSGObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lightsettings/LightService;->sMSGObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 336
    const-string v1, "LightSettings-lser"

    const-string v2, "unregisterObserver:SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lightsettings/LightService;->sCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 339
    const-string v1, "LightSettings-lser"

    const-string v2, "unregisterObserver:CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "LightSettings-lser"

    const-string v2, "unregisterObserver fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 807
    const-string v0, "LightSettings-lser"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/16 v8, 0x130

    const/16 v7, 0x12d

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 191
    sput-boolean v0, Lcom/lenovo/lightsettings/LightService;->isListenerSmsObserver:Z

    .line 192
    sput-boolean v0, Lcom/lenovo/lightsettings/LightService;->isListenerCallLogObserver:Z

    .line 193
    invoke-static {p0}, Lcom/lenovo/lightsettings/LightUtils;->initSuportValue(Landroid/content/Context;)V

    .line 194
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x5

    invoke-direct {v6, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 195
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/lightsettings/LightService$3;

    invoke-direct {v1, p0}, Lcom/lenovo/lightsettings/LightService$3;-><init>(Lcom/lenovo/lightsettings/LightService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 207
    :cond_0
    const-string v0, "LightSettings-lser"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Lcom/lenovo/lightsettings/LightService$4;

    invoke-direct {v0, p0}, Lcom/lenovo/lightsettings/LightService$4;-><init>(Lcom/lenovo/lightsettings/LightService;)V

    sput-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    .line 229
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mLightManager:Lcom/lenovo/lightsettings/LightManager;

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Lcom/lenovo/lightsettings/LightManager;

    sget-object v1, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/lightsettings/LightManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mLightManager:Lcom/lenovo/lightsettings/LightManager;

    .line 234
    :cond_1
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 235
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    sget-object v0, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/lenovo/lightsettings/LightService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->registEventsBroardcast()V

    .line 243
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->registerObserver()V

    .line 246
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 247
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 835
    const-string v0, "LightSettings-lser"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->unregistEventsBroardcast()V

    .line 837
    invoke-direct {p0}, Lcom/lenovo/lightsettings/LightService;->unregisterObserver()V

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 846
    return-void

    .line 841
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 821
    const-string v0, "LightSettings-lser"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 823
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 828
    const-string v0, "LightSettings-lser"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 830
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 252
    const-string v0, "LightSettings-lser"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 259
    const-string v0, "LightSettings-lser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand startid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1}, Lcom/lenovo/lightsettings/LightService;->handleCommand(Landroid/content/Intent;)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 814
    const-string v0, "LightSettings-lser"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
