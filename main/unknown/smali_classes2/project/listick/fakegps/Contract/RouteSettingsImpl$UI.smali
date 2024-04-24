.class public interface abstract Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;
.super Ljava/lang/Object;
.source "RouteSettingsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Contract/RouteSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UI"
.end annotation


# virtual methods
.method public abstract addMoreRoute()V
.end method

.method public abstract getDestTimerMinutes()I
.end method

.method public abstract getDestTimerSeconds()I
.end method

.method public abstract getElevation(FF)V
.end method

.method public abstract getOriginTimerMinutes()I
.end method

.method public abstract getOriginTimerSeconds()I
.end method

.method public abstract getSpeed(I)V
.end method

.method public abstract getSpeedDifference(I)V
.end method

.method public abstract onAltitudeDetermined(ZZ)V
.end method

.method public abstract pushDifferenceError()V
.end method

.method public abstract setFixedMode()V
.end method

.method public abstract setJoystickMode()V
.end method

.method public abstract startAltitudeDetection()V
.end method

.method public abstract stopAltitudeDetection()V
.end method
