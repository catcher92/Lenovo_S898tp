.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

#the value of this static final field might be set in the static constructor
.field private static final IS_USER_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 163
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 164
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 167
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1475
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1478
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1479
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 156
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    return-void
.end method

.method public run()V
    .locals 178

    .prologue
    .line 179
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 182
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 183
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 187
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 190
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 191
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 195
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v145

    .line 197
    .local v145, shutdownAction:Ljava/lang/String;
    if-eqz v145, :cond_0

    invoke-virtual/range {v145 .. v145}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 198
    const/4 v7, 0x0

    move-object/from16 v0, v145

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_15

    const/16 v137, 0x1

    .line 201
    .local v137, reboot:Z
    :goto_0
    invoke-virtual/range {v145 .. v145}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_16

    .line 202
    const/4 v7, 0x1

    invoke-virtual/range {v145 .. v145}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v145

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v136

    .line 207
    .local v136, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v137

    move-object/from16 v1, v136

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 211
    .end local v136           #reason:Ljava/lang/String;
    .end local v137           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 212
    .local v100, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/16 v99, 0x0

    .line 214
    .local v99, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 216
    .local v34, headless:Z
    const/16 v107, 0x0

    .line 217
    .local v107, installer:Lcom/android/server/pm/Installer;
    const/16 v70, 0x0

    .line 218
    .local v70, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v85, 0x0

    .line 219
    .local v85, contentService:Landroid/content/ContentService;
    const/16 v111, 0x0

    .line 220
    .local v111, lights:Lcom/android/server/LightsService;
    const/16 v135, 0x0

    .line 221
    .local v135, power:Lcom/android/server/power/PowerManagerService;
    const/16 v93, 0x0

    .line 222
    .local v93, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v77, 0x0

    .line 223
    .local v77, battery:Lcom/android/server/BatteryService;
    const/16 v140, 0x0

    .line 224
    .local v140, sdioAutoK:Lcom/android/server/SDIOAutoKService;
    const/16 v167, 0x0

    .line 225
    .local v167, vibrator:Lcom/android/server/VibratorService;
    const/16 v73, 0x0

    .line 226
    .local v73, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v121, 0x0

    .line 227
    .local v121, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 228
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 229
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v124, 0x0

    .line 230
    .local v124, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v83, 0x0

    .line 231
    .local v83, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v174, 0x0

    .line 232
    .local v174, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v172, 0x0

    .line 233
    .local v172, wifi:Lcom/android/server/WifiService;
    const/16 v144, 0x0

    .line 234
    .local v144, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v134, 0x0

    .line 235
    .local v134, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 236
    .local v5, context:Landroid/content/Context;
    const/16 v176, 0x0

    .line 237
    .local v176, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v78, 0x0

    .line 239
    .local v78, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v68, 0x0

    .line 240
    .local v68, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v94, 0x0

    .line 241
    .local v94, dock:Lcom/android/server/DockObserver;
    const/16 v88, 0x0

    .line 242
    .local v88, cover:Lcom/android/server/CoverObserver;
    const/16 v165, 0x0

    .line 243
    .local v165, usb:Lcom/android/server/usb/UsbService;
    const/16 v142, 0x0

    .line 244
    .local v142, serial:Lcom/android/server/SerialService;
    const/16 v160, 0x0

    .line 245
    .local v160, twilight:Lcom/android/server/TwilightService;
    const/16 v163, 0x0

    .line 246
    .local v163, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v138, 0x0

    .line 247
    .local v138, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v156, 0x0

    .line 248
    .local v156, throttle:Lcom/android/server/ThrottleService;
    const/16 v126, 0x0

    .line 249
    .local v126, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v80, 0x0

    .line 250
    .local v80, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v106, 0x0

    .line 251
    .local v106, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v149, 0x0

    .line 253
    .local v149, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v151, 0x0

    .line 254
    .local v151, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v153, 0x0

    .line 255
    .local v153, telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    const/16 v154, 0x0

    .line 257
    .local v154, telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    const/16 v103, 0x0

    .line 260
    .local v103, hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    const/16 v120, 0x0

    .line 263
    .local v120, mom:Lcom/mediatek/common/mom/IMobileManagerService;
    const/16 v109, 0x0

    .line 266
    .local v109, lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    const/16 v117, 0x0

    .line 274
    .local v117, mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    new-instance v162, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v162

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 275
    .local v162, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v162 .. v162}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v162 .. v162}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 277
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    new-instance v177, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v177

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 295
    .local v177, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v177 .. v177}, Landroid/os/HandlerThread;->start()V

    .line 296
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v177 .. v177}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    const/16 v24, 0x0

    .line 319
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v108, Lcom/android/server/pm/Installer;

    invoke-direct/range {v108 .. v108}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_65

    .line 321
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .local v108, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/pm/Installer;->ping()Z

    .line 324
    sget-boolean v7, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_1

    .line 326
    const/16 v123, 0x0

    .line 329
    .local v123, msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :try_start_2
    const-class v7, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-object/from16 v123, v0

    .line 330
    const-string v7, "SystemServer"

    const-string v9, "Create message monitor service successfully ."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 335
    :goto_3
    :try_start_3
    const-string v7, "msgmonitorservice"

    invoke-interface/range {v123 .. v123}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 342
    .end local v123           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :cond_1
    :goto_4
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 346
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 348
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 350
    .end local v135           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_5
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 352
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static/range {v99 .. v99}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 355
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_66

    .line 357
    .end local v93           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_6
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 359
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v150, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_67

    .line 361
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v150, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string v7, "telephony.registry"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 362
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v152, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v152

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_68

    .line 364
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v152, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_8
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 380
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 384
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 387
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 394
    .local v90, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 395
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v24, 0x1

    .line 402
    :cond_3
    :goto_5
    if-eqz v99, :cond_19

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, v108

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v134

    .line 405
    const/16 v101, 0x0

    .line 407
    .local v101, firstBoot:Z
    :try_start_9
    invoke-interface/range {v134 .. v134}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v101

    .line 411
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 413
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 418
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 422
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v71, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    .line 424
    .end local v70           #accountManager:Landroid/accounts/AccountManagerService;
    .local v71, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_c
    const-string v7, "account"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_69

    move-object/from16 v70, v71

    .line 432
    .end local v71           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v70       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_8
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "MobileManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-class v7, Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    move-object/from16 v120, v0

    .line 434
    const-string v7, "mobile"

    invoke-interface/range {v120 .. v120}, Lcom/mediatek/common/mom/IMobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    .line 441
    :goto_9
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v7, 0x1

    move/from16 v0, v99

    if-ne v0, v7, :cond_1a

    const/4 v7, 0x1

    :goto_a
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v85

    .line 445
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 448
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    .line 451
    .end local v111           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6a

    .line 453
    .end local v77           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_10
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 461
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v168, Lcom/android/server/VibratorService;

    move-object/from16 v0, v168

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6b

    .line 463
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .local v168, vibrator:Lcom/android/server/VibratorService;
    :try_start_11
    const-string v7, "vibrator"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 467
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 470
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6c

    .line 472
    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_12
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 474
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 478
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6d

    .line 481
    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v7, 0x1

    move/from16 v0, v99

    if-eq v0, v7, :cond_1b

    const/16 v22, 0x1

    :goto_b
    if-nez v101, :cond_1c

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v176

    .line 486
    const-string v7, "window"

    move-object/from16 v0, v176

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 487
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 489
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v176

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 491
    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 492
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 494
    move-object/from16 v0, v176

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 495
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 500
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 501
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6

    :goto_d
    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v167, v168

    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v107, v108

    .line 533
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v101           #firstBoot:Z
    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    :goto_e
    const/16 v91, 0x0

    .line 534
    .local v91, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v146, 0x0

    .line 535
    .local v146, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v104, 0x0

    .line 536
    .local v104, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v74, 0x0

    .line 537
    .local v74, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v128, 0x0

    .line 538
    .local v128, notification:Lcom/android/server/NotificationManagerService;
    const/16 v170, 0x0

    .line 539
    .local v170, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v112, 0x0

    .line 540
    .local v112, location:Lcom/android/server/LocationManagerService;
    const/16 v86, 0x0

    .line 541
    .local v86, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v158, 0x0

    .line 542
    .local v158, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v114, 0x0

    .line 543
    .local v114, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v96, 0x0

    .line 544
    .local v96, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v155, 0x0

    .line 545
    .local v155, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/16 v130, 0x0

    .line 546
    .local v130, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    const/16 v133, 0x0

    .line 549
    .local v133, perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    const/4 v7, 0x1

    move/from16 v0, v99

    if-eq v0, v7, :cond_4

    .line 551
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v105, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v176

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    .line 553
    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .local v105, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_15
    const-string v7, "input_method"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_64

    move-object/from16 v104, v105

    .line 559
    .end local v105           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v104       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_f
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8

    .line 568
    :cond_4
    :goto_10
    :try_start_17
    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 574
    :goto_11
    :try_start_18
    invoke-interface/range {v134 .. v134}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 580
    :goto_12
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_63

    .line 587
    :goto_13
    const/4 v7, 0x1

    move/from16 v0, v99

    if-eq v0, v7, :cond_20

    .line 588
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 594
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v122, Lcom/android/server/MountService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b

    .line 596
    .end local v121           #mountService:Lcom/android/server/MountService;
    .local v122, mountService:Lcom/android/server/MountService;
    :try_start_1b
    const-string v7, "mount"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_62

    move-object/from16 v121, v122

    .line 603
    .end local v122           #mountService:Lcom/android/server/MountService;
    .restart local v121       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_14
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v115, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v115

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c

    .line 605
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v115, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1d
    const-string v7, "lock_settings"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_61

    move-object/from16 v114, v115

    .line 611
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_15
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v92, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d

    .line 613
    .end local v91           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v92, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1f
    const-string v7, "device_policy"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_60

    move-object/from16 v91, v92

    .line 619
    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v91       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_16
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v147, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v147

    move-object/from16 v1, v176

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e

    .line 621
    .end local v146           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v147, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_21
    const-string v7, "statusbar"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_5f

    move-object/from16 v146, v147

    .line 627
    .end local v147           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_f

    .line 635
    :goto_18
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 637
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 643
    :goto_19
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v159, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v159

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 645
    .end local v158           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v159, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_25
    const-string v7, "textservices"

    move-object/from16 v0, v159

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_5e

    move-object/from16 v158, v159

    .line 651
    .end local v159           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v158       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1a
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v125, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v125

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 653
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v125, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_27
    const-string v7, "netstats"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_5d

    move-object/from16 v29, v125

    .line 659
    .end local v125           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 663
    .end local v124           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_29
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_5c

    .line 669
    :goto_1c
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v175, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v175

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_14

    .line 671
    .end local v174           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v175, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2b
    const-string v7, "wifip2p"

    move-object/from16 v0, v175

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_5b

    move-object/from16 v174, v175

    .line 677
    .end local v175           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v174       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v173, Lcom/android/server/WifiService;

    move-object/from16 v0, v173

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_15

    .line 679
    .end local v172           #wifi:Lcom/android/server/WifiService;
    .local v173, wifi:Lcom/android/server/WifiService;
    :try_start_2d
    const-string v7, "wifi"

    move-object/from16 v0, v173

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_5a

    move-object/from16 v172, v173

    .line 685
    .end local v173           #wifi:Lcom/android/server/WifiService;
    .restart local v172       #wifi:Lcom/android/server/WifiService;
    :goto_1e
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v84, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v84

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 688
    .end local v83           #connectivity:Lcom/android/server/ConnectivityService;
    .local v84, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2f
    const-string v7, "connectivity"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 689
    move-object/from16 v0, v29

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 690
    move-object/from16 v0, v25

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 691
    invoke-virtual/range {v172 .. v172}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 692
    invoke-virtual/range {v174 .. v174}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_59

    move-object/from16 v83, v84

    .line 698
    .end local v84           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v83       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1f
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v144

    .line 700
    const-string v7, "servicediscovery"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 707
    :goto_20
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v157, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 709
    .end local v156           #throttle:Lcom/android/server/ThrottleService;
    .local v157, throttle:Lcom/android/server/ThrottleService;
    :try_start_32
    const-string v7, "throttle"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_58

    move-object/from16 v156, v157

    .line 716
    .end local v157           #throttle:Lcom/android/server/ThrottleService;
    .restart local v156       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 728
    :goto_22
    if-eqz v121, :cond_6

    .line 729
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 733
    :cond_6
    if-eqz v70, :cond_7

    .line 734
    :try_start_34
    invoke-virtual/range {v70 .. v70}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 740
    :cond_7
    :goto_23
    if-eqz v85, :cond_8

    .line 741
    :try_start_35
    invoke-virtual/range {v85 .. v85}, Landroid/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 747
    :cond_8
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v129, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v129

    move-object/from16 v1, v146

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 749
    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .local v129, notification:Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v7, "notification"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 750
    move-object/from16 v0, v25

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_57

    move-object/from16 v128, v129

    .line 756
    .end local v129           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v128       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 764
    :goto_26
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v113, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 766
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .local v113, location:Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v7, "location"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_56

    move-object/from16 v112, v113

    .line 772
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v87, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v87

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .line 774
    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v87, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v7, "country_detector"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_55

    move-object/from16 v86, v87

    .line 780
    .end local v87           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v86       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .line 789
    :goto_29
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_22

    .line 790
    const/16 v141, 0x0

    .line 792
    .local v141, searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :try_start_3f
    const-class v7, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-object/from16 v141, v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 798
    :goto_2a
    if-eqz v141, :cond_9

    .line 799
    :try_start_40
    const-string v7, "search_engine"

    invoke-interface/range {v141 .. v141}, Lcom/mediatek/common/search/ISearchEngineManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 808
    .end local v141           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :cond_9
    :goto_2b
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 818
    :goto_2c
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "System Theme"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v148, Lcom/lenovo/systemtheme/SystemThemeService;

    move-object/from16 v0, v148

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/lenovo/systemtheme/SystemThemeService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 823
    .local v148, systemThemeService:Lcom/lenovo/systemtheme/SystemThemeService;
    invoke-virtual/range {v148 .. v148}, Lcom/lenovo/systemtheme/SystemThemeService;->systemReady()V

    .line 825
    const-string v7, "system_theme"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 849
    .end local v148           #systemThemeService:Lcom/lenovo/systemtheme/SystemThemeService;
    :goto_2d
    const/16 v102, 0x0

    .line 851
    .local v102, hasAkg:Z
    :try_start_43
    const-string v7, "com.lenovo.akgservice"

    move-object/from16 v0, v134

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_54

    move-result v102

    .line 855
    :goto_2e
    const/4 v7, 0x1

    move/from16 v0, v102

    if-ne v7, v0, :cond_a

    .line 858
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "LenovoAkgService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v116, Lcom/android/server/AkgService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/AkgService;-><init>(Landroid/content/Context;)V

    .line 860
    .local v116, mAkgService:Lcom/android/server/AkgService;
    const-string v7, "LenovoAkgService"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .line 868
    .end local v116           #mAkgService:Lcom/android/server/AkgService;
    :cond_a
    :goto_2f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 871
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    if-nez v34, :cond_b

    .line 873
    new-instance v171, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v171

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 874
    .end local v170           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v171, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_46
    const-string v7, "wallpaper"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_53

    move-object/from16 v170, v171

    .line 881
    .end local v171           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v170       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_b
    :goto_30
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 883
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_27

    .line 894
    :cond_c
    :goto_31
    const/16 v76, 0x0

    .line 896
    .local v76, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v76, v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_28
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .line 901
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioProfileService = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v76

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-eqz v76, :cond_d

    .line 903
    const-string v7, "audioprofile"

    invoke-interface/range {v76 .. v76}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 913
    :cond_d
    :goto_33
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    new-instance v95, Lcom/android/server/DockObserver;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .end local v94           #dock:Lcom/android/server/DockObserver;
    .local v95, dock:Lcom/android/server/DockObserver;
    move-object/from16 v94, v95

    .line 921
    .end local v95           #dock:Lcom/android/server/DockObserver;
    .restart local v94       #dock:Lcom/android/server/DockObserver;
    :goto_34
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Cover Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v89, Lcom/android/server/CoverObserver;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/CoverObserver;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .end local v88           #cover:Lcom/android/server/CoverObserver;
    .local v89, cover:Lcom/android/server/CoverObserver;
    move-object/from16 v88, v89

    .line 929
    .end local v89           #cover:Lcom/android/server/CoverObserver;
    .restart local v88       #cover:Lcom/android/server/CoverObserver;
    :goto_35
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 938
    :goto_36
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v166, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 941
    .end local v165           #usb:Lcom/android/server/usb/UsbService;
    .local v166, usb:Lcom/android/server/usb/UsbService;
    :try_start_4e
    const-string v7, "usb"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_52

    move-object/from16 v165, v166

    .line 947
    .end local v166           #usb:Lcom/android/server/usb/UsbService;
    .restart local v165       #usb:Lcom/android/server/usb/UsbService;
    :goto_37
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v143, Lcom/android/server/SerialService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 950
    .end local v142           #serial:Lcom/android/server/SerialService;
    .local v143, serial:Lcom/android/server/SerialService;
    :try_start_50
    const-string v7, "serial"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_51

    move-object/from16 v142, v143

    .line 956
    .end local v143           #serial:Lcom/android/server/SerialService;
    .restart local v142       #serial:Lcom/android/server/SerialService;
    :goto_38
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    new-instance v161, Lcom/android/server/TwilightService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .end local v160           #twilight:Lcom/android/server/TwilightService;
    .local v161, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v160, v161

    .line 963
    .end local v161           #twilight:Lcom/android/server/TwilightService;
    .restart local v160       #twilight:Lcom/android/server/TwilightService;
    :goto_39
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v164, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v164

    move-object/from16 v1, v160

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .end local v163           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v164, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v163, v164

    .line 972
    .end local v164           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v163       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_3a
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Light adjust"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v110, Lcom/android/server/lightadjust/LightAdjustService;

    move-object/from16 v0, v110

    invoke-direct {v0, v5}, Lcom/android/server/lightadjust/LightAdjustService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_31

    .line 974
    .end local v109           #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    .local v110, lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    :try_start_54
    move-object/from16 v0, v110

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->registerTwilightService(Lcom/android/server/TwilightService;)V

    .line 975
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/lightadjust/LightAdjustService;->systemReady()V

    .line 976
    const-string v7, "lightadjust"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_50

    move-object/from16 v109, v110

    .line 983
    .end local v110           #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v109       #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    :goto_3b
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_32

    .line 991
    :goto_3c
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v75, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_33

    .line 993
    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .local v75, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_57
    const-string v7, "appwidget"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_4f

    move-object/from16 v74, v75

    .line 999
    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_3d
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v139, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_34

    .end local v138           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v139, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v138, v139

    .line 1009
    .end local v139           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v138       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_3e
    const/16 v72, 0x0

    .line 1011
    .local v72, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_59
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v72, v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_36

    .line 1016
    :goto_3f
    :try_start_5a
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agpsMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v72

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-eqz v72, :cond_e

    .line 1018
    const-string v7, "mtk-agps"

    invoke-interface/range {v72 .. v72}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_36

    .line 1031
    :cond_e
    :goto_40
    :try_start_5b
    const-class v7, Lcom/mediatek/common/perfservice/PerfServiceManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/PerfServiceManager;

    move-object/from16 v133, v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_37

    .line 1037
    :goto_41
    const/16 v132, 0x0

    .line 1039
    .local v132, perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :try_start_5c
    const-class v7, Lcom/mediatek/common/perfservice/IPerfService;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    aput-object v133, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfService;

    move-object/from16 v132, v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .line 1043
    :goto_42
    :try_start_5d
    const-string v7, "perfservice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "perfService="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v132

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    if-eqz v132, :cond_f

    .line 1045
    const-string v7, "mtk-perfservice"

    invoke-interface/range {v132 .. v132}, Lcom/mediatek/common/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_39

    .line 1055
    :cond_f
    :goto_43
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3a

    .line 1066
    :goto_44
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3b

    .line 1074
    :goto_45
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    new-instance v127, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3c

    .end local v126           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v127, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v126, v127

    .line 1081
    .end local v127           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v126       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_46
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v81, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3d

    .line 1083
    .end local v80           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v81, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_62
    const-string v7, "commontime_management"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_4e

    move-object/from16 v80, v81

    .line 1089
    .end local v81           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v80       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_47
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3e

    .line 1095
    :goto_48
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110040

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1098
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v97, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v97

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3f

    .line 1101
    .end local v96           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v97, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_65
    const-string v7, "dreams"

    move-object/from16 v0, v97

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_4d

    move-object/from16 v96, v97

    .line 1111
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v96       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_10
    :goto_49
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "LaunchIconThemeService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    new-instance v118, Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;-><init>(Landroid/content/Context;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_40

    .line 1113
    .end local v117           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .local v118, mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :try_start_67
    const-string v7, "LaunchIconThemeService"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_4c

    move-object/from16 v117, v118

    .line 1134
    .end local v118           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v117       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :goto_4a
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "PerfMgr state notifier"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v131, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v131 .. v131}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_41

    .line 1136
    .end local v130           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .local v131, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :try_start_69
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v131

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_4b

    move-object/from16 v130, v131

    .line 1159
    .end local v72           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v76           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v102           #hasAkg:Z
    .end local v131           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v132           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v130       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :goto_4b
    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v49

    .line 1160
    .local v49, safeMode:Z
    if-eqz v49, :cond_1f

    .line 1161
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1163
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1165
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1174
    :goto_4c
    :try_start_6a
    invoke-virtual/range {v167 .. v167}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_42

    .line 1180
    :goto_4d
    :try_start_6b
    invoke-virtual/range {v114 .. v114}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_43

    .line 1185
    :goto_4e
    if-eqz v91, :cond_11

    .line 1187
    :try_start_6c
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_44

    .line 1193
    :cond_11
    :goto_4f
    if-eqz v128, :cond_12

    .line 1195
    :try_start_6d
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_45

    .line 1202
    :cond_12
    :goto_50
    :try_start_6e
    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_46

    .line 1207
    :goto_51
    if-eqz v49, :cond_13

    .line 1208
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1214
    :cond_13
    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v82

    .line 1215
    .local v82, config:Landroid/content/res/Configuration;
    new-instance v119, Landroid/util/DisplayMetrics;

    invoke-direct/range {v119 .. v119}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1216
    .local v119, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v169

    check-cast v169, Landroid/view/WindowManager;

    .line 1217
    .local v169, w:Landroid/view/WindowManager;
    invoke-interface/range {v169 .. v169}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1218
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v82

    move-object/from16 v1, v119

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1221
    :try_start_6f
    move-object/from16 v0, v160

    move-object/from16 v1, v96

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_47

    .line 1227
    :goto_52
    :try_start_70
    invoke-interface/range {v134 .. v134}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_48

    .line 1233
    :goto_53
    :try_start_71
    move/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_49

    .line 1239
    :goto_54
    move-object/from16 v35, v5

    .line 1240
    .local v35, contextF:Landroid/content/Context;
    move-object/from16 v36, v121

    .line 1241
    .local v36, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v37, v8

    .line 1242
    .local v37, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v38, v30

    .line 1243
    .local v38, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v39, v29

    .line 1244
    .local v39, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v40, v25

    .line 1245
    .local v40, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v41, v83

    .line 1246
    .local v41, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v42, v94

    .line 1247
    .local v42, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v43, v88

    .line 1248
    .local v43, coverF:Lcom/android/server/CoverObserver;
    move-object/from16 v44, v165

    .line 1249
    .local v44, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v55, v156

    .line 1250
    .local v55, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v45, v160

    .line 1251
    .local v45, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v46, v163

    .line 1252
    .local v46, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v48, v74

    .line 1253
    .local v48, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v50, v170

    .line 1254
    .local v50, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v51, v104

    .line 1255
    .local v51, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v47, v138

    .line 1256
    .local v47, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v53, v112

    .line 1257
    .local v53, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v54, v86

    .line 1258
    .local v54, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v56, v126

    .line 1259
    .local v56, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v57, v80

    .line 1260
    .local v57, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v58, v158

    .line 1261
    .local v58, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v52, v146

    .line 1262
    .local v52, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v59, v96

    .line 1263
    .local v59, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v60, v19

    .line 1264
    .local v60, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v149

    .line 1266
    .local v61, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v151

    .line 1267
    .local v62, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v153

    .line 1268
    .local v63, telephonyRegistryF3:Ljava/lang/Object;
    move-object/from16 v64, v154

    .line 1270
    .local v64, telephonyRegistryF4:Ljava/lang/Object;
    move-object/from16 v65, v155

    .line 1271
    .local v65, thermalF:Ljava/lang/Object;
    move-object/from16 v66, v133

    .line 1272
    .local v66, perfServiceF:Lcom/mediatek/common/perfservice/PerfServiceManager;
    move-object/from16 v33, v120

    .line 1275
    .local v33, momF:Lcom/mediatek/common/mom/IMobileManagerService;
    move-object/from16 v67, v117

    .line 1283
    .local v67, launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v67}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;Lcom/mediatek/common/mom/IMobileManagerService;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/CoverObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/mediatek/common/perfservice/PerfServiceManager;Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1463
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1464
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_14
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1469
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1470
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-void

    .line 198
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #momF:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v34           #headless:Z
    .end local v35           #contextF:Landroid/content/Context;
    .end local v36           #mountServiceF:Lcom/android/server/MountService;
    .end local v37           #batteryF:Lcom/android/server/BatteryService;
    .end local v38           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v39           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v40           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v42           #dockF:Lcom/android/server/DockObserver;
    .end local v43           #coverF:Lcom/android/server/CoverObserver;
    .end local v44           #usbF:Lcom/android/server/usb/UsbService;
    .end local v45           #twilightF:Lcom/android/server/TwilightService;
    .end local v46           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v47           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v48           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v49           #safeMode:Z
    .end local v50           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v51           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v52           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v53           #locationF:Lcom/android/server/LocationManagerService;
    .end local v54           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v55           #throttleF:Lcom/android/server/ThrottleService;
    .end local v56           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v57           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v58           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v59           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v60           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v61           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v62           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v63           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v64           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v65           #thermalF:Ljava/lang/Object;
    .end local v66           #perfServiceF:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v67           #launchIconThemeServiceF:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v68           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v70           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v78           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v80           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v82           #config:Landroid/content/res/Configuration;
    .end local v83           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v85           #contentService:Landroid/content/ContentService;
    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v88           #cover:Lcom/android/server/CoverObserver;
    .end local v91           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v94           #dock:Lcom/android/server/DockObserver;
    .end local v96           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v99           #factoryTest:I
    .end local v100           #factoryTestStr:Ljava/lang/String;
    .end local v103           #hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v109           #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v117           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v120           #mom:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v121           #mountService:Lcom/android/server/MountService;
    .end local v126           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .end local v130           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v133           #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v134           #pm:Landroid/content/pm/IPackageManager;
    .end local v138           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v140           #sdioAutoK:Lcom/android/server/SDIOAutoKService;
    .end local v142           #serial:Lcom/android/server/SerialService;
    .end local v144           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v146           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v153           #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .end local v154           #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .end local v155           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v156           #throttle:Lcom/android/server/ThrottleService;
    .end local v158           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v160           #twilight:Lcom/android/server/TwilightService;
    .end local v162           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v163           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v165           #usb:Lcom/android/server/usb/UsbService;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .end local v169           #w:Landroid/view/WindowManager;
    .end local v170           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v172           #wifi:Lcom/android/server/WifiService;
    .end local v174           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v176           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v177           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_15
    const/16 v137, 0x0

    goto/16 :goto_0

    .line 204
    .restart local v137       #reboot:Z
    :cond_16
    const/16 v136, 0x0

    .restart local v136       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 212
    .end local v136           #reason:Ljava/lang/String;
    .end local v137           #reboot:Z
    .restart local v100       #factoryTestStr:Ljava/lang/String;
    :cond_17
    invoke-static/range {v100 .. v100}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v99

    goto/16 :goto_2

    .line 331
    .restart local v5       #context:Landroid/content/Context;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v34       #headless:Z
    .restart local v68       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v70       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v80       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v83       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v85       #contentService:Landroid/content/ContentService;
    .restart local v88       #cover:Lcom/android/server/CoverObserver;
    .restart local v93       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v94       #dock:Lcom/android/server/DockObserver;
    .restart local v99       #factoryTest:I
    .restart local v103       #hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v117       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v120       #mom:Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v121       #mountService:Lcom/android/server/MountService;
    .restart local v123       #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    .restart local v124       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v126       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v134       #pm:Landroid/content/pm/IPackageManager;
    .restart local v135       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v138       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v140       #sdioAutoK:Lcom/android/server/SDIOAutoKService;
    .restart local v142       #serial:Lcom/android/server/SerialService;
    .restart local v144       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v153       #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .restart local v154       #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #throttle:Lcom/android/server/ThrottleService;
    .restart local v160       #twilight:Lcom/android/server/TwilightService;
    .restart local v162       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v163       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v165       #usb:Lcom/android/server/usb/UsbService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    .restart local v172       #wifi:Lcom/android/server/WifiService;
    .restart local v174       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v176       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v177       #wmHandlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v98

    .line 332
    .local v98, e:Ljava/lang/Exception;
    :try_start_72
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create message monitor service Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_72} :catch_2

    goto/16 :goto_3

    .line 336
    .end local v98           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v98

    .line 337
    .local v98, e:Ljava/lang/Throwable;
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "Starting message monitor service exception "

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_73} :catch_2

    goto/16 :goto_4

    .line 528
    .end local v98           #e:Ljava/lang/Throwable;
    .end local v123           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :catch_2
    move-exception v98

    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v93

    .end local v93           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v135

    .end local v135           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v107, v108

    .line 529
    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .local v98, e:Ljava/lang/RuntimeException;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    :goto_55
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 397
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #e:Ljava/lang/RuntimeException;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_18
    :try_start_74
    const-string v7, "1"

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 398
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v24, 0x1

    goto/16 :goto_5

    .line 402
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 425
    .restart local v101       #firstBoot:Z
    :catch_3
    move-exception v98

    .line 426
    .local v98, e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 528
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v98           #e:Ljava/lang/Throwable;
    .end local v101           #firstBoot:Z
    :catch_4
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto :goto_55

    .line 435
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v101       #firstBoot:Z
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5
    move-exception v98

    .line 436
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_74} :catch_4

    goto/16 :goto_9

    .line 442
    .end local v98           #e:Ljava/lang/Throwable;
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 482
    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #battery:Lcom/android/server/BatteryService;
    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #lights:Lcom/android/server/LightsService;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v168       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 502
    :cond_1d
    const/4 v7, 0x1

    move/from16 v0, v99

    if-ne v0, v7, :cond_1e

    .line 503
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 528
    :catch_6
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v167, v168

    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto :goto_55

    .line 508
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v168       #vibrator:Lcom/android/server/VibratorService;
    :cond_1e
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v79, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_75 .. :try_end_75} :catch_6

    .line 510
    .end local v78           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v79, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_76
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 520
    new-instance v69, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_76} :catch_6e

    .line 521
    .end local v68           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v69, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_77
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_77} :catch_6f

    move-object/from16 v68, v69

    .end local v69           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v68       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v78       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_d

    .line 554
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v101           #firstBoot:Z
    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v74       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v86       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v96       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v104       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v128       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v130       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v133       #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .restart local v146       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v158       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    .restart local v170       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_7
    move-exception v98

    .line 555
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 562
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v98

    .line 563
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 569
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v98

    .line 570
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 575
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v98

    .line 576
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 597
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v98

    .line 598
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 606
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v98

    .line 607
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 614
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v98

    .line 615
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 622
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v98

    .line 623
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 630
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v98

    .line 631
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 638
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v98

    .line 639
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 646
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v98

    .line 647
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 654
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v98

    .line 655
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 664
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v98

    move-object/from16 v25, v124

    .line 665
    .end local v124           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 672
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v98

    .line 673
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 680
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v98

    .line 681
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 693
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v98

    .line 694
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 702
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v98

    .line 703
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 711
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v98

    .line 712
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 719
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v98

    .line 720
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 735
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v98

    .line 736
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 742
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v98

    .line 743
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 751
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v98

    .line 752
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 759
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v98

    .line 760
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 767
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v98

    .line 768
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 775
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v98

    .line 776
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 783
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v98

    .line 784
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 794
    .end local v98           #e:Ljava/lang/Throwable;
    .restart local v141       #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_21
    move-exception v98

    .line 795
    .local v98, e:Ljava/lang/Exception;
    :try_start_78
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ISearchEngineManagerService systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_22

    goto/16 :goto_2a

    .line 802
    .end local v98           #e:Ljava/lang/Exception;
    .end local v141           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_22
    move-exception v98

    .line 803
    .local v98, e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 811
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v98

    .line 812
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 826
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v98

    .line 827
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SystemThemeService"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 861
    .end local v98           #e:Ljava/lang/Throwable;
    .restart local v102       #hasAkg:Z
    :catch_25
    move-exception v98

    .line 862
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting LenovoAkgService"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 876
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v98

    .line 877
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 885
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v98

    .line 886
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 898
    .end local v98           #e:Ljava/lang/Throwable;
    .restart local v76       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_28
    move-exception v98

    .line 899
    .local v98, e:Ljava/lang/Exception;
    :try_start_79
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_29

    goto/16 :goto_32

    .line 906
    .end local v98           #e:Ljava/lang/Exception;
    :catch_29
    move-exception v98

    .line 907
    .local v98, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 916
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v98

    .line 917
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 924
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v98

    .line 925
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting CoverObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 933
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v98

    .line 934
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 942
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v98

    .line 943
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 951
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v98

    .line 952
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 958
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v98

    .line 959
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 966
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v98

    .line 967
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 977
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v98

    .line 978
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v7, "SystemServer"

    const-string v9, "Failure starting LightAdjust Service"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 986
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v98

    .line 987
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 994
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v98

    .line 995
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1001
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v98

    .line 1002
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1013
    .end local v98           #e:Ljava/lang/Throwable;
    .restart local v72       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_35
    move-exception v98

    .line 1014
    .local v98, e:Ljava/lang/Exception;
    :try_start_7a
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_36

    goto/16 :goto_3f

    .line 1021
    .end local v98           #e:Ljava/lang/Exception;
    :catch_36
    move-exception v98

    .line 1022
    .local v98, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 1032
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v98

    .line 1033
    .local v98, e:Ljava/lang/Exception;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FAIL starting PerfService Manager"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v98

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 1040
    .end local v98           #e:Ljava/lang/Exception;
    .restart local v132       #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :catch_38
    move-exception v98

    .line 1041
    .restart local v98       #e:Ljava/lang/Exception;
    :try_start_7b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "perfservice systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_39

    goto/16 :goto_42

    .line 1048
    .end local v98           #e:Ljava/lang/Exception;
    :catch_39
    move-exception v98

    .line 1049
    .local v98, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "perfservice Failure starting PerfService"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 1057
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v98

    .line 1058
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1069
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v98

    .line 1070
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1076
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v98

    .line 1077
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1084
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v98

    .line 1085
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1091
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v98

    .line 1092
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1102
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v98

    .line 1103
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1114
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v98

    .line 1115
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_6d
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting LaunchIconThemeService"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 1137
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v98

    .line 1138
    .restart local v98       #e:Ljava/lang/Throwable;
    :goto_6e
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v98

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 1168
    .end local v72           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v76           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v98           #e:Ljava/lang/Throwable;
    .end local v102           #hasAkg:Z
    .end local v132           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v49       #safeMode:Z
    :cond_1f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_4c

    .line 1175
    :catch_42
    move-exception v98

    .line 1176
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1181
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v98

    .line 1182
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1188
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_44
    move-exception v98

    .line 1189
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1196
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_45
    move-exception v98

    .line 1197
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1203
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_46
    move-exception v98

    .line 1204
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1222
    .end local v98           #e:Ljava/lang/Throwable;
    .restart local v82       #config:Landroid/content/res/Configuration;
    .restart local v119       #metrics:Landroid/util/DisplayMetrics;
    .restart local v169       #w:Landroid/view/WindowManager;
    :catch_47
    move-exception v98

    .line 1223
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1228
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_48
    move-exception v98

    .line 1229
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1234
    .end local v98           #e:Ljava/lang/Throwable;
    :catch_49
    move-exception v98

    .line 1235
    .restart local v98       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 408
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v49           #safeMode:Z
    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v82           #config:Landroid/content/res/Configuration;
    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v91           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v96           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v98           #e:Ljava/lang/Throwable;
    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .end local v130           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v133           #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v146           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v158           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v169           #w:Landroid/view/WindowManager;
    .end local v170           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v101       #firstBoot:Z
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v124       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_4a
    move-exception v7

    goto/16 :goto_7

    .line 1137
    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #battery:Lcom/android/server/BatteryService;
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v101           #firstBoot:Z
    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .end local v111           #lights:Lcom/android/server/LightsService;
    .end local v124           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v72       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v74       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v76       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .restart local v86       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v96       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v102       #hasAkg:Z
    .restart local v104       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v128       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v131       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v132       #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v133       #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .restart local v146       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v158       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v170       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4b
    move-exception v98

    move-object/from16 v130, v131

    .end local v131           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v130       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    goto :goto_6e

    .line 1114
    .end local v117           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v118       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    :catch_4c
    move-exception v98

    move-object/from16 v117, v118

    .end local v118           #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    .restart local v117       #mLaunchIconThemeService:Lcom/lenovo/launchericontheme/LaunchIconThemeService;
    goto/16 :goto_6d

    .line 1102
    .end local v96           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_4d
    move-exception v98

    move-object/from16 v96, v97

    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v96       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_6c

    .line 1084
    .end local v80           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v81       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_4e
    move-exception v98

    move-object/from16 v80, v81

    .end local v81           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v80       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_6b

    .line 994
    .end local v72           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v132           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v75       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_4f
    move-exception v98

    move-object/from16 v74, v75

    .end local v75           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v74       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_6a

    .line 977
    .end local v109           #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v110       #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    :catch_50
    move-exception v98

    move-object/from16 v109, v110

    .end local v110           #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    .restart local v109       #lightAdjustService:Lcom/android/server/lightadjust/LightAdjustService;
    goto/16 :goto_69

    .line 951
    .end local v142           #serial:Lcom/android/server/SerialService;
    .restart local v143       #serial:Lcom/android/server/SerialService;
    :catch_51
    move-exception v98

    move-object/from16 v142, v143

    .end local v143           #serial:Lcom/android/server/SerialService;
    .restart local v142       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_68

    .line 942
    .end local v165           #usb:Lcom/android/server/usb/UsbService;
    .restart local v166       #usb:Lcom/android/server/usb/UsbService;
    :catch_52
    move-exception v98

    move-object/from16 v165, v166

    .end local v166           #usb:Lcom/android/server/usb/UsbService;
    .restart local v165       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_67

    .line 876
    .end local v76           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v170           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v171       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_53
    move-exception v98

    move-object/from16 v170, v171

    .end local v171           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v170       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_66

    .line 852
    :catch_54
    move-exception v7

    goto/16 :goto_2e

    .line 775
    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v102           #hasAkg:Z
    .restart local v87       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_55
    move-exception v98

    move-object/from16 v86, v87

    .end local v87           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v86       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_65

    .line 767
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    :catch_56
    move-exception v98

    move-object/from16 v112, v113

    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_64

    .line 751
    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #notification:Lcom/android/server/NotificationManagerService;
    :catch_57
    move-exception v98

    move-object/from16 v128, v129

    .end local v129           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v128       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_63

    .line 711
    .end local v156           #throttle:Lcom/android/server/ThrottleService;
    .restart local v157       #throttle:Lcom/android/server/ThrottleService;
    :catch_58
    move-exception v98

    move-object/from16 v156, v157

    .end local v157           #throttle:Lcom/android/server/ThrottleService;
    .restart local v156       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_62

    .line 693
    .end local v83           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v84       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_59
    move-exception v98

    move-object/from16 v83, v84

    .end local v84           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v83       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_61

    .line 680
    .end local v172           #wifi:Lcom/android/server/WifiService;
    .restart local v173       #wifi:Lcom/android/server/WifiService;
    :catch_5a
    move-exception v98

    move-object/from16 v172, v173

    .end local v173           #wifi:Lcom/android/server/WifiService;
    .restart local v172       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_60

    .line 672
    .end local v174           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v175       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_5b
    move-exception v98

    move-object/from16 v174, v175

    .end local v175           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v174       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5f

    .line 664
    :catch_5c
    move-exception v98

    goto/16 :goto_5e

    .line 654
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v124       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_5d
    move-exception v98

    move-object/from16 v29, v125

    .end local v125           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5d

    .line 646
    .end local v158           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v159       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_5e
    move-exception v98

    move-object/from16 v158, v159

    .end local v159           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v158       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_5c

    .line 622
    .end local v146           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v147       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_5f
    move-exception v98

    move-object/from16 v146, v147

    .end local v147           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_5b

    .line 614
    .end local v91           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v92       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_60
    move-exception v98

    move-object/from16 v91, v92

    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v91       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_5a

    .line 606
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_61
    move-exception v98

    move-object/from16 v114, v115

    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_59

    .line 597
    .end local v121           #mountService:Lcom/android/server/MountService;
    .restart local v122       #mountService:Lcom/android/server/MountService;
    :catch_62
    move-exception v98

    move-object/from16 v121, v122

    .end local v122           #mountService:Lcom/android/server/MountService;
    .restart local v121       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_58

    .line 584
    :catch_63
    move-exception v7

    goto/16 :goto_13

    .line 554
    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v105       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_64
    move-exception v98

    move-object/from16 v104, v105

    .end local v105           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v104       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_57

    .line 528
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v91           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v96           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v104           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .end local v130           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v133           #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v146           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v155           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v158           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v170           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v135       #power:Lcom/android/server/power/PowerManagerService;
    :catch_65
    move-exception v98

    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v93

    .end local v93           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v135

    .end local v135           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_55

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    :catch_66
    move-exception v98

    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v93

    .end local v93           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    :catch_67
    move-exception v98

    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_68
    move-exception v98

    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #cryptState:Ljava/lang/String;
    .restart local v101       #firstBoot:Z
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_69
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v70, v71

    .end local v71           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v70       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6a
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v77

    .end local v77           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6b
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v168       #vibrator:Lcom/android/server/VibratorService;
    :catch_6c
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v73

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v167, v168

    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v168       #vibrator:Lcom/android/server/VibratorService;
    :catch_6d
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v106

    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v167, v168

    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v78           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v168       #vibrator:Lcom/android/server/VibratorService;
    :catch_6e
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v78       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v167, v168

    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .end local v68           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v78           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v167           #vibrator:Lcom/android/server/VibratorService;
    .restart local v69       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v79       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v168       #vibrator:Lcom/android/server/VibratorService;
    :catch_6f
    move-exception v98

    move-object/from16 v151, v152

    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v68       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v78       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v167, v168

    .end local v168           #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v107, v108

    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_55

    .line 425
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v70           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v107           #installer:Lcom/android/server/pm/Installer;
    .end local v149           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v73       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #battery:Lcom/android/server/BatteryService;
    .restart local v106       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v108       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v150       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v152       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_70
    move-exception v98

    move-object/from16 v70, v71

    .end local v71           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v70       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_56

    .end local v73           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #battery:Lcom/android/server/BatteryService;
    .end local v90           #cryptState:Ljava/lang/String;
    .end local v101           #firstBoot:Z
    .end local v106           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v108           #installer:Lcom/android/server/pm/Installer;
    .end local v111           #lights:Lcom/android/server/LightsService;
    .end local v150           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v152           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v74       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v86       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v96       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v104       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v107       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v128       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v130       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v133       #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .restart local v146       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v149       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v158       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v170       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_20
    move-object/from16 v25, v124

    .end local v124           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_4b
.end method
