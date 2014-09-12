.class public Lit/sephiroth/android/wheel/view/Wheel;
.super Landroid/view/View;
.source "Wheel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;,
        Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;,
        Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;,
        Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;,
        Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;,
        Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "wheel"

.field static final MSG_VIBRATE:I = 0x1


# instance fields
.field mAnimationDuration:I

.field private mBgColors:[I

.field private mBgPositions:[F

.field mDF:Landroid/graphics/DrawFilter;

.field mDrawMatrix:Landroid/graphics/Matrix;

.field mFast:Landroid/graphics/DrawFilter;

.field mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

.field mForceLayout:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field mHeight:I

.field mInLayout:Z

.field mIndicator:Landroid/graphics/Bitmap;

.field mIndicatorX:F

.field mIsFirstScroll:Z

.field mLastMotionValue:F

.field mLayoutListener:Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;

.field mMaxX:I

.field mMinX:I

.field mOriginalDeltaX:I

.field mOriginalX:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field mPaint:Landroid/graphics/Paint;

.field mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

.field mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

.field mShader3:Landroid/graphics/Shader;

.field private mShouldStopFling:Z

.field mTickBitmap:Landroid/graphics/Bitmap;

.field mTickSpace:F

.field mTicksCount:I

.field mTicksEasing:Lit/sephiroth/android/wheel/easing/Easing;

.field mTicksSize:F

.field mToLeft:Z

.field mTouchSlop:I

.field mVibrationHandler:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field mWheelSizeFactor:I

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/wheel/view/Wheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/wheel/view/Wheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaddingLeft:I

    .line 101
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaddingRight:I

    .line 102
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaddingTop:I

    .line 103
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaddingBottom:I

    .line 105
    iput-boolean v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mInLayout:Z

    .line 117
    const/16 v0, 0xc8

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mAnimationDuration:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIndicatorX:F

    .line 121
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalX:I

    .line 122
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    .line 123
    const/high16 v0, 0x41f0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    .line 125
    const/16 v0, 0x12

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    .line 126
    const/high16 v0, 0x40e0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    .line 129
    new-instance v0, Lit/sephiroth/android/wheel/easing/Sine;

    invoke-direct {v0}, Lit/sephiroth/android/wheel/easing/Sine;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksEasing:Lit/sephiroth/android/wheel/easing/Easing;

    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 132
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgColors:[I

    .line 134
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgPositions:[F

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/wheel/view/Wheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0xa1t 0xa1t 0xa1t 0xfft
        0xa1t 0xa1t 0xa1t 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xa1t 0xa1t 0xa1t 0xfft
        0xa1t 0xa1t 0xa1t 0xfft
    .end array-data

    .line 134
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->fireOnScrollCompleted()V

    return-void
.end method

.method static synthetic access$200(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$300(Lit/sephiroth/android/wheel/view/Wheel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$302(Lit/sephiroth/android/wheel/view/Wheel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mShouldStopFling:Z

    return p1
.end method

.method private fireOnScrollCompleted()V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getValue()F

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getTickValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;->onScrollFinished(Lit/sephiroth/android/wheel/view/Wheel;FI)V

    .line 882
    return-void
.end method

.method private fireOnScrollRunning()V
    .locals 3

    .prologue
    .line 896
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getTickValue()I

    move-result v0

    .line 898
    .local v0, value:I
    int-to-float v1, v0

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mLastMotionValue:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mVibrationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mVibrationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 904
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    if-eqz v1, :cond_1

    .line 905
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getValue()F

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;->onScroll(Lit/sephiroth/android/wheel/view/Wheel;FI)V

    .line 907
    :cond_1
    int-to-float v1, v0

    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mLastMotionValue:F

    .line 908
    return-void
.end method

.method private fireOnScrollStarted()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getValue()F

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getTickValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;->onScrollStarted(Lit/sephiroth/android/wheel/view/Wheel;FI)V

    .line 889
    return-void
.end method

.method private getRealWidth()I
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getWidth()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaddingRight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 208
    new-instance v2, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;

    invoke-direct {v2, p0}, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;-><init>(Lit/sephiroth/android/wheel/view/Wheel;)V

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    .line 212
    :goto_0
    sget-object v2, Lit/sephiroth/android/wheel/R$styleable;->Wheel:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x12

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    .line 216
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFast:Landroid/graphics/DrawFilter;

    .line 222
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mPaint:Landroid/graphics/Paint;

    .line 224
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 225
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 226
    invoke-virtual {p0, v5}, Lit/sephiroth/android/wheel/view/Wheel;->setFocusable(Z)V

    .line 227
    invoke-virtual {p0, v5}, Lit/sephiroth/android/wheel/view/Wheel;->setFocusableInTouchMode(Z)V

    .line 229
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    iput v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTouchSlop:I

    .line 232
    :try_start_0
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    .line 239
    new-instance v2, Lit/sephiroth/android/wheel/view/Wheel$1;

    invoke-direct {v2, p0}, Lit/sephiroth/android/wheel/view/Wheel$1;-><init>(Lit/sephiroth/android/wheel/view/Wheel;)V

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mVibrationHandler:Landroid/os/Handler;

    .line 257
    :cond_0
    new-instance v2, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgColors:[I

    iget-object v5, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgPositions:[F

    invoke-direct {v2, v3, v4, v5}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I[F)V

    invoke-virtual {p0, v2}, Lit/sephiroth/android/wheel/view/Wheel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    return-void

    .line 210
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    new-instance v2, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;

    invoke-direct {v2, p0}, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;-><init>(Lit/sephiroth/android/wheel/view/Wheel;)V

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    goto :goto_0

    .line 234
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "wheel"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeBitmap3(II)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "width"
    .parameter "height"

    .prologue
    .line 272
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 273
    .local v15, bm:Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .local v16, c:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 277
    .local v14, p:Landroid/graphics/Paint;
    const/4 v3, 0x4

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    .line 278
    .local v7, colors:[I
    const/4 v3, 0x4

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    .line 280
    .local v8, positions:[F
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 283
    .local v2, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 285
    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    move-object/from16 v9, v16

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    return-object v15

    .line 277
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xddt
        0x0t 0x0t 0x0t 0xaat
        0x0t 0x0t 0x0t 0xaat
        0x0t 0x0t 0x0t 0xddt
    .end array-data

    .line 278
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private makeBitmapIndicator(II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 337
    div-int/lit8 v2, p1, 0x2

    int-to-float v10, v2

    .line 339
    .local v10, ellipse:F
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 340
    .local v8, bm:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 342
    .local v9, c:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 343
    .local v11, p:Landroid/graphics/Paint;
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 345
    const v2, -0x99999a

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    new-instance v12, Landroid/graphics/RectF;

    const/high16 v2, 0x4120

    int-to-float v3, p1

    add-int/lit8 v4, p2, -0x19

    int-to-float v4, v4

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 349
    .local v12, rect:Landroid/graphics/RectF;
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    new-instance v12, Landroid/graphics/RectF;

    .end local v12           #rect:Landroid/graphics/RectF;
    const/high16 v2, 0x41c8

    int-to-float v3, p1

    add-int/lit8 v4, p2, -0xa

    int-to-float v4, v4

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 351
    .restart local v12       #rect:Landroid/graphics/RectF;
    invoke-virtual {v9, v12, v10, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 353
    new-instance v12, Landroid/graphics/RectF;

    .end local v12           #rect:Landroid/graphics/RectF;
    const/high16 v2, 0x4140

    int-to-float v3, p1

    add-int/lit8 v4, p2, -0xc

    int-to-float v4, v4

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 354
    .restart local v12       #rect:Landroid/graphics/RectF;
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 355
    .local v5, colors:[I
    new-array v6, v7, [F

    fill-array-data v6, :array_1

    .line 356
    .local v6, positions:[F
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p1

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 359
    .local v0, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 360
    invoke-virtual {v9, v12, v10, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 362
    return-object v8

    .line 354
    :array_0
    .array-data 0x4
        0xe7t 0x76t 0x0t 0xfft
        0xfft 0xbbt 0x0t 0xfft
        0xe7t 0x76t 0x0t 0xfft
    .end array-data

    .line 355
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private makeTickerBitmap(II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "width"
    .parameter "height"

    .prologue
    .line 300
    div-int/lit8 v7, p1, 0x2

    int-to-float v3, v7

    .line 302
    .local v3, ellipse:F
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    .local v2, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 305
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x7f02006e

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 311
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/high16 v8, 0x4120

    int-to-float v9, p1

    add-int/lit8 v10, p2, -0xa

    int-to-float v10, v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 322
    .local v5, rect:Landroid/graphics/RectF;
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    return-object v1
.end method

.method private onFinishedMovement()V
    .locals 0

    .prologue
    .line 742
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->scrollCompleted()V

    .line 743
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 7

    .prologue
    .line 708
    iget-object v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    invoke-virtual {v3}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    :goto_0
    return-void

    .line 712
    :cond_0
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    if-le v3, v4, :cond_1

    .line 713
    iget-object v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v5, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    iget v6, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 716
    :cond_1
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    if-ge v3, v4, :cond_2

    .line 717
    iget-object v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v5, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    iget v6, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 722
    :cond_2
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    rem-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 723
    .local v0, diff:I
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 724
    .local v1, diff2:I
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 726
    .local v2, diff3:I
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 727
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 728
    iget-object v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    neg-int v5, v0

    invoke-virtual {v3, v4, v5}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget-boolean v5, p0, Lit/sephiroth/android/wheel/view/Wheel;->mToLeft:Z

    if-eqz v5, :cond_4

    neg-int v1, v2

    .end local v1           #diff2:I
    :cond_4
    invoke-virtual {v3, v4, v1}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 734
    .restart local v1       #diff2:I
    :cond_5
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->onFinishedMovement()V

    goto :goto_0
.end method


# virtual methods
.method getCurrentPage()I
    .locals 2

    .prologue
    .line 874
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    div-int/2addr v0, v1

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 3
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    .line 690
    if-eqz p1, :cond_1

    .line 698
    :cond_0
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    sub-int v0, v1, v2

    .line 699
    .local v0, centerDifference:I
    if-eqz p1, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    move p2, v1

    .end local v0           #centerDifference:I
    .end local p2
    :goto_1
    return p2

    .line 692
    .restart local p2
    :cond_1
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 699
    .restart local v0       #centerDifference:I
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public getTickSpace()F
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    return v0
.end method

.method getTickValue()I
    .locals 3

    .prologue
    .line 841
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    rem-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTicks()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    return v0
.end method

.method public getTicksCount()I
    .locals 4

    .prologue
    .line 852
    :try_start_0
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    div-int/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    rem-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 855
    :goto_0
    return v1

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Ljava/lang/ArithmeticException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()F
    .locals 5

    .prologue
    .line 829
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getRealWidth()I

    move-result v2

    .line 830
    .local v2, w:I
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    .line 831
    .local v0, position:I
    int-to-float v3, v0

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 832
    .local v1, value:F
    return v1
.end method

.method public getWheelScaleFactor()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 528
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFast:Landroid/graphics/DrawFilter;

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mDF:Landroid/graphics/DrawFilter;

    .line 529
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->stop(Z)V

    .line 530
    iput-boolean v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIsFirstScroll:Z

    .line 531
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 367
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mShader3:Landroid/graphics/Shader;

    if-eqz v1, :cond_5

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDF:Landroid/graphics/DrawFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    move/from16 v16, v0

    .line 373
    .local v16, w:I
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    mul-int/lit8 v15, v1, 0x3

    .line 377
    .local v15, total:I
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mIndicatorX:F

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v2, v2

    add-float v12, v1, v2

    .line 378
    .local v12, indicatorx:F
    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v1, v1

    cmpg-float v1, v12, v1

    if-gez v1, :cond_0

    const/4 v11, 0x1

    .line 381
    .local v11, indicator_visible:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 383
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v15, :cond_3

    .line 385
    if-eqz v11, :cond_1

    div-int/lit8 v1, v15, 0x2

    if-ne v10, v1, :cond_1

    .line 383
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 378
    .end local v10           #i:I
    .end local v11           #indicator_visible:Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 389
    .restart local v10       #i:I
    .restart local v11       #indicator_visible:Z
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v1, v1

    int-to-float v2, v10

    int-to-float v3, v15

    div-float/2addr v2, v3

    move/from16 v0, v16

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float v17, v1, v2

    .line 391
    .local v17, x:F
    const/4 v1, 0x0

    cmpg-float v1, v17, v1

    if-gez v1, :cond_2

    .line 392
    move/from16 v0, v16

    int-to-float v1, v0

    move/from16 v0, v17

    neg-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    rem-float/2addr v2, v3

    sub-float v17, v1, v2

    .line 397
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksEasing:Lit/sephiroth/android/wheel/easing/Easing;

    move/from16 v0, v17

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0

    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/wheel/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v1

    double-to-float v13, v1

    .line 398
    .local v13, scale:F
    const-wide v1, 0x400921fb54442d18L

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v3, v3

    div-float v3, v17, v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v14, v1

    .line 400
    .local v14, scale2:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v13

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTickBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/wheel/view/Wheel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 394
    .end local v13           #scale:F
    .end local v14           #scale2:F
    :cond_2
    move/from16 v0, v16

    int-to-float v1, v0

    rem-float v17, v17, v1

    goto :goto_3

    .line 407
    .end local v17           #x:F
    :cond_3
    const/4 v1, 0x0

    cmpg-float v1, v12, v1

    if-gez v1, :cond_6

    .line 408
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-float v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    rem-float/2addr v2, v3

    sub-float v12, v1, v2

    .line 413
    :goto_4
    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v1, v1

    cmpg-float v1, v12, v1

    if-gez v1, :cond_4

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksEasing:Lit/sephiroth/android/wheel/easing/Easing;

    float-to-double v2, v12

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-double v6, v6

    move/from16 v0, v16

    int-to-double v8, v0

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/wheel/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v1

    double-to-float v0, v1

    move/from16 v18, v0

    .line 416
    .local v18, x2:F
    const-wide v1, 0x400921fb54442d18L

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v3, v3

    div-float v3, v12, v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v14, v1

    .line 418
    .restart local v14       #scale2:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v2, v18, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mTickBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/wheel/view/Wheel;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/wheel/view/Wheel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 425
    .end local v14           #scale2:F
    .end local v18           #x2:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/wheel/view/Wheel;->mShader3:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 428
    .end local v10           #i:I
    .end local v11           #indicator_visible:Z
    .end local v12           #indicatorx:F
    .end local v15           #total:I
    .end local v16           #w:I
    :cond_5
    return-void

    .line 410
    .restart local v10       #i:I
    .restart local v11       #indicator_visible:Z
    .restart local v12       #indicatorx:F
    .restart local v15       #total:I
    .restart local v16       #w:I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    rem-float/2addr v12, v1

    goto/16 :goto_4
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "event0"
    .parameter "event1"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 553
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    move v0, v1

    .line 555
    .local v0, toleft:Z
    :goto_0
    if-nez v0, :cond_1

    .line 556
    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    if-le v2, v3, :cond_2

    .line 557
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    iget v5, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingDistance(II)V

    .line 570
    :goto_1
    return v1

    .line 553
    .end local v0           #toleft:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 562
    .restart local v0       #toleft:Z
    :cond_1
    iget v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    if-ge v2, v3, :cond_2

    .line 563
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    iget v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    iget v5, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingDistance(II)V

    goto :goto_1

    .line 569
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    float-to-int v4, p3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startUsingVelocity(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 481
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mInLayout:Z

    .line 485
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mForceLayout:Z

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    .line 488
    sub-int v0, p5, p3

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mHeight:I

    .line 490
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickSpace:F

    .line 491
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksCount:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    .line 492
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    const/high16 v1, 0x4060

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40c0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    .line 494
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIndicatorX:F

    .line 495
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIndicatorX:F

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalX:I

    .line 497
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWidth:I

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    mul-int/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    .line 501
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/wheel/view/Wheel;->makeTickerBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIndicator:Landroid/graphics/Bitmap;

    .line 503
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTicksSize:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/wheel/view/Wheel;->makeTickerBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTickBitmap:Landroid/graphics/Bitmap;

    .line 505
    new-instance v0, Landroid/graphics/BitmapShader;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/wheel/view/Wheel;->makeBitmap3(II)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mShader3:Landroid/graphics/Shader;

    .line 509
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    neg-int v0, v0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    .line 511
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mLayoutListener:Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mLayoutListener:Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;

    invoke-interface {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;->onLayout(Landroid/view/View;)V

    .line 516
    :cond_1
    iput-boolean v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mInLayout:Z

    .line 517
    iput-boolean v4, p0, Lit/sephiroth/android/wheel/view/Wheel;->mForceLayout:Z

    .line 518
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 582
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "event0"
    .parameter "event1"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x4120

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 594
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 596
    iget-boolean v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIsFirstScroll:Z

    if-eqz v3, :cond_0

    .line 597
    cmpl-float v3, p3, v4

    if-lez v3, :cond_3

    .line 598
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    .line 601
    :goto_0
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->scrollStarted()V

    .line 604
    :cond_0
    iput-boolean v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mIsFirstScroll:Z

    .line 606
    const/high16 v3, -0x4080

    mul-float v0, v3, p3

    .line 607
    .local v0, delta:F
    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mToLeft:Z

    .line 609
    iget-boolean v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mToLeft:Z

    if-nez v1, :cond_4

    .line 610
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 611
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    div-float/2addr v0, v1

    .line 619
    :cond_2
    :goto_1
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/wheel/view/Wheel;->trackMotionScroll(I)V

    .line 620
    return v2

    .line 600
    .end local v0           #delta:F
    :cond_3
    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr p3, v3

    goto :goto_0

    .line 614
    .restart local v0       #delta:F
    :cond_4
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 615
    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 632
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 653
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 655
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 656
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 657
    const/4 v2, 0x0

    iput-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mDF:Landroid/graphics/DrawFilter;

    .line 658
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->onUp()V

    .line 661
    :cond_0
    :goto_0
    return v1

    .line 659
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mFlingRunnable:Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->scrollIntoSlots()V

    .line 541
    :cond_0
    return-void
.end method

.method scrollCompleted()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    if-eqz v0, :cond_1

    .line 782
    iget-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mInLayout:Z

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;-><init>(Lit/sephiroth/android/wheel/view/Wheel;Lit/sephiroth/android/wheel/view/Wheel$1;)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    .line 786
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 788
    :cond_2
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->fireOnScrollCompleted()V

    goto :goto_0
.end method

.method scrollRunning()V
    .locals 2

    .prologue
    .line 813
    iget-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;-><init>(Lit/sephiroth/android/wheel/view/Wheel;Lit/sephiroth/android/wheel/view/Wheel$1;)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    .line 817
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->fireOnScrollRunning()V

    goto :goto_0
.end method

.method scrollStarted()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    if-eqz v0, :cond_1

    .line 798
    iget-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mInLayout:Z

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;-><init>(Lit/sephiroth/android/wheel/view/Wheel;Lit/sephiroth/android/wheel/view/Wheel$1;)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    .line 802
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollSelectionNotifier:Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->fireOnScrollStarted()V

    goto :goto_0
.end method

.method public setBackgroundColors([I[F)V
    .locals 4
    .parameter "colors"
    .parameter "positions"

    .prologue
    .line 451
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 453
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgColors:[I

    .line 454
    iput-object p2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgPositions:[F

    .line 455
    new-instance v0, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgColors:[I

    iget-object v3, p0, Lit/sephiroth/android/wheel/view/Wheel;->mBgPositions:[F

    invoke-direct {v0, v1, v2, v3}, Lit/sephiroth/android/wheel/graphics/LinearGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I[F)V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/wheel/view/Wheel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_0
    return-void
.end method

.method public setOnLayoutListener(Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mLayoutListener:Lit/sephiroth/android/wheel/view/Wheel$OnLayoutListener;

    .line 193
    return-void
.end method

.method public setOnScrollListener(Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 188
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mScrollListener:Lit/sephiroth/android/wheel/view/Wheel$OnScrollListener;

    .line 189
    return-void
.end method

.method public setOriginalDeltaX(F)V
    .locals 2
    .parameter "deltaX"

    .prologue
    .line 1227
    invoke-direct {p0}, Lit/sephiroth/android/wheel/view/Wheel;->getRealWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    .line 1228
    return-void
.end method

.method public setWheelScaleFactor(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 437
    iput p1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mWheelSizeFactor:I

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/wheel/view/Wheel;->mForceLayout:Z

    .line 439
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->requestLayout()V

    .line 440
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->postInvalidate()V

    .line 441
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 0
    .parameter "newX"

    .prologue
    .line 674
    iput p1, p0, Lit/sephiroth/android/wheel/view/Wheel;->mOriginalDeltaX:I

    .line 675
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->scrollRunning()V

    .line 676
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel;->invalidate()V

    .line 677
    return-void
.end method
