.class public abstract Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;
.super Lcom/lenovo/widget/adapters/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xefeff0

.field public static final DEFAULT_TEXT_SIZE:I = 0x18

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "itemResource"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 84
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "itemResource"
    .parameter "itemTextResource"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lenovo/widget/adapters/AbstractWheelAdapter;-><init>()V

    .line 48
    const v0, -0xefeff0

    iput v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    .line 49
    const/16 v0, 0x18

    iput v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    .line 99
    iput-object p1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 100
    iput p2, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    .line 101
    iput p3, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 105
    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 5
    .parameter "view"
    .parameter "textResource"

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, text:Landroid/widget/TextView;
    if-nez p2, :cond_1

    :try_start_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 273
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 285
    :cond_0
    :goto_0
    return-object v2

    .line 274
    :cond_1
    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #text:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #text:Landroid/widget/TextView;
    goto :goto_0

    .line 277
    .end local v2           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 278
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "AbstractWheelAdapter"

    const-string v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "resource"
    .parameter "parent"

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 302
    iget-object v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 298
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :pswitch_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 253
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 257
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 258
    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, v0, p2}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 238
    :cond_0
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 240
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    .line 243
    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 212
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 213
    if-nez p2, :cond_0

    .line 214
    iget v2, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, v2, p3}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    :cond_0
    iget v2, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, v2}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    .line 217
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {p0, p1}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    .local v0, text:Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 220
    const-string v0, ""

    .line 222
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget v2, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 225
    invoke-virtual {p0, v1}, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_2
    move-object v2, p2

    .line 230
    .end local v1           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemResource()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public setEmptyItemResource(I)V
    .locals 0
    .parameter "emptyItemResourceId"

    .prologue
    .line 199
    iput p1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    .line 200
    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .parameter "itemResourceId"

    .prologue
    .line 161
    iput p1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    .line 162
    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0
    .parameter "itemTextResourceId"

    .prologue
    .line 180
    iput p1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    .line 181
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 123
    iput p1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textColor:I

    .line 124
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 142
    iput p1, p0, Lcom/lenovo/widget/adapters/AbstractWheelTextAdapter;->textSize:I

    .line 143
    return-void
.end method
