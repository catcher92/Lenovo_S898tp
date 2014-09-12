.class public Lit/sephiroth/android/wheel/view/WheelRadio;
.super Landroid/view/View;
.source "WheelRadio.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "wheel-radio"


# instance fields
.field mBigIndicatorColor:I

.field mBigTicksCount:I

.field mCorrectionX:F

.field mFast:Landroid/graphics/DrawFilter;

.field mForceLayout:Z

.field mIndicator:Landroid/graphics/Bitmap;

.field mIndicatorBig:Landroid/graphics/Bitmap;

.field mIndicatorSmall:Landroid/graphics/Bitmap;

.field mLineBigSize:I

.field mLineTickSize:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaint:Landroid/graphics/Paint;

.field mRealRect:Landroid/graphics/Rect;

.field mShader:Landroid/graphics/Shader;

.field mShader1:Landroid/graphics/Shader;

.field mSmallIndicatorColor:I

.field mSmallTicksCount:I

.field mValue:F

.field mValueIndicatorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/wheel/view/WheelRadio;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/wheel/view/WheelRadio;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaddingLeft:I

    .line 37
    iput v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaddingRight:I

    .line 38
    iput v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mLineTickSize:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mLineBigSize:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallTicksCount:I

    .line 41
    iput v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigTicksCount:I

    .line 42
    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mCorrectionX:F

    .line 45
    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mValue:F

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/wheel/view/WheelRadio;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 96
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mFast:Landroid/graphics/DrawFilter;

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaint:Landroid/graphics/Paint;

    .line 100
    sget-object v1, Lit/sephiroth/android/wheel/R$styleable;->WheelRadio:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x69

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallTicksCount:I

    .line 104
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigTicksCount:I

    .line 106
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mValueIndicatorColor:I

    .line 108
    const/4 v1, 0x4

    const v2, 0x33ffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallIndicatorColor:I

    .line 110
    const/4 v1, 0x3

    const v2, 0x66ffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigIndicatorColor:I

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method private makeBitmap2(III)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "line_size"

    .prologue
    const/4 v8, 0x1

    .line 215
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    .local v1, c:Landroid/graphics/Canvas;
    const-string v5, "wheel-radio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "line_size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    div-int/lit8 v2, p2, 0x3

    .line 223
    .local v2, center_h:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 224
    .local v3, p:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 226
    iget v5, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallIndicatorColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    sub-int v6, p2, v2

    int-to-float v6, v6

    int-to-float v7, p3

    int-to-float v8, p2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 230
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 231
    return-object v0
.end method

.method private makeBitmap3(III)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "line_size"

    .prologue
    const/4 v6, 0x1

    .line 247
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 250
    .local v1, c:Landroid/graphics/Canvas;
    mul-int/lit8 v5, p2, 0x4

    div-int/lit8 v2, v5, 0x6

    .line 252
    .local v2, center_h:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 253
    .local v3, p:Landroid/graphics/Paint;
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 255
    iget v5, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigIndicatorColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    sub-int v6, p2, v2

    int-to-float v6, v6

    int-to-float v7, p3

    int-to-float v8, p2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 261
    return-object v0
.end method

.method private makeIndicator(II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "height"
    .parameter "line_size"

    .prologue
    const/4 v8, 0x1

    .line 275
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    .local v2, c:Landroid/graphics/Canvas;
    move v3, p1

    .line 281
    .local v3, center_h:I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 282
    .local v4, p:Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 284
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/WheelRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 285
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x7f02003d

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v7, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mValueIndicatorColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    new-instance v5, Landroid/graphics/RectF;

    const/4 v7, 0x0

    sub-int v8, p1, v3

    int-to-float v8, v8

    int-to-float v9, p2

    sub-int v10, p1, v3

    sub-int v10, p1, v10

    add-int/lit8 v10, v10, 0x5

    int-to-float v10, v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 290
    .local v5, rect:Landroid/graphics/RectF;
    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v0, v7, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 292
    return-object v1
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mValue:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mFast:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 168
    .local v1, saveCount:I
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    iget v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaddingLeft:I

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mLineBigSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mShader1:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 175
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mRealRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mCorrectionX:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 178
    .local v0, rw:F
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicator:Landroid/graphics/Bitmap;

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mValue:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v0

    const/high16 v4, 0x4110

    sub-float/2addr v3, v4

    iget-object v4, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    .end local v0           #rw:F
    .end local v1           #saveCount:I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 134
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 135
    const-string v1, "wheel-radio"

    const-string v2, "onLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sub-int v0, p4, p2

    .line 137
    .local v0, w:I
    const-string v1, "wheel-radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smallticks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallTicksCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "wheel-radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bigticks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigTicksCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "wheel-radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "right = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bottom ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-lez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mForceLayout:Z

    if-eqz v1, :cond_2

    .line 143
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaddingLeft:I

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mPaddingRight:I

    sub-int v3, v0, v3

    invoke-direct {v1, v2, p3, v3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mRealRect:Landroid/graphics/Rect;

    .line 144
    iget v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallTicksCount:I

    div-int v1, v0, v1

    sub-int v2, p5, p3

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mLineTickSize:I

    invoke-direct {p0, v1, v2, v3}, Lit/sephiroth/android/wheel/view/WheelRadio;->makeBitmap2(III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicatorSmall:Landroid/graphics/Bitmap;

    .line 146
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicatorSmall:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mShader:Landroid/graphics/Shader;

    .line 148
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicatorSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    sub-int v2, p5, p3

    iget v3, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mLineBigSize:I

    invoke-direct {p0, v1, v2, v3}, Lit/sephiroth/android/wheel/view/WheelRadio;->makeBitmap3(III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicatorBig:Landroid/graphics/Bitmap;

    .line 150
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicatorBig:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mShader1:Landroid/graphics/Shader;

    .line 152
    sub-int v1, p5, p3

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/wheel/view/WheelRadio;->makeIndicator(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mIndicator:Landroid/graphics/Bitmap;

    .line 153
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mRealRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigTicksCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    rem-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigTicksCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mCorrectionX:F

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mForceLayout:Z

    .line 157
    :cond_2
    return-void
.end method

.method public setTicksNumber(II)V
    .locals 1
    .parameter "value"
    .parameter "value2"

    .prologue
    .line 124
    iput p1, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mSmallTicksCount:I

    .line 125
    iput p2, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mBigTicksCount:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mForceLayout:Z

    .line 127
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/WheelRadio;->requestLayout()V

    .line 128
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/WheelRadio;->postInvalidate()V

    .line 129
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 190
    const/high16 v0, -0x4080

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/wheel/view/WheelRadio;->mValue:F

    .line 191
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/WheelRadio;->postInvalidate()V

    .line 192
    return-void
.end method
