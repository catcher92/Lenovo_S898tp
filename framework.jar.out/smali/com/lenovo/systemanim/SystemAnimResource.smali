.class public Lcom/lenovo/systemanim/SystemAnimResource;
.super Ljava/lang/Object;
.source "SystemAnimResource.java"


# static fields
.field private static final DBG:Z = true

.field public static final FRAMEWORK_ANIM_STRAT_ID:I = 0x10a0000

.field public static final FRAMEWORK_RESOURCE_ID_BEGIN:I = 0x1000000

.field public static final FRAMEWORK_RESOURCE_ID_END:I = 0x1ffffff

.field public static final LENOVO_ANIM_START_ID:I = 0x3050000

.field public static final LENOVO_RESOURCE_ID_BEGIN:I = 0x3000000

.field public static final LENOVO_RESOURCE_ID_END:I = 0x3ffffff

.field public static final MAX_LENOVO_RESOUCE_ID_COUNT:I = 0x320

.field public static final SUPPORT_SYSTEM_ANIM:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemAnimResource"

.field public static final THEME_ANIM_RESOURCE_ID_BEGIN:I = 0x5000000

.field public static final THEME_ANIM_RESOURCE_ID_END:I = 0x5ffffff


# instance fields
.field private mAnimResource:Landroid/content/res/Resources;

.field private mAnimThemePackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

.field private mResourceReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v7, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mContext:Landroid/content/Context;

    .line 50
    iput-boolean v6, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mResourceReady:Z

    .line 54
    invoke-static {}, Lcom/lenovo/systemanim/SystemAnimConfiguration;->getSystemAnimPackageName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, animThemePkgName:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 56
    .local v2, startTime:J
    iput-object p1, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mContext:Landroid/content/Context;

    .line 58
    const-string v4, "com.lenovo.systemanim.theme.def"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const-string v4, "SystemAnimResource"

    const-string v5, "SystemThemeResource: set to default lenovo theme"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object v7, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mAnimResource:Landroid/content/res/Resources;

    .line 64
    iput-object v1, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mAnimThemePackageName:Ljava/lang/String;

    .line 65
    iput-boolean v6, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mResourceReady:Z

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lenovo/systemanim/SystemAnimResource;->createAnimResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, animRes:Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 71
    const-string v4, "SystemAnimResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to createAnimResource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/systemanim/SystemAnimResource;->initId2AnimId(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    iput-object v0, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mAnimResource:Landroid/content/res/Resources;

    .line 77
    iput-object v1, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mAnimThemePackageName:Ljava/lang/String;

    .line 78
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mResourceReady:Z

    .line 82
    :cond_2
    const-string v4, "SystemAnimResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End create SystemAnimResource in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms. mResourceReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mResourceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFrameworkResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 144
    const/high16 v0, 0x100

    if-lt p0, v0, :cond_0

    const v0, 0x1ffffff

    if-gt p0, v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLenovoResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 152
    const/high16 v0, 0x300

    if-lt p0, v0, :cond_0

    const v0, 0x3ffffff

    if-gt p0, v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeAnimResourceId(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    .line 135
    const/high16 v0, 0x500

    if-lt p0, v0, :cond_0

    const v0, 0x5ffffff

    if-gt p0, v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetAnimThemeToDefault()V
    .locals 3

    .prologue
    .line 187
    const-string v1, "com.lenovo.systemanim.theme.def"

    invoke-static {v1}, Lcom/lenovo/systemanim/SystemAnimConfiguration;->setSystemAnimPackageName(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.lenovo.systemanim.theme.def"

    invoke-static {}, Lcom/lenovo/systemanim/SystemAnimConfiguration;->getSystemAnimPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "SystemAnimResource"

    const-string/jumbo v2, "resetSystemThemeToDefault success"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 192
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "SystemAnimResource"

    const-string/jumbo v2, "resetSystemThemeToDefault fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createAnimResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .parameter "animThemePkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    .local v0, Pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mAnimResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getThemeAnimResourceId(I)I
    .locals 4
    .parameter "resId"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 167
    .local v0, value:Ljava/lang/Integer;
    iget-boolean v1, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mResourceReady:Z

    if-nez v1, :cond_1

    .line 177
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 171
    .restart local p1
    :cond_1
    const-string v1, "SystemAnimResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeAnimResourceId size == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    invoke-virtual {v3}, Lcom/lenovo/systemanim/AnimHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/systemanim/AnimHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 174
    .restart local v0       #value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public initId2AnimId(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 6
    .parameter "animRes"
    .parameter "animThemePkgName"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v3, 0x0

    .line 125
    :goto_0
    return v3

    .line 103
    :cond_0
    const-string v3, "SystemAnimResource"

    const-string v4, "animRes start "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string/jumbo v3, "system_anim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 106
    .local v0, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-static {v0}, Lcom/lenovo/systemanim/ISystemAnimService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemanim/ISystemAnimService;

    move-result-object v2

    .line 107
    .local v2, service:Lcom/lenovo/systemanim/ISystemAnimService;
    if-eqz v2, :cond_2

    .line 108
    const-string v3, "SystemAnimResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animThemePkgName :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {v2, p2}, Lcom/lenovo/systemanim/ISystemAnimService;->getAnimIdMap(Ljava/lang/String;)Lcom/lenovo/systemanim/AnimHashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2           #service:Lcom/lenovo/systemanim/ISystemAnimService;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    if-nez v3, :cond_1

    .line 120
    new-instance v3, Lcom/lenovo/systemanim/AnimHashMap;

    invoke-direct {v3}, Lcom/lenovo/systemanim/AnimHashMap;-><init>()V

    iput-object v3, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    .line 123
    :cond_1
    const-string v3, "SystemAnimResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initId2Animid end. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/systemanim/SystemAnimResource;->mIdToAnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    invoke-virtual {v5}, Lcom/lenovo/systemanim/AnimHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v3, 0x1

    goto :goto_0

    .line 111
    .restart local v2       #service:Lcom/lenovo/systemanim/ISystemAnimService;
    :cond_2
    :try_start_1
    const-string v3, "SystemAnimResource"

    const-string v4, "initId2AnimId: system anim service not ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 113
    .end local v2           #service:Lcom/lenovo/systemanim/ISystemAnimService;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const-string v3, "SystemAnimResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
