.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookNumberPicker;
.super Ljava/lang/Object;
.source "IdeaUI_HookNumberPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NumberPicker(Landroid/widget/NumberPicker;Landroid/util/AttributeSet;ILandroid/graphics/Paint;)V
    .locals 12
    .parameter "numberPicker"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "paint"

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 19
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const v11, 0x10100d4

    aput v11, v8, v10

    .line 20
    .local v8, styles:[I
    const/4 v10, 0x0

    invoke-virtual {v1, p1, v8, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 24
    .local v6, res:I
    if-nez v6, :cond_0

    .line 25
    const v10, 0x3010017

    invoke-static {v1, v10}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v4

    .line 28
    .local v4, ideaui_res:I
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    .line 31
    .end local v4           #ideaui_res:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 42
    .local v9, ta:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 43
    .local v5, radius:F
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 44
    .local v2, dx:F
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 45
    .local v3, dy:F
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 47
    .local v7, shadow:I
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-virtual {p3, v5, v2, v3, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 51
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v5           #radius:F
    .end local v6           #res:I
    .end local v7           #shadow:I
    .end local v8           #styles:[I
    .end local v9           #ta:Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x1t 0x3t
        0xat 0x0t 0x1t 0x3t
        0x9t 0x0t 0x1t 0x3t
        0x7t 0x0t 0x1t 0x3t
    .end array-data
.end method
