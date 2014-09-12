.class Landroid/webkit/WebViewClassic$SelectPopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectPopupWindow"
.end annotation


# instance fields
.field private mContentMenuView:Landroid/view/ViewGroup;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDisplay:Landroid/view/Display;

.field private mDown:Landroid/widget/ImageView;

.field private mUp:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 9787
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 9788
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->setClippingEnabled(Z)V

    .line 9789
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 9791
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x3040026

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 9792
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c0025

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentMenuView:Landroid/view/ViewGroup;

    .line 9793
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c002d

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDown:Landroid/widget/ImageView;

    .line 9794
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c002c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mUp:Landroid/widget/ImageView;

    .line 9795
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c0026

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9796
    .local v1, copy:Landroid/widget/TextView;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c0028

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9797
    .local v5, search:Landroid/widget/TextView;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c0029

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 9799
    .local v6, share:Landroid/widget/TextView;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c0027

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9800
    .local v0, all:Landroid/widget/TextView;
    const v8, 0x104000d

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 9801
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9803
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9804
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9805
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9806
    const v8, 0x10404a9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 9808
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c002b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9809
    .local v2, find:Landroid/widget/TextView;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v9, 0x30c002a

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 9810
    .local v4, line:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v8

    if-nez v8, :cond_0

    .line 9811
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9812
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9813
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9816
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->setContentView(Landroid/view/View;)V

    .line 9818
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 9819
    .local v7, windowManager:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDisplay:Landroid/view/Display;

    .line 9821
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 9870
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->dismiss()V

    .line 9871
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 9921
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9922
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentMenuView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 9927
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x7d0

    const/4 v6, 0x0

    .line 9875
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 9919
    :goto_0
    :pswitch_0
    return-void

    .line 9877
    :pswitch_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 9878
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 9879
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 9883
    :pswitch_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAll()V

    .line 9884
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, v4, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9888
    :pswitch_3
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 9889
    .local v3, selection:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 9890
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 9891
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->dismiss()V

    goto :goto_0

    .line 9894
    .end local v3           #selection:Ljava/lang/String;
    :pswitch_4
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 9895
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->dismiss()V

    .line 9896
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9897
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v4, "new_search"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9898
    const/16 v1, 0x7d0

    .line 9899
    .local v1, limit:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 9900
    .local v2, select:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 9901
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 9903
    :cond_0
    const-string/jumbo v4, "query"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9904
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 9905
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9907
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 9911
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #limit:I
    .end local v2           #select:Ljava/lang/String;
    :pswitch_5
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 9912
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->dismiss()V

    .line 9913
    iget-object v4, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 9875
    nop

    :pswitch_data_0
    .packed-switch 0x30c0026
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public show(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 11
    .parameter "cursorBottom"
    .parameter "cursorTop"
    .parameter "windowLeft"
    .parameter "windowTop"

    .prologue
    const/16 v8, 0x8

    const/4 v10, 0x0

    .line 9825
    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDown:Landroid/widget/ImageView;

    .line 9826
    .local v3, temp:Landroid/widget/ImageView;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mUp:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9827
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDown:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9828
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->measureContent()V

    .line 9829
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 9830
    .local v4, width:I
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mContentMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 9832
    .local v0, height:I
    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int v6, v7, v0

    .line 9833
    .local v6, y:I
    iget v7, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 9834
    .local v5, x:I
    if-ge v6, v0, :cond_0

    .line 9836
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    .line 9837
    iget v7, p1, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v7, 0xa

    .line 9838
    iget v7, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 9839
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    if-le v6, v7, :cond_2

    .line 9840
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9841
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9842
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p4

    sub-int v6, v7, v0

    .line 9847
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    if-gt v6, v7, :cond_1

    if-ge v6, v0, :cond_3

    .line 9867
    :cond_1
    :goto_1
    return-void

    .line 9844
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mUp:Landroid/widget/ImageView;

    goto :goto_0

    .line 9850
    :cond_3
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 9851
    .local v1, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 9852
    if-gez v5, :cond_5

    .line 9853
    iget v7, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr v7, v5

    iput v7, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 9854
    const/4 v5, 0x0

    .line 9860
    :cond_4
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9861
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9863
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$7100(Landroid/webkit/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9864
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {p0, v7, v10, v5, v6}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 9865
    invoke-virtual {p0, v5, v6, v4, v0}, Landroid/webkit/WebViewClassic$SelectPopupWindow;->update(IIII)V

    goto :goto_1

    .line 9855
    :cond_5
    add-int v7, v5, v4

    iget-object v8, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 9856
    iget v7, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int v8, v4, v5

    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 9857
    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    sub-int v5, v7, v4

    goto :goto_2
.end method
