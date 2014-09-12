.class public Lcom/lenovo/fm/RadioListActivity;
.super Landroid/app/ListActivity;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/RadioListActivity$CountryAdapter;,
        Lcom/lenovo/fm/RadioListActivity$ActivityHandler;,
        Lcom/lenovo/fm/RadioListActivity$EditListAdapter;,
        Lcom/lenovo/fm/RadioListActivity$RadioReceiver;
    }
.end annotation


# static fields
.field private static final CONTEXTMENU_ITEM_DELETE:I = 0x0

.field private static final CONTEXTMENU_ITEM_RENAME:I = 0x1

.field private static final HEADVIEWLINE:I = 0x0

.field private static final SCAN_IS_OVERTIME:I = 0x7d4

.field private static final TAG:Ljava/lang/String; = "RadioListActivity"


# instance fields
.field private city:Lcom/lenovo/widget/WheelView;

.field private country:Lcom/lenovo/widget/WheelView;

.field private countryAdapter:Lcom/lenovo/fm/RadioListActivity$CountryAdapter;

.field private mAddImageView:Landroid/widget/ImageView;

.field private mDeleteBack:Landroid/widget/ImageView;

.field private mDeleteBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mDialogSearchProgress:Landroid/app/Dialog;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSelectCount:Landroid/widget/TextView;

.field private m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

.field private m_RadioReceiver:Landroid/content/BroadcastReceiver;

.field private m_RadioService:Lcom/lenovo/fm/RadioService;

.field private m_RenameEditor:Landroid/widget/EditText;

.field private m_RenameNegativeButton:Landroid/content/DialogInterface$OnClickListener;

.field private m_RenamePositiveButton:Landroid/content/DialogInterface$OnClickListener;

.field private m_SelectedPosition:I

.field private m_TextWatcher:Landroid/text/TextWatcher;

.field private m_checkbox:Landroid/widget/CheckBox;

.field private m_context:Landroid/content/Context;

.field private m_deleteLinearLayout:Landroid/widget/LinearLayout;

.field private m_deleteimageview:Landroid/widget/ImageView;

.field private m_deleteview_ClickListener:Landroid/view/View$OnClickListener;

.field private m_handler:Landroid/os/Handler;

.field private m_hasfound:I

.field private m_listviewstatus_read:Z

.field private m_optionmenu:Landroid/view/Menu;

.field private m_scaningdialog:Landroid/app/ProgressDialog;

.field private m_selectlistener:Landroid/view/View$OnClickListener;

.field private osc:Landroid/content/ServiceConnection;

.field private res:Landroid/content/res/Resources;

.field private scrolling:Z

.field private selectChannelDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    .line 73
    iput-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_context:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/fm/RadioListActivity$RadioReceiver;-><init>(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioListActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-boolean v2, p0, Lcom/lenovo/fm/RadioListActivity;->scrolling:Z

    .line 94
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/fm/RadioListActivity$ActivityHandler;-><init>(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioListActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;

    .line 95
    iput v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_hasfound:I

    .line 238
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$2;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->osc:Landroid/content/ServiceConnection;

    .line 636
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$3;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenamePositiveButton:Landroid/content/DialogInterface$OnClickListener;

    .line 666
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$4;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenameNegativeButton:Landroid/content/DialogInterface$OnClickListener;

    .line 819
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$6;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_selectlistener:Landroid/view/View$OnClickListener;

    .line 838
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$7;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mDeleteBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 899
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$9;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$9;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_deleteview_ClickListener:Landroid/view/View$OnClickListener;

    .line 924
    new-instance v0, Lcom/lenovo/fm/RadioListActivity$10;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioListActivity$10;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_TextWatcher:Landroid/text/TextWatcher;

    .line 1237
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/fm/RadioListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_SelectedPosition:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->optionmenu_change()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/fm/RadioListActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/fm/RadioListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->showDeleteAlert()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$CountryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->countryAdapter:Lcom/lenovo/fm/RadioListActivity$CountryAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/widget/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/lenovo/fm/RadioListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioListActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/lenovo/fm/RadioListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioListActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/lenovo/fm/RadioListActivity;Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/fm/RadioListActivity;->updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/fm/RadioListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_hasfound:I

    return v0
.end method

.method static synthetic access$408(Lcom/lenovo/fm/RadioListActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_hasfound:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_hasfound:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/fm/RadioListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/fm/RadioListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/fm/RadioListActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/fm/RadioListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/fm/RadioListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lenovo/fm/RadioListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    return-object v0
.end method

.method private initDialog(Landroid/view/View;)[[Ljava/lang/String;
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1181
    const v1, 0x7f08001c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/WheelView;

    iput-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    .line 1182
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1, v6}, Lcom/lenovo/widget/WheelView;->setVisibleItems(I)V

    .line 1183
    new-instance v1, Lcom/lenovo/fm/RadioListActivity$CountryAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/fm/RadioListActivity$CountryAdapter;-><init>(Lcom/lenovo/fm/RadioListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->countryAdapter:Lcom/lenovo/fm/RadioListActivity$CountryAdapter;

    .line 1185
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->countryAdapter:Lcom/lenovo/fm/RadioListActivity$CountryAdapter;

    invoke-virtual {v1, v2}, Lcom/lenovo/widget/WheelView;->setViewAdapter(Lcom/lenovo/widget/adapters/WheelViewAdapter;)V

    .line 1187
    const/16 v1, 0x16

    new-array v0, v1, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "5"

    aput-object v2, v1, v7

    const-string v2, "6"

    aput-object v2, v1, v5

    const-string v2, "7"

    aput-object v2, v1, v8

    const-string v2, "8"

    aput-object v2, v1, v6

    const-string v2, "9"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "2"

    aput-object v2, v1, v8

    const-string v2, "3"

    aput-object v2, v1, v6

    const-string v2, "4"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "2"

    aput-object v3, v2, v8

    const-string v3, "3"

    aput-object v3, v2, v6

    const-string v3, "4"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "9"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 1211
    .local v0, cities:[[Ljava/lang/String;
    const v1, 0x7f08001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/widget/WheelView;

    iput-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;

    .line 1212
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->city:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1, v6}, Lcom/lenovo/widget/WheelView;->setVisibleItems(I)V

    .line 1214
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    new-instance v2, Lcom/lenovo/fm/RadioListActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/fm/RadioListActivity$17;-><init>(Lcom/lenovo/fm/RadioListActivity;[[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/widget/WheelView;->addChangingListener(Lcom/lenovo/widget/OnWheelChangedListener;)V

    .line 1222
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    new-instance v2, Lcom/lenovo/fm/RadioListActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/fm/RadioListActivity$18;-><init>(Lcom/lenovo/fm/RadioListActivity;[[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/widget/WheelView;->addScrollingListener(Lcom/lenovo/widget/OnWheelScrollListener;)V

    .line 1233
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->country:Lcom/lenovo/widget/WheelView;

    invoke-virtual {v1, v5}, Lcom/lenovo/widget/WheelView;->setCurrentItem(I)V

    .line 1234
    return-object v0
.end method

.method private initResource()V
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mAddImageView:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mSearchImageView:Landroid/widget/ImageView;

    .line 138
    return-void
.end method

.method private optionmenu_change()V
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_optionmenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 782
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f070001

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_optionmenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 784
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->initResource()V

    .line 785
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->setResorceClick()V

    .line 786
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/lenovo/fm/RadioListActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioListActivity$5;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 804
    :cond_0
    return-void
.end method

.method private setResorceClick()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mAddImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private showDeleteAlert()V
    .locals 3

    .prologue
    .line 848
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 849
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 850
    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 851
    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    const v1, 0x7f040015

    new-instance v2, Lcom/lenovo/fm/RadioListActivity$8;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioListActivity$8;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 896
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 897
    return-void
.end method

.method private showSearchDialog()V
    .locals 4

    .prologue
    const v3, 0x7f040027

    .line 1080
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/fm/RadioListActivity$13;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioListActivity$13;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;

    .line 1091
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;

    new-instance v1, Lcom/lenovo/fm/RadioListActivity$14;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioListActivity$14;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1097
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1098
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->mDialogSearchProgress:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1099
    return-void
.end method

.method private showSearchManualDialog()V
    .locals 6

    .prologue
    .line 1102
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1104
    .local v3, view:Landroid/view/View;
    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1105
    .local v2, mSelectOkBtn:Landroid/widget/Button;
    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1106
    .local v1, mSelectCancelBtn:Landroid/widget/Button;
    invoke-direct {p0, v3}, Lcom/lenovo/fm/RadioListActivity;->initDialog(Landroid/view/View;)[[Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, cities:[[Ljava/lang/String;
    new-instance v4, Lcom/lenovo/fm/RadioListActivity$15;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/fm/RadioListActivity$15;-><init>(Lcom/lenovo/fm/RadioListActivity;[[Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    new-instance v4, Lcom/lenovo/fm/RadioListActivity$16;

    invoke-direct {v4, p0}, Lcom/lenovo/fm/RadioListActivity$16;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    .line 1173
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f060002

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;

    .line 1175
    :cond_0
    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1177
    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity;->selectChannelDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1178
    return-void
.end method

.method private startSearch()V
    .locals 5

    .prologue
    const v4, 0x7f040027

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1021
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->showSearchDialog()V

    .line 1023
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->deleteAllnonfavorChannel()Z

    .line 1024
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->startSyncScan()V

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v0, v0, Lcom/lenovo/fm/RadioService;->mRadioDBOperation:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->deleteAllnonfavorChannel()Z

    .line 1032
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->isMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioService;->unmute()I

    .line 1034
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->setPlayingStatus(Z)V

    .line 1037
    :cond_3
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/RadioService;->scan(I)I

    .line 1039
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4

    .line 1040
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    .line 1042
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/fm/RadioListActivity$11;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioListActivity$11;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1054
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/fm/RadioListActivity$12;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/RadioListActivity$12;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1067
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_scaningdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1072
    iput v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_hasfound:I

    .line 1073
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x7d4

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private updateCities(Lcom/lenovo/widget/WheelView;[[Ljava/lang/String;I)V
    .locals 3
    .parameter "city"
    .parameter "cities"
    .parameter "index"

    .prologue
    .line 1269
    new-instance v0, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;

    aget-object v1, p2, p3

    invoke-direct {v0, p0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 1271
    .local v0, adapter:Lcom/lenovo/widget/adapters/ArrayWheelAdapter;,"Lcom/lenovo/widget/adapters/ArrayWheelAdapter<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Lenovo S5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    .line 1295
    :goto_0
    invoke-virtual {p1, v0}, Lcom/lenovo/widget/WheelView;->setViewAdapter(Lcom/lenovo/widget/adapters/WheelViewAdapter;)V

    .line 1296
    aget-object v1, p2, p3

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lcom/lenovo/widget/WheelView;->setCurrentItem(I)V

    .line 1297
    return-void

    .line 1273
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K860"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A890"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K910"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S820"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "P780"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S938"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S939"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S860"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S850"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A859"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S898"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1288
    :cond_1
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    goto/16 :goto_0

    .line 1289
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A7600"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A850"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1291
    :cond_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    goto/16 :goto_0

    .line 1293
    :cond_4
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/lenovo/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    goto/16 :goto_0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public NotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getAllchannels()Landroid/database/Cursor;

    move-result-object v0

    .line 231
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    invoke-virtual {v1, v0}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 232
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->notifyDataSetChanged()V

    .line 233
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 235
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 190
    iget-boolean v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v2, "com.lenovo.leos.radio.RADIOACTIVITY"

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->set_topactivity(Ljava/lang/String;)V

    .line 195
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioListActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 205
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 194
    :cond_0
    const-string v1, "RadioListActivity"

    const-string v2, "onBackPressed m_RadioService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    .line 202
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioListActivity;->setContentView(I)V

    .line 203
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->optionmenu_change()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 994
    .local v0, vid:I
    packed-switch v0, :pswitch_data_0

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 996
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->showSearchManualDialog()V

    goto :goto_0

    .line 1000
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    .line 1003
    const-string v1, "RadioListActivity"

    const-string v2, "Auto Scan Button has been clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 1006
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->newMediaInstance()V

    .line 1007
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->requestAudioFocus()Z

    .line 1009
    :cond_1
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1011
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    .line 1013
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->startSearch()V

    goto :goto_0

    .line 994
    :pswitch_data_0
    .packed-switch 0x7f08000c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 753
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    if-eqz v0, :cond_0

    .line 754
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_SelectedPosition:I

    .line 756
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_1

    .line 757
    const-string v0, "RadioListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTEXTMENU_ITEM_DELETE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_SelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->showDeleteAlert()V

    .line 777
    :cond_0
    :goto_0
    return v4

    .line 759
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 760
    const-string v0, "RadioListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTEXTMENU_ITEM_RENAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_SelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;

    .line 763
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 766
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenameEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040015

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenamePositiveButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040016

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_RenameNegativeButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 774
    :cond_2
    const-string v0, "RadioListActivity"

    const-string v1, "invailde menuitem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 98
    const-string v1, "RadioListActivity"

    const-string v2, "LeRadio_ListActivity onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iput-object p0, p0, Lcom/lenovo/fm/RadioListActivity;->m_context:Landroid/content/Context;

    .line 101
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioListActivity;->setContentView(I)V

    .line 103
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->initResource()V

    .line 104
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->setResorceClick()V

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, m_IntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.fm.action.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.android.fm.action.batterylow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "com.android.fm.action.headsetplug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.android.fm.action.localechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "com.android.fm.action.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "com.android.fm.action.devicescanfinished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.android.fm.action.devicescaned"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.android.fm.action.devicescaning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "com.android.fm.action.updateui"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "com.android.fm.action.deviceseeked"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "seek_failed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "com.android.fm.action.tunetonext"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.android.fm.action.exitdialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "com.android.fm.action.phonescanexit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/fm/RadioListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->osc:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/fm/RadioListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 676
    const-string v0, "RadioListActivity"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity;->m_optionmenu:Landroid/view/Menu;

    .line 678
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->optionmenu_change()V

    .line 679
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/RadioListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 186
    const-string v0, "RadioListActivity"

    const-string v1, "FMRadio: onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "RadioListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemLongClick position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 810
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 811
    iget-boolean v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x1

    .line 816
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 546
    const-string v3, "RadioListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-boolean v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v3, :cond_4

    .line 549
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 550
    .local v0, cursor:Landroid/database/Cursor;
    add-int/lit8 v3, p3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 551
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v3, "channelFreq"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 554
    .local v1, freq:I
    const-string v3, "RadioListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick  freq ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 557
    int-to-float v3, v1

    const/high16 v4, 0x4120

    div-float v2, v3, v4

    .line 558
    .local v2, tempFreq:F
    const-string v3, "RadioListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick  MTK tempFreq ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 563
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->isHeadSetPlug()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->IsInternalWireSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3, v7}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    .line 569
    :goto_0
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->newMediaInstance()V

    .line 571
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v4, "com.android.fm.action.deviceseeked"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "channel"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/RadioListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 579
    .end local v2           #tempFreq:F
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 580
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->onBackPressed()V

    .line 581
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->finish()V

    .line 616
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #freq:I
    :goto_2
    return-void

    .line 567
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #freq:I
    .restart local v2       #tempFreq:F
    :cond_1
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3, v6}, Lcom/lenovo/fm/RadioService;->switchAntenna(I)I

    goto :goto_0

    .line 574
    .end local v2           #tempFreq:F
    :cond_2
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->getPlayingStatus()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->isFmOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 575
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3}, Lcom/lenovo/fm/RadioService;->turnOnRadio()I

    .line 577
    :cond_3
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v3, v1}, Lcom/lenovo/fm/RadioService;->tune2NewChannel(I)V

    goto :goto_1

    .line 584
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #freq:I
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 585
    invoke-virtual {p1, p3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 586
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->updateUI()V

    .line 603
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 604
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;

    const v5, 0x7f040067

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :goto_4
    const-string v3, "RadioListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick getCheckedItemCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 593
    :cond_5
    invoke-virtual {p1, p3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 594
    invoke-direct {p0}, Lcom/lenovo/fm/RadioListActivity;->updateUI()V

    goto :goto_3

    .line 606
    :cond_6
    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f04006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/fm/RadioListActivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f04006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 701
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f08004f

    if-ne v2, v3, :cond_1

    .line 702
    const-string v2, "RadioListActivity"

    const-string v3, "delete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_deleteimageview:Landroid/widget/ImageView;

    .line 705
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioListActivity;->setContentView(I)V

    .line 707
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_deleteLinearLayout:Landroid/widget/LinearLayout;

    .line 709
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->mSelectCount:Landroid/widget/TextView;

    .line 716
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->mDeleteBack:Landroid/widget/ImageView;

    .line 717
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->mDeleteBack:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->mDeleteBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;

    .line 720
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_selectlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_deleteLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_deleteLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_deleteview_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    :cond_0
    iput-boolean v4, p0, Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z

    .line 749
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 729
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f08004e

    if-ne v2, v3, :cond_2

    .line 730
    const-string v2, "RadioListActivity"

    const-string v3, "selectall"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f080008

    if-ne v2, v3, :cond_5

    .line 733
    const-string v2, "RadioListActivity"

    const-string v3, "deleteall"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 735
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 736
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    invoke-virtual {v2}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 737
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 738
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    iget-object v3, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    const-string v3, "channelFreq"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/RadioService;->deleteChannel(I)Z

    .line 734
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 743
    :cond_4
    iget-object v2, p0, Lcom/lenovo/fm/RadioListActivity;->m_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    goto :goto_0

    .line 746
    .end local v1           #i:I
    :cond_5
    const-string v2, "RadioListActivity"

    const-string v3, "invalid menuitem"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "RadioListActivity"

    const-string v1, "FMRadio: onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 165
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 683
    const-string v1, "RadioListActivity"

    const-string v2, "onPrepareOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const v1, 0x7f08004f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 685
    .local v0, menuItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getchannlecount()I

    move-result v1

    if-nez v1, :cond_1

    .line 687
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 692
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 689
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->NotifyDataSetChanged()V

    .line 179
    :cond_0
    const-string v0, "RadioListActivity"

    const-string v1, "FMRadio: onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 144
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 153
    const-string v0, "RadioListActivity"

    const-string v1, "FMRadio: onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 148
    const-string v0, "RadioListActivity"

    const-string v1, "FMRadio: onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public setListData()V
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;

    invoke-virtual {v1}, Lcom/lenovo/fm/RadioService;->getAllchannels()Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    const v2, 0x7f030005

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;-><init>(Lcom/lenovo/fm/RadioListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    .line 211
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/lenovo/fm/RadioListActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/RadioListActivity$1;-><init>(Lcom/lenovo/fm/RadioListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/fm/RadioListActivity;->m_EditListAdapter:Lcom/lenovo/fm/RadioListActivity$EditListAdapter;

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/RadioListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    return-void
.end method
