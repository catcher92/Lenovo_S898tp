.class Lcom/lenovo/lightsettings/LightManager$MainHandler;
.super Landroid/os/Handler;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lightsettings/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_BATTERY_FULL:I = 0x6

.field static final MSG_INCOMING_CALL:I = 0x4

.field static final MSG_INCOMING_CALL_END:I = 0xb

.field static final MSG_MISSING_CALL:I = 0x2

.field static final MSG_MSG_UNREAD:I = 0x3

.field static final MSG_NO_UNREAD_CALL:I = 0x8

.field static final MSG_NO_UNREAD_MMS:I = 0x7

.field static final MSG_UPDATE_STATUS:I = 0x1

.field static final MSG_USB_STATUS:I = 0x5


# instance fields
.field private final FLAG_LED_GREEN_FLASH_FAST:I

.field private final FLAG_LED_OFF:I

.field private final FLAG_LED_RED_ON:I

.field final synthetic this$0:Lcom/lenovo/lightsettings/LightManager;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightManager;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightManager$MainHandler;->this$0:Lcom/lenovo/lightsettings/LightManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lightsettings/LightManager$MainHandler;->FLAG_LED_OFF:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/lightsettings/LightManager$MainHandler;->FLAG_LED_RED_ON:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/lightsettings/LightManager$MainHandler;->FLAG_LED_GREEN_FLASH_FAST:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    const-string v0, "LightSettings-lmanger"

    const-string v1, "MSG_INCOMING_CALL..true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed(I)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "LightSettings-lmanger"

    const-string v1, "MSG_INCOMING_CALL_END..false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed(I)V

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-static {}, Lcom/lenovo/lightsettings/LightManager;->update_light_status()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
