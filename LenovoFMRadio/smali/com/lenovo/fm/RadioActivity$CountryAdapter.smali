.class Lcom/lenovo/fm/RadioActivity$CountryAdapter;
.super Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountryAdapter"
.end annotation


# instance fields
.field private countries:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method protected constructor <init>(Lcom/lenovo/fm/RadioActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2425
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$CountryAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    .line 2426
    const v0, 0x7f030001

    invoke-direct {p0, p2, v0, v2}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 2418
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "87"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "88"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "89"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "90"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "91"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "92"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "93"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "96"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "97"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "100"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "101"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "102"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "103"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "104"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "105"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "106"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "107"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "108"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity$CountryAdapter;->countries:[Ljava/lang/String;

    .line 2428
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioActivity$CountryAdapter;->setItemTextResource(I)V

    .line 2429
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "index"
    .parameter "cachedView"
    .parameter "parent"

    .prologue
    .line 2433
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2434
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "index"

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$CountryAdapter;->countries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$CountryAdapter;->countries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
