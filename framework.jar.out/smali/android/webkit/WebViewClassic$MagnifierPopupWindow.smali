.class Landroid/webkit/WebViewClassic$MagnifierPopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierPopupWindow"
.end annotation


# static fields
.field private static final HEIGHT:I = 0x78

.field private static final WIDTH:I = 0xf0


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mCount:I

.field private mLenght:I

.field private mLoadingBitmap:Z

.field private mMagnifier:Landroid/widget/ImageView;

.field private mMagnifierBackgroud:Landroid/graphics/Bitmap;

.field private mShowX:I

.field private mShowY:I

.field private mTextLenght:Ljava/util/HashMap;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9944
    iput-object p1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 9931
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mTextLenght:Ljava/util/HashMap;

    .line 9937
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLoadingBitmap:Z

    .line 9939
    iput v2, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    .line 9940
    iput v2, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mCount:I

    .line 9945
    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->setClippingEnabled(Z)V

    .line 9946
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 9947
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDrawingCacheBackgroundColor(I)V

    .line 9948
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->buildDrawingCache(Z)V

    .line 9949
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 9951
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x3040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 9952
    iget-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x30c002f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mMagnifier:Landroid/widget/ImageView;

    .line 9953
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3080263

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mMagnifierBackgroud:Landroid/graphics/Bitmap;

    .line 9954
    iget-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->setContentView(Landroid/view/View;)V

    .line 9955
    return-void
.end method


# virtual methods
.method public getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "sourceBitmap"

    .prologue
    .line 10054
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 10056
    .local v7, targetBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10058
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 10059
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10061
    const/high16 v5, 0x4200

    .line 10062
    .local v5, roundPx:F
    const/high16 v6, 0x4258

    .line 10064
    .local v6, roundPy:F
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10065
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 10067
    .local v4, rectF:Landroid/graphics/RectF;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 10068
    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10069
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10070
    invoke-virtual {v0, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 10079
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #rectF:Landroid/graphics/RectF;
    .end local v5           #roundPx:F
    .end local v6           #roundPy:F
    .end local v7           #targetBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 10073
    :catch_0
    move-exception v1

    .line 10074
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10079
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 10075
    :catch_1
    move-exception v1

    .line 10076
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10083
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mTextLenght:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10084
    iput v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    .line 10085
    iput v1, p0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mCount:I

    .line 10086
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->dismiss()V

    .line 10087
    return-void
.end method

.method public showMagnifier()V
    .locals 23

    .prologue
    .line 9959
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [I

    .line 9960
    .local v8, location:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 9961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #calls: Landroid/webkit/WebViewClassic;->calculateDraggingCaretTop()Landroid/graphics/Point;
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$9300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v10

    .line 9963
    .local v10, pointBase:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$9400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 9964
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->dismiss()V

    .line 10050
    :cond_0
    :goto_0
    return-void

    .line 9968
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$9400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    mul-int/lit8 v20, v20, 0x5

    div-int/lit8 v16, v20, 0x3

    .line 9969
    .local v16, textHeight:I
    new-instance v7, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 9977
    .local v7, cursorPoint:Landroid/graphics/Point;
    const/16 v20, 0x0

    aget v20, v8, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v21

    sub-int v20, v20, v21

    const/16 v21, 0x1

    aget v21, v8, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 9978
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    .line 9979
    .local v18, x:I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 9981
    .local v19, y:I
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 9982
    const/16 v16, 0x2

    .line 9985
    :cond_2
    const/4 v13, 0x0

    .line 9986
    .local v13, temp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mTextLenght:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 9987
    .local v17, value:Ljava/lang/Object;
    if-eqz v17, :cond_9

    .line 9988
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v13, v20, 0x1

    .line 9992
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mTextLenght:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9993
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v0, v13, :cond_3

    .line 9994
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    .line 9995
    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mCount:I

    .line 9998
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 9999
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 10001
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    div-int/lit8 v12, v20, 0x78

    .line 10002
    .local v12, sourceWidth:I
    const/16 v20, 0x0

    aget v20, v8, v20

    sub-int v20, v18, v20

    div-int/lit8 v21, v12, 0x2

    sub-int v14, v20, v21

    .line 10003
    .local v14, tempX:I
    const/16 v20, 0x1

    aget v20, v8, v20

    sub-int v15, v19, v20

    .line 10004
    .local v15, tempY:I
    add-int v20, v14, v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 10005
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v14, v20, v12

    .line 10009
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    move/from16 v20, v0

    add-int v20, v20, v15

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 10010
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    move/from16 v21, v0

    sub-int v15, v20, v21

    .line 10015
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mLenght:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v14, v15, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 10017
    .local v11, showBmp:Landroid/graphics/Bitmap;
    const/16 v20, 0xf0

    const/16 v21, 0x78

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 10019
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 10020
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 10021
    .local v9, paint:Landroid/graphics/Paint;
    const/16 v20, 0x80

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10022
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10023
    .local v6, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mMagnifierBackgroud:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 10024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->mMagnifier:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10026
    add-int/lit8 v18, v18, -0x78

    .line 10027
    add-int/lit8 v20, v19, -0x78

    add-int/lit8 v19, v20, -0x24

    .line 10028
    const/16 v20, 0x1

    aget v20, v8, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 10029
    const/16 v20, 0x1

    aget v19, v8, v20

    .line 10031
    :cond_6
    add-int/lit8 v20, v19, 0x78

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 10032
    const/16 v20, 0xfa

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_c

    .line 10033
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, -0x114

    move/from16 v18, v0

    .line 10038
    :cond_7
    :goto_4
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 10039
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    add-int/lit16 v0, v0, -0xf0

    move/from16 v18, v0

    .line 10045
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/WebViewClassic;->mShowMagnifier:Z
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$9500(Landroid/webkit/WebViewClassic;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 10046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 10047
    const/16 v20, 0xf0

    const/16 v21, 0x78

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic$MagnifierPopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 9990
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v11           #showBmp:Landroid/graphics/Bitmap;
    .end local v12           #sourceWidth:I
    .end local v14           #tempX:I
    .end local v15           #tempY:I
    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 10006
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    .restart local v12       #sourceWidth:I
    .restart local v14       #tempX:I
    .restart local v15       #tempY:I
    :cond_a
    if-gez v14, :cond_4

    .line 10007
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 10011
    :cond_b
    if-gez v15, :cond_5

    .line 10012
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 10035
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #paint:Landroid/graphics/Paint;
    .restart local v11       #showBmp:Landroid/graphics/Bitmap;
    :cond_c
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int/lit8 v18, v20, 0x24

    goto :goto_4

    .line 10040
    :cond_d
    if-gez v18, :cond_8

    .line 10041
    const/16 v18, 0x0

    goto :goto_5
.end method
