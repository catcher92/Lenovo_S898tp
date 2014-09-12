.class public Landroid/widget/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabHost$IntentContentStrategy;,
        Landroid/widget/TabHost$FactoryContentStrategy;,
        Landroid/widget/TabHost$ViewIdContentStrategy;,
        Landroid/widget/TabHost$ViewIndicatorStrategy;,
        Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/TabHost$LabelIndicatorStrategy;,
        Landroid/widget/TabHost$ContentStrategy;,
        Landroid/widget/TabHost$IndicatorStrategy;,
        Landroid/widget/TabHost$TabSpec;,
        Landroid/widget/TabHost$TabContentFactory;,
        Landroid/widget/TabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TABWIDGET_LOCATION_BOTTOM:I = 0x3

.field private static final TABWIDGET_LOCATION_LEFT:I = 0x0

.field private static final TABWIDGET_LOCATION_RIGHT:I = 0x2

.field private static final TABWIDGET_LOCATION_TOP:I = 0x1


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 68
    iput-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 78
    iput-object v2, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 86
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 67
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 68
    iput-object v5, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 78
    iput-object v5, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 92
    sget-object v2, Lcom/android/internal/R$styleable;->TabWidget:[I

    const v3, 0x1010083

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 99
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 102
    .local v1, divider_id:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    iget v2, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    if-nez v2, :cond_0

    .line 107
    const v2, 0x10900d3

    iput v2, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 110
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 113
    new-instance v2, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    iget v3, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    invoke-direct {v2, p0, v1, v3}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;-><init>(Landroid/widget/TabHost;II)V

    iput-object v2, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    .line 115
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TabHost;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    return v0
.end method

.method private getTabWidgetLocation()I
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x1

    .line 413
    .local v0, location:I
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 420
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTop()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x3

    .line 424
    :goto_0
    return v0

    .line 415
    :pswitch_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x2

    .line 417
    :goto_1
    goto :goto_0

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 420
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setFocusableInTouchMode(Z)V

    .line 119
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setDescendantFocusability(I)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 123
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 553
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 319
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_1
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 331
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 335
    :cond_2
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 336
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 339
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 343
    :cond_3
    iget-object v1, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v2}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->addTab(Landroid/widget/TabWidget;)V

    .line 347
    :cond_4
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 355
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 356
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 357
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    invoke-virtual {p0}, Landroid/widget/TabHost;->requestLayout()V

    .line 359
    invoke-virtual {p0}, Landroid/widget/TabHost;->invalidate()V

    .line 360
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 434
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isRootNamespace()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    const/16 v2, 0x13

    .line 440
    .local v2, keyCodeShouldChangeFocus:I
    const/16 v0, 0x21

    .line 441
    .local v0, directionShouldChangeFocus:I
    const/4 v3, 0x2

    .line 443
    .local v3, soundEffect:I
    invoke-direct {p0}, Landroid/widget/TabHost;->getTabWidgetLocation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 461
    :pswitch_0
    const/16 v2, 0x13

    .line 462
    const/16 v0, 0x21

    .line 463
    const/4 v3, 0x2

    .line 466
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 468
    iget-object v4, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v5, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 469
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->playSoundEffect(I)V

    .line 470
    const/4 v1, 0x1

    .line 473
    .end local v0           #directionShouldChangeFocus:I
    .end local v1           #handled:Z
    .end local v2           #keyCodeShouldChangeFocus:I
    .end local v3           #soundEffect:I
    :cond_0
    return v1

    .line 445
    .restart local v0       #directionShouldChangeFocus:I
    .restart local v1       #handled:Z
    .restart local v2       #keyCodeShouldChangeFocus:I
    .restart local v3       #soundEffect:I
    :pswitch_1
    const/16 v2, 0x15

    .line 446
    const/16 v0, 0x11

    .line 447
    const/4 v3, 0x1

    .line 448
    goto :goto_0

    .line 450
    :pswitch_2
    const/16 v2, 0x16

    .line 451
    const/16 v0, 0x42

    .line 452
    const/4 v3, 0x3

    .line 453
    goto :goto_0

    .line 455
    :pswitch_3
    const/16 v2, 0x14

    .line 456
    const/16 v0, 0x82

    .line 457
    const/4 v3, 0x4

    .line 458
    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 479
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 482
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method public ideaUI_updateTabTheme(III)V
    .locals 6
    .parameter "left_background"
    .parameter "center_background"
    .parameter "right_background"

    .prologue
    .line 230
    iget-object v5, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 232
    .local v1, ntabsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 233
    iget-object v5, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost$TabSpec;

    .line 234
    .local v2, spec:Landroid/widget/TabHost$TabSpec;
    const/4 v4, 0x0

    .line 235
    .local v4, v:Landroid/view/View;
    if-eqz v2, :cond_2

    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v2}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 236
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v2}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TabHost$LabelIndicatorStrategy;

    if-eqz v5, :cond_3

    .line 237
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v2}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost$LabelIndicatorStrategy;

    invoke-virtual {v5}, Landroid/widget/TabHost$LabelIndicatorStrategy;->getIndicatorView()Landroid/view/View;

    move-result-object v4

    .line 249
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 251
    if-nez v0, :cond_5

    .line 252
    if-eqz p1, :cond_4

    .line 253
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    :cond_1
    :goto_2
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 269
    .local v3, tv:Landroid/widget/TextView;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->isCts()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    .line 275
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 232
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_3
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v2}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;

    if-eqz v5, :cond_0

    .line 239
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {v2}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;

    invoke-virtual {v5}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->getIndicatorView()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 254
    :cond_4
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 257
    :cond_5
    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_7

    .line 258
    if-eqz p3, :cond_6

    .line 259
    invoke-virtual {v4, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 260
    :cond_6
    if-eqz p2, :cond_1

    .line 261
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 263
    :cond_7
    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 280
    .end local v2           #spec:Landroid/widget/TabHost$TabSpec;
    .end local v4           #v:Landroid/view/View;
    :cond_8
    return-void
.end method

.method public newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 130
    new-instance v0, Landroid/widget/TabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 215
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 216
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 219
    iget-object v1, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v2}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->onAttachedToWindow(Landroid/widget/TabWidget;)V

    .line 223
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    iget-object v0, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, v1}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->updateTabTheme(Landroid/widget/TabWidget;)V

    .line 290
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 296
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 297
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 298
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 487
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 488
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 493
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 304
    if-nez p1, :cond_1

    .line 307
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 311
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 197
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 497
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 506
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 507
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->tabClosed()V

    .line 510
    :cond_2
    iput p1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 511
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    .line 515
    .local v0, spec:Landroid/widget/TabHost$TabSpec;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->focusCurrentTab(I)V

    .line 518
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 520
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 521
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    :cond_3
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 532
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 536
    :cond_4
    invoke-direct {p0}, Landroid/widget/TabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 391
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 396
    :cond_0
    return-void

    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 546
    iput-object p1, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 547
    return-void
.end method

.method public setTabCoordScale(F)V
    .locals 1
    .parameter "scal"

    .prologue
    .line 913
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->setTabCoordScale(F)V

    .line 914
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 145
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    .line 146
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Landroid/widget/TabHost$1;

    invoke-direct {v0, p0}, Landroid/widget/TabHost$1;-><init>(Landroid/widget/TabHost;)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 171
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    new-instance v1, Landroid/widget/TabHost$2;

    invoke-direct {v1, p0}, Landroid/widget/TabHost$2;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V

    .line 180
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 181
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    iget-object v0, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TabHost;->mIdeaUI_HookTabHost:Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;

    invoke-virtual {v0}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->isIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_2
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 208
    iput-object p1, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 209
    return-void
.end method
