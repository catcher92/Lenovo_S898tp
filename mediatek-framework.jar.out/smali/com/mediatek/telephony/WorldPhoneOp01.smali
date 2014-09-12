.class public Lcom/mediatek/telephony/WorldPhoneOp01;
.super Landroid/os/Handler;
.source "WorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# static fields
.field private static FDD_STANDBY_TIMER:[I

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

.field private static sFddStandByCounter:I

.field private static sTddStandByCounter:I

.field private static sWaitInFdd:Z

.field private static sWaitInTdd:Z


# instance fields
.field private mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTddStandByTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mLock:Ljava/lang/Object;

    .line 98
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v6

    const-string v1, "00101"

    aput-object v1, v0, v5

    const-string v1, "00211"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "00321"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00541"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00651"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00761"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00871"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00902"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "01012"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "01122"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "01232"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "46004"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "46009"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "46602"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "50270"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "46003"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "45407"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v5

    const-string v1, "45502"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    .line 108
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    const-string v1, "001"

    aput-object v1, v0, v4

    const-string v1, "002"

    aput-object v1, v0, v6

    const-string v1, "003"

    aput-object v1, v0, v5

    const-string v1, "004"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "006"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "007"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "008"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "009"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "010"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "011"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "012"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 118
    new-array v0, v4, [I

    const/16 v1, 0x3c

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    .line 121
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
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

    .line 178
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;-><init>(Landroid/content/Context;)V

    .line 179
    const-string v0, "Single Card Project"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v2

    .line 181
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3
    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v0, v2

    .line 182
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    new-instance v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 186
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;-><init>(Landroid/content/Context;)V

    .line 166
    const-string v1, "Gemini Project"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 168
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, p3, v0

    aput-object v2, v1, v0

    .line 169
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, p3, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 170
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0xa

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 307
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOp01$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 318
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOp01$2;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$2;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 478
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOp01$3;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$3;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 127
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    .line 128
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    .line 129
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 130
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 131
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccRecords;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 132
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    .line 133
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    .line 134
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    .line 135
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mOperatorSpec:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetAllProperties()V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "3G Switch Not Supported"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    sput v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    .line 150
    sput v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    .line 151
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    .line 152
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v1, "Auto select disable"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 155
    const/16 v1, -0x62

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 159
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "world_phone_fdd_modem_timer"

    sget-object v5, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v6, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FDD_STANDBY_TIMER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 162
    return-void

    .line 157
    :cond_0
    const-string v1, "Auto select enable"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    return p0
.end method

.method static synthetic access$1100(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()[Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$1400()[Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/telephony/WorldPhoneOp01;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    return p0
.end method

.method static synthetic access$1900(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegState:I

    return v0
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegState:I

    return p0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mState:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mState:I

    return p0
.end method

.method static synthetic access$2400(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleNoService()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/WorldPhoneOp01;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    return p0
.end method

.method private get3gCapabilitySim()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 666
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 667
    .local v0, capability:I
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 668
    .local v1, capability2:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 669
    :cond_0
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 672
    :goto_0
    return v2

    .line 671
    :cond_1
    const-string v2, "3G turn off"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 672
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 8
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 760
    if-nez p1, :cond_0

    .line 761
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 778
    :goto_0
    return v5

    .line 766
    :cond_0
    const/4 v7, 0x5

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, currentMcc:Ljava/lang/String;
    const-string v7, "46602"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "50270"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v5, v6

    .line 768
    goto :goto_0

    .line 770
    :cond_2
    const/4 v7, 0x3

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 771
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 772
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 773
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 774
    goto :goto_0

    .line 771
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 777
    .end local v4           #mcc:Ljava/lang/String;
    :cond_4
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 778
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 735
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 736
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 738
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 739
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 741
    const/4 v4, 0x1

    .line 754
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 738
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 745
    .restart local v3       #mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 746
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 747
    const/4 v4, 0x3

    goto :goto_1

    .line 744
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 750
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 751
    const/4 v4, 0x2

    goto :goto_1

    .line 753
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 566
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 567
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 569
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 571
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    goto :goto_0

    .line 574
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    const-string v0, "3G slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 578
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    goto :goto_0

    .line 581
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    .line 582
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v4, :cond_4

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v5, :cond_7

    .line 583
    :cond_4
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 589
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 590
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 592
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    aput-boolean v2, v0, v1

    .line 594
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v3, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v0, v5, :cond_9

    .line 595
    :cond_6
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 584
    :cond_7
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v3, :cond_8

    .line 585
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    goto :goto_1

    .line 587
    :cond_8
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 597
    :cond_9
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleNoService()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 254
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 256
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 257
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v2, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v4, :cond_7

    .line 258
    :cond_0
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 261
    const-string v0, "TDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_2

    .line 263
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    if-nez v0, :cond_1

    .line 264
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 304
    return-void

    .line 268
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_2
    const-string v0, "Standby in TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_3
    const-string v0, "FDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_6

    .line 276
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v0, v4, :cond_5

    .line 277
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    if-nez v0, :cond_4

    .line 278
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 282
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_5
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 288
    :cond_6
    const-string v0, "Standby in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_7
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v5, :cond_9

    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 295
    const-string v0, "Should not happen! Type3 user, TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 298
    :cond_8
    const-string v0, "FDD modem -> keep trying in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_9
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 432
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 435
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

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    if-ne v1, p2, :cond_1

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    if-eq v1, v4, :cond_1

    .line 439
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->searchForDesignateService(Ljava/lang/String;)V

    .line 443
    :cond_1
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 444
    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/16 v2, -0x62

    if-eq v1, v2, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v1, v4, :cond_2

    .line 446
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 451
    .end local v0           #i:I
    :cond_2
    :goto_1
    return-void

    .line 449
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 455
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 458
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 459
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V

    .line 476
    :goto_0
    return-void

    .line 462
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 463
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 470
    :cond_2
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 474
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 412
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 416
    :cond_0
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    if-ne v0, p1, :cond_2

    .line 417
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 418
    :cond_1
    const-string v0, "Modem on, Type12 user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 428
    :cond_2
    :goto_0
    return-void

    .line 420
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 421
    const-string v0, "Modem on, Type3 user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0

    .line 424
    :cond_4
    const-string v0, "Modem on, Unknown user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 5
    .parameter "toModem"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 620
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 621
    if-ne p1, v4, :cond_0

    .line 622
    const-string v1, "Already in TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 624
    :cond_0
    const-string v1, "Already in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 629
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 630
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 635
    if-ne p1, v3, :cond_4

    .line 636
    const-string v1, "Switching to FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 637
    invoke-static {v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 642
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetNetworkProperties()V

    goto :goto_0

    .line 639
    :cond_4
    const-string v1, "Switching to TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 640
    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_2
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 6
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAllowCampOn]+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 3G SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 193
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v2, v0, :cond_0

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v2, v5, :cond_5

    .line 194
    :cond_0
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 195
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v2, v0, :cond_2

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 197
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 198
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 199
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 200
    const-string v1, "TDD modem, stop searching TD service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 201
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 250
    :goto_0
    return v0

    .line 205
    :cond_1
    sput v4, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 206
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 207
    invoke-direct {p0, v1, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 208
    const-string v1, "FDD modem, RAT=2g, expecting TD service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 209
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v2, v5, :cond_4

    .line 213
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 214
    sput v5, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 215
    const-string v0, "TDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 216
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 217
    goto :goto_0

    .line 220
    :cond_3
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 221
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 222
    invoke-direct {p0, v0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 223
    const-string v1, "FDD modem, expecting TD service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 224
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_4
    const-string v2, "Unknow region"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 247
    :goto_1
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 248
    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 249
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 250
    goto :goto_0

    .line 230
    :cond_5
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 231
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 234
    const-string v1, "Should not happen! TDD modem, Type3 user allow GSM full service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 235
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_6
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 240
    const-string v1, "FDD modem, GSM full service or WCDMA limited service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 241
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_7
    const-string v2, "Unknown user type"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 791
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOP01]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 332
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    .line 333
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    :cond_0
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 337
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    .line 338
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 689
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 691
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 692
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 695
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 696
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetSimProperties()V

    .line 697
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetNetworkProperties()V

    .line 698
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 701
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 702
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 703
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 704
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 705
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    monitor-exit v2

    .line 708
    return-void

    .line 707
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
    .line 711
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 712
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 713
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 714
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    .line 720
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 722
    monitor-exit v2

    .line 723
    return-void

    .line 722
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
    .line 727
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 729
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetAllProperties()V

    .line 730
    const-string v0, "Switching to TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 732
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 647
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

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 656
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 657
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 658
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    if-ne v0, v2, :cond_0

    .line 659
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 343
    const-string v4, "[searchForDesignateService]+ Search for TD srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 344
    if-nez p1, :cond_0

    .line 345
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 349
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 350
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneUtil;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 353
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 354
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 358
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 349
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

    .line 677
    if-ne p1, v2, :cond_0

    .line 678
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 679
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 686
    :goto_0
    return-void

    .line 682
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 3

    .prologue
    .line 782
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 783
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 784
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 785
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 786
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 364
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 406
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 366
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 370
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 374
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 378
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 382
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 386
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 390
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 391
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 392
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 394
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 399
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 400
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 402
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0x1e -> :sswitch_2
        0x1f -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public setNetworkSelectionMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 604
    if-nez p1, :cond_1

    .line 605
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 606
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 607
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 616
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V

    .line 617
    return-void

    .line 609
    :cond_1
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 612
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v2, :cond_2

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 613
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0
.end method
