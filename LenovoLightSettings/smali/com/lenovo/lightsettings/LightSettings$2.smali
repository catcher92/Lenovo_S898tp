.class Lcom/lenovo/lightsettings/LightSettings$2;
.super Ljava/lang/Object;
.source "LightSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lightsettings/LightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lightsettings/LightSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightSettings$2;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    sget-boolean v0, Lcom/lenovo/lightsettings/LightSettings;->bStop:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/lenovo/lightsettings/LightManager;->update_light_status()V

    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    sget v0, Lcom/lenovo/lightsettings/LightSettings;->mCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 222
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/lightsettings/LightSettings;->mCount:I

    .line 224
    :cond_1
    sget v0, Lcom/lenovo/lightsettings/LightSettings;->mCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/lightsettings/LightSettings;->mCount:I

    rem-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed_onTimer(I)V

    .line 225
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightSettings$2;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    iget-object v0, v0, Lcom/lenovo/lightsettings/LightSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
