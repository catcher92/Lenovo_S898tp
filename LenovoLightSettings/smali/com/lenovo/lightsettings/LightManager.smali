.class public Lcom/lenovo/lightsettings/LightManager;
.super Ljava/lang/Object;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lightsettings/LightManager$MainHandler;
    }
.end annotation


# static fields
.field private static final CHIP_TIMER_START:I = 0x1

.field private static final CHIP_TIMER_SUPPORT:Z = true

.field private static final DBG:Z = true

.field private static final LIGHT_BREATH:I = -0x1

.field private static final LIGHT_CLOSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LightSettings-lmanger"

.field public static final WAKE_LOCK_SHORT_DURATION:I = 0xfa0

.field public static bIsCharging:Z

.field public static mBatteryLevel:I

.field static mContext:Landroid/content/Context;

.field static mLightHandler:Landroid/os/Handler;

.field static mLightOnstatus:I

.field public static mLightStatus:I

.field public static mMissCall:I

.field public static mOtherNotion:Z

.field public static mUnreadMMS:I

.field public static mUnreadSMS:I


# instance fields
.field private mLightServiceHandler:Landroid/os/Handler;

.field final mMainHandler:Lcom/lenovo/lightsettings/LightManager$MainHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput v1, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    .line 25
    sput v1, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    .line 26
    sput v1, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    .line 27
    const/16 v0, 0x32

    sput v0, Lcom/lenovo/lightsettings/LightManager;->mBatteryLevel:I

    .line 28
    sput-boolean v1, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    .line 29
    sput v1, Lcom/lenovo/lightsettings/LightManager;->mLightStatus:I

    .line 38
    sput-boolean v1, Lcom/lenovo/lightsettings/LightManager;->mOtherNotion:Z

    .line 136
    sput v1, Lcom/lenovo/lightsettings/LightManager;->mLightOnstatus:I

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/lenovo/lightsettings/LightManager;->mLightHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/lenovo/lightsettings/LightManager$MainHandler;

    invoke-direct {v0, p0}, Lcom/lenovo/lightsettings/LightManager$MainHandler;-><init>(Lcom/lenovo/lightsettings/LightManager;)V

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightManager;->mMainHandler:Lcom/lenovo/lightsettings/LightManager$MainHandler;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightManager;->mLightServiceHandler:Landroid/os/Handler;

    .line 159
    sput-object p1, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/lenovo/lightsettings/LightManager;->mLightServiceHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method static final setGreenLed(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 140
    sput p0, Lcom/lenovo/lightsettings/LightManager;->mLightStatus:I

    .line 141
    invoke-static {p0}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed_onTimer(I)V

    .line 142
    const-string v0, "LightSettings-lmanger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGreenLed() CALLED----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method static final setGreenLed_onTimer(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 148
    :try_start_0
    new-instance v1, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;

    invoke-direct {v1}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;-><init>()V

    .line 149
    .local v1, pmex:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;
    sget-object v2, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->setRealObject(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v1, p0}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->setGreenLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1           #pmex:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static final update_light_status()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 107
    const-string v3, "LightSettings-lmanger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_light_status();;mMissCall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mUnreadMMS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mUnreadSMS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lenovo/lightsettings/LightManager;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bIsCharging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/lenovo/lightsettings/LightManager;->bIsCharging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/lenovo/lightsettings/LightManager;->mOtherNotion:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 134
    .local v0, bMisscall:I
    .local v1, bUnreadMsg:I
    .local v2, otherAppNotion:I
    :goto_0
    return-void

    .line 114
    .end local v0           #bMisscall:I
    .end local v1           #bUnreadMsg:I
    .end local v2           #otherAppNotion:I
    :cond_0
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v4, "Misscall"

    const-string v5, "switch"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    .restart local v0       #bMisscall:I
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v4, "UnreadMsg"

    const-string v5, "switch"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 118
    .restart local v1       #bUnreadMsg:I
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v4, "ohter_notio"

    const-string v5, "switch"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 120
    .restart local v2       #otherAppNotion:I
    if-lez v0, :cond_1

    sget v3, Lcom/lenovo/lightsettings/LightManager;->mMissCall:I

    if-lez v3, :cond_1

    .line 121
    const-string v3, "LightThread_"

    const-string v4, "mLightHandler.postDelayed(7)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v4, "miss_call_key"

    const-string v5, "switch"

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed(I)V

    goto :goto_0

    .line 123
    :cond_1
    if-lez v1, :cond_2

    sget v3, Lcom/lenovo/lightsettings/LightManager;->mUnreadMMS:I

    sget v4, Lcom/lenovo/lightsettings/LightManager;->mUnreadSMS:I

    add-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 124
    const-string v3, "LightThread_"

    const-string v4, "mLightHandler.postDelayed(4)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v4, "miss_sms_key"

    const-string v5, "switch"

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed(I)V

    goto :goto_0

    .line 126
    :cond_2
    if-lez v2, :cond_3

    sget-boolean v3, Lcom/lenovo/lightsettings/LightManager;->mOtherNotion:Z

    if-eqz v3, :cond_3

    .line 127
    const-string v3, "LightSettings"

    const-string v4, "has ohtehr notion in lightapk"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v3, Lcom/lenovo/lightsettings/LightManager;->mContext:Landroid/content/Context;

    const-string v4, "miss_other_key"

    const-string v5, "switch"

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed(I)V

    goto :goto_0

    .line 131
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/lenovo/lightsettings/LightManager;->setGreenLed(I)V

    goto :goto_0
.end method
