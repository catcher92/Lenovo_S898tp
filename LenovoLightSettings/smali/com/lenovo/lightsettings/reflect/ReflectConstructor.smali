.class public Lcom/lenovo/lightsettings/reflect/ReflectConstructor;
.super Ljava/lang/Object;
.source "ReflectConstructor.java"


# instance fields
.field private methodInvokeParams:[Ljava/lang/Object;

.field private methodOwner:Lcom/lenovo/lightsettings/reflect/ReflectClass;

.field private realConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Lcom/lenovo/lightsettings/reflect/ReflectClass;Ljava/lang/reflect/Constructor;)V
    .locals 1
    .parameter "paramReflectClass"
    .parameter "paramConstructor"

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectConstructor;->methodInvokeParams:[Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectConstructor;->methodOwner:Lcom/lenovo/lightsettings/reflect/ReflectClass;

    .line 10
    iput-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectConstructor;->realConstructor:Ljava/lang/reflect/Constructor;

    .line 14
    iput-object p1, p0, Lcom/lenovo/lightsettings/reflect/ReflectConstructor;->methodOwner:Lcom/lenovo/lightsettings/reflect/ReflectClass;

    .line 15
    iput-object p2, p0, Lcom/lenovo/lightsettings/reflect/ReflectConstructor;->realConstructor:Ljava/lang/reflect/Constructor;

    .line 16
    return-void
.end method


# virtual methods
.method public setInvokeParams([Ljava/lang/Object;)Lcom/lenovo/lightsettings/reflect/ReflectConstructor;
    .locals 0
    .parameter "paramArrayOfObject"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/lightsettings/reflect/ReflectConstructor;->methodInvokeParams:[Ljava/lang/Object;

    .line 22
    return-object p0
.end method
