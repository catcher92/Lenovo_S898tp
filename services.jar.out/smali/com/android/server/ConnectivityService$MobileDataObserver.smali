.class Lcom/android/server/ConnectivityService$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWhat:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MobileDataObserver;->this$0:Lcom/android/server/ConnectivityService;

    .line 3905
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3906
    iput-object p2, p0, Lcom/android/server/ConnectivityService$MobileDataObserver;->mHandler:Landroid/os/Handler;

    .line 3907
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .parameter "selfChange"

    .prologue
    const/4 v8, -0x1

    .line 3916
    const/4 v0, 0x0

    .line 3917
    .local v0, bTurnOn:Z
    const-string v4, "onChange"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3919
    iget-object v4, p0, Lcom/android/server/ConnectivityService$MobileDataObserver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 3921
    .local v1, dataconnectionID:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 3922
    const/4 v0, 0x1

    .line 3925
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bTurnOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3926
    const-string v4, "persist.sys.next_warning"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3927
    .local v3, isNextTimeWarning:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNextTimeWarning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3928
    if-eqz v0, :cond_1

    .line 3935
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3500()I

    move-result v4

    if-ne v4, v8, :cond_2

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3800()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3900()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3800()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 3937
    const-string v4, "pop confirmTurnOnMobileData"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3938
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3900()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$3802(J)J

    .line 3939
    iget-object v4, p0, Lcom/android/server/ConnectivityService$MobileDataObserver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->confirmTurnOnMobileData()V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)V

    .line 3946
    :cond_1
    :goto_0
    return-void

    .line 3941
    :cond_2
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3900()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$3802(J)J

    .line 3942
    iget-object v4, p0, Lcom/android/server/ConnectivityService$MobileDataObserver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$MobileDataObserver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3500()I

    move-result v7

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$3600()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3909
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3910
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3912
    return-void
.end method
