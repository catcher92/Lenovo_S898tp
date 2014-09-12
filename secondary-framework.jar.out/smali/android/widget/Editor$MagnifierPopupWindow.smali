.class Landroid/widget/Editor$MagnifierPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierPopupWindow"
.end annotation


# static fields
.field private static final HEIGHT:I = 0x64

.field private static final WIDTH:I = 0xf0


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mLenght:I

.field private mMagnifier:Landroid/widget/ImageView;

.field private mMagnifierBackgroud:Landroid/graphics/Bitmap;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2453
    iput-object p1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2451
    const/16 v1, 0x28

    iput v1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    .line 2454
    invoke-virtual {p0, v2}, Landroid/widget/Editor$MagnifierPopupWindow;->setClippingEnabled(Z)V

    .line 2455
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 2456
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDrawingCacheBackgroundColor(I)V

    .line 2457
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->buildDrawingCache(Z)V

    .line 2458
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2460
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x3040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2461
    iget-object v1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x30c002f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mMagnifier:Landroid/widget/ImageView;

    .line 2462
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3080263

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mMagnifierBackgroud:Landroid/graphics/Bitmap;

    .line 2463
    iget-object v1, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/Editor$MagnifierPopupWindow;->setContentView(Landroid/view/View;)V

    .line 2464
    return-void
.end method


# virtual methods
.method public getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "sourceBitmap"

    .prologue
    .line 2509
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2511
    .local v7, targetBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2513
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2514
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2516
    const/high16 v5, 0x4240

    .line 2517
    .local v5, roundPx:F
    const/high16 v6, 0x4240

    .line 2519
    .local v6, roundPy:F
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2520
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2522
    .local v4, rectF:Landroid/graphics/RectF;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2523
    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2524
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2525
    invoke-virtual {v0, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2534
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #rectF:Landroid/graphics/RectF;
    .end local v5           #roundPx:F
    .end local v6           #roundPy:F
    .end local v7           #targetBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 2528
    :catch_0
    move-exception v1

    .line 2529
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2534
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2530
    :catch_1
    move-exception v1

    .line 2531
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 2538
    invoke-virtual {p0}, Landroid/widget/Editor$MagnifierPopupWindow;->dismiss()V

    .line 2539
    return-void
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 2469
    const/4 v0, 0x0

    return v0
.end method

.method public showMagnifier(IIII)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "cX"
    .parameter "cY"

    .prologue
    const/16 v9, 0xf0

    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 2473
    iget-object v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2474
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2475
    iget-object v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getFontHeight()I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    .line 2476
    iget v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    mul-int/lit16 v5, v5, 0xf0

    div-int/lit8 v4, v5, 0x64

    .line 2477
    .local v4, width:I
    div-int/lit8 v5, v4, 0x2

    sub-int v2, p3, v5

    .line 2478
    .local v2, tempX:I
    iget v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    sub-int v3, p4, v5

    .line 2479
    .local v3, tempY:I
    add-int v5, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 2480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v2, v5, v4

    .line 2484
    :cond_0
    :goto_0
    iget v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    add-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 2485
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    sub-int v3, v5, v6

    .line 2490
    :cond_1
    :goto_1
    iget v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2492
    .local v1, showBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {v1, v9, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2494
    invoke-virtual {p0, v1}, Landroid/widget/Editor$MagnifierPopupWindow;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2497
    iget-object v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2498
    add-int/lit8 v5, p2, -0x64

    iget v6, p0, Landroid/widget/Editor$MagnifierPopupWindow;->mLenght:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x24

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2500
    iget-object v5, p0, Landroid/widget/Editor$MagnifierPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0, v5, v7, p1, p2}, Landroid/widget/Editor$MagnifierPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2502
    invoke-virtual {p0, p1, p2, v9, v8}, Landroid/widget/Editor$MagnifierPopupWindow;->update(IIII)V

    .line 2504
    .end local v1           #showBmp:Landroid/graphics/Bitmap;
    .end local v2           #tempX:I
    .end local v3           #tempY:I
    .end local v4           #width:I
    :cond_2
    return-void

    .line 2481
    .restart local v2       #tempX:I
    .restart local v3       #tempY:I
    .restart local v4       #width:I
    :cond_3
    if-gez v2, :cond_0

    .line 2482
    const/4 v2, 0x0

    goto :goto_0

    .line 2486
    :cond_4
    if-gez v3, :cond_1

    .line 2487
    const/4 v3, 0x0

    goto :goto_1
.end method
