.class public Lcom/lenovo/systemanim/SystemAnimConfiguration;
.super Ljava/lang/Object;
.source "SystemAnimConfiguration.java"


# static fields
.field public static final LENOVO_DEFAULT_ANIM_THEME_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.systemanim.theme.def"

.field public static final PERISIST_SYSTEM_ANIM_PACKAGENAME:Ljava/lang/String; = "persist.sys.anim.package"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemAnimPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v1, "persist.sys.anim.package"

    const-string v2, "com.lenovo.systemanim.theme.def"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static setSystemAnimPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 27
    const-string/jumbo v0, "persist.sys.anim.package"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
