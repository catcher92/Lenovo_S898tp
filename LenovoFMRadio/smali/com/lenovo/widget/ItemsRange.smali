.class public Lcom/lenovo/widget/ItemsRange;
.super Ljava/lang/Object;
.source "ItemsRange.java"


# instance fields
.field private count:I

.field private first:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, v0}, Lcom/lenovo/widget/ItemsRange;-><init>(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "first"
    .parameter "count"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/lenovo/widget/ItemsRange;->first:I

    .line 49
    iput p2, p0, Lcom/lenovo/widget/ItemsRange;->count:I

    .line 50
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lenovo/widget/ItemsRange;->getFirst()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/widget/ItemsRange;->getLast()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/widget/ItemsRange;->count:I

    return v0
.end method

.method public getFirst()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/lenovo/widget/ItemsRange;->first:I

    return v0
.end method

.method public getLast()I
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/lenovo/widget/ItemsRange;->getFirst()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/widget/ItemsRange;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
