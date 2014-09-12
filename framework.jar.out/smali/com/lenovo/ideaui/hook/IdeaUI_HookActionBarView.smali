.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookActionBarView;
.super Ljava/lang/Object;
.source "IdeaUI_HookActionBarView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initTitle(ILandroid/content/Context;Landroid/widget/TextView;)V
    .locals 9
    .parameter "mTitleStyleRes"
    .parameter "mContext"
    .parameter "mTitleView"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 57
    const v5, 0x3030112

    if-ne p0, v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 68
    .local v4, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v4, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 69
    .local v2, radius:F
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 70
    .local v0, dx:F
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 71
    .local v1, dy:F
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 73
    .local v3, shadow:I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 78
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v2           #radius:F
    .end local v3           #shadow:I
    .end local v4           #ta:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 60
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x1t 0x3t
        0xat 0x0t 0x1t 0x3t
        0x9t 0x0t 0x1t 0x3t
        0x7t 0x0t 0x1t 0x3t
    .end array-data
.end method

.method public static updateActionMenuItemViewBackground(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuView;Z)V
    .locals 7
    .parameter "mContext"
    .parameter "mMenuView"
    .parameter "mSplitActionBar"

    .prologue
    .line 23
    const v6, 0x101039c

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 26
    .local v0, bg_id_normal:I
    const v6, 0x3010006

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 29
    .local v1, bg_id_split:I
    const v6, 0x3010005

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 32
    .local v2, bg_id_split_icontext:I
    if-eqz p1, :cond_3

    .line 33
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 34
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 36
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 37
    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 41
    .local v4, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_setIsInSplit(Z)V

    .line 44
    if-nez p2, :cond_1

    .line 45
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .end local v4           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .restart local v4       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_hasIconAndText()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 54
    .end local v3           #i:I
    .end local v4           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v5           #view:Landroid/view/View;
    :cond_3
    return-void
.end method
