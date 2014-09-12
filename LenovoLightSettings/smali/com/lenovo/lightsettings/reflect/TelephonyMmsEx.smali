.class public Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;
.super Lcom/lenovo/lightsettings/reflect/ReflectClass;
.source "TelephonyMmsEx.java"


# static fields
.field private static staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;

    invoke-direct {v0}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;-><init>()V

    sput-object v0, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "android.provider.Telephony$Mms"

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static getConstantInt(Ljava/lang/String;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getConstantString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 14
    sget-object v0, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/TelephonyMmsEx;->getConstString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
