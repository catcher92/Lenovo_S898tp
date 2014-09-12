.class public Lcom/lenovo/launchericontheme/LaunchIconThemeResource;
.super Ljava/lang/Object;
.source "LaunchIconThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field public static final SUPPORT_LAUNCHICON_THEME:Z = true

.field private static final TAG:Ljava/lang/String; = "LaunchIconThemeResource"

.field public static final sDEFAULT_THEME:Ljava/lang/String; = ">DEFAULT THEME"

.field public static final sDEFAULT_THEME_NAME:Ljava/lang/String; = "com.lenovo.launcher.theme.age"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopThemeObserver:Landroid/database/ContentObserver;

.field private mHandlerthread:Landroid/os/HandlerThread;

.field mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

.field mLock:Ljava/lang/Object;

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    .line 57
    const-string v2, "LaunchIconThemeService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    .line 58
    invoke-direct {p0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->readyDesktopThemeObserver()V

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lenovo_desktop_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lenovo_desktop_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, themePackageName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->setSystemTheme(Ljava/lang/String;)V

    .line 72
    .end local v1           #themePackageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LaunchIconThemeResource has null exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private readyDesktopThemeObserver()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LaunchIconThemeResource"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mHandlerthread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mDesktopThemeObserver:Landroid/database/ContentObserver;

    .line 86
    return-void
.end method


# virtual methods
.method createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .parameter "themePackageName"

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 131
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    :cond_0
    :goto_0
    return-object v2

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResourcesForApplication failed, packagename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, ret:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 154
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    if-nez v5, :cond_1

    .line 155
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    return-object v3

    .line 159
    :cond_1
    const/4 v2, 0x0

    .line 163
    .local v2, themeIconID:I
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLaunchIconThemeService:Lcom/lenovo/launchericontheme/ILaunchIconThemeService;

    invoke-interface {v5, p1, p2}, Lcom/lenovo/launchericontheme/ILaunchIconThemeService;->getDrawableIconIDFromThemePackage(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 171
    :goto_1
    if-nez v2, :cond_2

    .line 172
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .line 184
    .end local v2           #themeIconID:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 165
    .restart local v2       #themeIconID:I
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "LaunchIconThemeResource"

    const-string v6, "getDrawableIconIDFromThemePackage failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    const/4 v2, 0x0

    goto :goto_1

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 183
    :goto_2
    :try_start_5
    monitor-exit v4

    move-object v3, v1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 180
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "LaunchIconThemeResource"

    const-string v5, "getDrawable failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    const/4 v1, 0x0

    goto :goto_2
.end method

.method setSystemTheme(Ljava/lang/String;)V
    .locals 4
    .parameter "themePackageName"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 98
    :cond_1
    monitor-exit v1

    .line 125
    :goto_0
    return-void

    .line 101
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p1, :cond_6

    const-string v0, ">DEFAULT THEME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    :cond_3
    const-string v0, "com.lenovo.launcher.theme.age"

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 112
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 124
    :cond_5
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_6
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_7
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 120
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-nez v0, :cond_5

    .line 121
    const-string v0, "LaunchIconThemeResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to createThemeResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
