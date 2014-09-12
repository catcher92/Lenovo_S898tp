.class Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    .line 1665
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1666
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"

    .prologue
    .line 1676
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v4, "100"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1678
    .local v3, limituri:Landroid/net/Uri;
    new-instance v2, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v2, p0}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;)V

    .line 1679
    .local v2, args:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;
    iput-object p1, v2, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 1680
    iput-object p2, v2, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 1681
    iput-object p3, v2, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 1682
    iput-object p4, v2, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 1683
    iput-object p5, v2, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 1685
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 1694
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;
    invoke-static {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->access$2800(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)Lcom/lenovo/fm/FMRadioRecorderHistory;

    move-result-object v2

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, p3, v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->init(Landroid/database/Cursor;Z)V

    .line 1697
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 1699
    move-object v0, p2

    check-cast v0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;

    move-object v9, v0

    .line 1700
    .local v9, args:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v9, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v9, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v9, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    .end local v9           #args:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;
    :cond_0
    :goto_1
    return-void

    .line 1694
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1704
    :catch_0
    move-exception v10

    .line 1705
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
