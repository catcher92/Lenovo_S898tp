.class public Lcom/lenovo/fm/RadioActivity;
.super Landroid/app/Activity;
.source "RadioActivity.java"

# interfaces
.implements Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;
.implements Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/RadioActivity$ViewHolder;,
        Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;,
        Lcom/lenovo/fm/RadioActivity$CountryAdapter;,
        Lcom/lenovo/fm/RadioActivity$RadioReceiver;,
        Lcom/lenovo/fm/RadioActivity$ActivityHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_FREQ:D = 97.8

.field private static final DIALOG_EDIT_CHANNEL:I = 0x3e9

.field private static final FEATURE_FM_BUILTIN_ANTENNA:Ljava/lang/String; = "com.lenovo.hardware.antenna.builtin"

.field private static final FREQ_PER_PIXEL:F = 0.086864404f

.field private static final HALF_PIC_WIDTH:I = 0x1d

.field private static final HIDEN_HEADSETWARNING:I = 0x7d6

.field private static final HIDEN_RECORDING_TIMER:I = 0x7d7

.field public static final MAX_FREQ:F = 108.0f

.field private static final MAX_FREQ_X:I = 0x109

.field public static final MIN_FREQ:F = 87.5f

.field private static final MIN_FREQ_X:I = 0x1d

.field private static final OPEN_IS_OVERTIME:I = 0x7d2

.field private static final PIXEL_PER_FREQ:F = 11.512196f

.field private static final SCAN_IS_OVERTIME:I = 0x7d4

.field private static final SEEK_IS_OVERTIME:I = 0x7d1

.field private static final SHOW_HEADSETWARNING:I = 0x7d5

.field private static final SLEEPTIMER_EXPIRED:I = 0x290

.field private static final SLEEPTIMER_UPDATE:I = 0x291

.field private static final SLEEP_TOGGLE_SECONDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "RadioActivity"

.field private static final UPDATE_RECORD_TIME:I = 0x65

.field private static final UPDATE_UI:I = 0x7d3

.field private static mIsServiceStarted:Z

.field protected static sCurrentChannelFreq:D

.field private static selectPos:I

.field private static selectWhich:I

.field private static sleepListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private allFavoCursor:Landroid/database/Cursor;

.field private channelEnd:Ljava/lang/String;

.field private channelStart:Ljava/lang/String;

.field private city:Lcom/lenovo/widget/WheelView;

.field private country:Lcom/lenovo/widget/WheelView;

.field private countryAdapter:Lcom/lenovo/fm/RadioActivity$CountryAdapter;

.field private defaultAry:F

.field private dialog:Landroid/app/Dialog;

.field private doSleepProcessing:Ljava/lang/Runnable;

.field private input_name:Ljava/lang/String;

.field private isBackStage:Z

.field private isBackStagePlay:Z

.field private isDownAndUP:Z

.field private isEnter:I

.field private isExitDirectly:Z

.field private isRecording:Z

.field private isSelectPos:I

.field private mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

.field private mDialogSearchProgress:Landroid/app/AlertDialog;

.field private mExitDialog:Landroid/app/AlertDialog;

.field private mFM:Landroid/widget/TextView;

.field private mHeadsetDialog:Landroid/app/AlertDialog;

.field private mHorizontalListView:Lcom/lenovo/fm/view/HorizontalListView;

.field private mHorizontalListViewArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsServiceBinded:Z

.field private mLastFreq:D

.field private mMHz:Landroid/widget/TextView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPlay_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRecord_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private mScreen:Landroid/widget/ImageView;

.field private mSelectedPosition:I

.field private mSleepMsgTV:Landroid/widget/TextView;

.field private mSleepUpdateHandlerThread:Ljava/lang/Thread;

.field private mUIUpdateHandlerHandler:Landroid/os/Handler;

.field private mWheel:Lit/sephiroth/android/wheel/view/Wheel;

.field private mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

.field private m_FreqMinus_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_FreqPlus_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_FrequencyEdit1:Landroid/widget/EditText;

.field private m_FrequencyEdit2:Landroid/widget/EditText;

.field private m_LastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_NextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_Play:Landroid/widget/ImageView;

.field private m_RadioReceiver:Landroid/content/BroadcastReceiver;

.field private m_RadioService:Lcom/lenovo/fm/RadioService;

.field private m_TextWatcher1:Landroid/text/TextWatcher;

.field private m_TextWatcher2:Landroid/text/TextWatcher;

.field private m_Timer:Ljava/util/Timer;

.field private m_TimerTask:Ljava/util/TimerTask;

.field private m_TuneImageFavorite:Landroid/widget/ImageView;

.field private m_TuneImageFavorite_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_TuneImageLastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_TuneImageLastchannel:Landroid/widget/ImageView;

.field private m_TuneImageNextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_TuneImageNextchannel:Landroid/widget/ImageView;

.field private m_btnRecord:Landroid/widget/ImageView;

.field private m_cancel:Landroid/widget/Button;

.field private m_channelname:Landroid/widget/TextView;

.field private m_context:Landroid/content/Context;

.field private m_handler:Landroid/os/Handler;

.field private m_hasfound:I

.field private m_lastChannel:Landroid/widget/ImageView;

.field private m_nextChannel:Landroid/widget/ImageView;

.field private m_ok:Landroid/widget/Button;

.field private m_playingchannelfreq:Landroid/widget/TextView;

.field private m_playingchannelfreq_ButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_progressdialog:Landroid/app/ProgressDialog;

.field private m_recorder_time:Landroid/widget/TextView;

.field private m_scaningdialog:Landroid/app/ProgressDialog;

.field private m_seekingdialog:Landroid/app/ProgressDialog;

.field private m_title:Landroid/widget/TextView;

.field private meunItem:Landroid/view/MenuItem;

.field private osc:Landroid/content/ServiceConnection;

.field private recordTime:I

.field private scrolling:Z

.field private selectChannelDialog:Landroid/app/Dialog;

.field private sleepMode:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    sput-boolean v2, Lcom/lenovo/fm/RadioActivity;->mIsServiceStarted:Z

    .line 148
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 2447
    sput v2, Lcom/lenovo/fm/RadioActivity;->selectPos:I

    .line 2448
    sput v2, Lcom/lenovo/fm/RadioActivity;->selectWhich:I

    .line 2539
    new-instance v0, Lcom/lenovo/fm/RadioActivity$27;

    invoke-direct {v0}, Lcom/lenovo/fm/RadioActivity$27;-><init>()V

    sput-object v0, Lcom/lenovo/fm/RadioActivity;->sleepListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;

    .line 88
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z

    .line 100
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioActivity;->isExitDirectly:Z

    .line 101
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    .line 112
    iput-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    .line 113
    iput-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    .line 142
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4120

    :goto_0
    iput v0, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    .line 144
    new-instance v0, Lcom/lenovo/fm/RadioActivity$RadioReceiver;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/fm/RadioActivity$RadioReceiver;-><init>(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput v3, p0, Lcom/lenovo/fm/RadioActivity;->m_hasfound:I

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/fm/RadioActivity;->mLastFreq:D

    .line 150
    new-instance v0, Lcom/lenovo/fm/RadioActivity$ActivityHandler;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/fm/RadioActivity$ActivityHandler;-><init>(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;

    .line 151
    iput v4, p0, Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I

    .line 638
    new-instance v0, Lcom/lenovo/fm/RadioActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$2;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 674
    new-instance v0, Lcom/lenovo/fm/RadioActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$3;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mRecord_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 780
    new-instance v0, Lcom/lenovo/fm/RadioActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$5;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mPlay_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 913
    new-instance v0, Lcom/lenovo/fm/RadioActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$6;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_FreqPlus_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 935
    new-instance v0, Lcom/lenovo/fm/RadioActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$7;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_FreqMinus_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 957
    new-instance v0, Lcom/lenovo/fm/RadioActivity$8;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$8;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_LastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1006
    new-instance v0, Lcom/lenovo/fm/RadioActivity$9;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$9;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_NextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1157
    new-instance v0, Lcom/lenovo/fm/RadioActivity$14;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$14;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1177
    new-instance v0, Lcom/lenovo/fm/RadioActivity$15;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$15;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1246
    new-instance v0, Lcom/lenovo/fm/RadioActivity$16;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$16;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1259
    new-instance v0, Lcom/lenovo/fm/RadioActivity$17;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$17;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1422
    new-instance v0, Lcom/lenovo/fm/RadioActivity$19;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$19;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->osc:Landroid/content/ServiceConnection;

    .line 1668
    iput v4, p0, Lcom/lenovo/fm/RadioActivity;->recordTime:I

    .line 2653
    new-instance v0, Lcom/lenovo/fm/RadioActivity$28;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$28;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TextWatcher1:Landroid/text/TextWatcher;

    .line 2685
    new-instance v0, Lcom/lenovo/fm/RadioActivity$29;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$29;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TextWatcher2:Landroid/text/TextWatcher;

    .line 3107
    new-instance v0, Lcom/lenovo/fm/RadioActivity$34;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$34;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->doSleepProcessing:Ljava/lang/Runnable;

    .line 3142
    new-instance v0, Lcom/lenovo/fm/RadioActivity$35;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$35;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    .line 3384
    iput-object v2, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3392
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioActivity;->scrolling:Z

    return-void

    .line 142
    :cond_0
    const/high16 v0, 0x447a

    goto/16 :goto_0
.end method

.method private IsInternalWireSupport()Z
    .locals 5

    .prologue
    .line 2135
    const-string v2, "RadioActivity"

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

    .line 2136
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

    .line 2137
    :cond_0
    const/4 v2, 0x1

    .line 2148
    :goto_0
    return v2

    .line 2140
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2143
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v2, "com.lenovo.hardware.antenna.builtin"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2146
    .local v0, hasFMBuiltinAntenna:Ljava/lang/Boolean;
    const-string v2, "RadioActivity"

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

    .line 2148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method private NotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->getAllFavoriteChannels()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    .line 1235
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    .line 1241
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->cursorToList()V

    .line 1242
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->notifyDataSetChanged()V

    .line 1243
    return-void

    .line 1238
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private StopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 745
    iput-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 750
    iput-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    .line 753
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/fm/RadioActivity;->recordTime:I

    .line 754
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->isHaveAvailableStorage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->performRecord()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->performRecordStop()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->isFavori()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/fm/RadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/lenovo/fm/RadioActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lenovo/fm/RadioActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->updateHorListView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/lenovo/fm/RadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->enableOperateBtn()V

    return-void
.end method

.method static synthetic access$2600(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->NotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/fm/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->favoriChannelPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/fm/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$3002(Lcom/lenovo/fm/RadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioActivity;->isDownAndUP:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lenovo/fm/RadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->seekStation()V

    return-void
.end method

.method static synthetic access$3200(Lcom/lenovo/fm/RadioActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/lenovo/fm/RadioActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->cursorToList()V

    return-void
.end method

.method static synthetic access$3400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/view/HorizontalListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListView:Lcom/lenovo/fm/view/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lenovo/fm/RadioActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/lenovo/fm/RadioActivity;->mLastFreq:D

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lenovo/fm/RadioActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->showHeadsetDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lenovo/fm/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->recordTime:I

    return v0
.end method

.method static synthetic access$4008(Lcom/lenovo/fm/RadioActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->recordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity;->recordTime:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;)Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/lenovo/fm/RadioActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->formatIntToTimeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lenovo/fm/RadioActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->formatIntToTimerString2(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lenovo/fm/RadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isBackStagePlay:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mPlay_ButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lenovo/fm/RadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isBackStage:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/lenovo/fm/RadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->IsInternalWireSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_LastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/lenovo/fm/RadioActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_NextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitRec()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/fm/RadioActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/lenovo/fm/RadioActivity;F)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->toDouble(F)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$502(Lcom/lenovo/fm/RadioActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/lenovo/fm/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->m_hasfound:I

    return v0
.end method

.method static synthetic access$5108(Lcom/lenovo/fm/RadioActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->m_hasfound:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity;->m_hasfound:I

    return v0
.end method

.method static synthetic access$5200(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitFMRadio()V

    return-void
.end method

.method static synthetic access$5300(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/fm/RadioActivity$CountryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->countryAdapter:Lcom/lenovo/fm/RadioActivity$CountryAdapter;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/lenovo/fm/RadioActivity;)Lcom/lenovo/widget/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/lenovo/fm/RadioActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/lenovo/fm/RadioActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/lenovo/fm/RadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/lenovo/fm/RadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/fm/RadioActivity;->updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/lenovo/fm/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->isEnter:I

    return v0
.end method

.method static synthetic access$5902(Lcom/lenovo/fm/RadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/lenovo/fm/RadioActivity;->isEnter:I

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/fm/RadioActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    return v0
.end method

.method static synthetic access$6000()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/lenovo/fm/RadioActivity;->selectWhich:I

    return v0
.end method

.method static synthetic access$6002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/lenovo/fm/RadioActivity;->selectWhich:I

    return p0
.end method

.method static synthetic access$6100(Lcom/lenovo/fm/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/fm/RadioActivity;->isSelectPos:I

    return v0
.end method

.method static synthetic access$6102(Lcom/lenovo/fm/RadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/lenovo/fm/RadioActivity;->isSelectPos:I

    return p1
.end method

.method static synthetic access$6200()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/lenovo/fm/RadioActivity;->selectPos:I

    return v0
.end method

.method static synthetic access$6202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/lenovo/fm/RadioActivity;->selectPos:I

    return p0
.end method

.method static synthetic access$6300(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->initiateSleepThread()V

    return-void
.end method

.method static synthetic access$6400(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->stopSleepThread2()V

    return-void
.end method

.method static synthetic access$6500(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/lenovo/fm/RadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->channelStart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/lenovo/fm/RadioActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_FrequencyEdit2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/lenovo/fm/RadioActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->osc:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->tuneChannel()V

    return-void
.end method

.method static synthetic access$7002(Lcom/lenovo/fm/RadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/lenovo/fm/RadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mExitDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/lenovo/fm/RadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->hasSleepTimerExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/lenovo/fm/RadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mUIUpdateHandlerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->updateExpiredSleepTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/fm/RadioActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/fm/RadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lenovo/fm/RadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    return p1
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 1522
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/fm/RadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1523
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/fm/RadioActivity;->mIsServiceStarted:Z

    .line 1524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private cursorToList()V
    .locals 5

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 1508
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    const-string v1, "RadioActivity"

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    const-string v4, "channelName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    const-string v4, "channelFreq"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, tempFreq:Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1515
    .end local v0           #tempFreq:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    .line 1518
    :cond_1
    return-void
.end method

.method private disableOperateBtn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1320
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 1321
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 1322
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 1323
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 1324
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 1325
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearFocus()V

    .line 1327
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1328
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1329
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1330
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1331
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1332
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1333
    return-void
.end method

.method private drawFreq(Ljava/lang/String;)V
    .locals 14
    .parameter "freq"

    .prologue
    .line 2939
    const-string v9, "RadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawFreq  freq "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "sCurrentChannelFreq "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->updateHorListView()V

    .line 2944
    move-object v6, p1

    .line 2946
    .local v6, mTemp:Ljava/lang/CharSequence;
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_0

    .line 3020
    :goto_0
    return-void

    .line 2950
    :cond_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    const/4 v9, 0x2

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_1

    .line 2951
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {v6, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2954
    :cond_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 2955
    .local v7, mTempLength:I
    const-string v9, "RadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawFreq mTempLength="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    const/16 v9, 0x57

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2958
    .local v2, beforeDot:Ljava/lang/Integer;
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2959
    .local v0, afterDot:Ljava/lang/Integer;
    const-string v9, "RadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawFreq mTemp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const/4 v9, 0x4

    if-ne v9, v7, :cond_3

    .line 2961
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {v6, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2962
    const/4 v9, 0x3

    const/4 v10, 0x4

    invoke-interface {v6, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2969
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 2970
    .local v3, beforeInt:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 2971
    .local v1, afterInt:Ljava/lang/Integer;
    const/16 v5, 0x55

    .local v5, i:I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 2972
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2973
    add-int/lit8 v9, v5, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2971
    add-int/lit8 v5, v5, 0x5

    goto :goto_2

    .line 2964
    .end local v1           #afterInt:Ljava/lang/Integer;
    .end local v3           #beforeInt:Ljava/lang/Integer;
    .end local v5           #i:I
    :cond_3
    const/4 v9, 0x5

    if-ne v9, v7, :cond_2

    .line 2965
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-interface {v6, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2966
    const/4 v9, 0x4

    const/4 v10, 0x5

    invoke-interface {v6, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 2975
    .restart local v1       #afterInt:Ljava/lang/Integer;
    .restart local v3       #beforeInt:Ljava/lang/Integer;
    .restart local v5       #i:I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2976
    .local v4, channelfreq:Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 2977
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_f

    .line 2978
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "Lenovo S5000-F"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2979
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    const/16 v10, 0x32

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3002
    :goto_3
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3009
    :cond_5
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/high16 v10, 0x3e80

    add-float/2addr v9, v10

    const/high16 v10, 0x42c4

    sub-float/2addr v9, v10

    const/high16 v10, 0x4124

    div-float v8, v9, v10

    .line 3010
    .local v8, value:F
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v9}, Lcom/lenovo/fm/RadioService;->getRelateSeekBar()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3011
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v9, v8}, Lit/sephiroth/android/wheel/view/Wheel;->setOriginalDeltaX(F)V

    .line 3012
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/fm/RadioService;->setRelateSeekBar(Z)V

    .line 3014
    :cond_6
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    if-eqz v9, :cond_7

    .line 3015
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    invoke-virtual {v9, v8}, Lit/sephiroth/android/wheel/view/WheelRadio;->setValue(F)V

    .line 3018
    :cond_7
    const-string v9, "RadioActivity"

    const-string v10, "drawFreq update info"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->isFavori()V

    goto/16 :goto_0

    .line 2980
    .end local v8           #value:F
    :cond_8
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "Lenovo S650"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "S658"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "S938"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "Lenovo S939"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "Lenovo S930"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "A7600"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2986
    :cond_9
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    const/16 v10, 0x28

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 2987
    :cond_a
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "K860"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "S898"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "S860"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "S850"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "S810"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2992
    :cond_b
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    const/16 v10, 0x37

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 2993
    :cond_c
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "A890e"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "A850"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2995
    :cond_d
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    const/16 v10, 0x2d

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 2997
    :cond_e
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    const/16 v10, 0x50

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 3000
    :cond_f
    iget-object v9, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3
.end method

.method private enableOperateBtn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1336
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1337
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1338
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1339
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1340
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1341
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1343
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1344
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1345
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1346
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1347
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1348
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1350
    return-void
.end method

.method private exitFMRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2212
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_1

    .line 2213
    const-string v0, "RadioActivity"

    const-string v1, "Exit FMRadio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitRec()V

    .line 2215
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->stopSleepThread()V

    .line 2216
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2217
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 2219
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 2236
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_INTENT_FM_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2237
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 2238
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v3}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 2239
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitService()V

    .line 2240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/fm/RadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioActivity;->stopService(Landroid/content/Intent;)Z

    .line 2241
    iput-object v3, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    .line 2243
    :cond_1
    :goto_1
    return-void

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2223
    const v0, 0x7f040026

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2227
    :cond_3
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2229
    :cond_4
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 2230
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->abandonAudioFocus()Z

    .line 2231
    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2233
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    goto :goto_0
.end method

.method private exitRec()V
    .locals 2

    .prologue
    .line 2833
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    if-eqz v0, :cond_0

    .line 2834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    .line 2835
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->performRecordStop()V

    .line 2836
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->saveRecording()V

    .line 2839
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2840
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2847
    :cond_0
    :goto_0
    return-void

    .line 2842
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3086
    const-string v1, "RadioActivity"

    const-string v2, "exitService AAAAA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-boolean v1, p0, Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 3090
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3091
    iput-boolean v3, p0, Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z

    .line 3094
    :cond_0
    sget-boolean v1, Lcom/lenovo/fm/RadioActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 3095
    const-string v1, "RadioActivity"

    const-string v2, "exitService stopSericeAAAAA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/fm/RadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 3098
    .local v0, isSuccess:Z
    if-nez v0, :cond_1

    .line 3099
    const-string v1, "RadioActivity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_1
    sput-boolean v3, Lcom/lenovo/fm/RadioActivity;->mIsServiceStarted:Z

    .line 3104
    .end local v0           #isSuccess:Z
    :cond_2
    return-void
.end method

.method private favoriChannelPosition()I
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 1478
    const/4 v2, -0x1

    .line 1479
    .local v2, position:I
    const/4 v1, -0x1

    .line 1480
    .local v1, mPosition:I
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v4, v4, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioDBOperation;->getAllFavoriteChannels()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    .line 1482
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 1483
    :cond_0
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1484
    add-int/lit8 v2, v2, 0x1

    .line 1485
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    const-string v6, "channelFreq"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1487
    .local v0, freq:I
    sget-wide v4, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v6, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-int v6, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    if-ne v4, v0, :cond_0

    .line 1488
    move v1, v2

    .line 1492
    .end local v0           #freq:I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1493
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/fm/RadioActivity;->allFavoCursor:Landroid/database/Cursor;

    .line 1496
    :cond_2
    if-ne v1, v3, :cond_4

    move v2, v3

    .line 1502
    .end local v2           #position:I
    :cond_3
    :goto_0
    return v2

    .line 1499
    .restart local v2       #position:I
    :cond_4
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1500
    goto :goto_0
.end method

.method private formatIntToTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "times"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1638
    div-int/lit16 v3, p1, 0xe10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, h:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1642
    :cond_0
    rem-int/lit16 v3, p1, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, m:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1646
    :cond_1
    rem-int/lit16 v3, p1, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1651
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private formatIntToTimerString2(I)Ljava/lang/String;
    .locals 5
    .parameter "times"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1655
    div-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, m:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1659
    :cond_0
    rem-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1660
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1664
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hasSleepTimerExpired()Z
    .locals 2

    .prologue
    .line 3131
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    .line 3133
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isSleepTimerExpired()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3139
    :goto_0
    return v1

    .line 3134
    :catch_0
    move-exception v0

    .line 3136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3139
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initDialog(Landroid/view/View;)[[Ljava/lang/String;
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2328
    const v1, 0x7f08001c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/WheelView;

    iput-object v1, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    .line 2329
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1, v6}, Lcom/lenovo/widget/WheelView;->setVisibleItems(I)V

    .line 2330
    new-instance v1, Lcom/lenovo/fm/RadioActivity$CountryAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/fm/RadioActivity$CountryAdapter;-><init>(Lcom/lenovo/fm/RadioActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/fm/RadioActivity;->countryAdapter:Lcom/lenovo/fm/RadioActivity$CountryAdapter;

    .line 2332
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->countryAdapter:Lcom/lenovo/fm/RadioActivity$CountryAdapter;

    invoke-virtual {v1, v2}, Lcom/lenovo/widget/WheelView;->setViewAdapter(Lcom/lenovo/widget/adapters/WheelViewAdapter;)V

    .line 2334
    const/16 v1, 0x16

    new-array v0, v1, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "5"

    aput-object v2, v1, v7

    const-string v2, "6"

    aput-object v2, v1, v5

    const-string v2, "7"

    aput-object v2, v1, v8

    const-string v2, "8"

    aput-object v2, v1, v6

    const-string v2, "9"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 2358
    .local v0, cities:[[Ljava/lang/String;
    const v1, 0x7f08001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/WheelView;

    iput-object v1, p0, Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;

    .line 2359
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->city:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1, v6}, Lcom/lenovo/widget/WheelView;->setVisibleItems(I)V

    .line 2361
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    new-instance v2, Lcom/lenovo/fm/RadioActivity$22;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/fm/RadioActivity$22;-><init>(Lcom/lenovo/fm/RadioActivity;[[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/widget/WheelView;->addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V

    .line 2369
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    new-instance v2, Lcom/lenovo/fm/RadioActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/fm/RadioActivity$23;-><init>(Lcom/lenovo/fm/RadioActivity;[[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/widget/WheelView;->addScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V

    .line 2380
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->country:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1, v5}, Lcom/lenovo/widget/WheelView;->setCurrentItem(I)V

    .line 2381
    return-object v0
.end method

.method private initWheelCallBack()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->setOnScrollListener(Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;)V

    .line 351
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->setOnLayoutListener(Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;)V

    .line 352
    return-void
.end method

.method private initiateSleepThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3069
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->sleepMode:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3070
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 3071
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3075
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 3076
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->doSleepProcessing:Ljava/lang/Runnable;

    const-string v2, "SleepUpdateThread"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3080
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 3081
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3083
    :cond_2
    return-void
.end method

.method private isEarphoneUsed()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    const-string v2, "RadioActivity"

    const-string v5, ">>> RadioActivity.isEarphoneUsed"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-nez v2, :cond_0

    .line 568
    const-string v2, "RadioActivity"

    const-string v5, "Error: No service interface."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    const-string v5, "RadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< RadioActivity.isEarphoneUsed: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-nez v0, :cond_2

    :goto_2
    return v3

    .line 571
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isSpeakerPhoneOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "RadioActivity"

    const-string v5, "Exception: Cannot call service function."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v4

    .line 576
    goto :goto_1

    :cond_2
    move v3, v4

    .line 577
    goto :goto_2
.end method

.method private isFavori()V
    .locals 8

    .prologue
    const v7, 0x7f020016

    const v6, 0x7f020018

    .line 3023
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v4, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->isSavedFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3026
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v4, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->getSpecificChannel(I)Landroid/database/Cursor;

    move-result-object v0

    .line 3028
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 3029
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3030
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v1, "channelName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V

    .line 3034
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v1, "channelFavorite"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3036
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3037
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3053
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3065
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 3040
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 3044
    :cond_3
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3045
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 3048
    :cond_4
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 3056
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V

    .line 3058
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3059
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 3061
    :cond_6
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private isHaveAvailableStorage(Ljava/lang/String;)Z
    .locals 10
    .parameter "storagePath"

    .prologue
    .line 718
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 719
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 720
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 721
    .local v0, blockSize:J
    mul-long v5, v2, v0

    .line 722
    .local v5, spaceLeft:J
    const-string v7, "RadioActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD card free blocks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", blocksize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private onUseEarphone()V
    .locals 2

    .prologue
    .line 592
    const-string v0, "RadioActivity"

    const-string v1, ">>> onUseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    const v1, 0x7f04002e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 599
    :cond_1
    const-string v0, "RadioActivity"

    const-string v1, "<<< onUseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "RadioActivity"

    const-string v1, ">>> onUseLoudspeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    const v1, 0x7f04002f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 588
    :cond_1
    const-string v0, "RadioActivity"

    const-string v1, "<<< onUseLoudspeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method private performRecord()V
    .locals 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-nez v0, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1357
    :cond_1
    const-string v0, "RadioActivity"

    const-string v1, "RadioActivity performRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1360
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1364
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->startRecordingAsync()V

    goto :goto_0
.end method

.method private performRecordStop()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-nez v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1375
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->StopTimer()V

    .line 1376
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x7d7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1377
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->stopRecording()V

    goto :goto_0
.end method

.method private round(F)D
    .locals 4
    .parameter "adb"

    .prologue
    .line 3381
    const/high16 v0, 0x4120

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private seekStation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1275
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v3}, Lcom/lenovo/fm/RadioService;->setRelateSeekBar(Z)V

    .line 1277
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->disableOperateBtn()V

    .line 1278
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->showSearchDialog()V

    .line 1280
    sget-wide v0, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    double-to-float v0, v0

    iget-boolean v1, p0, Lcom/lenovo/fm/RadioActivity;->isDownAndUP:Z

    invoke-direct {p0, v0, v1}, Lcom/lenovo/fm/RadioActivity;->seekStation(FZ)V

    .line 1313
    :goto_0
    return-void

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1283
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isDownAndUP:Z

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v3}, Lcom/lenovo/fm/RadioService;->seek(I)I

    .line 1288
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 1289
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    .line 1290
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1291
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1292
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1293
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1294
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/fm/RadioActivity$18;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioActivity$18;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1306
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1307
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->seek(I)I

    goto :goto_1

    .line 1309
    :cond_3
    const v0, 0x7f040026

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private seekStation(FZ)V
    .locals 1
    .parameter "sCurrentChannelFreq2"
    .parameter "direction"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/fm/RadioService;->seekStationAsync(FZ)V

    .line 1317
    return-void
.end method

.method private setSpeakerOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 603
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->isEarphoneUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    const-string v0, "RadioActivity"

    const-string v1, "setSpeakerOn true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->onUseLoudspeaker()V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const-string v0, "RadioActivity"

    const-string v1, "setSpeakerOn false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->onUseEarphone()V

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getChangingAudioPathStatus()Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getspeakerEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    const-string v0, "RadioActivity"

    const-string v1, "setSpeakerOn false, use headphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->setspeakerEnable(Z)V

    .line 620
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "RadioActivity"

    const-string v1, "meunitem set use_speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    const v1, 0x7f04002e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 626
    :cond_3
    const-string v0, "RadioActivity"

    const-string v1, "setSpeakerOn true, use speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->setspeakerEnable(Z)V

    .line 629
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 630
    const-string v0, "RadioActivity"

    const-string v1, "meunitem set use_headphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    const v1, 0x7f04002f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setUIenable(Z)V
    .locals 4
    .parameter "e"

    .prologue
    const v3, 0x7f050001

    const/high16 v2, 0x7f05

    .line 2850
    if-eqz p1, :cond_9

    .line 2851
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2852
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    if-eqz v0, :cond_8

    .line 2853
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2854
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2860
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2861
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2863
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2866
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2867
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2869
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2871
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2872
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2873
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2875
    :cond_3
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2876
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2877
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2879
    :cond_4
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 2880
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2882
    :cond_5
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mScreen:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 2883
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mScreen:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2885
    :cond_6
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mFM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2886
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mMHz:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2922
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2923
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2926
    :cond_7
    return-void

    .line 2856
    :cond_8
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2857
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2888
    :cond_9
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 2889
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2890
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2892
    :cond_a
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 2893
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2895
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2898
    :cond_b
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 2899
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2901
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2903
    :cond_c
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 2904
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2905
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2907
    :cond_d
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 2908
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2909
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2911
    :cond_e
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 2912
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2914
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2916
    :cond_f
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mScreen:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 2917
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mScreen:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2919
    :cond_10
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mFM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2920
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mMHz:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method private showExitDialog()V
    .locals 3

    .prologue
    .line 2805
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040015

    new-instance v2, Lcom/lenovo/fm/RadioActivity$33;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioActivity$33;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040016

    new-instance v2, Lcom/lenovo/fm/RadioActivity$32;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioActivity$32;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mExitDialog:Landroid/app/AlertDialog;

    .line 2830
    return-void
.end method

.method private showHeadsetDialog()V
    .locals 3

    .prologue
    .line 2729
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040015

    new-instance v2, Lcom/lenovo/fm/RadioActivity$30;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioActivity$30;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    .line 2743
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/lenovo/fm/RadioActivity$31;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioActivity$31;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2802
    return-void
.end method

.method private showPlayingChannelName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_channelname:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_channelname:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    :cond_0
    return-void
.end method

.method private startSearch()V
    .locals 5

    .prologue
    const v4, 0x7f040027

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1057
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    const-string v0, "RadioActivity"

    const-string v1, "mtk search fm channels"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->showSearchDialog()V

    .line 1060
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->deleteAllnonfavorChannel()Z

    .line 1063
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->startSyncScan()V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1068
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1069
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->deleteAllnonfavorChannel()Z

    .line 1070
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1072
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->scan(I)I

    .line 1077
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 1078
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    .line 1079
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/fm/RadioActivity$10;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioActivity$10;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1090
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/fm/RadioActivity$11;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioActivity$11;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1101
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1103
    :cond_3
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1106
    iput v3, p0, Lcom/lenovo/fm/RadioActivity;->m_hasfound:I

    .line 1107
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x7d4

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1109
    :cond_4
    const v0, 0x7f040026

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 727
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 731
    new-instance v0, Lcom/lenovo/fm/RadioActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioActivity$4;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_TimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 740
    return-void
.end method

.method private stopSleepThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3183
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/fm/RadioActivity;->isRecording:Z

    if-eqz v0, :cond_0

    .line 3184
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitRec()V

    .line 3186
    :cond_0
    sput v1, Lcom/lenovo/fm/RadioActivity;->selectWhich:I

    .line 3187
    sput v1, Lcom/lenovo/fm/RadioActivity;->selectPos:I

    .line 3188
    iput v1, p0, Lcom/lenovo/fm/RadioActivity;->isEnter:I

    .line 3189
    iput v1, p0, Lcom/lenovo/fm/RadioActivity;->isSelectPos:I

    .line 3190
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->sleepMode:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3191
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3192
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3195
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_2

    .line 3196
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->endSleepTime()V

    .line 3199
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 3200
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3204
    :cond_3
    return-void
.end method

.method private stopSleepThread2()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3207
    sput v0, Lcom/lenovo/fm/RadioActivity;->selectWhich:I

    .line 3208
    sput v0, Lcom/lenovo/fm/RadioActivity;->selectPos:I

    .line 3209
    iput v0, p0, Lcom/lenovo/fm/RadioActivity;->isEnter:I

    .line 3210
    iput v0, p0, Lcom/lenovo/fm/RadioActivity;->isSelectPos:I

    .line 3211
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->sleepMode:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3212
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3213
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3216
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 3217
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mSleepUpdateHandlerThread:Ljava/lang/Thread;

    .line 3220
    :cond_1
    return-void
.end method

.method private toDouble(F)D
    .locals 6
    .parameter "f"

    .prologue
    .line 2929
    const-string v3, "RadioActivity"

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

    .line 2930
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2931
    .local v0, b:Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2932
    .local v1, d:D
    const-string v3, "RadioActivity"

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

    .line 2933
    return-wide v1
.end method

.method private tuneChannel()V
    .locals 7

    .prologue
    const v6, 0x7f020066

    const/4 v5, 0x1

    .line 897
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->mtkTuneRadio(F)Z

    .line 902
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->startFM()V

    .line 903
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v5}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 904
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 909
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v5}, Lcom/lenovo/fm/RadioService;->setRelateSeekBar(Z)V

    .line 910
    invoke-direct {p0, v5}, Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V

    goto :goto_0

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/RadioService;->tune2NewChannel(I)V

    .line 907
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    .locals 3
    .parameter "city"
    .parameter "cities"
    .parameter "index"

    .prologue
    .line 2385
    new-instance v0, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;

    aget-object v1, p2, p3

    invoke-direct {v0, p0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 2388
    .local v0, adapter:Lcom/lenovo/widget/adapters/ArrayWheelAdapter;,"Lcom/lenovo/widget/adapters/ArrayWheelAdapter<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Lenovo S5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2389
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    .line 2412
    :goto_0
    invoke-virtual {p1, v0}, Lcom/lenovo/widget/WheelView;->setViewAdapter(Lcom/lenovo/widget/adapters/WheelViewAdapter;)V

    .line 2413
    aget-object v1, p2, p3

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lcom/lenovo/widget/WheelView;->setCurrentItem(I)V

    .line 2414
    return-void

    .line 2390
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A890"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K860"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S820"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "P780"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K910"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S938"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S939"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S860"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S850"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A859"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S898"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2405
    :cond_1
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    goto/16 :goto_0

    .line 2406
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A7600"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A850"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2408
    :cond_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    goto/16 :goto_0

    .line 2410
    :cond_4
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    goto/16 :goto_0
.end method

.method private updateExpiredSleepTime()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    .line 3223
    const/4 v4, 0x4

    .line 3225
    .local v4, vis:I
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v6, :cond_1

    .line 3226
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v6}, Lcom/lenovo/fm/RadioService;->isSleepTimerActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3227
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 3228
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v7}, Lcom/lenovo/fm/RadioService;->getSleepTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3230
    :cond_0
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v6}, Lcom/lenovo/fm/RadioService;->getRemainingSeconds()J

    move-result-wide v2

    .line 3231
    .local v2, seconds:J
    const-wide/16 v6, 0x3c

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 3232
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mSleepMsgTV:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3233
    .local v1, nowVis:I
    if-ne v1, v5, :cond_2

    const/4 v4, 0x0

    .line 3245
    .end local v1           #nowVis:I
    .end local v2           #seconds:J
    :cond_1
    :goto_0
    return-void

    .restart local v1       #nowVis:I
    .restart local v2       #seconds:J
    :cond_2
    move v4, v5

    .line 3233
    goto :goto_0

    .line 3236
    .end local v1           #nowVis:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3240
    .end local v2           #seconds:J
    :catch_0
    move-exception v0

    .line 3242
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateHorListView()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 3365
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-nez v1, :cond_0

    .line 3378
    :goto_0
    return-void

    .line 3368
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v1, v1, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v4, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-int v4, v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioDBOperation;->isFavoritedFrequency(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 3371
    .local v0, isFavoriChannel:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3372
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->favoriChannelPosition()I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I

    .line 3373
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 3368
    .end local v0           #isFavoriChannel:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3375
    .restart local v0       #isFavoriChannel:Z
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I

    .line 3376
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1389
    const-string v0, "RadioActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_4

    .line 1391
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mExitDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 1411
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->showExitDialog()V

    .line 1419
    :goto_0
    return-void

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1413
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1415
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1417
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const-string v6, "RadioActivity"

    const-string v7, "onCreate() ENTRY"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p0}, Lcom/lenovo/fm/Util;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->finish()V

    .line 347
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    iput-boolean v8, p0, Lcom/lenovo/fm/RadioActivity;->isExitDirectly:Z

    .line 172
    const-string v7, "RadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate getCallState() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v6, 0x7f040033

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->finish()V

    goto :goto_0

    .line 182
    :cond_1
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->setContentView(I)V

    .line 184
    const-string v6, "RadioLastFreq"

    invoke-virtual {p0, v6, v9}, Lcom/lenovo/fm/RadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 185
    .local v5, settings:Landroid/content/SharedPreferences;
    const-string v6, "LastFreq"

    const-string v7, "0.0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, lastFreq:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/fm/RadioActivity;->mLastFreq:D

    .line 188
    const v6, 0x7f080029

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/fm/view/HorizontalListView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListView:Lcom/lenovo/fm/view/HorizontalListView;

    .line 189
    const v6, 0x7f080028

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mScreen:Landroid/widget/ImageView;

    .line 190
    const v6, 0x7f08002c

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mFM:Landroid/widget/TextView;

    .line 191
    const v6, 0x7f08001b

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mMHz:Landroid/widget/TextView;

    .line 193
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mHorizontalListView:Lcom/lenovo/fm/view/HorizontalListView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/lenovo/fm/view/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    const v6, 0x7f080032

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lit/sephiroth/android/wheel/view/Wheel;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    .line 196
    const v6, 0x7f080030

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lit/sephiroth/android/wheel/view/WheelRadio;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    .line 198
    const v6, 0x7f08002a

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->sleepMode:Landroid/widget/ImageView;

    .line 200
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->initWheelCallBack()V

    .line 201
    const v6, 0x7f080027

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 202
    .local v3, m_btnRecordList:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 203
    new-instance v6, Lcom/lenovo/fm/RadioActivity$1;

    invoke-direct {v6, p0}, Lcom/lenovo/fm/RadioActivity$1;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_2
    const v6, 0x7f080025

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    .line 232
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 233
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_btnRecord:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->mRecord_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_3
    const v6, 0x7f080026

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_recorder_time:Landroid/widget/TextView;

    .line 249
    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    .line 250
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 251
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->mPlay_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_4
    const v6, 0x7f080031

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    .line 255
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 256
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 257
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :cond_5
    :goto_1
    const v6, 0x7f080033

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    .line 265
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    .line 266
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 267
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    :cond_6
    :goto_2
    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    .line 275
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    .line 276
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastchannel:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageLastChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_7
    const v6, 0x7f080036

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    .line 281
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    .line 282
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextchannel:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageNextChannel_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_8
    const v6, 0x7f08002b

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_channelname:Landroid/widget/TextView;

    .line 290
    const v6, 0x7f08002e

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    .line 291
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 293
    .local v4, m_playingchannelfreqbg:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/liquidno.TTF"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 296
    .local v0, createFromAsset:Landroid/graphics/Typeface;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 297
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 298
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 299
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_playingchannelfreq_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_9
    const v6, 0x7f08002f

    invoke-virtual {p0, v6}, Lcom/lenovo/fm/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    .line 307
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    if-eqz v6, :cond_a

    .line 308
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :cond_a
    invoke-direct {p0, v9}, Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V

    .line 313
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v2, m_IntentFilter:Landroid/content/IntentFilter;
    const-string v6, "com.android.fm.action.play"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v6, "com.android.fm.action.headsetplug"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v6, "com.android.fm.action.batterylow"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v6, "com.android.fm.action.tunetolast"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v6, "com.android.fm.action.tunetonext"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v6, "com.android.fm.action.exit"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v6, "com.android.fm.action.deviceopened"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v6, "com.android.fm.action.deviceseeked"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v6, "com.android.fm.action.deviceseekedstart"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v6, "seek_failed"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v6, "com.android.fm.action.devicescanfinished"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v6, "com.android.fm.action.devicescaned"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v6, "com.android.fm.action.devicescaning"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v6, "com.android.fm.action.devicescancanceled"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v6, "com.android.fm.action.updateui"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v6, "com.android.fm.action.phonescanexit"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v6, "com.android.fm.action.exitrecording"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v6, "com.android.fm.record.error"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v6, "com.android.fm.action.exitdialog"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/lenovo/fm/RadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v6}, Lcom/lenovo/fm/RadioActivity;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 339
    const-string v6, "RadioActivity"

    const-string v7, "onCreate: Failed to Start Service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_3
    iput-object p0, p0, Lcom/lenovo/fm/RadioActivity;->m_context:Landroid/content/Context;

    goto/16 :goto_0

    .line 259
    .end local v0           #createFromAsset:Landroid/graphics/Typeface;
    .end local v2           #m_IntentFilter:Landroid/content/IntentFilter;
    .end local v4           #m_playingchannelfreqbg:Landroid/widget/TextView;
    :cond_b
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_lastChannel:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_FreqMinus_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 269
    :cond_c
    iget-object v6, p0, Lcom/lenovo/fm/RadioActivity;->m_nextChannel:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/fm/RadioActivity;->m_FreqPlus_ButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 341
    .restart local v0       #createFromAsset:Landroid/graphics/Typeface;
    .restart local v2       #m_IntentFilter:Landroid/content/IntentFilter;
    .restart local v4       #m_playingchannelfreqbg:Landroid/widget/TextView;
    :cond_d
    iput-boolean v8, p0, Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z

    .line 343
    const-string v6, "RadioActivity"

    const-string v7, "onCreate: Start Service completed successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 2129
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 501
    iget-boolean v2, p0, Lcom/lenovo/fm/RadioActivity;->isExitDirectly:Z

    if-eqz v2, :cond_0

    .line 502
    const-string v2, "RadioActivity"

    const-string v3, "RadioActivity onDestroy Directly"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 562
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v2, "RadioActivity"

    const-string v3, "onDestroy ENTRY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->updatePreferences()V

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 513
    iput-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_progressdialog:Landroid/app/ProgressDialog;

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 518
    iput-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    .line 521
    :cond_3
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/lenovo/fm/RadioActivity;->mIsServiceBinded:Z

    if-eqz v2, :cond_4

    .line 522
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    :cond_4
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 525
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->stopFM()V

    .line 530
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_1
    sget-boolean v2, Lcom/lenovo/fm/RadioActivity;->mIsServiceStarted:Z

    if-eqz v2, :cond_7

    .line 537
    const-string v2, "RadioActivity"

    const-string v3, "exitService stopSericeAAAAA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/fm/RadioService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioActivity;->stopService(Landroid/content/Intent;)Z

    move-result v1

    .line 540
    .local v1, isSuccess:Z
    if-nez v1, :cond_6

    .line 541
    const-string v2, "RadioActivity"

    const-string v3, "Error: Cannot stop the FM service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_6
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/fm/RadioActivity;->mIsServiceStarted:Z

    .line 546
    .end local v1           #isSuccess:Z
    :cond_7
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_9

    .line 547
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 548
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 549
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 556
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->clean_envoirment()V

    .line 557
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v4}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 558
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/fm/RadioService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioActivity;->stopService(Landroid/content/Intent;)Z

    .line 559
    iput-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    .line 561
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto/16 :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 552
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isDeviceOpening()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 553
    :cond_b
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    goto :goto_2
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3410
    packed-switch p2, :pswitch_data_0

    .line 3420
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3412
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_seekingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3413
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3410
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 3298
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3299
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v1}, Lit/sephiroth/android/wheel/view/Wheel;->getTicksCount()I

    move-result v0

    .line 3300
    .local v0, ticksCount:I
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity;->mWheel:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v3}, Lit/sephiroth/android/wheel/view/Wheel;->getWheelScaleFactor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lit/sephiroth/android/wheel/view/WheelRadio;->setTicksNumber(II)V

    .line 3303
    .end local v0           #ticksCount:I
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080056

    if-ne v1, v2, :cond_3

    .line 2175
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2176
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2178
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    .line 2180
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->startSearch()V

    .line 2208
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 2182
    :cond_2
    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2185
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080055

    if-ne v1, v2, :cond_4

    .line 2186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2187
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2188
    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioActivity;->startActivity(Landroid/content/Intent;)V

    .line 2189
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_1

    .line 2190
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v2, "com.lenovo.leos.radio.RECORDERHISTORY"

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    goto :goto_0

    .line 2192
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080053

    if-ne v1, v2, :cond_5

    .line 2193
    invoke-virtual {p0, p0}, Lcom/lenovo/fm/RadioActivity;->setSleepAlarm(Landroid/app/Activity;)V

    goto :goto_0

    .line 2194
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080050

    if-ne v1, v2, :cond_6

    .line 2195
    const-string v1, "RadioActivity"

    const-string v2, "search_manual"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->showSearchManualDialog()V

    goto :goto_0

    .line 2198
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080052

    if-ne v1, v2, :cond_7

    .line 2199
    const-string v1, "RadioActivity"

    const-string v2, "turn_off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->showExitDialog()V

    goto :goto_0

    .line 2201
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080054

    if-ne v1, v2, :cond_8

    .line 2202
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity;->meunItem:Landroid/view/MenuItem;

    .line 2203
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->setSpeakerOn()V

    goto :goto_0

    .line 2206
    :cond_8
    const-string v1, "RadioActivity"

    const-string v2, "invailde menuitem"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    const-string v0, "RadioActivity"

    const-string v1, "onPause ENTRY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioActivity;->isBackStagePlay:Z

    .line 403
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "K860"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "K900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioActivity;->isBackStage:Z

    .line 406
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOffRadio()I

    .line 410
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 411
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 2650
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialog, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2155
    const v2, 0x7f080053

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2156
    .local v1, sleepMenu:Landroid/view/MenuItem;
    const v2, 0x7f080054

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2157
    .local v0, audioPathMenu:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2158
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2163
    :goto_0
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K900"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2166
    :cond_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2170
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 2160
    :cond_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2168
    :cond_3
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 11

    .prologue
    const v10, 0x7f04003e

    const v9, 0x7f020016

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 415
    const-string v2, "RadioActivity"

    const-string v3, "onResume() ENTRY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v3, "com.lenovo.leos.radio.RADIOACTIVITY"

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 421
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    const v2, 0x7f040033

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 425
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitFMRadio()V

    .line 426
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->finish()V

    .line 498
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v2

    if-nez v2, :cond_7

    .line 432
    const-string v2, "RadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FMRadio: onResume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioService;->getSeekingStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 437
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v2, "channelFreq"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    sput-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 441
    const-string v2, "RadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sCurrentChannelFreq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m_RadioService.getPlayingFreq() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v4}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v4, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 447
    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V

    .line 458
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 464
    :goto_2
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    invoke-direct {p0, v8}, Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V

    .line 486
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_4

    .line 487
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->NotifyDataSetChanged()V

    .line 488
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->favoriChannelPosition()I

    move-result v2

    iput v2, p0, Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I

    .line 489
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->mAdapter:Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->notifyDataSetChanged()V

    .line 492
    :cond_4
    iput-boolean v7, p0, Lcom/lenovo/fm/RadioActivity;->isBackStagePlay:Z

    goto/16 :goto_0

    .line 449
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_5
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v5, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v7, v3}, Lcom/lenovo/fm/RadioService;->updateChannelPlaying(II)V

    .line 452
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 460
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/fm/RadioActivity;->showPlayingChannelName(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_TuneImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 466
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_7
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K860"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K900"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 468
    iput-boolean v7, p0, Lcom/lenovo/fm/RadioActivity;->isBackStage:Z

    .line 469
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 470
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 471
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->newMediaInstance()V

    .line 475
    :cond_8
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v2, v2, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    iget v5, p0, Lcom/lenovo/fm/RadioActivity;->defaultAry:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioDBOperation;->isFavoritedFrequency(I)I

    move-result v1

    .line 477
    .local v1, isfavorited:I
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioService;->getPhoneStateChanged()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 478
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v8}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 479
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v2, v7}, Lcom/lenovo/fm/RadioService;->setPhoneStateChanged(Z)V

    .line 481
    :cond_9
    if-ne v1, v8, :cond_a

    .line 482
    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V

    .line 484
    :cond_a
    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method

.method public onScroll(Lit/sephiroth/android/wheel/view/Wheel;FI)V
    .locals 11
    .parameter "view"
    .parameter "value"
    .parameter "roundValue"

    .prologue
    const/16 v10, 0x2e

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 3312
    iget-object v5, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    invoke-virtual {v5, p2}, Lit/sephiroth/android/wheel/view/WheelRadio;->setValue(F)V

    .line 3313
    const/high16 v5, 0x4124

    mul-float/2addr v5, p2

    const/high16 v6, 0x42c4

    add-float/2addr v5, v6

    const/high16 v6, 0x3e80

    sub-float v3, v5, v6

    .line 3315
    .local v3, scrollFinishChannel:F
    invoke-direct {p0, v3}, Lcom/lenovo/fm/RadioActivity;->round(F)D

    move-result-wide v1

    .line 3317
    .local v1, mTempFreq:D
    const-wide v5, 0x4055e00000000000L

    cmpg-double v5, v1, v5

    if-gez v5, :cond_2

    .line 3318
    const-wide v1, 0x4055e00000000000L

    .line 3324
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 3325
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_3

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_3

    .line 3326
    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3332
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0, v4}, Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3337
    :goto_2
    return-void

    .line 3319
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    const-wide/high16 v5, 0x405b

    cmpl-double v5, v1, v5

    if-lez v5, :cond_0

    .line 3320
    const-wide/high16 v1, 0x405b

    goto :goto_0

    .line 3327
    .restart local v4       #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_1

    .line 3328
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3333
    :catch_0
    move-exception v0

    .line 3334
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "RadioActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onScrollFinished(Lit/sephiroth/android/wheel/view/Wheel;FI)V
    .locals 6
    .parameter "view"
    .parameter "value"
    .parameter "roundValue"

    .prologue
    .line 3341
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    invoke-virtual {v1, p2}, Lit/sephiroth/android/wheel/view/WheelRadio;->setValue(F)V

    .line 3342
    const/high16 v1, 0x4124

    mul-float/2addr v1, p2

    const/high16 v2, 0x42c4

    add-float/2addr v1, v2

    const/high16 v2, 0x3e80

    sub-float v0, v1, v2

    .line 3343
    .local v0, scrollFinishChannel:F
    invoke-direct {p0, v0}, Lcom/lenovo/fm/RadioActivity;->round(F)D

    move-result-wide v1

    sput-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    .line 3344
    const-string v1, "RadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sCurrentChannelFreq onscrollfinish == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    .line 3348
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3349
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v2, "com.android.fm.action.deviceseeked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "channel"

    sget-wide v3, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3358
    :goto_0
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_Play:Landroid/widget/ImageView;

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3359
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/fm/RadioActivity;->setUIenable(Z)V

    .line 3362
    :cond_0
    return-void

    .line 3352
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    sget-wide v2, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->tune2NewChannel(I)V

    .line 3354
    sget-wide v1, Lcom/lenovo/fm/RadioActivity;->sCurrentChannelFreq:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/fm/RadioActivity;->drawFreq(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScrollStarted(Lit/sephiroth/android/wheel/view/Wheel;FI)V
    .locals 1
    .parameter "view"
    .parameter "value"
    .parameter "roundValue"

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mWheelRadio:Lit/sephiroth/android/wheel/view/WheelRadio;

    invoke-virtual {v0, p2}, Lit/sephiroth/android/wheel/view/WheelRadio;->setValue(F)V

    .line 3308
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 381
    const-string v1, "RadioActivity"

    const-string v2, "onStart() ENTRY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const-string v1, "RadioActivity"

    const-string v2, "onresume headsetdialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    const-string v1, "RadioActivity"

    const-string v2, "onresume force stop activity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Lcom/lenovo/fm/RadioActivity;->exitFMRadio()V

    .line 393
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 395
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.lenovo.fm"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 398
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    const-string v1, "RadioActivity"

    const-string v2, "onStop ENTRY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    const-string v1, "RadioActivity"

    const-string v2, "pause headsetdialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 360
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->mHeadsetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 361
    const v1, 0x7f04001a

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 363
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1, v3}, Lcom/lenovo/fm/RadioService;->setSpeakerPhoneOn(Z)V

    .line 370
    :goto_0
    const-string v1, "RadioActivity"

    const-string v2, "onPause force stop activity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 373
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "com.lenovo.fm"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 377
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_1
    return-void

    .line 366
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 376
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_1
.end method

.method public setSleepAlarm(Landroid/app/Activity;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 2453
    const/4 v4, 0x6

    new-array v3, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f040042

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f040043

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f040044

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const v5, 0x7f040045

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const v5, 0x7f040046

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x7f040047

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2460
    .local v3, sortSeq:[Ljava/lang/CharSequence;
    move-object v0, p1

    .line 2463
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2464
    .local v2, mBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2466
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/fm/RadioActivity$24;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/fm/RadioActivity$24;-><init>(Lcom/lenovo/fm/RadioActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2510
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/fm/RadioActivity$25;

    invoke-direct {v5, p0}, Lcom/lenovo/fm/RadioActivity$25;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2523
    sget v4, Lcom/lenovo/fm/RadioActivity;->selectWhich:I

    sget-object v5, Lcom/lenovo/fm/RadioActivity;->sleepListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2524
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2525
    .local v1, mAlertDialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/lenovo/fm/RadioActivity$26;

    invoke-direct {v4, p0}, Lcom/lenovo/fm/RadioActivity$26;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2536
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2537
    return-void
.end method

.method public showSearchDialog()V
    .locals 4

    .prologue
    const v3, 0x7f040027

    .line 1126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/fm/RadioActivity$12;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioActivity$12;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    .line 1143
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    new-instance v1, Lcom/lenovo/fm/RadioActivity$13;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioActivity$13;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1153
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1154
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity;->mDialogSearchProgress:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1155
    return-void
.end method

.method public showSearchManualDialog()V
    .locals 6

    .prologue
    .line 2245
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2247
    .local v3, view:Landroid/view/View;
    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2248
    .local v2, mSelectOkBtn:Landroid/widget/Button;
    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2250
    .local v1, mSelectCancelBtn:Landroid/widget/Button;
    invoke-direct {p0, v3}, Lcom/lenovo/fm/RadioActivity;->initDialog(Landroid/view/View;)[[Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, cities:[[Ljava/lang/String;
    new-instance v4, Lcom/lenovo/fm/RadioActivity$20;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/fm/RadioActivity$20;-><init>(Lcom/lenovo/fm/RadioActivity;[[Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2300
    new-instance v4, Lcom/lenovo/fm/RadioActivity$21;

    invoke-direct {v4, p0}, Lcom/lenovo/fm/RadioActivity$21;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2309
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    .line 2310
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f060002

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;

    .line 2312
    :cond_0
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2314
    iget-object v4, p0, Lcom/lenovo/fm/RadioActivity;->selectChannelDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 2315
    return-void
.end method
