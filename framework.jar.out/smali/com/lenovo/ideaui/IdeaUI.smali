.class public Lcom/lenovo/ideaui/IdeaUI;
.super Ljava/lang/Object;
.source "IdeaUI.java"


# static fields
.field public static final PLATFORM_IDEAUI_VERSION_KEY:Ljava/lang/String; = "sys.lenovo.ideaui.version.sdk"

.field private static mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

.field private static final sPlatform_ideaui_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "sys.lenovo.ideaui.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/ideaui/IdeaUI;->sPlatform_ideaui_version:I

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDataFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 113
    .local v1, theme:Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v0, out:Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 120
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFloatFromAttribute(Landroid/content/Context;I)F
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 95
    .local v1, theme:Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 97
    .local v0, out:Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 102
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getResFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 77
    .local v1, theme:Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .local v0, out:Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 84
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;
    .locals 2

    .prologue
    .line 128
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    .line 135
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 132
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "system_theme"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    sput-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    .line 135
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    goto :goto_0
.end method

.method public static isIdeaUITheme(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 32
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 36
    .local v1, typedValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 39
    .local v0, theme:Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_0

    const/high16 v4, 0x301

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 43
    .local v2, version:I
    if-lez v2, :cond_0

    .line 48
    .end local v2           #version:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPlatfromSupportIdeaUI()Z
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/lenovo/ideaui/IdeaUI;->sPlatform_ideaui_version:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportNonIdeaUITheme()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
