.class public Lcom/lenovo/lightsettings/reflect/PowerMangerEx;
.super Lcom/lenovo/lightsettings/reflect/ReflectClass;
.source "PowerMangerEx.java"


# static fields
.field private static staticInstance:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;

    invoke-direct {v0}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;-><init>()V

    sput-object v0, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->staticInstance:Lcom/lenovo/lightsettings/reflect/PowerMangerEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "android.os.PowerManager"

    invoke-direct {p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getSupportLedTypeByProject()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16
    :try_start_0
    const-string v2, "getSupportLedTypeByProject"

    const/4 v3, 0x0

    const-class v4, Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-object v0

    .line 18
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 20
    goto :goto_0
.end method

.method public setGreenLight(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 24
    const-string v0, "setGreenLight"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/lightsettings/reflect/PowerMangerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
