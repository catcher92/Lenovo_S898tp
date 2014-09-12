.class public Lcom/lenovo/lightsettings/reflect/IntentEx;
.super Lcom/lenovo/lightsettings/reflect/ReflectClass;
.source "IntentEx.java"


# static fields
.field private static staticInstance:Lcom/lenovo/lightsettings/reflect/IntentEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/lenovo/lightsettings/reflect/IntentEx;

    invoke-direct {v0}, Lcom/lenovo/lightsettings/reflect/IntentEx;-><init>()V

    sput-object v0, Lcom/lenovo/lightsettings/reflect/IntentEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/IntentEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static getConstantInt(Ljava/lang/String;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/lightsettings/reflect/IntentEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/IntentEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/IntentEx;->getConstInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getConstantString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/lightsettings/reflect/IntentEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/IntentEx;

    invoke-virtual {v0, p0}, Lcom/lenovo/lightsettings/reflect/IntentEx;->getConstString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
