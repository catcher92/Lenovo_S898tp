.class public final enum Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;
.super Ljava/lang/Enum;
.source "LightAdjustProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

.field public static final enum CINEMA_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

.field public static final enum DAYTIME_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

.field public static final enum INCAR_PROFIEL:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

.field public static final enum NIGHT_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    const-string v1, "DAYTIME_PROFILE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    .line 20
    new-instance v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    const-string v1, "NIGHT_PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    .line 21
    new-instance v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    const-string v1, "INCAR_PROFIEL"

    invoke-direct {v0, v1, v4}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->INCAR_PROFIEL:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    .line 22
    new-instance v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    const-string v1, "CINEMA_PROFILE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->CINEMA_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    sget-object v1, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->INCAR_PROFIEL:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->CINEMA_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->$VALUES:[Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->$VALUES:[Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    return-object v0
.end method
