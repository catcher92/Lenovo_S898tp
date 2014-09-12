.class Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DurationTimeFormat"
.end annotation


# instance fields
.field private mTimeFormatter:Ljava/util/Formatter;

.field private mTimeText:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    .line 1631
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;Lcom/lenovo/fm/FMRadioRecorderHistory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1628
    invoke-direct {p0, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 10
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x3c

    .line 1634
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 1635
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1636
    const-wide/16 v0, 0xe10

    div-long v0, p1, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1647
    :goto_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1640
    :cond_0
    div-long v0, p1, v5

    rem-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->mTimeFormatter:Ljava/util/Formatter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0
.end method
