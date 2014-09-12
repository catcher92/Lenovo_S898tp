.class public interface abstract Lcom/lenovo/systemanim/ISystemAnimService;
.super Ljava/lang/Object;
.source "ISystemAnimService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/systemanim/ISystemAnimService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAnimIdMap(Ljava/lang/String;)Lcom/lenovo/systemanim/AnimHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSystemAnim(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
