.class public Lcom/mediatek/telephony/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;
    }
.end annotation


# static fields
.field private static final EVENT_GET_PLMN_PREFER_LIST_1:I = 0x3e8

.field private static final EVENT_GET_PLMN_PREFER_LIST_2:I = 0x3e9

.field private static final FDD_STANDBY_TIMER:[I

.field private static final MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

.field private static final MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final TDD_STANDBY_TIMER:[I

.field private static m3gSimSlot:I

.field private static mCM:[Lcom/android/internal/telephony/CommandsInterface;

.field private static mContext:Landroid/content/Context;

.field private static mDenyReason:I

.field private static mFirstSelect:[Z

.field private static mGsmPlmnStrings:[Ljava/lang/String;

.field private static mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

.field private static mImsi:[Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

.field private static mOperatorSpec:Ljava/lang/String;

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static mPlmnSs:Ljava/lang/String;

.field private static mRegState:I

.field private static mRegion:I

.field private static mRilRadioTechnology:I

.field private static mState:I

.field private static mSuspendId:I

.field private static mSuspendWaitImsi:[Z

.field private static mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static mUserType:I

.field private static mWaitForDesignateService:Z

.field private static sAllowSwitchModem:Z

.field private static sFddStandByCounter:I

.field private static sNeedGetPlmnPreferList:[Z

.field private static sNeedQueryModemType:Z

.field private static sTddStandByCounter:I

.field private static sWaitInFdd:Z

.field private static sWaitInTdd:Z


# instance fields
.field private mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTddStandByTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 111
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "45407"

    aput-object v1, v0, v2

    const-string v1, "46003"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 121
    new-array v0, v4, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    .line 124
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Landroid/content/Context;)V

    .line 180
    const-string v0, "Single Card Project"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v2

    .line 182
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3
    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v0, v2

    .line 183
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    new-instance v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 187
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Landroid/content/Context;)V

    .line 167
    const-string v1, "Gemini Project"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 169
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, p3, v0

    aput-object v2, v1, v0

    .line 170
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, p3, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 171
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0xa

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 349
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOm$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOm$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 360
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOm$2;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOm$2;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 558
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOm$3;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOm$3;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 130
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    .line 131
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    .line 132
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 134
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 135
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccRecords;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 136
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    .line 137
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    .line 138
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    .line 139
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    .line 140
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mOperatorSpec:Ljava/lang/String;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "3G Switch Not Supported"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    sput v3, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    .line 154
    sput v3, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    .line 155
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    .line 156
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "Auto select disable"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 159
    const/16 v1, -0x62

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v1, "Auto select enable"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1000()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    return p0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400()[Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    return v0
.end method

.method static synthetic access$1700()[Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    return p0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOm;->mPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$2502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegState:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegState:I

    return p0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mState:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mState:I

    return p0
.end method

.method static synthetic access$2800(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 80
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    return-object v0
.end method

.method private get3gCapabilitySim()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 765
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 766
    .local v0, capability:I
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 767
    .local v1, capability2:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 768
    :cond_0
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 771
    :goto_0
    return v2

    .line 770
    :cond_1
    const-string v2, "3G turn off"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 771
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 7
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v5, 0x0

    .line 858
    if-nez p1, :cond_0

    .line 859
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 870
    :goto_0
    return v5

    .line 862
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, currentMcc:Ljava/lang/String;
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 864
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 866
    const/4 v5, 0x1

    goto :goto_0

    .line 863
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 869
    .end local v4           #mcc:Ljava/lang/String;
    :cond_2
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 870
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 834
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 835
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 837
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 838
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 840
    const/4 v4, 0x1

    .line 853
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 837
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 844
    .restart local v3       #mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 845
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 846
    const/4 v4, 0x3

    goto :goto_1

    .line 843
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 849
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 850
    const/4 v4, 0x2

    goto :goto_1

    .line 852
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 665
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 667
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 669
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 670
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    goto :goto_0

    .line 672
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    const-string v0, "3G slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 676
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    goto :goto_0

    .line 679
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 680
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v3, :cond_5

    .line 681
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 687
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 688
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 690
    :cond_4
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aput-boolean v2, v0, v1

    .line 692
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v4, :cond_8

    .line 693
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v0, v4, :cond_0

    .line 694
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 682
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eq v0, v4, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v5, :cond_7

    .line 683
    :cond_6
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    goto :goto_1

    .line 685
    :cond_7
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_8
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v0, v3, :cond_9

    .line 697
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 699
    :cond_9
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 498
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 499
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 500
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    new-instance v3, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;

    invoke-direct {v3, p0}, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 502
    .local v2, network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .end local v2           #network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    const-string v3, "<PLMN Prefer List End>"

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 508
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    :goto_1
    return-void

    .line 506
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNoService()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 302
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 304
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 305
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v2, :cond_5

    .line 306
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 307
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 308
    const-string v0, "TDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_1

    .line 310
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    if-nez v0, :cond_0

    .line 311
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 346
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "Standby in TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    const-string v0, "FDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_4

    .line 323
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    if-nez v0, :cond_3

    .line 324
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 328
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_4
    const-string v0, "Standby in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v3, :cond_8

    .line 335
    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 336
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 337
    const-string v0, "TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 340
    :cond_7
    const-string v0, "FDD modem -> standby in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_8
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 512
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 513
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 514
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGsmPlmnStrings["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    if-ne v1, p2, :cond_1

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    if-eq v1, v4, :cond_1

    .line 519
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 523
    :cond_1
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 524
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v2, -0x62

    if-eq v1, v2, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v1, v4, :cond_2

    .line 526
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 531
    .end local v0           #i:I
    :cond_2
    :goto_1
    return-void

    .line 529
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 535
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 538
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 539
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    .line 556
    :goto_0
    return-void

    .line 542
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 543
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 550
    :cond_2
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleQueryModemType(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v0, v1, v3

    .line 488
    .local v0, modemType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modemType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 489
    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 490
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 494
    .end local v0           #modemType:I
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v1, "Query modem type fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 474
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    if-eqz v0, :cond_0

    .line 475
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    .line 476
    const-string v0, "Query modem type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryModemType(Landroid/os/Message;)V

    .line 479
    :cond_0
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 483
    :cond_1
    return-void
.end method

.method private handleSwitchModem(I)V
    .locals 5
    .parameter "toModem"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 719
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 720
    if-ne p1, v4, :cond_0

    .line 721
    const-string v1, "Already in TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 743
    :goto_0
    return-void

    .line 723
    :cond_0
    const-string v1, "Already in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 728
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not idle, modem switch not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 733
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 734
    if-ne p1, v3, :cond_4

    .line 735
    const-string v1, "Switching to FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 736
    invoke-static {v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 741
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    goto :goto_0

    .line 738
    :cond_4
    const-string v1, "Switching to TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 739
    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_2
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 12
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isAllowCampOn]+ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is 3G SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 194
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v7, v5, :cond_3

    .line 195
    sput-boolean v5, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 196
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v7, v5, :cond_1

    .line 197
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 198
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 199
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 200
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 201
    const-string v6, "In TDD modem -> stay in TDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 202
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 298
    :goto_0
    return v5

    .line 205
    :cond_0
    sput v11, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 206
    const-string v5, "In FDD modem -> switch to TDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 207
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 208
    goto :goto_0

    .line 210
    :cond_1
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v7, v9, :cond_f

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 212
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 213
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 214
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 215
    goto :goto_0

    .line 217
    :cond_2
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 218
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 219
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 220
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_3
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v7, v9, :cond_c

    .line 225
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 226
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v7, v9, :cond_5

    .line 227
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 228
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 229
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 230
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 231
    goto :goto_0

    .line 233
    :cond_4
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 234
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 235
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_5
    sget-boolean v7, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    if-nez v7, :cond_6

    .line 240
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 241
    const-string v6, "Not allow to switch modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 242
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_6
    const/4 v4, 0x0

    .line 246
    .local v4, nwType:I
    const/4 v7, 0x5

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 247
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 248
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 249
    const/4 v4, 0x1

    .line 253
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_7
    if-ne v4, v5, :cond_a

    .line 254
    const-string v7, "In TD network"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_9

    .line 256
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 257
    const-string v6, "In TDD modem -> stay in TDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 258
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_9
    sput v11, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 262
    const-string v5, "In FDD modem -> switch to TDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 263
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 264
    goto/16 :goto_0

    .line 267
    :cond_a
    const-string v7, "Not in TD network"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_b

    .line 269
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 270
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 271
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 272
    goto/16 :goto_0

    .line 274
    :cond_b
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 275
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 276
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #nwType:I
    :cond_c
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v7, v11, :cond_e

    .line 281
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_d

    .line 283
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 284
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 285
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 286
    goto/16 :goto_0

    .line 288
    :cond_d
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 289
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 290
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_e
    const-string v7, "Unknown user type"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 296
    :cond_f
    sput v5, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 297
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 298
    goto/16 :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 889
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOM]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 374
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    .line 375
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 379
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    .line 380
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 788
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 789
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 790
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 791
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 792
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    aput-boolean v2, v1, v0

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_0
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    .line 795
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 796
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 797
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetSimProperties()V

    .line 798
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    .line 799
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 802
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 803
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 804
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 805
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 806
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    monitor-exit v2

    .line 809
    return-void

    .line 808
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetSimProperties()V
    .locals 4

    .prologue
    .line 812
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 813
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 814
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 815
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 821
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 823
    monitor-exit v2

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restartSelection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 828
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 831
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume camping slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuspendId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 747
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 755
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 756
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 757
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    if-ne v0, v2, :cond_0

    .line 758
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 385
    const-string v4, "[searchForDesignateService]+ Search for TD srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 386
    if-nez p1, :cond_0

    .line 387
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 391
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 392
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneUtil;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 395
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 396
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 400
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setRatMode(II)V
    .locals 3
    .parameter "ratMode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 776
    if-ne p1, v2, :cond_0

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 785
    :goto_0
    return-void

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 782
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 3

    .prologue
    .line 874
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 875
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 876
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 877
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 878
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 405
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 406
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void

    .line 408
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 412
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 416
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 420
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 421
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 424
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 428
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 432
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_QUERY_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleQueryModemType(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 436
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 437
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 438
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=2g fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :sswitch_8
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 445
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 446
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=auto fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :sswitch_9
    const-string v1, "handleMessage : <EVENT_STORE_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 453
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 454
    const-string v1, "Store modem type success"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store modem type fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :sswitch_a
    const-string v1, "handleMessage : <EVENT_GET_PLMN_PREFER_LIST>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 464
    :sswitch_b
    const-string v1, "handleMessage : <EVENT_GET_PLMN_PREFER_LIST>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0x1e -> :sswitch_2
        0x1f -> :sswitch_5
        0x28 -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_6
        0x3e8 -> :sswitch_a
        0x3e9 -> :sswitch_b
    .end sparse-switch
.end method

.method public setNetworkSelectionMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 709
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 715
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    .line 716
    return-void

    .line 711
    :cond_0
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 712
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    goto :goto_0
.end method
