.class Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field V:Landroid/view/View;

.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field checkBox:Landroid/widget/CheckBox;

.field line1:Landroid/widget/TextView;

.field line1_duration:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;-><init>()V

    return-void
.end method
