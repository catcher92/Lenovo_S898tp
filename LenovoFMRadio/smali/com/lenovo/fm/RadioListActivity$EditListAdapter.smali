.class public Lcom/lenovo/fm/RadioListActivity$EditListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioListActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/fm/RadioListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    .line 403
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 404
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 407
    const-string v11, "RadioListActivity"

    const-string v12, "EditListAdapter bindView"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    if-eqz p3, :cond_8

    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 409
    const v11, 0x7f08000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 410
    .local v6, name:Landroid/widget/TextView;
    const v11, 0x7f080010

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 411
    .local v2, channel:Landroid/widget/TextView;
    const v11, 0x7f080012

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 413
    .local v8, selectChannel:Landroid/widget/CheckBox;
    const v11, 0x7f08000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 415
    .local v3, favoriteImageView:Landroid/widget/ImageView;
    const v11, 0x7f080011

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 418
    .local v7, playImageView:Landroid/widget/ImageView;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 421
    .local v5, index:I
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v11, "channelName"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, Name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 424
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CH"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_0
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v11, "channelFreq"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 432
    .local v4, freq:I
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 433
    int-to-double v11, v4

    const-wide v13, 0x3fb999999999999aL

    mul-double/2addr v11, v13

    double-to-float v9, v11

    .line 434
    .local v9, tmpFloat:F
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    .line 435
    .local v10, tmpFreq:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Lcom/lenovo/fm/Util;->numEn2Ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v13, 0x7f04001d

    invoke-virtual {v12, v13}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :goto_1
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v11, "channelFavorite"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 446
    const v11, 0x7f020023

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    :goto_2
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    const-string v11, "channelPlaying"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 454
    const-string v11, "RadioListActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "freq "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "m_RadioService.getPlayingFreq() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v13}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v11

    if-eq v4, v11, :cond_4

    .line 458
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/fm/RadioService;->getPlayingFreq()I

    move-result v11

    if-eqz v11, :cond_0

    .line 460
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_RadioService:Lcom/lenovo/fm/RadioService;
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$200(Lcom/lenovo/fm/RadioListActivity;)Lcom/lenovo/fm/RadioService;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v4}, Lcom/lenovo/fm/RadioService;->updateChannelPlaying(II)V

    .line 468
    :cond_0
    :goto_3
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    #getter for: Lcom/lenovo/fm/RadioListActivity;->m_listviewstatus_read:Z
    invoke-static {v11}, Lcom/lenovo/fm/RadioListActivity;->access$800(Lcom/lenovo/fm/RadioListActivity;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 469
    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 470
    new-instance v11, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;

    invoke-direct {v11, p0, v5}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$1;-><init>(Lcom/lenovo/fm/RadioListActivity$EditListAdapter;I)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    .end local v1           #Name:Ljava/lang/String;
    .end local v2           #channel:Landroid/widget/TextView;
    .end local v3           #favoriteImageView:Landroid/widget/ImageView;
    .end local v4           #freq:I
    .end local v5           #index:I
    .end local v6           #name:Landroid/widget/TextView;
    .end local v7           #playImageView:Landroid/widget/ImageView;
    .end local v8           #selectChannel:Landroid/widget/CheckBox;
    .end local v9           #tmpFloat:F
    .end local v10           #tmpFreq:Ljava/lang/String;
    :goto_4
    return-void

    .line 426
    .restart local v1       #Name:Ljava/lang/String;
    .restart local v2       #channel:Landroid/widget/TextView;
    .restart local v3       #favoriteImageView:Landroid/widget/ImageView;
    .restart local v5       #index:I
    .restart local v6       #name:Landroid/widget/TextView;
    .restart local v7       #playImageView:Landroid/widget/ImageView;
    .restart local v8       #selectChannel:Landroid/widget/CheckBox;
    :cond_1
    invoke-static {v1}, Lcom/lenovo/fm/Util;->numEn2Ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 438
    .restart local v4       #freq:I
    :cond_2
    int-to-double v11, v4

    const-wide v13, 0x3f50624dd2f1a9fcL

    mul-double/2addr v11, v13

    double-to-float v9, v11

    .line 439
    .restart local v9       #tmpFloat:F
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    .line 440
    .restart local v10       #tmpFreq:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Lcom/lenovo/fm/Util;->numEn2Ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    const v13, 0x7f04001d

    invoke-virtual {v12, v13}, Lcom/lenovo/fm/RadioListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 449
    :cond_3
    const v11, 0x7f020022

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 462
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 465
    :cond_5
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 498
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 499
    new-instance v11, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;

    invoke-direct {v11, p0, v5}, Lcom/lenovo/fm/RadioListActivity$EditListAdapter$2;-><init>(Lcom/lenovo/fm/RadioListActivity$EditListAdapter;I)V

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 528
    iget-object v11, p0, Lcom/lenovo/fm/RadioListActivity$EditListAdapter;->this$0:Lcom/lenovo/fm/RadioListActivity;

    invoke-virtual {v11}, Lcom/lenovo/fm/RadioListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 531
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 536
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 540
    .end local v1           #Name:Ljava/lang/String;
    .end local v2           #channel:Landroid/widget/TextView;
    .end local v3           #favoriteImageView:Landroid/widget/ImageView;
    .end local v4           #freq:I
    .end local v5           #index:I
    .end local v6           #name:Landroid/widget/TextView;
    .end local v7           #playImageView:Landroid/widget/ImageView;
    .end local v8           #selectChannel:Landroid/widget/CheckBox;
    .end local v9           #tmpFloat:F
    .end local v10           #tmpFreq:Ljava/lang/String;
    :cond_8
    const-string v11, "RadioListActivity"

    const-string v12, "error cursor == null or m_RadioService == null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
