.class public Lcom/lenovo/lightsettings/reflect/SystemManggerEx;
.super Lcom/lenovo/lightsettings/reflect/ReflectClass;
.source "SystemManggerEx.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "paramString"

    .prologue
    .line 6
    const-string v0, "android.os.ServiceManager"

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9
    const-string v0, "getService"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/lightsettings/reflect/SystemManggerEx;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
