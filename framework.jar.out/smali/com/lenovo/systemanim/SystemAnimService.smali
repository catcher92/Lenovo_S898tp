.class public Lcom/lenovo/systemanim/SystemAnimService;
.super Lcom/lenovo/systemanim/ISystemAnimService$Stub;
.source "SystemAnimService.java"


# static fields
.field public static final ACTION_SYSTEMANIM_THEME_CHANGED:Ljava/lang/String; = "action.systemanim.appling"

.field public static final ACTION_SYSTEM_ANIM:Ljava/lang/String; = "action_themecenter_themechange_systemanim"

.field public static final ANIM_THEME_SERVICE:Ljava/lang/String; = "system_anim"

.field private static final DBG:Z = true

.field public static LENOVO_RESOURCE_TYPE_MASK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SystemAnimService"

.field public static final THEME_CENTER_KEY_PACKAGE_NAME:Ljava/lang/String; = "theme_packagename"

.field public static final THEME_CENTER_KEY_THEME_CHANGED:Ljava/lang/String; = "theme_value"

.field public static final THEME_CENTER_KEY_THEME_CHANGED_RESULT:Ljava/lang/String; = "theme_change_result"

.field public static final TYPE_ANIM:Ljava/lang/String; = "anim"

.field private static mIdToNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimResourceReady:Z

.field private mAnimThemePackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

.field private mSystemReady:Z

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, -0x1

    sput v0, Lcom/lenovo/systemanim/SystemAnimService;->LENOVO_RESOURCE_TYPE_MASK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/lenovo/systemanim/ISystemAnimService$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    .line 33
    iput-boolean v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mSystemReady:Z

    .line 38
    iput-boolean v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimResourceReady:Z

    .line 61
    new-instance v0, Lcom/lenovo/systemanim/SystemAnimService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/systemanim/SystemAnimService$1;-><init>(Lcom/lenovo/systemanim/SystemAnimService;)V

    iput-object v0, p0, Lcom/lenovo/systemanim/SystemAnimService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/systemanim/SystemAnimService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method private loadAnim(Ljava/lang/String;)Z
    .locals 9
    .parameter "animPackageName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/lenovo/systemanim/SystemAnimConfiguration;->getSystemAnimPackageName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, savedAnimPackageName:Ljava/lang/String;
    const-string v6, "SystemAnimService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnim animPackageName :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", savedAnimPackageName :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAnimThemePackageName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    const-string v5, "SystemAnimService"

    const-string/jumbo v6, "loadAnim: animPackageName is same"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit p0

    .line 204
    :goto_0
    return v4

    .line 165
    :cond_0
    const-string v6, "com.lenovo.systemanim.theme.def"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    const-string v5, "SystemAnimService"

    const-string/jumbo v6, "loadAnim: set to default lenovo theme"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object p1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    .line 171
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimResourceReady:Z

    .line 172
    monitor-exit p0

    goto :goto_0

    .line 202
    .end local v1           #savedAnimPackageName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 179
    .restart local v1       #savedAnimPackageName:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "SystemAnimService"

    const-string v7, "Start create SystemAnimResource"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    .local v2, startTime:J
    invoke-virtual {p0}, Lcom/lenovo/systemanim/SystemAnimService;->initId2Name()V

    .line 186
    invoke-virtual {p0, p1}, Lcom/lenovo/systemanim/SystemAnimService;->createAnimResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    .local v0, animRes:Landroid/content/res/Resources;
    if-nez v0, :cond_2

    .line 188
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/lenovo/systemanim/SystemAnimService;->initId2Animid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    iput-object p1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    .line 195
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimResourceReady:Z

    .line 199
    :cond_3
    const-string v5, "SystemAnimService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End create SystemAnimResource in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms. mAnimResourceReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimResourceReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_themecenter_themechange_systemanim"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/systemanim/SystemAnimService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/systemanim/SystemAnimService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method


# virtual methods
.method public createAnimResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .parameter "themePackageName"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/lenovo/systemanim/SystemAnimService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 260
    .local v0, Pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 268
    :goto_0
    return-object v2

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAnimIdMap(Ljava/lang/String;)Lcom/lenovo/systemanim/AnimHashMap;
    .locals 4
    .parameter "animThemePackageName"

    .prologue
    const/4 v0, 0x0

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimResourceReady:Z

    if-nez v1, :cond_0

    .line 218
    const-string v1, "SystemAnimService"

    const-string v2, "getAnimIdMap : mAnimResourceReady not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit p0

    .line 230
    :goto_0
    return-object v0

    .line 223
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    :cond_1
    const-string v1, "SystemAnimService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimIdMap : animThemePackageName not eaqual to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/systemanim/SystemAnimService;->mAnimThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit p0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :cond_2
    :try_start_1
    const-string v0, "SystemAnimService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnimIdMap Count == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    invoke-virtual {v2}, Lcom/lenovo/systemanim/AnimHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public initId2Animid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 9
    .parameter "animRes"
    .parameter "themePackageName"

    .prologue
    const/4 v6, 0x0

    .line 278
    sget-object v7, Lcom/lenovo/systemanim/SystemAnimService;->mIdToNameMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v6

    .line 282
    :cond_1
    if-eqz p1, :cond_0

    .line 287
    const-string v6, "SystemAnimService"

    const-string v7, "initId2Animid start "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    if-nez v6, :cond_3

    .line 291
    new-instance v6, Lcom/lenovo/systemanim/AnimHashMap;

    invoke-direct {v6}, Lcom/lenovo/systemanim/AnimHashMap;-><init>()V

    iput-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    .line 296
    :goto_1
    sget-object v6, Lcom/lenovo/systemanim/SystemAnimService;->mIdToNameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    .local v3, resid:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, resourceName:Ljava/lang/String;
    const-string v5, "anim"

    .line 303
    .local v5, resourceType:Ljava/lang/String;
    invoke-virtual {p1, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 305
    .local v2, mapId:I
    const-string v6, "SystemAnimService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mapId :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-lez v2, :cond_2

    invoke-static {v2}, Lcom/lenovo/systemanim/SystemAnimResource;->isThemeAnimResourceId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    iget-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/systemanim/AnimHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v6, "SystemAnimService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resId :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mapId :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resourceName :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 293
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v2           #mapId:I
    .end local v3           #resid:I
    .end local v4           #resourceName:Ljava/lang/String;
    .end local v5           #resourceType:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/systemanim/SystemAnimService;->mId2AnimIdMap:Lcom/lenovo/systemanim/AnimHashMap;

    invoke-virtual {v6}, Lcom/lenovo/systemanim/AnimHashMap;->clear()V

    goto/16 :goto_1

    .line 317
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public initId2Name()V
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/lenovo/systemanim/SystemAnimService;->mIdToNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "SystemAnimService"

    const-string v1, "initId2Name already inited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/systemanim/SystemAnimService;->mIdToNameMap:Ljava/util/HashMap;

    .line 249
    const/high16 v0, 0x10a

    invoke-virtual {p0, v0}, Lcom/lenovo/systemanim/SystemAnimService;->loadTypeId2Name(I)Z

    goto :goto_0
.end method

.method public loadTypeId2Name(I)Z
    .locals 7
    .parameter "startId"

    .prologue
    .line 330
    move v3, p1

    .local v3, resid:I
    :goto_0
    add-int/lit16 v4, p1, 0x320

    if-ge v3, v4, :cond_3

    .line 334
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/systemanim/SystemAnimService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->ideaui_getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 345
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 346
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 356
    :goto_2
    if-eqz v2, :cond_0

    .line 357
    sget-object v4, Lcom/lenovo/systemanim/SystemAnimService;->mIdToNameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v4, "SystemAnimService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resId :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resourceName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 350
    .end local v1           #index:I
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 365
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public setSystemAnim(Ljava/lang/String;)Z
    .locals 6
    .parameter "animThemePackageName"

    .prologue
    const/4 v3, 0x0

    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 116
    :cond_0
    const-string v4, "SystemAnimService"

    const-string/jumbo v5, "setSystemAnim: animThemePackageName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    :goto_0
    return v3

    .line 120
    :cond_2
    iget-boolean v4, p0, Lcom/lenovo/systemanim/SystemAnimService;->mSystemReady:Z

    if-nez v4, :cond_3

    .line 121
    const-string v4, "SystemAnimService"

    const-string/jumbo v5, "setSystemAnim: mSystemReady is false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_3
    invoke-direct {p0, p1}, Lcom/lenovo/systemanim/SystemAnimService;->loadAnim(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 133
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 134
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p1, v1, Landroid/content/res/Configuration;->systemAnimPackageName:Ljava/lang/String;

    .line 136
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    const-string v3, "SystemAnimService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSystemAnim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v3, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "SystemAnimService"

    const-string/jumbo v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/systemanim/SystemAnimService;->mSystemReady:Z

    .line 95
    invoke-direct {p0}, Lcom/lenovo/systemanim/SystemAnimService;->registerReceiver()V

    .line 97
    invoke-static {}, Lcom/lenovo/systemanim/SystemAnimConfiguration;->getSystemAnimPackageName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/systemanim/SystemAnimService;->setSystemAnim(Ljava/lang/String;)Z

    .line 99
    return-void
.end method
