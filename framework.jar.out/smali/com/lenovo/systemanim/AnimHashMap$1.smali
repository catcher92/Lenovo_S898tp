.class final Lcom/lenovo/systemanim/AnimHashMap$1;
.super Ljava/lang/Object;
.source "AnimHashMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemanim/AnimHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/systemanim/AnimHashMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/systemanim/AnimHashMap;
    .locals 3
    .parameter "in"

    .prologue
    .line 15
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 17
    .local v1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .restart local v1       #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Lcom/lenovo/systemanim/AnimHashMap;

    invoke-direct {v0, v1}, Lcom/lenovo/systemanim/AnimHashMap;-><init>(Ljava/util/HashMap;)V

    .line 22
    .local v0, map:Lcom/lenovo/systemanim/AnimHashMap;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/lenovo/systemanim/AnimHashMap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/systemanim/AnimHashMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/systemanim/AnimHashMap;
    .locals 1
    .parameter "size"

    .prologue
    .line 26
    new-array v0, p1, [Lcom/lenovo/systemanim/AnimHashMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/lenovo/systemanim/AnimHashMap$1;->newArray(I)[Lcom/lenovo/systemanim/AnimHashMap;

    move-result-object v0

    return-object v0
.end method
