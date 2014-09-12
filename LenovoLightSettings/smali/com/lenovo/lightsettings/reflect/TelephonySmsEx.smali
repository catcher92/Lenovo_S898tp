.class public Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;
.super Lcom/lenovo/lightsettings/reflect/ReflectClass;
.source "TelephonySmsEx.java"


# static fields
.field private static staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;

    invoke-direct {v0}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;-><init>()V

    sput-object v0, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "android.provider.Telephony$Sms"

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static getConstantInt(Ljava/lang/String;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getConstantString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 16
    sget-object v0, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConstantUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "field"

    .prologue
    .line 25
    :try_start_0
    sget-object v1, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;

    invoke-virtual {v1, p0}, Lcom/lenovo/lightsettings/reflect/TelephonySmsEx;->getConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    const/4 v1, 0x0

    goto :goto_0
.end method
