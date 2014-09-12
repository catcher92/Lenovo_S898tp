.class public final Lcom/lenovo/fm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Wheel:[I = null

.field public static final WheelRadio:[I = null

.field public static final WheelRadio_bigIndicatorColor:I = 0x3

.field public static final WheelRadio_bigTicks:I = 0x1

.field public static final WheelRadio_smallIndicatorColor:I = 0x4

.field public static final WheelRadio_smallTicks:I = 0x0

.field public static final WheelRadio_valueIndicatorColor:I = 0x2

.field public static final Wheel_numRotations:I = 0x1

.field public static final Wheel_ticks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/fm/R$styleable;->Wheel:[I

    .line 504
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/fm/R$styleable;->WheelRadio:[I

    return-void

    .line 455
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data

    .line 504
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
