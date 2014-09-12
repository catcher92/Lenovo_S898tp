.class public Lcom/lenovo/fm/FMRadioRecorderHistory;
.super Landroid/app/ListActivity;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;,
        Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;
    }
.end annotation


# static fields
.field private static final OPTIONS_ID_MUL_SET:I = 0x1

.field private static final OPTIONS_ID_SEL_ALL:I = 0x2

.field private static final OPTIONS_ID_SEL_DEL:I = 0x3

.field private static final OPTIONS_ID_UNSEL_ALL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FMRadioRecorderHistory"

.field private static mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I

.field private static mRecSize:I

.field private static mStrHour:Ljava/lang/String;

.field private static mStrMinute:Ljava/lang/String;

.field private static mStrSecond:Ljava/lang/String;


# instance fields
.field private DeleteOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private bIsSelMode:Z

.field private isNeedReInit:Z

.field private mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnDel:Landroid/widget/Button;

.field private mCbSelAll:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/RelativeLayout;

.field private mMimeType:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecListHistory:Landroid/widget/LinearLayout;

.field private mRecListTitle:Landroid/widget/RelativeLayout;

.field private mRenameDlg:Landroid/app/AlertDialog;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectCount:Landroid/widget/TextView;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mStrTempFilePath:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUseLastListPos:Z

.field private m_RadioService:Lcom/lenovo/fm/RadioService;

.field private osc:Landroid/content/ServiceConnection;

.field private radioReceiver:Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;

.field private renameOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 131
    sput v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosCourse:I

    .line 132
    sput v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosFine:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    .line 193
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 127
    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapterSent:Z

    .line 133
    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mUseLastListPos:Z

    .line 134
    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 159
    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->isNeedReInit:Z

    .line 389
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$4;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$4;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->osc:Landroid/content/ServiceConnection;

    .line 559
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$5;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$5;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$6;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$6;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    .line 907
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$8;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->DeleteOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1168
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$11;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->renameOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsDel()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsUnSelAll()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/fm/FMRadioRecorderHistory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/fm/FMRadioRecorderHistory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/fm/FMRadioRecorderHistory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getSelSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Ljava/util/List;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/fm/FMRadioRecorderHistory;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/fm/FMRadioRecorderHistory;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showDeleteMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->hideDeleteMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/fm/FMRadioRecorderHistory;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->cancelDeleteMode()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/fm/FMRadioRecorderHistory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showMessage(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareRename()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lenovo/fm/FMRadioRecorderHistory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/fm/FMRadioRecorderHistory;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->addToMediaDB(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrHour:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrMinute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrSecond:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isAllSel()V

    return-void
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecSize:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    sput p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecSize:I

    return p0
.end method

.method static synthetic access$3200(Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->reCalc(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsSelAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/RadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/RadioService;)Lcom/lenovo/fm/RadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->m_RadioService:Lcom/lenovo/fm/RadioService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private addToMediaDB(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 15
    .parameter "file"
    .parameter "duration"

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1261
    .local v8, res:Landroid/content/res/Resources;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1262
    .local v5, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1263
    .local v3, current:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1268
    .local v6, modDate:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1272
    .local v11, title:Ljava/lang/String;
    const-string v12, "is_drm"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    const-string v12, "is_ringtone"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    const-string v12, "is_music"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    const-string v12, "title"

    invoke-virtual {v5, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v12, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v12, "date_added"

    const-wide/16 v13, 0x3e8

    div-long v13, v3, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    const-string v12, "date_modified"

    const-wide/16 v13, 0x3e8

    div-long v13, v6, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    const-string v12, "mime_type"

    iget-object v13, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v12, "artist"

    iget-object v13, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string v12, "album"

    iget-object v13, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const-string v12, "duration"

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1286
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1288
    .local v2, base:Landroid/net/Uri;
    invoke-virtual {v9, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1289
    .local v10, result:Landroid/net/Uri;
    if-nez v10, :cond_0

    .line 1290
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f040001

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f04004c

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f040048

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1294
    const/4 v10, 0x0

    .line 1303
    .end local v10           #result:Landroid/net/Uri;
    :goto_0
    return-object v10

    .line 1297
    .restart local v10       #result:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1298
    .local v1, audioId:I
    invoke-direct {p0, v8}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v12

    int-to-long v12, v12

    invoke-direct {p0, v9, v1, v12, v13}, Lcom/lenovo/fm/FMRadioRecorderHistory;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 1302
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v12, v13, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v12}, Lcom/lenovo/fm/FMRadioRecorderHistory;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1308
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 1310
    .local v2, cols:[Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-nez v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1315
    :cond_0
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 1317
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1318
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1319
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1320
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1321
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1322
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1325
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private cancelDeleteMode()V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 207
    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showDeleteMode()V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 216
    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->hideDeleteMode()V

    goto :goto_0
.end method

.method public static deleteTracks(Landroid/content/Context;[JZ)V
    .locals 13
    .parameter "context"
    .parameter "list"
    .parameter "bIsDeleteFile"

    .prologue
    .line 990
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 992
    .local v2, cols:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, p1

    if-ge v10, v0, :cond_1

    .line 995
    aget-wide v0, p1, v10

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 996
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_0

    .line 997
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1058
    :cond_2
    :goto_1
    return-void

    .line 1007
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/fm/FMRadioRecorderHistory;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1010
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 1016
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1021
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1030
    if-eqz p2, :cond_5

    .line 1031
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1033
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1036
    .local v11, name:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v9, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1042
    const-string v0, "MusicUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1045
    :catch_0
    move-exception v8

    .line 1046
    .local v8, ex:Ljava/lang/SecurityException;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1024
    .end local v8           #ex:Ljava/lang/SecurityException;
    .end local v9           #f:Ljava/io/File;
    .end local v11           #name:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1026
    .local v7, e:Ljava/lang/Exception;
    goto :goto_1

    .line 1050
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1
.end method

.method private static getFileSizeStr(I)Ljava/lang/String;
    .locals 13
    .parameter "fileSize"

    .prologue
    const-wide/32 v11, 0x100000

    const-wide/16 v9, 0x400

    .line 1527
    int-to-long v7, p0

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 1528
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, str1:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, str2:Ljava/lang/String;
    move-object v2, v1

    .line 1541
    .end local v0           #str1:Ljava/lang/String;
    .end local v1           #str2:Ljava/lang/String;
    .local v2, str3:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1531
    .end local v2           #str3:Ljava/lang/String;
    :cond_0
    int-to-long v7, p0

    cmp-long v7, v7, v11

    if-gez v7, :cond_1

    .line 1532
    int-to-long v7, p0

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1533
    .local v3, str4:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1534
    .local v4, str5:Ljava/lang/String;
    move-object v2, v4

    .line 1535
    .restart local v2       #str3:Ljava/lang/String;
    goto :goto_0

    .line 1536
    .end local v2           #str3:Ljava/lang/String;
    .end local v3           #str4:Ljava/lang/String;
    .end local v4           #str5:Ljava/lang/String;
    :cond_1
    int-to-long v7, p0

    div-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1537
    .local v5, str6:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1538
    .local v6, str7:Ljava/lang/String;
    move-object v2, v6

    .restart local v2       #str3:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 9
    .parameter "res"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1936
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1937
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 1938
    .local v2, ids:[Ljava/lang/String;
    const-string v8, "name=?"

    .line 1939
    .local v8, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "FM Recordings"

    aput-object v0, v4, v3

    .line 1940
    .local v4, args:[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/fm/FMRadioRecorderHistory;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1941
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 1943
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 1944
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1945
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1946
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1954
    :cond_0
    if-eqz v6, :cond_1

    .line 1955
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1956
    const/4 v6, 0x0

    .line 1960
    :cond_1
    :goto_0
    return v7

    .line 1951
    :catch_0
    move-exception v0

    .line 1954
    if-eqz v6, :cond_1

    .line 1955
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1956
    const/4 v6, 0x0

    goto :goto_0

    .line 1954
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1955
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1956
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private getSelSize()I
    .locals 4

    .prologue
    .line 974
    const/4 v2, 0x0

    .line 975
    .local v2, selSize:I
    sget-object v3, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 977
    .local v1, listSize:I
    iget-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 978
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 979
    sget-object v3, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 980
    add-int/lit8 v2, v2, 0x1

    .line 978
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    .end local v0           #i:I
    :cond_1
    return v2
.end method

.method private getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9
    .parameter "queryhandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    const/4 v4, 0x0

    .line 1548
    if-nez p1, :cond_0

    .line 1549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1572
    :cond_0
    const-string v5, "date_modified desc"

    .line 1573
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mPlaylistMemberCols:[Ljava/lang/String;

    const-string v3, "_data LIKE \'%/Audio/FMRecorder%\'"

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 1580
    .local v8, mRecordingFileCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v8, v4

    .line 1587
    .end local v8           #mRecordingFileCursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v8

    .line 1584
    .restart local v8       #mRecordingFileCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1585
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hideDeleteMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 179
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListHistory:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListHistory:Landroid/widget/LinearLayout;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListTitle:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListTitle:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    :cond_3
    return-void
.end method

.method private isAllSel()V
    .locals 7

    .prologue
    const v6, 0x7f04006c

    const v5, 0x7f04006b

    .line 689
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getSelSize()I

    move-result v2

    sget-object v3, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 690
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 692
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 714
    return-void

    .line 697
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 701
    sget-object v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    add-int/lit8 v0, v0, 0x1

    .line 700
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :cond_3
    if-nez v0, :cond_4

    .line 706
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 708
    :cond_4
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->res:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isoneSIMDevice()Z
    .locals 2

    .prologue
    .line 1980
    const-string v0, "ro.productdef.simmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onesim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private optionsDel()V
    .locals 2

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getSelSize()I

    move-result v0

    .line 837
    .local v0, selSize:I
    if-nez v0, :cond_0

    .line 838
    const v1, 0x7f040063

    invoke-direct {p0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showMessage(I)V

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareDelete()V

    goto :goto_0
.end method

.method private optionsSelAll()V
    .locals 3

    .prologue
    .line 811
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 812
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 813
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isAllSel()V

    .line 820
    return-void
.end method

.method private optionsUnSelAll()V
    .locals 3

    .prologue
    .line 823
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 824
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 825
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 832
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isAllSel()V

    .line 833
    return-void
.end method

.method private prepareAttr()V
    .locals 14

    .prologue
    .line 1463
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1465
    .local v4, factory:Landroid/view/LayoutInflater;
    const/high16 v11, 0x7f03

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1466
    .local v3, dialogview:Landroid/view/View;
    iget-object v11, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v12, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1468
    const/4 v5, 0x0

    .line 1470
    .local v5, file:Ljava/io/File;
    iget-object v11, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1471
    .local v10, fileTitle:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .end local v5           #file:Ljava/io/File;
    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1477
    .restart local v5       #file:Ljava/io/File;
    new-instance v10, Ljava/lang/String;

    .end local v10           #fileTitle:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f040060

    invoke-virtual {p0, v12}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1479
    .restart local v10       #fileTitle:Ljava/lang/String;
    const/high16 v11, 0x7f08

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1483
    .local v2, cal:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1485
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v8

    .line 1486
    .local v8, fileTime:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f040061

    invoke-virtual {p0, v12}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1488
    .end local v8           #fileTime:Ljava/lang/String;
    .local v9, fileTime:Ljava/lang/String;
    const v11, 0x7f080001

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    invoke-static {v5}, Lcom/lenovo/fm/FMRadioRecorderHistory;->size(Ljava/io/File;)I

    move-result v11

    invoke-static {v11}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getFileSizeStr(I)Ljava/lang/String;

    move-result-object v6

    .line 1492
    .local v6, fileSize:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f040062

    invoke-virtual {p0, v12}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1494
    .end local v6           #fileSize:Ljava/lang/String;
    .local v7, fileSize:Ljava/lang/String;
    const v11, 0x7f080002

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1498
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f04005c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x104000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/lenovo/fm/FMRadioRecorderHistory$12;

    invoke-direct {v13, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$12;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1507
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1508
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1509
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1510
    return-void
.end method

.method private prepareDelete()V
    .locals 5

    .prologue
    .line 888
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 889
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->DeleteOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lenovo/fm/FMRadioRecorderHistory$7;

    invoke-direct {v4, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$7;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 904
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 905
    return-void
.end method

.method private prepareRename()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1093
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1095
    .local v2, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1096
    .local v1, dialogview:Landroid/view/View;
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1098
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;

    .line 1099
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1101
    .local v3, index:I
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mMimeType:Ljava/lang/String;

    .line 1103
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1105
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAlbum:Ljava/lang/String;

    .line 1107
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1109
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mArtist:Ljava/lang/String;

    .line 1111
    const v4, 0x7f08003e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    .line 1112
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x12

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->renameOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lenovo/fm/FMRadioRecorderHistory$9;

    invoke-direct {v6, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$9;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    .line 1131
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1133
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1134
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1141
    :goto_0
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/lenovo/fm/FMRadioRecorderHistory$10;

    invoke-direct {v5, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$10;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1166
    return-void

    .line 1137
    :cond_0
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private prepareSend()V
    .locals 6

    .prologue
    .line 1399
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1401
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1404
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    const-string v2, "audio/3gpp"

    .line 1408
    .local v2, mimeType:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 1411
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1417
    const v4, 0x7f04005b

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/fm/FMRadioRecorderHistory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :goto_0
    return-void

    .line 1419
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private prepareUseAsRingtone()V
    .locals 23

    .prologue
    .line 1333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1336
    .local v16, id_idx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1337
    .local v14, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 1339
    .local v19, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1342
    .local v20, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v21, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1343
    .local v21, values:Landroid/content/ContentValues;
    const-string v3, "is_ringtone"

    const-string v4, "1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v3, "is_alarm"

    const-string v4, "1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v5, v3

    .line 1354
    .local v5, cols:[Ljava/lang/String;
    const-string v6, "_id=?"

    .line 1355
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 1356
    .local v7, whereArgs:[Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/lenovo/fm/FMRadioRecorderHistory;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1360
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1362
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1363
    const-string v3, "ringtone"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1368
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1370
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isoneSIMDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1371
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1374
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1375
    .local v13, filePath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v11, file:Ljava/io/File;
    const-string v12, ""

    .line 1377
    .local v12, fileName:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 1378
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1379
    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 1380
    .local v17, index:I
    if-lez v17, :cond_1

    .line 1385
    .end local v17           #index:I
    :cond_1
    const v3, 0x7f04005a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v22, ""

    aput-object v22, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1386
    .local v18, message:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    .end local v11           #file:Ljava/io/File;
    .end local v12           #fileName:Ljava/lang/String;
    .end local v13           #filePath:Ljava/lang/String;
    .end local v18           #message:Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    .line 1390
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1391
    const/4 v9, 0x0

    .line 1395
    .end local v5           #cols:[Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void

    .line 1346
    :catch_0
    move-exception v10

    .line 1348
    .local v10, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 1389
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v21       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_4

    .line 1390
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1391
    const/4 v9, 0x0

    :cond_4
    throw v3
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1062
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 1070
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1071
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 1081
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 1074
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p6, :cond_1

    .line 1075
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1078
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1080
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 1081
    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 1967
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1968
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 1975
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1971
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1974
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 1975
    goto :goto_0
.end method

.method private static reCalc(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cur"

    .prologue
    .line 196
    if-eqz p0, :cond_0

    .line 197
    sget-object v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 199
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 200
    .local v1, item:Z
    sget-object v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0           #i:I
    .end local v1           #item:Z
    :cond_0
    return-void
.end method

.method private showDeleteMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListHistory:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListHistory:Landroid/widget/LinearLayout;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListTitle:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListTitle:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    :cond_3
    return-void
.end method

.method private showMessage(I)V
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1428
    return-void
.end method

.method private static size(Ljava/io/File;)I
    .locals 4
    .parameter "file"

    .prologue
    .line 1513
    const/4 v0, 0x0

    .line 1515
    .local v0, filesize:I
    const/4 v1, 0x0

    .line 1516
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 1518
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1522
    .end local v2           #fis:Ljava/io/FileInputStream;
    :goto_0
    return v0

    .line 1519
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "newCursor"
    .parameter "isLimited"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    if-nez v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v1, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 593
    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->closeContextMenu()V

    goto :goto_0

    .line 601
    :cond_2
    sget v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosCourse:I

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mUseLastListPos:Z

    if-eqz v1, :cond_3

    .line 602
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 605
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 606
    sget v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosCourse:I

    sget v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 607
    if-nez p2, :cond_3

    .line 608
    const/4 v1, -0x1

    sput v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosCourse:I

    .line 612
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_3
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 614
    const v1, 0x7f04004d

    invoke-direct {p0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showMessage(I)V

    goto :goto_0
.end method

.method public isCorrectPath(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    .line 1431
    const/4 v0, 0x1

    .line 1434
    .local v0, bResult:Z
    if-nez p1, :cond_0

    .line 1435
    const/4 v0, 0x0

    move v1, v0

    .line 1459
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1440
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1442
    .local v2, i:I
    const/16 v4, 0xff

    if-le v2, v4, :cond_1

    .line 1443
    const/4 v0, 0x0

    move v1, v0

    .line 1444
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1446
    .end local v1           #bResult:I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1449
    :goto_1
    if-ltz v2, :cond_3

    .line 1450
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1452
    .local v3, tmp:C
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_4

    .line 1454
    :cond_2
    const/4 v0, 0x0

    .end local v3           #tmp:C
    :cond_3
    move v1, v0

    .line 1459
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1449
    .end local v1           #bResult:I
    .restart local v3       #tmp:C
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 669
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 670
    .local v1, title1:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, title:Ljava/lang/String;
    const v2, 0x7f040057

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareDelete()V

    .line 685
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 674
    :cond_1
    const v2, 0x7f040058

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 675
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareRename()V

    goto :goto_0

    .line 676
    :cond_2
    const v2, 0x7f04005b

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 677
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareSend()V

    goto :goto_0

    .line 678
    :cond_3
    const v2, 0x7f04005c

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 679
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareAttr()V

    goto :goto_0

    .line 681
    :cond_4
    const v2, 0x7f040059

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareUseAsRingtone()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 257
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->setContentView(I)V

    .line 259
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->res:Landroid/content/res/Resources;

    .line 260
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrHour:Ljava/lang/String;

    .line 261
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrMinute:Ljava/lang/String;

    .line 262
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrSecond:Ljava/lang/String;

    .line 263
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectCount:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mHeaderLayout:Landroid/widget/RelativeLayout;

    .line 265
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 267
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 268
    .local v10, mDelLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$1;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$1;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 276
    .local v11, mDeleteBack:Landroid/widget/ImageView;
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$2;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$2;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListTitle:Landroid/widget/RelativeLayout;

    .line 286
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mRecListHistory:Landroid/widget/LinearLayout;

    .line 288
    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showDeleteMode()V

    .line 293
    :goto_0
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    .line 294
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/lenovo/fm/FMRadioRecorderHistory$3;

    invoke-direct {v1, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$3;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 339
    .local v12, mTrackList:Landroid/widget/ListView;
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 340
    invoke-virtual {v12, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 342
    invoke-virtual {v12, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    if-nez v0, :cond_2

    .line 345
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    const v3, 0x7f03000d

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/fm/FMRadioRecorderHistory;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    .line 358
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v8}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 375
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->setActivity(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    .line 377
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/lenovo/fm/RadioService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v7}, Lcom/lenovo/fm/FMRadioRecorderHistory;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 382
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.fm.action.headsetplug"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;

    invoke-direct {v0, p0, v4}, Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/FMRadioRecorderHistory$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->radioReceiver:Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;

    .line 386
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->radioReceiver:Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/lenovo/fm/FMRadioRecorderHistory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    return-void

    .line 291
    .end local v9           #filter:Landroid/content/IntentFilter;
    .end local v12           #mTrackList:Landroid/widget/ListView;
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->hideDeleteMode()V

    goto/16 :goto_0

    .line 361
    .restart local v12       #mTrackList:Landroid/widget/ListView;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    .line 368
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v7}, Lcom/lenovo/fm/FMRadioRecorderHistory;->init(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v8}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 626
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 627
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, p3

    .line 628
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 629
    .local v2, viewMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    .line 631
    iget-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 640
    iget-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 646
    .local v1, id_idx:I
    iget-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedId:J

    .line 648
    iget-boolean v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v3, :cond_0

    .line 650
    add-int/lit8 v0, v0, 0x1

    .line 665
    :goto_0
    return-void

    .line 652
    :cond_0
    const v3, 0x7f040057

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 653
    add-int/lit8 v0, v0, 0x1

    .line 654
    const v3, 0x7f040058

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 655
    add-int/lit8 v0, v0, 0x1

    .line 656
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/fm/Util;->isWifi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    const v3, 0x7f040059

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 658
    add-int/lit8 v0, v0, 0x1

    .line 660
    :cond_1
    const v3, 0x7f04005b

    invoke-virtual {p0, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v0, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f040057

    const v4, 0x7f020034

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 752
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 754
    invoke-virtual {p0, v5}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 758
    const/4 v0, 0x2

    const v1, 0x7f040055

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 761
    const/4 v0, 0x3

    invoke-virtual {p0, v5}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 764
    const/4 v0, 0x4

    const v1, 0x7f040056

    invoke-virtual {p0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 768
    return v3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 433
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 434
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 435
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 436
    iget-boolean v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mUseLastListPos:Z

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosCourse:I

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/lenovo/fm/FMRadioRecorderHistory;->mLastListPosFine:I

    .line 452
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v2, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 458
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    iput-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    .line 460
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 461
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->radioReceiver:Lcom/lenovo/fm/FMRadioRecorderHistory$RadioReceiver;

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->osc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->unbindService(Landroid/content/ServiceConnection;)V

    .line 463
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 538
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 539
    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsUnSelAll()V

    .line 541
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->cancelDeleteMode()V

    .line 542
    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    .line 544
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 545
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/lenovo/fm/RadioActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 546
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->startActivity(Landroid/content/Intent;)V

    .line 548
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->finish()V

    .line 552
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 718
    iget-object v5, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 748
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-boolean v5, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v5, :cond_2

    .line 723
    sget-object v5, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 724
    .local v0, bItem:Z
    sget-object v6, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v6, p3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isAllSel()V

    goto :goto_0

    .line 724
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 730
    .end local v0           #bItem:Z
    :cond_2
    iget-object v5, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 732
    iget-object v5, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, filePath:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 735
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v3, "audio/3gpp"

    .line 739
    .local v3, mimeType:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 741
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 846
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 848
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 884
    :goto_0
    return v1

    .line 850
    :sswitch_0
    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    .line 851
    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_1

    .line 852
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->showDeleteMode()V

    .line 857
    :goto_2
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    iget-boolean v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    invoke-virtual {v0, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 858
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 850
    goto :goto_1

    .line 854
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->hideDeleteMode()V

    goto :goto_2

    .line 863
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsSelAll()V

    goto :goto_0

    .line 868
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsDel()V

    goto :goto_0

    .line 874
    :sswitch_3
    invoke-direct {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->optionsUnSelAll()V

    goto :goto_0

    .line 879
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->onBackPressed()V

    goto :goto_0

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 517
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 518
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "selectedtrack"

    iget-wide v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->setIntent(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 773
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, toolBtnItem:Landroid/view/MenuItem;
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 776
    sget-object v1, Lcom/lenovo/fm/FMRadioRecorderHistory;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 777
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 781
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_1

    .line 782
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 787
    :goto_1
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 788
    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_2

    .line 789
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 794
    :goto_2
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 795
    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_3

    .line 796
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 801
    :goto_3
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 802
    iget-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v1, :cond_4

    .line 803
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 807
    :goto_4
    return v2

    .line 779
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 784
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 791
    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 798
    :cond_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 805
    :cond_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 496
    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-eqz v0, :cond_2

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->isNeedReInit:Z

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mCbSelAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 513
    :cond_1
    return-void

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->init(Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    .line 427
    .local v0, a:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapterSent:Z

    .line 428
    return-object v0
.end method
