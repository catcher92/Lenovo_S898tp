.class final Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1179
    const-string v0, "ShutdownThread"

    const-string v1, "onServiceConnected() entry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-static {p2}, Lcom/android/server/power/IPreShutdown$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/power/IPreShutdown;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$902(Lcom/android/server/power/IPreShutdown;)Lcom/android/server/power/IPreShutdown;

    .line 1181
    const-string v0, "ShutdownThread"

    const-string v1, "onServiceConnected() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1186
    const-string v0, "ShutdownThread"

    const-string v1, "onServiceDisconnected() entry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$902(Lcom/android/server/power/IPreShutdown;)Lcom/android/server/power/IPreShutdown;

    .line 1188
    const-string v0, "ShutdownThread"

    const-string v1, "onServiceDisconnected() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void
.end method
