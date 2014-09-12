.class public Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;
.super Lcom/android/server/lightadjust/DataGenerator/DataGenerator;
.source "RandomGenerator.java"


# static fields
.field private static final AUTOMATICALLY_SHOW:Z = true

.field private static final DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I


# instance fields
.field private mIntervalSeconds:I

.field private mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;

.field result1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I

    return-void

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0xc2t 0x1t 0x0t 0x0t
        0x26t 0x2t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0xb6t 0x3t 0x0t 0x0t
        0x4ct 0x4t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xact 0xdt 0x0t 0x0t
        0xe0t 0x15t 0x0t 0x0t
        0x2ct 0x1at 0x0t 0x0t
        0xfct 0x21t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTimer:Ljava/util/Timer;

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mIntervalSeconds:I

    .line 21
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    return-object v0
.end method

.method private restartTimer()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V

    .line 95
    return-void
.end method


# virtual methods
.method public NoReportDataRightNow()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public ReportFirstDataRightNow()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public TerminateAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 156
    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 160
    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTimer:Ljava/util/Timer;

    .line 162
    :cond_1
    return-void
.end method

.method public setAntishake_interval_down(I)V
    .locals 0
    .parameter "option"

    .prologue
    .line 91
    return-void
.end method

.method public setAntishake_interval_up(I)V
    .locals 0
    .parameter "option"

    .prologue
    .line 81
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mIntervalSeconds:I

    .line 59
    invoke-direct {p0}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->restartTimer()V

    .line 60
    return-void
.end method

.method public setSampleStepSize(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 71
    return-void
.end method

.method public startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eq p1, v0, :cond_1

    .line 102
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 108
    :cond_2
    new-instance v0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;-><init>(Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    .line 132
    iget v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mIntervalSeconds:I

    if-lez v0, :cond_3

    .line 133
    iget v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mIntervalSeconds:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    .line 134
    .local v4, period:J
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 139
    .end local v4           #period:J
    :goto_0
    return-void

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0
.end method
