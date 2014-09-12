.class Lcom/lenovo/lightsettings/LightService$3;
.super Ljava/lang/Object;
.source "LightService.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lightsettings/LightService;->onCreate()V
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
    .line 197
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightService$3;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .parameter "r"
    .parameter "executor"

    .prologue
    .line 201
    const-string v0, "call to more ,so rejected -----"

    invoke-static {v0}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 203
    return-void
.end method
