.class public Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LinearGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable$1;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColors:[I

.field private mCornerRadius:F

.field private mDither:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private mPadding:Landroid/graphics/Rect;

.field private mPositions:[F

.field private final mRect:Landroid/graphics/RectF;

.field private mRectIsDirty:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I[F)V
    .locals 2
    .parameter "orientation"
    .parameter "colors"
    .parameter "positions"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mCornerRadius:F

    .line 24
    iput-boolean v1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRectIsDirty:Z

    .line 25
    const/16 v0, 0xff

    iput v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mAlpha:I

    .line 26
    iput-boolean v1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mDither:Z

    .line 28
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 45
    iput-object p1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 46
    iput-object p2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mColors:[I

    .line 47
    iput-object p3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mPositions:[F

    .line 48
    return-void
.end method

.method private ensureValidRect()Z
    .locals 14

    .prologue
    .line 79
    iget-boolean v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRectIsDirty:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRectIsDirty:Z

    .line 82
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 83
    .local v8, bounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 85
    .local v9, inset:F
    iget-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v9

    iget v7, v8, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v9

    iget v12, v8, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float/2addr v12, v9

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v13, v9

    invoke-virtual {v0, v6, v7, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v5, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mColors:[I

    .line 90
    .local v5, colors:[I
    if-eqz v5, :cond_0

    .line 91
    iget-object v11, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 94
    .local v11, r:Landroid/graphics/RectF;
    const/high16 v10, 0x3f80

    .line 95
    .local v10, level:F
    sget-object v0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    iget-object v6, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 139
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 140
    .local v1, x0:F
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 141
    .local v2, y0:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->right:F

    mul-float v3, v0, v6

    .line 142
    .local v3, x1:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v0, v6

    .line 146
    .local v4, y1:F
    :goto_0
    iget-object v12, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v6, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    .end local v5           #colors:[I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v9           #inset:F
    .end local v10           #level:F
    .end local v11           #r:Landroid/graphics/RectF;
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 97
    .restart local v5       #colors:[I
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v9       #inset:F
    .restart local v10       #level:F
    .restart local v11       #r:Landroid/graphics/RectF;
    :pswitch_0
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 98
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 99
    .restart local v2       #y0:F
    move v3, v1

    .line 100
    .restart local v3       #x1:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v0, v6

    .line 101
    .restart local v4       #y1:F
    goto :goto_0

    .line 103
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :pswitch_1
    iget v1, v11, Landroid/graphics/RectF;->right:F

    .line 104
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 105
    .restart local v2       #y0:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->left:F

    mul-float v3, v0, v6

    .line 106
    .restart local v3       #x1:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v0, v6

    .line 107
    .restart local v4       #y1:F
    goto :goto_0

    .line 109
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :pswitch_2
    iget v1, v11, Landroid/graphics/RectF;->right:F

    .line 110
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 111
    .restart local v2       #y0:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->left:F

    mul-float v3, v0, v6

    .line 112
    .restart local v3       #x1:F
    move v4, v2

    .line 113
    .restart local v4       #y1:F
    goto :goto_0

    .line 115
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :pswitch_3
    iget v1, v11, Landroid/graphics/RectF;->right:F

    .line 116
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 117
    .restart local v2       #y0:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->left:F

    mul-float v3, v0, v6

    .line 118
    .restart local v3       #x1:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->top:F

    mul-float v4, v0, v6

    .line 119
    .restart local v4       #y1:F
    goto :goto_0

    .line 121
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :pswitch_4
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 122
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 123
    .restart local v2       #y0:F
    move v3, v1

    .line 124
    .restart local v3       #x1:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->top:F

    mul-float v4, v0, v6

    .line 125
    .restart local v4       #y1:F
    goto :goto_0

    .line 127
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :pswitch_5
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 128
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 129
    .restart local v2       #y0:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->right:F

    mul-float v3, v0, v6

    .line 130
    .restart local v3       #x1:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->top:F

    mul-float v4, v0, v6

    .line 131
    .restart local v4       #y1:F
    goto :goto_0

    .line 133
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    :pswitch_6
    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 134
    .restart local v1       #x0:F
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 135
    .restart local v2       #y0:F
    const/high16 v0, 0x3f80

    iget v6, v11, Landroid/graphics/RectF;->right:F

    mul-float v3, v0, v6

    .line 136
    .restart local v3       #x1:F
    move v4, v2

    .line 137
    .restart local v4       #y1:F
    goto :goto_0

    .line 150
    .end local v1           #x0:F
    .end local v2           #y0:F
    .end local v3           #x1:F
    .end local v4           #y1:F
    .end local v5           #colors:[I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v9           #inset:F
    .end local v10           #level:F
    .end local v11           #r:Landroid/graphics/RectF;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 53
    invoke-direct {p0}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->ensureValidRect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iget-object v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mDither:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 58
    iget-object v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    iget v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mCornerRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 61
    iget v1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mCornerRadius:F

    .line 62
    .local v1, rad:F
    iget-object v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float v0, v2, v3

    .line 63
    .local v0, r:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 64
    move v1, v0

    .line 66
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 68
    .end local v0           #r:F
    .end local v1           #rad:F
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 190
    iget-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mRectIsDirty:Z

    .line 157
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 166
    iget v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 167
    iput p1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mAlpha:I

    .line 168
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->invalidateSelf()V

    .line 170
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 182
    iget-object v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    .line 183
    iput-object p1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 184
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->invalidateSelf()V

    .line 186
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 205
    iput p1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mCornerRadius:F

    .line 206
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->invalidateSelf()V

    .line 207
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 174
    iget-boolean v0, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mDither:Z

    if-eq p1, v0, :cond_0

    .line 175
    iput-boolean p1, p0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->mDither:Z

    .line 176
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;->invalidateSelf()V

    .line 178
    :cond_0
    return-void
.end method
