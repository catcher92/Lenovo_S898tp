.class Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;,
        Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;,
        Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private bIsMulSel:Z

.field private mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

.field private mAddedTimeIdx:I

.field private mArtistIdx:I

.field private mAudioIdIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mDisableNowPlayingIndicator:Z

.field private mDurationIdx:I

.field private mDurationTimeFormat:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

.field private mIsNowPlaying:Z

.field private mQueryHandler:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

.field private mTitleIdx:I

.field mViewHold:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lenovo/fm/FMRadioRecorderHistory;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    const/4 v6, 0x0

    .line 1716
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1608
    iput-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    .line 1610
    iput-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraintIsValid:Z

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mViewHold:Ljava/util/ArrayList;

    .line 1626
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

    invoke-direct {v0, p0, v6}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;Lcom/lenovo/fm/FMRadioRecorderHistory$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mDurationTimeFormat:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

    .line 1717
    iput-object p2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    .line 1718
    invoke-direct {p0, p4}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1719
    iput-boolean p7, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mIsNowPlaying:Z

    .line 1720
    iput-boolean p8, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1722
    new-instance v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mQueryHandler:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    .line 1723
    return-void
.end method

.method static synthetic access$2800(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)Lcom/lenovo/fm/FMRadioRecorderHistory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1738
    if-eqz p1, :cond_0

    .line 1739
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mTitleIdx:I

    .line 1741
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mArtistIdx:I

    .line 1743
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mDurationIdx:I

    .line 1745
    const-string v1, "date_added"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mAddedTimeIdx:I

    .line 1756
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1829
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1830
    .local v12, size:I
    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$3100()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v12, :cond_0

    .line 1831
    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->reCalc(Landroid/database/Cursor;)V
    invoke-static/range {p3 .. p3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$3200(Landroid/database/Cursor;)V

    .line 1832
    invoke-static {v12}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$3102(I)I

    .line 1834
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;

    .line 1835
    .local v15, vh:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 1837
    .local v11, position:I
    const/16 v16, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1838
    .local v8, filePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v6, file:Ljava/io/File;
    if-eqz v6, :cond_2

    .line 1841
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1842
    .local v7, fileName:Ljava/lang/String;
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1843
    .local v10, index:I
    if-lez v10, :cond_1

    .line 1844
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1847
    :cond_1
    const-string v16, "MHz"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v16, "z"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1850
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "z"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    .end local v7           #fileName:Ljava/lang/String;
    .end local v10           #index:I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mAddedTimeIdx:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v3, v0

    .line 1858
    .local v3, curTime:J
    new-instance v5, Ljava/util/Date;

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v3

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1859
    .local v5, date:Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyy-MM-dd"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v9, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 1864
    .local v13, title:Ljava/lang/String;
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mDurationIdx:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1866
    .local v14, totalTime:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 1867
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1868
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mDurationTimeFormat:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;

    move-object/from16 v17, v0

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$DurationTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->bIsMulSel:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1878
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1879
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1881
    .local v2, bItem:Z
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1899
    .end local v2           #bItem:Z
    :goto_2
    return-void

    .line 1853
    .end local v3           #curTime:J
    .end local v5           #date:Ljava/util/Date;
    .end local v9           #formatter:Ljava/text/SimpleDateFormat;
    .end local v13           #title:Ljava/lang/String;
    .end local v14           #totalTime:Ljava/lang/String;
    .restart local v7       #fileName:Ljava/lang/String;
    .restart local v10       #index:I
    :cond_4
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1873
    .end local v7           #fileName:Ljava/lang/String;
    .end local v10           #index:I
    .restart local v3       #curTime:J
    .restart local v5       #date:Ljava/util/Date;
    .restart local v9       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v13       #title:Ljava/lang/String;
    .restart local v14       #totalTime:Ljava/lang/String;
    :cond_5
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f040064

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1889
    :cond_6
    iget-object v0, v15, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1904
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1905
    const/4 p1, 0x0

    .line 1907
    :cond_0
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v2

    if-eq p1, v2, :cond_1

    .line 1908
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #setter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1302(Lcom/lenovo/fm/FMRadioRecorderHistory;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1909
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1910
    invoke-direct {p0, p1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1912
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1913
    if-eqz p1, :cond_2

    .line 1914
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1915
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1916
    .local v1, item:Z
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1919
    .end local v0           #i:I
    .end local v1           #item:Z
    :cond_2
    return-void
.end method

.method public getQueryHandler()Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mQueryHandler:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1775
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1776
    .local v2, v:Landroid/view/View;
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 1779
    .local v1, position:I
    new-instance v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory$1;)V

    .line 1780
    .local v3, vh:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;
    const v4, 0x7f08004d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 1781
    iget-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$1;

    invoke-direct {v5, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$1;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1798
    const v4, 0x7f08004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 1801
    const v4, 0x7f08004b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 1802
    new-instance v4, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1804
    const v4, 0x7f08004c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->line1_duration:Landroid/widget/TextView;

    .line 1809
    iget-boolean v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->bIsMulSel:Z

    if-eqz v4, :cond_0

    .line 1810
    iget-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1811
    iget-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1812
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1813
    .local v0, bItem:Z
    iget-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1821
    .end local v0           #bItem:Z
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1822
    iput-object v2, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->V:Landroid/view/View;

    .line 1823
    iget-object v4, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mViewHold:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    return-object v2

    .line 1817
    :cond_0
    iget-object v4, v3, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 1923
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1924
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1926
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1931
    :goto_0
    return-object v0

    .line 1928
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    iget-object v3, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mQueryHandler:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    const/4 v4, 0x0

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, v3, v1, v4}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$900(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1929
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1930
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;

    .line 1727
    return-void
.end method

.method public setIsMulti(Z)V
    .locals 0
    .parameter "bIsMulti"

    .prologue
    .line 1730
    iput-boolean p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->bIsMulSel:Z

    .line 1731
    return-void
.end method
