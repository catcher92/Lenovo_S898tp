.class Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;
.super Ljava/lang/Object;
.source "LightSensorSample.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 501
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    #getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$300(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 489
    .local v2, time:J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    .line 490
    .local v0, distance:F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    #getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$400(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 491
    .local v1, positive:Z
    :cond_0
    invoke-static {}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P-Sensor Changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_1
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    #calls: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$600(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;JZ)V

    .line 496
    .end local v0           #distance:F
    .end local v1           #positive:Z
    .end local v2           #time:J
    :cond_2
    return-void
.end method
