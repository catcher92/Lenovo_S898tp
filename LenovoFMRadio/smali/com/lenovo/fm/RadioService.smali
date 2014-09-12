.class public Lcom/lenovo/fm/RadioService;
.super Landroid/app/Service;
.source "RadioService.java"

# interfaces
.implements Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;
.implements Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/RadioService$RadioCallbacks;,
        Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;,
        Lcom/lenovo/fm/RadioService$HeadsetReceiver;,
        Lcom/lenovo/fm/RadioService$UsbReceiver;,
        Lcom/lenovo/fm/RadioService$LowBatteryReceiver;,
        Lcom/lenovo/fm/RadioService$MyBinder;
    }
.end annotation


# static fields
.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "com.android.fm.action.batterylow"

.field public static final ACTION_DEVICE_OPENED:Ljava/lang/String; = "com.android.fm.action.deviceopened"

.field public static final ACTION_DEVICE_SCANED:Ljava/lang/String; = "com.android.fm.action.devicescaned"

.field public static final ACTION_DEVICE_SCANING:Ljava/lang/String; = "com.android.fm.action.devicescaning"

.field public static final ACTION_DEVICE_SCAN_CANCELED:Ljava/lang/String; = "com.android.fm.action.devicescancanceled"

.field public static final ACTION_DEVICE_SCAN_FINISHED:Ljava/lang/String; = "com.android.fm.action.devicescanfinished"

.field public static final ACTION_DEVICE_SEEKED:Ljava/lang/String; = "com.android.fm.action.deviceseeked"

.field public static final ACTION_DEVICE_SEEKED_FAIL:Ljava/lang/String; = "seek_failed"

.field public static final ACTION_DEVICE_SEEKED_START:Ljava/lang/String; = "com.android.fm.action.deviceseekedstart"

.field public static final ACTION_EXIT_RADIO:Ljava/lang/String; = "com.android.fm.action.exit"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "com.android.fm.action.headsetplug"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "com.android.fm.action.localechanged"

.field public static final ACTION_PLAY_RADIO:Ljava/lang/String; = "com.android.fm.action.play"

.field public static final ACTION_TUNE_TO_LAST:Ljava/lang/String; = "com.android.fm.action.tunetolast"

.field public static final ACTION_TUNE_TO_NEXT:Ljava/lang/String; = "com.android.fm.action.tunetonext"

.field public static final ACTION_UPDATEUI:Ljava/lang/String; = "com.android.fm.action.updateui"

.field public static final APPLICATION_NAME:Ljava/lang/String; = "com.lenovo.leos.radio.RADIOACTIVITY"

.field public static final CHANNEL_FAVORITE:Ljava/lang/String; = "channelFavorite"

.field public static final CHANNEL_FREQ:Ljava/lang/String; = "channelFreq"

.field public static final CHANNEL_INDEX:Ljava/lang/String; = "channelIndex"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "channelName"

.field public static final CHANNEL_PLAYING:Ljava/lang/String; = "channelPlaying"

.field public static final EXIT_DIALOG:Ljava/lang/String; = "com.android.fm.action.exitdialog"

.field private static final EXIT_FM:I = 0x31266

.field public static final EXIT_RECORDING:Ljava/lang/String; = "com.android.fm.action.exitrecording"

.field private static final FEATURE_FM:Ljava/lang/String; = "com.lenovo.hardware.fm"

.field private static final FEATURE_FM_BUILTIN_ANTENNA:Ljava/lang/String; = "com.lenovo.hardware.antenna.builtin"

.field private static final FMRADIOSERVICE_STATUS:I = 0x65

.field public static final FM_EXIT:Ljava/lang/String; = "ACTION_INTENT_FM_EXIT"

.field public static final FM_SEEK_DIRECTION_DOWN:I = 0x0

.field public static final FM_SEEK_DIRECTION_UP:I = 0x1

.field private static final FOR_PROPRIETARY:I = 0x5

.field public static final KEY_LASTFREQ:Ljava/lang/String; = "LastFreq"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final PHONE_SCAN_EXIT:Ljava/lang/String; = "com.android.fm.action.phonescanexit"

.field public static final PREFS_NAME:Ljava/lang/String; = "RadioLastFreq"

.field public static final RECORDERHISTORY:Ljava/lang/String; = "com.lenovo.leos.radio.RECORDERHISTORY"

.field public static final RECORD_ERROR:Ljava/lang/String; = "com.android.fm.record.error"

.field private static final SAVE_RECORDING:I = 0x31261

.field public static final SECONDARYACTIVITYNAME:Ljava/lang/String; = "com.lenovo.leos.radio.RADIOLISTACTIVITY"

.field private static final SEEK_STATION:I = 0x31265

.field private static final SLEEPTIMER_EXPIRED:I = 0x63

.field private static final SLEEPTIMER_UPDATE:I = 0x64

.field private static final SLEEP_FOR_HEADSET_PLUG:J = 0x7d0L

.field private static final SLEEP_FOR_SWITCH_AUDIO_PATH:J = 0x190L

.field private static final START_RECORDER:I = 0x31262

.field private static final START_SCAN:I = 0x31264

.field private static final STOP_RECORDER:I = 0x31263

.field private static final TAG:Ljava/lang/String; = "RadioService"

.field private static final TOAST:I = 0x3b9aca00

.field private static mStrSleepTime:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private direction:Z

.field private doSleepProcessing:Ljava/lang/Runnable;

.field private freq:I

.field private hasInternalWire:Z

.field private isDBoperation:Z

.field private isFmOn:Z

.field private isHeadSetPlug:Z

.field private isSpeakerON:Z

.field public isStopFM:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExitFilter:Landroid/content/IntentFilter;

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field private mFMRecorder:Lcom/lenovo/fm/FMRecorder;

.field private mFmHandler:Landroid/os/Handler;

.field private mForcedUseForMedia:I

.field private mIsCancelSleepMode:Z

.field private mPhoneStateChanged:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

.field private mRelateSeekBar:Z

.field private mSleepAtPhoneTime:J

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mUIUpdateHandlerHandler:Landroid/os/Handler;

.field private mUserPause:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private m_AudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private m_CurrentChannelFreq2:F

.field private m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private m_MutedByCall:Z

.field private m_RadioDevices:Landroid/hardware/FmRadio;

.field private m_RadioDevicesCb:Lcom/lenovo/fm/RadioService$RadioCallbacks;

.field private m_TopActivity:Ljava/lang/String;

.field private m_UsbReceiver:Lcom/lenovo/fm/RadioService$UsbReceiver;

.field private m_backgroundshow:Z

.field private m_isAnalogModeEnable:Z

.field private m_isChangingAudioPath:Z

.field private m_isFMinputpathopening:Z

.field private m_isFmDeviceOpening:Z

.field private m_isGotAudioFocus:Z

.field private m_isPlaying:Z

.field private m_isScaning:Z

.field private m_isSeeking:Z

.field private m_isTuning:Z

.field private m_phonestatelistener:Landroid/telephony/PhoneStateListener;

.field private m_playingfreq:I

.field private m_remoteviews:Landroid/widget/RemoteViews;

.field private m_status:Landroid/app/Notification;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/lenovo/fm/RadioService;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 2376
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/lenovo/fm/RadioService;->sTimeArgs:[Ljava/lang/Object;

    .line 2377
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/lenovo/fm/RadioService;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/lenovo/fm/RadioService;->sFormatter:Ljava/util/Formatter;

    .line 2379
    const-string v0, ""

    sput-object v0, Lcom/lenovo/fm/RadioService;->mStrSleepTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    .line 106
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevicesCb:Lcom/lenovo/fm/RadioService$RadioCallbacks;

    .line 108
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    .line 110
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/lenovo/fm/RadioService$MyBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$MyBinder;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->binder:Landroid/os/IBinder;

    .line 126
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->mUserPause:Z

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lenovo.fm"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mExitFilter:Landroid/content/IntentFilter;

    .line 143
    new-instance v0, Lcom/lenovo/fm/RadioService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$1;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_backgroundshow:Z

    .line 165
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    .line 166
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    .line 167
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->hasInternalWire:Z

    .line 168
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->isSpeakerON:Z

    .line 169
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isPlaying:Z

    .line 170
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isSeeking:Z

    .line 171
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    .line 172
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isFMinputpathopening:Z

    .line 173
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    .line 174
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isAnalogModeEnable:Z

    .line 175
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isChangingAudioPath:Z

    .line 176
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isTuning:Z

    .line 177
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;

    .line 178
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_MutedByCall:Z

    .line 179
    iput v2, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    .line 180
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    .line 189
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->isStopFM:Z

    .line 478
    new-instance v0, Lcom/lenovo/fm/RadioService$4;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$4;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1156
    const/high16 v0, 0x42af

    iput v0, p0, Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F

    .line 1336
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->isDBoperation:Z

    .line 1604
    new-instance v0, Lcom/lenovo/fm/RadioService$7;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$7;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    .line 1633
    new-instance v0, Lcom/lenovo/fm/RadioService$8;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$8;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->m_AudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1995
    new-instance v0, Lcom/lenovo/fm/RadioService$9;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$9;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    .line 2145
    new-instance v0, Lcom/lenovo/fm/RadioService$10;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$10;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->doSleepProcessing:Ljava/lang/Runnable;

    .line 2191
    new-instance v0, Lcom/lenovo/fm/RadioService$11;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioService$11;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    .line 2367
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    .line 2370
    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2371
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->mIsCancelSleepMode:Z

    .line 2372
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->hasInternalWire:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_backgroundshow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/fm/RadioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->switchAudioToHeadset()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/fm/RadioService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/fm/RadioService;)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/FMRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isSeeking:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isSeeking:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_MutedByCall:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isSpeakerON:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/fm/RadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->mUserPause:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isTuning:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/lenovo/fm/RadioService;)Landroid/hardware/FmRadio;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->startRecording()V

    return-void
.end method

.method static synthetic access$2600(Lcom/lenovo/fm/RadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/fm/RadioService;->freq:I

    return v0
.end method

.method static synthetic access$2700(Lcom/lenovo/fm/RadioService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->direction:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/lenovo/fm/RadioService;F)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioService;->toDouble(F)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/lenovo/fm/RadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/lenovo/fm/RadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/lenovo/fm/RadioService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->updateExpiredSleepTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/fm/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/fm/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/fm/RadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/fm/RadioService;->mForcedUseForMedia:I

    return v0
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1047
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    if-nez v1, :cond_1

    .line 1049
    :cond_0
    const-string v1, "RadioService"

    const-string v2, "mFMPlayer is null in Service.enableFMAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void

    .line 1053
    :cond_1
    if-nez p1, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1055
    const-string v1, "RadioService"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1058
    :cond_2
    const-string v1, "RadioService"

    const-string v2, "stop FM audio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 1063
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1064
    const-string v1, "RadioService"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1069
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1070
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1077
    :goto_1
    const-string v1, "RadioService"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v1, "RadioService"

    const-string v2, "<<< FMRadioService.enableFMAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RadioService"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1073
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1074
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "RadioService"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitFM()V
    .locals 4

    .prologue
    const v3, 0x31266

    .line 931
    const-string v1, "RadioService"

    const-string v2, "service.exitFM start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    invoke-virtual {v1}, Lcom/lenovo/fm/FMRecorder;->getState()I

    move-result v0

    .line 935
    .local v0, fmState:I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 936
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    invoke-virtual {v1}, Lcom/lenovo/fm/FMRecorder;->stopPlayback()V

    .line 937
    const-string v1, "RadioService"

    const-string v2, "Stop playback FMRecorder."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .end local v0           #fmState:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 955
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 958
    const-string v1, "RadioService"

    const-string v2, "service.exitFM end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 938
    .restart local v0       #fmState:I
    :cond_1
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 939
    const-string v1, "RadioService"

    const-string v2, "Discard Recording."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->stopRecording()V

    .line 941
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->saveRecording()V

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 7

    .prologue
    .line 718
    const/4 v1, 0x0

    .line 720
    .local v1, actionFm:Ljava/lang/String;
    :try_start_0
    const-string v6, "android.content.Intent"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 721
    .local v2, clazz:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 722
    .local v5, newInstance:Landroid/content/Intent;
    const-string v6, "ACTION_FM"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 723
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v2           #clazz:Ljava/lang/Class;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #newInstance:Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 724
    :catch_0
    move-exception v3

    .line 726
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private getAudioStreamType(Ljava/lang/String;)I
    .locals 9
    .parameter "type"

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, audioManagerStreamType:I
    :try_start_0
    const-string v6, "android.media.AudioManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 821
    .local v1, clazz:Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Intent;

    aput-object v8, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 823
    .local v2, constructor:Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 825
    .local v5, newInstance:Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 826
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 830
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #newInstance:Landroid/media/AudioManager;
    :goto_0
    return v0

    .line 827
    :catch_0
    move-exception v3

    .line 828
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private hasSleepTimerActive()Z
    .locals 5

    .prologue
    .line 2184
    const/4 v0, 0x0

    .line 2185
    .local v0, active:Z
    iget-wide v1, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2186
    const/4 v0, 0x1

    .line 2188
    :cond_0
    return v0
.end method

.method private hasSleepTimerExpired()Z
    .locals 7

    .prologue
    .line 2171
    const/4 v0, 0x1

    .line 2172
    .local v0, expired:Z
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->hasSleepTimerActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2174
    .local v1, timeNow:J
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSleepTimerExpired - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-wide v3, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 2177
    const/4 v0, 0x0

    .line 2180
    .end local v1           #timeNow:J
    :cond_0
    return v0
.end method

.method private initiateSleepThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2129
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2130
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2135
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2139
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2142
    :cond_2
    return-void
.end method

.method private insertSearchedStation([I)[I
    .locals 7
    .parameter "iChannels"

    .prologue
    const/4 v3, 0x0

    .line 1194
    if-eqz p1, :cond_3

    .line 1195
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1196
    array-length v1, p1

    .line 1197
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1198
    aget v2, p1, v0

    iput v2, p0, Lcom/lenovo/fm/RadioService;->freq:I

    .line 1199
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    const v4, 0x3b9aca00

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1200
    iget v2, p0, Lcom/lenovo/fm/RadioService;->freq:I

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f040025

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/lenovo/fm/RadioService;->freq:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/fm/RadioService;->freq:I

    iget v2, p0, Lcom/lenovo/fm/RadioService;->freq:I

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v6

    if-eq v2, v6, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/lenovo/fm/RadioService;->AddChannel(Ljava/lang/String;III)J

    .line 1197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1205
    :cond_2
    if-lez v1, :cond_3

    .line 1206
    aget v2, p1, v3

    iput v2, p0, Lcom/lenovo/fm/RadioService;->freq:I

    .line 1209
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.exitdialog"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1210
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    .line 1211
    const/4 v2, 0x0

    return-object v2
.end method

.method private makeTimeString(J)Ljava/lang/String;
    .locals 7
    .parameter "secs"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 2232
    const v2, 0x7f04004b

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2238
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/lenovo/fm/RadioService;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2240
    sget-object v1, Lcom/lenovo/fm/RadioService;->sTimeArgs:[Ljava/lang/Object;

    .line 2241
    .local v1, timeArgs:[Ljava/lang/Object;
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2242
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2243
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2244
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2245
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2247
    sget-object v2, Lcom/lenovo/fm/RadioService;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 2343
    const-string v0, "RadioService"

    const-string v1, "FMRadioService.removeNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->stopForeground(Z)V

    .line 2345
    return-void
.end method

.method private setRDS(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 2271
    iget-boolean v1, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    if-nez v1, :cond_0

    .line 2272
    const/4 v0, -0x1

    .line 2284
    :goto_0
    return v0

    .line 2274
    :cond_0
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v0, -0x1

    .line 2276
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isRDSSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2277
    invoke-static {p1}, Lcom/lenovo/fm/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 2283
    :cond_1
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 3

    .prologue
    .line 1966
    const-string v0, "RadioService"

    const-string v1, "RadioService startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    if-nez v0, :cond_0

    .line 1969
    const-string v0, "RadioService"

    const-string v1, "RadioService null startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    new-instance v0, Lcom/lenovo/fm/FMRecorder;

    invoke-direct {v0}, Lcom/lenovo/fm/FMRecorder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    .line 1971
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    invoke-virtual {v0, p0}, Lcom/lenovo/fm/FMRecorder;->registerRecorderStateListener(Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;)V

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/fm/FMRecorder;->startRecording(D)V

    .line 1974
    return-void
.end method

.method private switchAudioToHeadset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1423
    const-string v1, "RadioService"

    const-string v2, "switchAudioToHeadset"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-boolean v1, p0, Lcom/lenovo/fm/RadioService;->isSpeakerON:Z

    if-eqz v1, :cond_2

    .line 1426
    invoke-static {v4, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result v0

    .line 1428
    .local v0, err:I
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEADSET PLUG : AudioSystem.setForceUse FORCE_SPEAKER err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    if-eqz v1, :cond_1

    .line 1439
    :cond_0
    const-string v1, "RadioService"

    const-string v2, "HEADSET PLUG :startFM sleep 2s"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/fm/RadioService;->sleep(J)V

    .line 1443
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/fm/RadioService;->isStopFM:Z

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1444
    const-string v1, "RadioService"

    const-string v2, "switchAudio, FM is stoped, ignore start"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :goto_1
    return-void

    .line 1432
    .end local v0           #err:I
    :cond_2
    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result v0

    .line 1434
    .restart local v0       #err:I
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEADSET PLUG : AudioSystem.setForceUse FORCE_NONE err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1447
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 1448
    const-string v1, "RadioService"

    const-string v2, "HEADSET PLUG :startFM"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1450
    const-string v1, "RadioService"

    const-string v2, "HEADSET PLUG :unmute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private toDouble(F)D
    .locals 6
    .parameter "f"

    .prologue
    .line 2093
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toDouble float "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2095
    .local v0, b:Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2096
    .local v1, d:D
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toDouble "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-wide v1
.end method

.method private updateExpiredSleepTime()V
    .locals 8

    .prologue
    .line 2218
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->hasSleepTimerActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2220
    .local v2, timeNow:J
    iget-wide v4, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    .line 2221
    iget-wide v4, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 2222
    .local v0, seconds:J
    invoke-direct {p0, v0, v1}, Lcom/lenovo/fm/RadioService;->makeTimeString(J)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/fm/RadioService;->mStrSleepTime:Ljava/lang/String;

    .line 2223
    const-string v4, "RadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateExpiredSleepTime mStrSleepTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/fm/RadioService;->mStrSleepTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    .end local v0           #seconds:J
    .end local v2           #timeNow:J
    :cond_0
    :goto_0
    return-void

    .line 2226
    .restart local v2       #timeNow:J
    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    goto :goto_0
.end method


# virtual methods
.method public AddChannel(Ljava/lang/String;III)J
    .locals 3
    .parameter "name"
    .parameter "freq"
    .parameter "favorite"
    .parameter "isPlaying"

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 1383
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f080048

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1386
    :cond_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1387
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1390
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/lenovo/fm/RadioDBOperation;->AddChannel(Ljava/lang/String;III)J

    move-result-wide v1

    return-wide v1
.end method

.method public DBoperating()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isDBoperation:Z

    return v0
.end method

.method public IsInternalWireSupport()Z
    .locals 5

    .prologue
    .line 326
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildModle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "S820"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "S920"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    :cond_0
    const/4 v2, 0x1

    .line 339
    :goto_0
    return v2

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 334
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v2, "com.lenovo.hardware.antenna.builtin"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 337
    .local v0, hasFMBuiltinAntenna:Ljava/lang/Boolean;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsInternalWireSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public abandonAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 834
    const-string v3, "RadioService"

    const-string v4, "abandonAudioFocus"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_AudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 836
    .local v0, result:I
    if-ne v0, v1, :cond_0

    .line 837
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    .line 840
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public acquireWakeLock()V
    .locals 2

    .prologue
    .line 531
    const-string v0, "RadioService"

    const-string v1, "acquire wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 533
    return-void
.end method

.method public addFavorite(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 1344
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->isDBoperation:Z

    .line 1346
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0, v3, p1}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelFavorite(II)Z

    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isDBoperation:Z

    .line 1348
    return-void
.end method

.method public cancelFavorite(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 1352
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isDBoperation:Z

    .line 1354
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0, v3, p1}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelFavorite(II)Z

    .line 1355
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->isDBoperation:Z

    .line 1356
    return-void
.end method

.method public cancelNotification()V
    .locals 3

    .prologue
    .line 1796
    const-string v1, "RadioService"

    const-string v2, "cancelNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1798
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1799
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->stopForeground(Z)V

    .line 1800
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_backgroundshow:Z

    .line 1801
    return-void
.end method

.method public cancelSleepMode(Z)V
    .locals 0
    .parameter "cancel"

    .prologue
    .line 2121
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->mIsCancelSleepMode:Z

    .line 2122
    return-void
.end method

.method public cancelseek()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isSeeking:Z

    .line 1217
    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    .line 1218
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-static {}, Lcom/lenovo/fm/FMRadioNative;->stopscan()Z

    move-result v0

    .line 1224
    :goto_0
    return v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v0}, Landroid/hardware/FmRadio;->cancel()I

    .line 1224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clean_envoirment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 597
    const-string v0, "RadioService"

    const-string v1, "Clean_environment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {v2}, Lcom/lenovo/fm/WiredControler;->setListener(Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;)V

    .line 599
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->close()V

    .line 600
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->cancelNotification()V

    .line 602
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 604
    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 612
    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_UsbReceiver:Lcom/lenovo/fm/RadioService$UsbReceiver;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_UsbReceiver:Lcom/lenovo/fm/RadioService$UsbReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 616
    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_UsbReceiver:Lcom/lenovo/fm/RadioService$UsbReceiver;

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_4

    .line 620
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 623
    :cond_4
    const-string v0, "RadioService"

    const-string v1, "Clean_environment Wakelock release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 625
    return-void
.end method

.method public closeDevice()Z
    .locals 4

    .prologue
    .line 2348
    const-string v1, "RadioService"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const/4 v0, 0x0

    .line 2351
    .local v0, isDeviceClose:Z
    invoke-static {}, Lcom/lenovo/fm/FMRadioNative;->closedev()Z

    move-result v0

    .line 2353
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    return v0
.end method

.method public deleteAllChannel()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->deleteAllChannel()Z

    move-result v0

    return v0
.end method

.method public deleteChannel(I)Z
    .locals 8
    .parameter "freq"

    .prologue
    const v7, 0x7f080048

    .line 1237
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    if-ne v1, p1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1239
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v3, p1

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1246
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1247
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1250
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v1, p1}, Lcom/lenovo/fm/RadioDBOperation;->deleteChannel(I)Z

    move-result v1

    return v1

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v3, p1

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public endSleepTime()V
    .locals 2

    .prologue
    .line 2102
    const-string v0, "RadioService"

    const-string v1, ">>> endSleepTime:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    .line 2104
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 2108
    :cond_0
    const-string v0, "RadioService"

    const-string v1, "<<< endSleepTime:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    return-void
.end method

.method public getAllchannels()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioDBOperation;->getAllChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 1233
    .local v0, cursor:Landroid/database/Cursor;
    return-object v0
.end method

.method public getChangingAudioPathStatus()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isChangingAudioPath:Z

    return v0
.end method

.method public getPhoneStateChanged()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->mPhoneStateChanged:Z

    return v0
.end method

.method public getPlayingChannels()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingFreq()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    return v0
.end method

.method public getPlayingStatus()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isPlaying:Z

    return v0
.end method

.method public getRelateSeekBar()Z
    .locals 1

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->mRelateSeekBar:Z

    return v0
.end method

.method public getRemainingSeconds()J
    .locals 6

    .prologue
    .line 2256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2257
    .local v0, timeNow:J
    iget-wide v2, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getRunningActivityName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1804
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1806
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1810
    .local v3, forGroundActivity:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.lenovo.leos.radio"

    const-string v6, "com.lenovo.leos.radio.RadioActivity"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    .local v1, arg:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1813
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1814
    .local v2, currentActivity:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1815
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 1817
    .end local v2           #currentActivity:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1
    return-object v5

    .line 1812
    .restart local v2       #currentActivity:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1817
    .end local v2           #currentActivity:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getScaningStatus()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    return v0
.end method

.method public getSeekingStatus()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isSeeking:Z

    return v0
.end method

.method public getSleepTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2252
    sget-object v0, Lcom/lenovo/fm/RadioService;->mStrSleepTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificChannel(I)Landroid/database/Cursor;
    .locals 1
    .parameter "channelfreq"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0, p1}, Lcom/lenovo/fm/RadioDBOperation;->getSpecificChannel(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTuningStatus()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isTuning:Z

    return v0
.end method

.method public get_topactivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getcallstate()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getchannlecount()I
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->getchannlecount()I

    move-result v0

    return v0
.end method

.method public getspeakerEnable()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isSpeakerON:Z

    return v0
.end method

.method public init_envoirment()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-static {p0}, Lcom/lenovo/fm/RadioDBOperation;->getInstance(Landroid/content/Context;)Lcom/lenovo/fm/RadioDBOperation;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    .line 573
    new-instance v2, Lcom/lenovo/fm/RadioService$LowBatteryReceiver;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/fm/RadioService$LowBatteryReceiver;-><init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V

    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 574
    new-instance v2, Lcom/lenovo/fm/RadioService$HeadsetReceiver;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/fm/RadioService$HeadsetReceiver;-><init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V

    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v2, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/fm/RadioService$LanguageChangeReceiver;-><init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V

    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 576
    new-instance v2, Lcom/lenovo/fm/RadioService$UsbReceiver;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/fm/RadioService$UsbReceiver;-><init>(Lcom/lenovo/fm/RadioService;Lcom/lenovo/fm/RadioService$1;)V

    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->m_UsbReceiver:Lcom/lenovo/fm/RadioService$UsbReceiver;

    .line 577
    invoke-static {p0}, Lcom/lenovo/fm/WiredControler;->setListener(Lcom/lenovo/fm/WiredControler$onWireControlerSendCommand;)V

    .line 578
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_LowBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/fm/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_HeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/fm/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_LanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/lenovo/fm/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 588
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 589
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_UsbReceiver:Lcom/lenovo/fm/RadioService$UsbReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/fm/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    return-void
.end method

.method public isDeviceOpening()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    return v0
.end method

.method public isFavorite(I)Z
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v0, 0x1

    .line 1360
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFavorite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v1, p1}, Lcom/lenovo/fm/RadioDBOperation;->isFavoritedFrequency(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 787
    const-string v1, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioService isFmOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    const-string v4, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTK isFmOn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/lenovo/fm/FMRadioNative;->isFMPoweredUp()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {}, Lcom/lenovo/fm/FMRadioNative;->isFMPoweredUp()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 799
    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 789
    goto :goto_0

    :cond_1
    move v2, v3

    .line 790
    goto :goto_1

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_3

    .line 794
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v1}, Landroid/hardware/FmRadio;->isFmOn()Z

    move-result v0

    .line 796
    .local v0, tmp:Z
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAisFmOn qcom= = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 797
    goto :goto_1

    .end local v0           #tmp:Z
    :cond_3
    move v2, v3

    .line 799
    goto :goto_1
.end method

.method public isHeadSetPlug()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    return v0
.end method

.method public isMute()Z
    .locals 2

    .prologue
    .line 1039
    const-string v0, "RadioService"

    const-string v1, "isMute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v0}, Landroid/hardware/FmRadio;->isMute()Z

    move-result v0

    .line 1043
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRDSSupported()Z
    .locals 4

    .prologue
    .line 2293
    const/4 v0, 0x0

    .line 2294
    .local v0, isRDSSupported:Z
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    return v0
.end method

.method public isSavedFrequency(I)Z
    .locals 1
    .parameter "freq"

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0, p1}, Lcom/lenovo/fm/RadioDBOperation;->isSavedFrequency(I)Z

    move-result v0

    return v0
.end method

.method public isSleepModeCanceled()Z
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->mIsCancelSleepMode:Z

    return v0
.end method

.method public isSleepTimerActive()Z
    .locals 1

    .prologue
    .line 2267
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->hasSleepTimerActive()Z

    move-result v0

    return v0
.end method

.method public isSleepTimerExpired()Z
    .locals 1

    .prologue
    .line 2262
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method public isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1719
    iget v1, p0, Lcom/lenovo/fm/RadioService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ismUserPause()Z
    .locals 1

    .prologue
    .line 1926
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->mUserPause:Z

    return v0
.end method

.method public mtkTuneRadio(F)Z
    .locals 10
    .parameter "freq"

    .prologue
    const v9, 0x7f080048

    .line 987
    const-string v6, "RadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mtkTuneRadio  freq ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v6}, Lcom/lenovo/fm/RadioDBOperation;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 990
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 991
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    const-string v6, "channelFreq"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 993
    .local v1, index:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 994
    .local v4, temp:I
    const-string v6, "RadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mtkTuneRadio"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelPlaying(II)Z

    .line 997
    .end local v1           #index:I
    .end local v4           #temp:I
    :cond_0
    if-eqz v0, :cond_1

    .line 998
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1000
    :cond_1
    const/4 v2, 0x1

    .line 1001
    .local v2, isSuccessTune:Z
    iput p1, p0, Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F

    .line 1003
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/lenovo/fm/RadioService$5;

    invoke-direct {v6, p0, p1}, Lcom/lenovo/fm/RadioService$5;-><init>(Lcom/lenovo/fm/RadioService;F)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1011
    .local v5, tuneThread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1014
    const/high16 v6, 0x4120

    mul-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    .line 1016
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    iget v7, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    invoke-virtual {v6, v7}, Lcom/lenovo/fm/RadioDBOperation;->isSavedFrequency(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1017
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    const/4 v7, 0x1

    iget v8, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelPlaying(II)Z

    .line 1018
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 1019
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1020
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const-string v7, "channelName"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1023
    :cond_2
    if-eqz v0, :cond_3

    .line 1024
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1030
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v6, :cond_4

    .line 1031
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1032
    .local v3, nm:Landroid/app/NotificationManager;
    const/16 v6, 0x65

    iget-object v7, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v3, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1035
    .end local v3           #nm:Landroid/app/NotificationManager;
    :cond_4
    return v2

    .line 1026
    :cond_5
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_3

    .line 1027
    iget-object v6, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MHz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public mute()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1082
    const-string v1, "RadioService"

    const-string v2, "mute"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_3

    .line 1085
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Lenovo K860"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1086
    :cond_0
    const/4 v0, 0x0

    .line 1094
    :cond_1
    :goto_0
    return v0

    .line 1088
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v1, v0}, Landroid/hardware/FmRadio;->mute(Z)I

    move-result v0

    goto :goto_0

    .line 1091
    :cond_3
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioNative;->setmute(Z)I

    move-result v0

    goto :goto_0
.end method

.method public newMediaInstance()V
    .locals 5

    .prologue
    .line 428
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 429
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 431
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v3, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 450
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 454
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 460
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v1

    .line 436
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 440
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 443
    .local v1, ex:Ljava/lang/SecurityException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v1           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 446
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 457
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v0

    .line 458
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 560
    const-string v0, "RadioService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1700
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1701
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1713
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1714
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1716
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 343
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 344
    const-string v3, "RadioService"

    const-string v4, "RadioService: onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->newMediaInstance()V

    .line 362
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->init_envoirment()V

    .line 363
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 365
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/lenovo/fm/WiredControler;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 367
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    .line 368
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->hasInternalWire:Z

    .line 370
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCreat isHeadSetPlug "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCreat hasInternalWire "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/fm/RadioService;->hasInternalWire:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-boolean v3, p0, Lcom/lenovo/fm/RadioService;->isHeadSetPlug:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/lenovo/fm/RadioService;->hasInternalWire:Z

    if-nez v3, :cond_2

    .line 373
    const-string v3, "RadioService"

    const-string v4, "no Earphone, sendBroadCast"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.headsetplug"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    :goto_1
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 415
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 418
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 419
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 421
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 424
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->mExitFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/fm/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    return-void

    .line 351
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    :try_start_0
    new-instance v3, Lcom/lenovo/fm/RadioService$RadioCallbacks;

    invoke-direct {v3, p0}, Lcom/lenovo/fm/RadioService$RadioCallbacks;-><init>(Lcom/lenovo/fm/RadioService;)V

    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevicesCb:Lcom/lenovo/fm/RadioService$RadioCallbacks;

    .line 352
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-nez v3, :cond_0

    .line 353
    new-instance v3, Landroid/hardware/FmRadio;

    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevicesCb:Lcom/lenovo/fm/RadioService$RadioCallbacks;

    invoke-direct {v3, v4, p0}, Landroid/hardware/FmRadio;-><init>(Landroid/hardware/FmRadio$IEventCallbacks;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    const-string v3, "RadioService"

    const-string v4, "open fm device failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 376
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lenovo/fm/RadioService$2;

    invoke-direct {v3, p0}, Lcom/lenovo/fm/RadioService$2;-><init>(Lcom/lenovo/fm/RadioService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 391
    .local v2, turnon:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 402
    .end local v2           #turnon:Ljava/lang/Thread;
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lenovo/fm/RadioService$3;

    invoke-direct {v3, p0}, Lcom/lenovo/fm/RadioService$3;-><init>(Lcom/lenovo/fm/RadioService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    .restart local v2       #turnon:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 537
    const-string v0, "RadioService"

    const-string v1, "RadioService: onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 540
    const-string v0, "RadioService"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 545
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->exitFM()V

    .line 554
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 555
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 550
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/lenovo/fm/WiredControler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public onLongPressed()V
    .locals 2

    .prologue
    .line 1991
    const-string v0, "RadioService"

    const-string v1, "WiredControler onLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.action.exit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1993
    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 0

    .prologue
    .line 2404
    return-void
.end method

.method public onRecorderError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 2391
    const-string v0, "RadioService"

    const-string v1, "RadioService onRecorderError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2393
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.record.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2398
    :cond_0
    return-void
.end method

.method public onRecorderStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2386
    return-void
.end method

.method public onShortPressed()V
    .locals 2

    .prologue
    .line 1985
    const-string v0, "RadioService"

    const-string v1, "WiredControler onShortPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.action.play"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1987
    return-void
.end method

.method public onUnBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 566
    const-string v0, "RadioService"

    const-string v1, "onUnBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public powerDown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2299
    const-string v2, "RadioService"

    const-string v3, ">>> FMRadioService.powerDown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2302
    const-string v1, "RadioService"

    const-string v2, "Error: device is already power down."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    :cond_0
    :goto_0
    return v0

    .line 2306
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->mute()I

    .line 2308
    invoke-direct {p0, v1}, Lcom/lenovo/fm/RadioService;->enableFMAudio(Z)V

    .line 2310
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isSleepTimerActive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isSleepModeCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2311
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->endSleepTime()V

    .line 2314
    :cond_2
    invoke-static {v1}, Lcom/lenovo/fm/FMRadioNative;->powerdown(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2315
    const-string v0, "RadioService"

    const-string v2, "Error: powerdown failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2316
    goto :goto_0

    .line 2331
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2332
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2333
    const-string v1, "RadioService"

    const-string v2, "release wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseFMPlayer()V
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 966
    :cond_0
    return-void
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 526
    const-string v0, "RadioService"

    const-string v1, "release wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 528
    return-void
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 805
    const-string v2, "RadioService"

    const-string v3, "requestAudioFocus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->m_AudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 809
    .local v0, result:I
    if-ne v0, v1, :cond_0

    .line 810
    const-string v2, "RadioService"

    const-string v3, "requestAudioFocus got Granted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iput-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    .line 814
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveRecording()V
    .locals 3

    .prologue
    .line 1947
    const-string v0, "RadioService"

    const-string v1, ">>> saveRecording start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    invoke-virtual {v2}, Lcom/lenovo/fm/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/fm/FMRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1952
    const-string v0, "RadioService"

    const-string v1, "<<< saveRecording end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :goto_0
    return-void

    .line 1956
    :cond_0
    const-string v0, "RadioService"

    const-string v1, "<<< saveRecording. not saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveRecordingAsync()V
    .locals 2

    .prologue
    const v1, 0x31261

    .line 1942
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1943
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1944
    return-void
.end method

.method public scan(I)I
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1139
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1141
    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    .line 1142
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->requestAudioFocus()Z

    .line 1144
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getspeakerEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioService;->setspeakerEnable(Z)V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v0, p1}, Landroid/hardware/FmRadio;->scan(I)I

    move-result v0

    .line 1148
    :cond_1
    return v0
.end method

.method public seek(I)I
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1130
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isSeeking:Z

    .line 1133
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v0, p1}, Landroid/hardware/FmRadio;->seek(I)I

    move-result v0

    .line 1135
    :cond_0
    return v0
.end method

.method public seekStationAsync(FZ)V
    .locals 2
    .parameter "m_CurrentChannelFreq2"
    .parameter "direction"

    .prologue
    .line 1160
    iput p1, p0, Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F

    .line 1161
    iput-boolean p2, p0, Lcom/lenovo/fm/RadioService;->direction:Z

    .line 1162
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    const v1, 0x31265

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1168
    return-void
.end method

.method public setAnalogMode(Z)I
    .locals 3
    .parameter "set"

    .prologue
    .line 1118
    const-string v0, "RadioService"

    const-string v1, "setAnalogMode "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isAnalogModeEnable:Z

    if-eq v0, p1, :cond_0

    .line 1120
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnalogMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isAnalogModeEnable:Z

    .line 1124
    const/4 v0, 0x0

    .line 1126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPhoneStateChanged(Z)V
    .locals 0
    .parameter "phoneStateChanged"

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->mPhoneStateChanged:Z

    .line 267
    return-void
.end method

.method public setPlayingStatus(Z)V
    .locals 4
    .parameter "isPlaying"

    .prologue
    const v3, 0x7f080043

    .line 208
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->m_isPlaying:Z

    .line 209
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v1, :cond_3

    .line 210
    if-eqz p1, :cond_2

    .line 211
    const-string v1, "RadioService"

    const-string v2, "Radioservice setPlayingstatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f020063

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 223
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 245
    :cond_0
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 246
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 251
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_1
    :goto_1
    return-void

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f020060

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 239
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_phonestatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 248
    :cond_3
    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->startNotification()V

    goto :goto_1
.end method

.method public setRelateSeekBar(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2407
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->mRelateSeekBar:Z

    .line 2408
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 4
    .parameter "isSpeaker"

    .prologue
    .line 1394
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.useSpeaker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/lenovo/fm/RadioService;->mForcedUseForMedia:I

    .line 1397
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeakerPhoneOn mForceUseForMedia = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/fm/RadioService;->mForcedUseForMedia:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/fm/RadioService$6;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioService$6;-><init>(Lcom/lenovo/fm/RadioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1415
    .local v0, turnon:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1419
    const-string v1, "RadioService"

    const-string v2, "<<< FMRadioService.useSpeaker"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void

    .line 1395
    .end local v0           #turnon:Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set_topactivity(Ljava/lang/String;)V
    .locals 5
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    .line 197
    iput-object p1, p0, Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->m_TopActivity:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 202
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 203
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 205
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public setmUserPause(Z)V
    .locals 0
    .parameter "mUserPause"

    .prologue
    .line 1930
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioService;->mUserPause:Z

    .line 1931
    return-void
.end method

.method public setspeakerEnable(Z)V
    .locals 5
    .parameter "set"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 736
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setspeakerEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isChangingAudioPath:Z

    if-eqz v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 739
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->m_isChangingAudioPath:Z

    .line 747
    if-eqz p1, :cond_3

    .line 748
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioService;->isSpeakerON:Z

    .line 749
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioService;->setAnalogMode(Z)I

    .line 754
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    if-eqz v0, :cond_2

    .line 756
    const-string v0, "RadioService"

    const-string v1, "setSpeaker force speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 782
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/lenovo/fm/RadioService;->m_isChangingAudioPath:Z

    goto :goto_0

    .line 765
    :cond_3
    iput-boolean v4, p0, Lcom/lenovo/fm/RadioService;->isSpeakerON:Z

    .line 768
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 769
    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->setAnalogMode(Z)I

    .line 771
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    if-eqz v0, :cond_2

    .line 772
    const-string v0, "RadioService"

    const-string v1, "setSpeaker force none"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1
.end method

.method public sleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1935
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public startFM()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 672
    iput-boolean v5, p0, Lcom/lenovo/fm/RadioService;->isStopFM:Z

    .line 673
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 674
    const-string v5, "RadioService"

    const-string v6, "MTK startFM"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->requestAudioFocus()Z

    .line 678
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->newMediaInstance()V

    .line 681
    :cond_0
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 682
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->unmute()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v2

    .line 684
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 687
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_1
    const-string v5, "RadioService"

    const-string v6, "Qualcomm or Samsung startFM"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :try_start_1
    const-string v5, "android.media.AudioManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 699
    .local v1, clazz:Ljava/lang/Class;
    const-string v5, "MODE_FM_ON"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 701
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 703
    .local v0, FM_ON:I
    const-string v5, "RadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioService startFM() getting MODE_FM_ON === "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v5, "setFmRxMode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 707
    .local v4, method:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v5, "RadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioService startFM() method ==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    .end local v0           #FM_ON:I
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_1
    iput-boolean v9, p0, Lcom/lenovo/fm/RadioService;->m_isFMinputpathopening:Z

    goto :goto_0

    .line 709
    :catch_1
    move-exception v2

    .line 711
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startNotification()V
    .locals 9

    .prologue
    const v8, 0x7f080044

    const v7, 0x7f080042

    const/16 v6, 0x65

    const v4, 0x7f080043

    const/4 v5, 0x0

    .line 1723
    const-string v1, "RadioService"

    const-string v2, "startNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    .line 1726
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_backgroundshow:Z

    .line 1727
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    .line 1728
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f080040

    const v3, 0x7f020021

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1736
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f02001c

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1738
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.tunetolast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1747
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f02005d

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1749
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.tunetonext"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1753
    iget-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_isPlaying:Z

    if-eqz v1, :cond_0

    .line 1754
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f020063

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1756
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1762
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.action.play"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1766
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f080045

    const v3, 0x7f02005a

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1768
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f080045

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.action.exit"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1777
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f080047

    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1781
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    .line 1782
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1783
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1784
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    const v2, 0x7f020064

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1785
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->get_topactivity()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1788
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1789
    .local v0, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1790
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {p0, v6, v1}, Lcom/lenovo/fm/RadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1793
    return-void

    .line 1758
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f020060

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1760
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    goto/16 :goto_0
.end method

.method public startRecordingAsync()V
    .locals 2

    .prologue
    const v1, 0x31262

    .line 1960
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1961
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1962
    return-void
.end method

.method public startScan()[I
    .locals 6

    .prologue
    .line 1171
    invoke-static {}, Lcom/lenovo/fm/FMRadioNative;->autoscan()[S

    move-result-object v2

    .line 1172
    .local v2, shortChannels:[S
    const/4 v1, 0x0

    .line 1173
    .local v1, iChannels:[I
    if-eqz v2, :cond_0

    .line 1174
    array-length v3, v2

    .line 1175
    .local v3, size:I
    new-array v1, v3, [I

    .line 1176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1177
    aget-short v4, v2, v0

    aput v4, v1, v0

    .line 1176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_0
    if-eqz v1, :cond_2

    .line 1182
    const/4 v4, 0x0

    aget v4, v1, v4

    iput v4, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    .line 1183
    iget v4, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioService;->isFavorite(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1184
    const/4 v4, 0x1

    iget v5, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/fm/RadioService;->updateChannelPlaying(II)V

    .line 1186
    :cond_1
    invoke-direct {p0, v1}, Lcom/lenovo/fm/RadioService;->insertSearchedStation([I)[I

    .line 1188
    :cond_2
    return-object v1
.end method

.method public startSleepTime(J)V
    .locals 4
    .parameter "seconds"

    .prologue
    .line 2113
    const-string v0, "RadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> startSleepTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->mIsCancelSleepMode:Z

    .line 2115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/fm/RadioService;->mSleepAtPhoneTime:J

    .line 2116
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->initiateSleepThread()V

    .line 2117
    const-string v0, "RadioService"

    const-string v1, "<<< startSleepTime:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    return-void
.end method

.method public startSyncScan()V
    .locals 2

    .prologue
    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/fm/RadioService;->m_isScaning:Z

    .line 1153
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFmHandler:Landroid/os/Handler;

    const v1, 0x31264

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1154
    return-void
.end method

.method public stopFM()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 632
    const-string v5, "RadioService"

    const-string v6, "stopFM"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iput-boolean v7, p0, Lcom/lenovo/fm/RadioService;->isStopFM:Z

    .line 634
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 637
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->pause()V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    const-string v5, "RadioService"

    const-string v6, "else setFmRxMode OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :try_start_0
    const-string v5, "android.media.AudioManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 653
    .local v1, clazz:Ljava/lang/Class;
    const-string v5, "MODE_FM_OFF"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 655
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 657
    .local v0, FM_OFF:I
    const-string v5, "RadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioService stopFM() getting MODE_FM_OFF === "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v5, "setFmRxMode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 661
    .local v4, method:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v5, "RadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RadioService stopFM() method ==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v0           #FM_OFF:I
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_1
    iput-boolean v9, p0, Lcom/lenovo/fm/RadioService;->m_isFMinputpathopening:Z

    goto :goto_0

    .line 663
    :catch_0
    move-exception v2

    .line 665
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    if-nez v0, :cond_0

    .line 1978
    new-instance v0, Lcom/lenovo/fm/FMRecorder;

    invoke-direct {v0}, Lcom/lenovo/fm/FMRecorder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mFMRecorder:Lcom/lenovo/fm/FMRecorder;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRecorder;->stopRecording()V

    .line 1981
    return-void
.end method

.method public switchAntenna(I)I
    .locals 4
    .parameter "antenna"

    .prologue
    .line 312
    const-string v1, "RadioService"

    const-string v2, ">>> FMRadioService.switchAntenna"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {p1}, Lcom/lenovo/fm/FMRadioNative;->switchAntenna(I)I

    move-result v0

    .line 321
    .local v0, ret:I
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v0
.end method

.method public tune2NewChannel(I)V
    .locals 12
    .parameter "freq"

    .prologue
    const v11, 0x7f080048

    const/4 v10, 0x1

    .line 1264
    iget-boolean v4, p0, Lcom/lenovo/fm/RadioService;->m_MutedByCall:Z

    if-ne v4, v10, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/fm/RadioService;->m_isGotAudioFocus:Z

    if-nez v4, :cond_2

    .line 1268
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->requestAudioFocus()Z

    .line 1269
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getspeakerEnable()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioService;->setspeakerEnable(Z)V

    .line 1272
    :cond_2
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioDBOperation;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 1273
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1274
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    const-string v4, "channelFreq"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1276
    .local v1, index:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1277
    .local v3, temp:I
    const-string v4, "RadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tune2NewChannel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelPlaying(II)Z

    .line 1280
    .end local v1           #index:I
    .end local v3           #temp:I
    :cond_3
    if-eqz v0, :cond_4

    .line 1281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1288
    :cond_4
    iput p1, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    .line 1289
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1290
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1291
    invoke-virtual {p0, v10}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1294
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 1295
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v4, p1}, Landroid/hardware/FmRadio;->tune(I)I

    .line 1297
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v4, p1}, Lcom/lenovo/fm/RadioDBOperation;->isSavedFrequency(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1298
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v4, v10, p1}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelPlaying(II)Z

    .line 1299
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1301
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const-string v5, "channelName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1304
    :cond_6
    if-eqz v0, :cond_7

    .line 1305
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1311
    :cond_7
    :goto_1
    invoke-virtual {p0, v10}, Lcom/lenovo/fm/RadioService;->setRelateSeekBar(Z)V

    .line 1313
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v4, :cond_0

    .line 1314
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1315
    .local v2, nm:Landroid/app/NotificationManager;
    const/16 v4, 0x65

    iget-object v5, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1307
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_8
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_7

    .line 1308
    iget-object v4, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v6, p1

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MHz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public tuneRadio(I)I
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x447a

    .line 969
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tuneRadio to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iput-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_isTuning:Z

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, tuneFreq:I
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v2

    if-nez v2, :cond_1

    .line 973
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v1, p1}, Landroid/hardware/FmRadio;->tune(I)I

    move-result v0

    :cond_0
    move v1, v0

    .line 981
    :goto_0
    return v1

    .line 979
    :cond_1
    const-string v2, "RadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tuneRadio to MTK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-float v4, p1

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    int-to-float v2, p1

    div-float/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioService;->mtkTuneRadio(F)Z

    goto :goto_0
.end method

.method public turnOffRadio()I
    .locals 3

    .prologue
    .line 911
    const-string v1, "RadioService"

    const-string v2, "turnOffRadio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x1

    .line 913
    .local v0, result:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    .line 914
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    const-string v1, "RadioService"

    const-string v2, "turnOffRadio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-direct {p0}, Lcom/lenovo/fm/RadioService;->exitFM()V

    .line 917
    const/4 v0, 0x0

    .line 927
    :cond_0
    :goto_0
    return v0

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "RadioService"

    const-string v2, "turnOffRadio qucom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v1}, Landroid/hardware/FmRadio;->turnOff()I

    move-result v0

    goto :goto_0
.end method

.method public turnOnRadio()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 844
    const-string v3, "RadioService"

    const-string v4, "turnOnRadio"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turnOnRadio isFmOn() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v3

    if-nez v3, :cond_9

    .line 850
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m_isFmDeviceOpening="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-boolean v3, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    if-eq v3, v2, :cond_9

    .line 853
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->m_isFmDeviceOpening:Z

    .line 854
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 855
    const-string v3, "RadioService"

    const-string v4, "turn on fm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v1, 0x0

    .line 857
    .local v1, result:Z
    invoke-static {}, Lcom/lenovo/fm/FMRadioNative;->opendev()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lenovo/fm/RadioService;->m_CurrentChannelFreq2:F

    invoke-static {v3}, Lcom/lenovo/fm/FMRadioNative;->powerup(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 859
    const/4 v1, 0x1

    .line 864
    :goto_0
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turnonRadio result =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-eqz v1, :cond_0

    .line 866
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioService;->isFmOn:Z

    .line 868
    :cond_0
    if-nez v1, :cond_8

    .line 904
    .end local v1           #result:Z
    :cond_1
    :goto_1
    return v2

    .line 861
    .restart local v1       #result:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 874
    .end local v1           #result:Z
    :cond_3
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v3, :cond_8

    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, result:Ljava/lang/Integer;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Lenovo K860"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "K900"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 878
    :cond_4
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v3}, Landroid/hardware/FmRadio;->turnOn()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 884
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Lenovo K860"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "K900"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 887
    :cond_6
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    :cond_7
    :goto_3
    const-string v3, "RadioService"

    const-string v4, "turnOnRadio"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 900
    .end local v1           #result:Ljava/lang/Integer;
    :cond_8
    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioService;->setAnalogMode(Z)I

    .line 904
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 879
    .restart local v1       #result:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 888
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 889
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public unmute()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1099
    const-string v1, "RadioService"

    const-string v2, "unmute"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1101
    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioService;->setmUserPause(Z)V

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, isMute:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1104
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Lenovo K860"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1112
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1114
    .end local v0           #isMute:Ljava/lang/Integer;
    :goto_1
    return v1

    .line 1107
    .restart local v0       #isMute:Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_RadioDevices:Landroid/hardware/FmRadio;

    invoke-virtual {v1, v3}, Landroid/hardware/FmRadio;->mute(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1110
    :cond_2
    invoke-static {v3}, Lcom/lenovo/fm/FMRadioNative;->setmute(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1114
    .end local v0           #isMute:Ljava/lang/Integer;
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public updateChannelName(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "freq"

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelName(Ljava/lang/String;I)Z

    .line 1322
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/fm/RadioService;->m_playingfreq:I

    if-ne v1, p2, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/lenovo/fm/RadioService;->m_remoteviews:Landroid/widget/RemoteViews;

    const v2, 0x7f080048

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1325
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1326
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/lenovo/fm/RadioService;->m_status:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1329
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public updateChannelPlaying(II)V
    .locals 1
    .parameter "isplay"
    .parameter "freq"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/fm/RadioDBOperation;->updateChannelPlaying(II)Z

    .line 1334
    return-void
.end method

.method protected updatePreferences()V
    .locals 5

    .prologue
    .line 2416
    const-string v3, "RadioLastFreq"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/fm/RadioService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2417
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2418
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 2419
    .local v1, lastFreq:Ljava/lang/String;
    const-string v3, "LastFreq"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2421
    return-void
.end method
