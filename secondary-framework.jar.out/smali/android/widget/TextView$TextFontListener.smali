.class public Landroid/widget/TextView$TextFontListener;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFontListener"
.end annotation


# instance fields
.field public hasRegister:Z

.field public mstyle:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9381
    iput-object p1, p0, Landroid/widget/TextView$TextFontListener;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9378
    iput v0, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 9379
    iput-boolean v0, p0, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 9382
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 1
    .parameter
    .parameter "v"
    .parameter "nstyle"

    .prologue
    const/4 v0, 0x0

    .line 9384
    iput-object p1, p0, Landroid/widget/TextView$TextFontListener;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9378
    iput v0, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 9379
    iput-boolean v0, p0, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 9385
    iput p3, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 9386
    return-void
.end method
