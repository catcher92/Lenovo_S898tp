.class public Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;
.super Lcom/lenovo/lightsettings/reflect/ReflectClass;
.source "TelephonyCallerInfoEx.java"


# static fields
.field private static staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;

    invoke-direct {v0}, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;-><init>()V

    sput-object v0, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "com.android.internal.telephony.CallerInfo"

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static getConstantInt(Ljava/lang/String;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;->getConstInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getConstantString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 14
    sget-object v0, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/TelephonyCallerInfoEx;->getConstString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
