.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    const v0, 0x10103e7

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const v9, 0x102033f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    iput-boolean v8, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 140
    sget-object v4, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 142
    .local v1, attributesArray:Landroid/content/res/TypedArray;
    const v4, 0x10900dd

    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 144
    .local v3, layoutResourceId:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 148
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 151
    const v4, 0x1020399

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 152
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$2;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 165
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 166
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 169
    const v4, 0x102039d

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 170
    iget-object v4, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    const v5, 0x104006b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_0
    const v4, 0x102039a

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 176
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 177
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 178
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 179
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 180
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$3;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 203
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 204
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 207
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 210
    const v4, 0x102039b

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, amPmView:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 212
    iput-object v10, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 213
    iput-object v10, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 214
    check-cast v0, Landroid/widget/Button;

    .end local v0           #amPmView:Landroid/view/View;
    iput-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 215
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/TimePicker$4;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :goto_0
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 244
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 246
    sget-object v4, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 249
    iget-object v4, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 250
    iget-object v4, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 252
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    invoke-virtual {p0, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 257
    :cond_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->setContentDescriptions()V

    .line 260
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 261
    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 263
    :cond_2
    return-void

    .line 224
    .restart local v0       #amPmView:Landroid/view/View;
    :cond_3
    iput-object v10, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 225
    check-cast v0, Landroid/widget/NumberPicker;

    .end local v0           #amPmView:Landroid/view/View;
    iput-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 226
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 227
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 228
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$5;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$5;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 238
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 239
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 547
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 548
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 551
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x1020340

    const v2, 0x102033e

    .line 555
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404bf

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 557
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c0

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 560
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c1

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 562
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c2

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 565
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c3

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 568
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404c4

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 571
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iput-object p1, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 316
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    .line 574
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 578
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 543
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 544
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 534
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 535
    .local v0, index:I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 536
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 537
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 534
    .end local v0           #index:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 539
    .restart local v0       #index:I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 517
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 518
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 524
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 521
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 522
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 587
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 590
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 593
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 594
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 596
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 395
    .local v0, currentHour:I
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    .line 397
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 398
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 400
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 270
    const v1, 0x102039b

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, amPmView:Landroid/view/View;
    invoke-static {p0, v0}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTimePicker;->onAttachedToWindow(Landroid/widget/TimePicker;Landroid/view/View;)V

    .line 273
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 304
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 504
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 505
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 510
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 511
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 512
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 489
    const/4 v0, 0x1

    .line 490
    .local v0, flags:I
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 491
    or-int/lit16 v0, v0, 0x80

    .line 495
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 496
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 497
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    return-void

    .line 493
    .end local v1           #selectedDateUtterance:Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 375
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    .line 376
    .local v0, ss:Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 377
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 378
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 379
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 369
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 370
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentHour"

    .prologue
    const/16 v1, 0xc

    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 416
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 425
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 427
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 428
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 420
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 421
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentMinute"

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 471
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 292
    :goto_1
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "is24HourView"

    .prologue
    .line 437
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 442
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 443
    .local v0, currentHour:I
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 446
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 387
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 388
    return-void
.end method
