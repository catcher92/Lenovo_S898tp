.class public Lcom/lenovo/lightsettings/reflect/ReflectMethod;
.super Ljava/lang/Object;
.source "ReflectMethod.java"


# instance fields
.field private methodInvokeParams:[Ljava/lang/Object;

.field private methodOwner:Lcom/lenovo/lightsettings/reflect/ReflectClass;

.field private realMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/lenovo/lightsettings/reflect/ReflectClass;Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "paramReflectClass"
    .parameter "paramMethod"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->methodInvokeParams:[Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->methodOwner:Lcom/lenovo/lightsettings/reflect/ReflectClass;

    .line 11
    iput-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->realMethod:Ljava/lang/reflect/Method;

    .line 15
    iput-object p1, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->methodOwner:Lcom/lenovo/lightsettings/reflect/ReflectClass;

    .line 16
    iput-object p2, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->realMethod:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method


# virtual methods
.method public getMess()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->realMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "paramObject"
    .parameter "paramClass"

    .prologue
    const/4 v1, 0x0

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->realMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->realMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->methodInvokeParams:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v2, "reflect"

    const-string v3, "\u00fb\ufffd\ufffd\ufffd\u04b5\ufffd\ufffd\ufffd\ufffd\ufffd--"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, localException:Ljava/lang/Exception;
    const-string v2, "\ufffd\ufffd\ufffd\ufde2\ufffd\ufffd\ufffd\u02f4\ufffd\ufffd\ufffd"

    const-string v3, "reflectMethod--invoke"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setInvokeParams([Ljava/lang/Object;)Lcom/lenovo/lightsettings/reflect/ReflectMethod;
    .locals 0
    .parameter "paramArrayOfObject"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->methodInvokeParams:[Ljava/lang/Object;

    .line 45
    return-object p0
.end method
