.class Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoriListViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;

.field private viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3247
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3200(Lcom/lenovo/fm/RadioActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3200(Lcom/lenovo/fm/RadioActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "view"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 3268
    if-nez p2, :cond_0

    .line 3269
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    const v1, 0x7f03000f

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3271
    new-instance v0, Lcom/lenovo/fm/RadioActivity$ViewHolder;

    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/fm/RadioActivity$ViewHolder;-><init>(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    .line 3272
    iget-object v1, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    const v0, 0x7f080038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/fm/RadioActivity$ViewHolder;->channelItem:Landroid/widget/TextView;

    .line 3274
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3278
    :goto_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mSelectedPosition:I
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$300(Lcom/lenovo/fm/RadioActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3279
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/fm/RadioActivity$ViewHolder;->channelItem:Landroid/widget/TextView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3284
    :goto_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    iget-object v1, v0, Lcom/lenovo/fm/RadioActivity$ViewHolder;->channelItem:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->this$0:Lcom/lenovo/fm/RadioActivity;

    #getter for: Lcom/lenovo/fm/RadioActivity;->mHorizontalListViewArr:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$3200(Lcom/lenovo/fm/RadioActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3287
    return-object p2

    .line 3276
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/fm/RadioActivity$ViewHolder;

    iput-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    goto :goto_0

    .line 3282
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/RadioActivity$HoriListViewAdapter;->viewHolder:Lcom/lenovo/fm/RadioActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/fm/RadioActivity$ViewHolder;->channelItem:Landroid/widget/TextView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
