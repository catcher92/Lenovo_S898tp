.class Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryArgs"
.end annotation


# instance fields
.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field final synthetic this$1:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler$QueryArgs;->this$1:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
