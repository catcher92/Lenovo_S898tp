.class Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$1;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1786
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 1787
    .local v0, mCheckBox01:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1788
    .local v1, pos:I
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$1;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;
    invoke-static {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->access$2800(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1789
    iget-object v2, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$1;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->mActivity:Lcom/lenovo/fm/FMRadioRecorderHistory;
    invoke-static {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->access$2800(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;)Lcom/lenovo/fm/FMRadioRecorderHistory;

    move-result-object v2

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->isAllSel()V
    invoke-static {v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$3000(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    .line 1795
    return-void
.end method
