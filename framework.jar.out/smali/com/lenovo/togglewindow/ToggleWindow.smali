.class public Lcom/lenovo/togglewindow/ToggleWindow;
.super Ljava/lang/Object;
.source "ToggleWindow.java"


# static fields
.field public static final FEATURE_ENABLE_TOGGLE_WINDOW:Ljava/lang/String; = "com.lenovo.togglewindow.enable"

.field public static final TOGGLE_WINDOW:Ljava/lang/String; = "toggle_window"

.field public static final TOGGLE_WINDOW_DEFAULT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 35
    const/4 v1, 0x1

    .line 38
    .local v1, value:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "toggle_window"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    :goto_0
    if-lez v1, :cond_0

    :goto_1
    return v2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "toggle_window"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lenovo.togglewindow.enable"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
