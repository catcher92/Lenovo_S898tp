.class Lcom/lenovo/systemanim/SystemAnimService$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemAnimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemanim/SystemAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemanim/SystemAnimService;


# direct methods
.method constructor <init>(Lcom/lenovo/systemanim/SystemAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/systemanim/SystemAnimService$1;->this$0:Lcom/lenovo/systemanim/SystemAnimService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v4, "action_themecenter_themechange_systemanim"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string/jumbo v4, "theme_packagename"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, packageName:Ljava/lang/String;
    const-string v4, "SystemAnimService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: packageName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v4, p0, Lcom/lenovo/systemanim/SystemAnimService$1;->this$0:Lcom/lenovo/systemanim/SystemAnimService;

    invoke-virtual {v4, v1}, Lcom/lenovo/systemanim/SystemAnimService;->setSystemAnim(Ljava/lang/String;)Z

    move-result v2

    .line 71
    .local v2, result:Z
    new-instance v3, Landroid/content/Intent;

    const-string v4, "action.systemanim.appling"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, resultIntent:Landroid/content/Intent;
    const-string/jumbo v4, "theme_value"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v4, "theme_change_result"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v4, "SystemAnimService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #result:Z
    .end local v3           #resultIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 80
    .restart local v1       #packageName:Ljava/lang/String;
    const-string v4, "SystemAnimService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive delect: packageName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/lenovo/systemanim/SystemAnimService$1;->this$0:Lcom/lenovo/systemanim/SystemAnimService;

    #getter for: Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/systemanim/SystemAnimService;->access$000(Lcom/lenovo/systemanim/SystemAnimService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/lenovo/systemanim/SystemAnimService$1;->this$0:Lcom/lenovo/systemanim/SystemAnimService;

    const-string v5, "com.lenovo.systemanim.theme.def"

    invoke-virtual {v4, v5}, Lcom/lenovo/systemanim/SystemAnimService;->setSystemAnim(Ljava/lang/String;)Z

    goto :goto_0
.end method
