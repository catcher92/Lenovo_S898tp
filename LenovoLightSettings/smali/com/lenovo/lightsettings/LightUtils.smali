.class public Lcom/lenovo/lightsettings/LightUtils;
.super Ljava/lang/Object;
.source "LightUtils.java"


# static fields
.field public static final ACTION_ALRM_LIGHT:Ljava/lang/String; = "lightservice_alarm"

.field public static final ACTION_BOOT_COMPLETE_ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_FOR_OTHER_LIGHT:Ljava/lang/String; = "com.leonovo.light.OTHER"

.field public static final ACTION_IPO_POWER_OFF:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lightsettings.lightprovider"

.field public static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field public static final COLOR_BLUE:I = 0x8

.field public static final COLOR_CYAN:I = 0x80

.field public static final COLOR_GREEN:I = 0x40

.field public static final COLOR_PURPLE:I = 0x200

.field public static final COLOR_RED:I = 0x10

.field public static final COLOR_WHITE:I = 0x100

.field public static final COLOR_YELLOW:I = 0x20

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lightsettings.lightprovider/lightsettings"

.field public static final HANDLE_LIGHT_BATTERY_LOW:I = 0x9

.field public static final HANDLE_LIGHT_CHARGE_FULL:I = 0x4

.field public static final HANDLE_LIGHT_CHARGING:I = 0xa

.field public static final HANDLE_LIGHT_INCOMING_CALL:I = 0x1

.field public static final HANDLE_LIGHT_INCOMING_CALL_END:I = 0x5

.field public static final HANDLE_LIGHT_MISSING_CALL:I = 0x3

.field public static final HANDLE_LIGHT_NO_MISSING_CALL:I = 0x7

.field public static final HANDLE_LIGTH_NO_UNREAD_MMS:I = 0x6

.field public static final HANDLE_LIGTH_UNREAD_MMS:I = 0x2

.field public static final HANDLE_USB_STATUS:I = 0x8

.field public static final IS_FIRST_RUN:Ljava/lang/String; = "first_run"

.field public static final KEYS_DATABASE:[Ljava/lang/String; = null

.field public static final KEY_APPOTHER_SWITCH:Ljava/lang/String; = "light_switch_otherapp"

.field public static final KEY_BREATH:Ljava/lang/String; = "breath"

.field public static final KEY_BREATH_SETTINGS:Ljava/lang/String; = "breath_cylce_settings"

.field public static final KEY_BREATH_SETTINGS_CATEGORY:Ljava/lang/String; = "breath_cylce_settings_category"

.field public static final KEY_CHARGING_SWITCH:Ljava/lang/String; = "light_switch_charging"

.field public static final KEY_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_COMING_CALL_COLOR:Ljava/lang/String; = "light_color_coming_call"

.field public static final KEY_COMING_CALL_SWITCH:Ljava/lang/String; = "light_switch_coming_call"

.field public static final KEY_DATABASE_BROWSE:Ljava/lang/String; = "Browse"

.field public static final KEY_DATABASE_COMINGCALL:Ljava/lang/String; = "IncomingCall"

.field public static final KEY_DATABASE_LOWBATTERY:Ljava/lang/String; = "LowBattery"

.field public static final KEY_DATABASE_MISSCALL:Ljava/lang/String; = "Misscall"

.field public static final KEY_DATABASE_MUSIC:Ljava/lang/String; = "MusicPlaying"

.field public static final KEY_DATABASE_ONCHARGING:Ljava/lang/String; = "OnChanaging"

.field public static final KEY_DATABASE_OTHER_NOTIO:Ljava/lang/String; = "ohter_notio"

.field public static final KEY_DATABASE_POWERONOFF:Ljava/lang/String; = "PowerOnOff"

.field public static final KEY_DATABASE_QQWEIBO:Ljava/lang/String; = "QQWeiBoMsg"

.field public static final KEY_DATABASE_SCREENOFF:Ljava/lang/String; = "ScreenOff"

.field public static final KEY_DATABASE_SCREENON:Ljava/lang/String; = "ScreenOn"

.field public static final KEY_DATABASE_SHOW:Ljava/lang/String; = "Show"

.field public static final KEY_DATABASE_SINAWEIBO:Ljava/lang/String; = "SinaWeiBoMsg"

.field public static final KEY_DATABASE_UNREADMSG:Ljava/lang/String; = "UnreadMsg"

.field public static final KEY_FITSOUND:Ljava/lang/String; = "fitsound"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_LIGHT_DISPLAY_SWITCH:Ljava/lang/String; = "light_switch_display"

.field public static final KEY_LOW_BATTERY_SWITCH:Ljava/lang/String; = "light_switch_lowbattery"

.field public static final KEY_MISSCALL_BREATH_SETTINGS:Ljava/lang/String; = "miss_call_breath_cylce_settings"

.field public static final KEY_MISS_CALL_COLOR:Ljava/lang/String; = "light_color_miss_call"

.field public static final KEY_MISS_CALL_SWITCH:Ljava/lang/String; = "light_switch_miss_call"

.field public static final KEY_MUSIC_COLOR:Ljava/lang/String; = "light_color_music"

.field public static final KEY_MUSIC_SWITCH:Ljava/lang/String; = "light_switch_music"

.field public static final KEY_POWER_ON_OFF_SWITCH:Ljava/lang/String; = "light_switch_poweronff"

.field public static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final KEY_QQWEIBO_NOTIFY_COLOR:Ljava/lang/String; = "light_color_qqweibo_notify"

.field public static final KEY_QQWEIBO_NOTIFY_SWITCH:Ljava/lang/String; = "light_switch_qqweibo_notify"

.field public static final KEY_SCREEN_OFF_COLOR:Ljava/lang/String; = "light_color_screen_off"

.field public static final KEY_SCREEN_OFF_SWITCH:Ljava/lang/String; = "light_switch_screen_off"

.field public static final KEY_SCREEN_ON_COLOR:Ljava/lang/String; = "light_color_screen_on"

.field public static final KEY_SCREEN_ON_SWITCH:Ljava/lang/String; = "light_switch_screen_on"

.field public static final KEY_SINAWEIBO_NOTIFY_COLOR:Ljava/lang/String; = "light_color_sinaweibo_notify"

.field public static final KEY_SINAWEIBO_NOTIFY_SWITCH:Ljava/lang/String; = "light_switch_sinaweibo_notify"

.field public static final KEY_SWITCH:Ljava/lang/String; = "switch"

.field public static final KEY_SWITCH_CATEGORY:Ljava/lang/String; = "light_switch_settings_category"

.field public static final KEY_UNREAD_MESSAGE_BREATH_SETTINGS:Ljava/lang/String; = "unread_message_breath_cylce_settings"

.field public static final KEY_UNREAD_MSG_COLOR:Ljava/lang/String; = "light_color_unread_msg"

.field public static final KEY_UNREAD_MSG_SWITCH:Ljava/lang/String; = "light_switch_unread_msg"

.field public static final LIGHT_POSION_BOTTOM:I = 0x10000

.field public static final LIGHT_POSION_TOP:I = 0x8000

.field public static final LIGHT_POSTION:Ljava/lang/String; = "light_position"

.field public static final LIGHT_SUPPORT_OTHER:Ljava/lang/String; = "support_other"

.field public static final LIGHT_SUPPORT_OTHER_VALUE:I = 0x20000

.field public static final LIGHT_TYPE:Ljava/lang/String; = "light_type"

.field public static final LIGHT_TYPE_VALUE_3_COLOR:I = 0x4

.field public static final LIGHT_TYPE_VALUE_AUTO:I = 0x2

.field public static final LIGHT_TYPE_VALUE_GPIO:I = 0x1

.field public static final MESSAGE_TYPE_NOTIFICATION_IND:I = 0x82

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field public static final MIME_DIR_PREFIX:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final MIME_ITEM_PREFIX:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final MINE_ITEM_LIGHTSETTINGS:Ljava/lang/String; = "vnd.lenovo.lightsettings"

.field public static final MINE_TYPE_LIGHTSETTINGS:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lenovo.lightsettings"

.field public static final MISS_CALL_LED_COLOR_KEY:Ljava/lang/String; = "miss_call_key"

.field public static final MISS_OTHER_LED_COLOR_KEY:Ljava/lang/String; = "miss_other_key"

.field public static final MISS_SMS_LED_COLOR_KEY:Ljava/lang/String; = "miss_sms_key"

.field public static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field public static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = null

.field public static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = null

.field public static final PATH:Ljava/lang/String; = "lightsettings/*"

.field public static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field public static final POWERON_ACTION:Ljava/lang/String; = "com.lenovo.poweron.action"

.field public static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field public static final SUPPORT_COMEING_CALL:Ljava/lang/String; = "support_call_coming"

.field public static final SUPPORT_COMEING_CALL_VALUE:I = 0x400

.field public static final SUPPORT_LIGHT_DEMO:Ljava/lang/String; = "support_light_demo"

.field public static final SUPPORT_LIGHT_DEMO_VALUE:I = 0x4000

.field public static final SUPPORT_LOW_BATTERY:Ljava/lang/String; = "support_low_battery"

.field public static final SUPPORT_LOW_BATTERY_VALUE:I = 0x2000

.field public static final SUPPORT_MISS_CALL:Ljava/lang/String; = "support_miss_call"

.field public static final SUPPORT_MISS_CALL_VALUE:I = 0x800

.field public static final SUPPORT_MISS_SMS:Ljava/lang/String; = "support_miss_sms"

.field public static final SUPPORT_MISS_SMS_VALUE:I = 0x1000

.field public static final TAG:Ljava/lang/String; = "LightSettings-luti"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IncomingCall"

    aput-object v1, v0, v3

    const-string v1, "Show"

    aput-object v1, v0, v4

    const-string v1, "Browse"

    aput-object v1, v0, v5

    const-string v1, "Misscall"

    aput-object v1, v0, v6

    const-string v1, "UnreadMsg"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SinaWeiBoMsg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "QQWeiBoMsg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MusicPlaying"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ScreenOn"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ScreenOff"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "OnChanaging"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LowBattery"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PowerOnOff"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->KEYS_DATABASE:[Ljava/lang/String;

    .line 91
    const-string v0, "content://com.lenovo.lightsettings.lightprovider/lightsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "THREAD_ID"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "DATE"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "_ID"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "SUBJECT"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "SUBJECT_CHARSET"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "THREAD_ID"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "DATE"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "ADDRESS"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "SUBJECT"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "BODY"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MESSAGE_BOX"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MESSAGE_BOX_INBOX"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SEEN"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MESSAGE_TYPE"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MESSAGE_TYPE"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MESSAGE_TYPE_INBOX"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SEEN"

    invoke-static {v1}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String;

    .line 144
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/lightsettings/LightUtils;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 228
    const-string v0, "light_switch_coming_call"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "light_color_coming_call"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const-string v0, "IncomingCall"

    .line 260
    :goto_0
    return-object v0

    .line 231
    :cond_1
    const-string v0, "light_switch_miss_call"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "light_color_miss_call"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    :cond_2
    const-string v0, "Misscall"

    goto :goto_0

    .line 234
    :cond_3
    const-string v0, "light_switch_unread_msg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "light_color_unread_msg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    :cond_4
    const-string v0, "UnreadMsg"

    goto :goto_0

    .line 237
    :cond_5
    const-string v0, "light_switch_sinaweibo_notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "light_color_sinaweibo_notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    :cond_6
    const-string v0, "SinaWeiBoMsg"

    goto :goto_0

    .line 240
    :cond_7
    const-string v0, "light_switch_qqweibo_notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "light_color_qqweibo_notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    :cond_8
    const-string v0, "QQWeiBoMsg"

    goto :goto_0

    .line 243
    :cond_9
    const-string v0, "light_switch_music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "light_color_music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    :cond_a
    const-string v0, "MusicPlaying"

    goto :goto_0

    .line 245
    :cond_b
    const-string v0, "light_switch_screen_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "light_color_screen_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 247
    :cond_c
    const-string v0, "ScreenOn"

    goto :goto_0

    .line 248
    :cond_d
    const-string v0, "light_switch_screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "light_color_screen_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 250
    :cond_e
    const-string v0, "ScreenOff"

    goto/16 :goto_0

    .line 251
    :cond_f
    const-string v0, "light_switch_charging"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    const-string v0, "OnChanaging"

    goto/16 :goto_0

    .line 253
    :cond_10
    const-string v0, "light_switch_poweronff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 254
    const-string v0, "PowerOnOff"

    goto/16 :goto_0

    .line 255
    :cond_11
    const-string v0, "light_switch_lowbattery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 256
    const-string v0, "LowBattery"

    goto/16 :goto_0

    .line 257
    :cond_12
    const-string v0, "light_switch_otherapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 258
    const-string v0, "ohter_notio"

    goto/16 :goto_0

    .line 260
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static initSuportValue(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/16 v10, 0x1000

    const/16 v9, 0x800

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 264
    const-string v4, "first_run"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, first_run:I
    if-ne v0, v6, :cond_0

    .line 266
    const-string v4, "is fistrt run ,init par"

    invoke-static {v4}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 267
    new-instance v3, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;

    invoke-direct {v3}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;-><init>()V

    .line 268
    .local v3, pmex:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->setRealObject(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v3}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->getSupportLedTypeByProject()Ljava/util/HashMap;

    move-result-object v2

    .line 270
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_d

    .line 272
    const-string v4, "support_type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 273
    const-string v4, "support_type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 274
    .local v1, flag:I
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_1

    .line 275
    const-string v4, "support_call_coming"

    const-string v5, "switch"

    const/16 v6, 0x400

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    const-string v4, "support coming call------------>"

    invoke-static {v4}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 282
    :goto_0
    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_2

    .line 283
    const-string v4, "support_miss_call"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v9}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    const-string v4, "support miss call------------>"

    invoke-static {v4}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 291
    :goto_1
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_3

    .line 292
    const-string v4, "support_miss_sms"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v10}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    const-string v4, "support sms call------------>"

    invoke-static {v4}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 300
    :goto_2
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_4

    .line 301
    const-string v4, "support_low_battery"

    const-string v5, "switch"

    const/16 v6, 0x2000

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    const-string v4, "support low call------------>"

    invoke-static {v4}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 309
    :goto_3
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_5

    .line 310
    const-string v4, "support demo call------------>"

    invoke-static {v4}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 311
    const-string v4, "support_light_demo"

    const-string v5, "switch"

    const/16 v6, 0x4000

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    :goto_4
    const/high16 v4, 0x1

    and-int/2addr v4, v1

    if-eqz v4, :cond_6

    .line 318
    const-string v4, "light_position"

    const-string v5, "switch"

    const/high16 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    :goto_5
    const/high16 v4, 0x2

    and-int/2addr v4, v1

    if-eqz v4, :cond_7

    .line 324
    const-string v4, "support_other"

    const-string v5, "switch"

    const/high16 v6, 0x2

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    .end local v1           #flag:I
    :goto_6
    const-string v4, "led_type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 339
    const-string v5, "light_type"

    const-string v6, "switch"

    const-string v4, "led_type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v5, v6, v4}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    :goto_7
    const-string v4, "miss_call"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 348
    const-string v5, "miss_call_key"

    const-string v6, "switch"

    const-string v4, "miss_call"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v5, v6, v4}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    :goto_8
    const-string v4, "miss_sms"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 358
    const-string v5, "miss_sms_key"

    const-string v6, "switch"

    const-string v4, "miss_sms"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v5, v6, v4}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    :goto_9
    const-string v4, "miss_other"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 366
    const-string v5, "miss_other_key"

    const-string v6, "switch"

    const-string v4, "miss_other"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v5, v6, v4}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    :goto_a
    const-string v4, "first_run"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #pmex:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;
    :cond_0
    return-void

    .line 279
    .restart local v1       #flag:I
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3       #pmex:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;
    :cond_1
    const-string v4, "support_call_coming"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 287
    :cond_2
    const-string v4, "support_miss_call"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 296
    :cond_3
    const-string v4, "support_miss_call"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 305
    :cond_4
    const-string v4, "support_low_battery"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 314
    :cond_5
    const-string v4, "support_light_demo"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 320
    :cond_6
    const-string v4, "light_position"

    const-string v5, "switch"

    const v6, 0x8000

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 327
    :cond_7
    const-string v4, "support_other"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 331
    .end local v1           #flag:I
    :cond_8
    const-string v4, "support_miss_call"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v10}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    const-string v4, "support_miss_sms"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v9}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    const-string v4, "support_other"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 343
    :cond_9
    const-string v4, "light_type"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 352
    :cond_a
    const-string v4, "miss_call_key"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 361
    :cond_b
    const-string v4, "miss_sms_key"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 369
    :cond_c
    const-string v4, "miss_other_key"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 373
    :cond_d
    const-string v4, "support_miss_call"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v10}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    const-string v4, "support_miss_sms"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v9}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    const-string v4, "support_other"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v7}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    const-string v4, "miss_other_key"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    const-string v4, "miss_sms_key"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    const-string v4, "miss_call_key"

    const-string v5, "switch"

    invoke-static {p0, v4, v5, v8}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 416
    const-string v0, "LightSettings-luti"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method public static query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "profileKey"
    .parameter "key"

    .prologue
    .line 403
    const-string v1, "switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 405
    .local v0, ges_info:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "profileKey"
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 391
    const-string v1, "switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    .local v0, ges_info:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "profileKey"
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 410
    const-string v1, "switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, ges_info:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    return-void
.end method
