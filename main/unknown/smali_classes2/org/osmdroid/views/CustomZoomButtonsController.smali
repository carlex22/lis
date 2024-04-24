.class public Lorg/osmdroid/views/CustomZoomButtonsController;
.super Ljava/lang/Object;
.source "CustomZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;,
        Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;
    }
.end annotation


# instance fields
.field private detached:Z

.field private mAlpha01:F

.field private mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

.field private final mFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private mFadeOutAnimationDurationInMillis:I

.field private mJustActivated:Z

.field private mLatestActivation:J

.field private mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

.field private final mMapView:Lorg/osmdroid/views/MapView;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mShowDelayInMillis:I

.field private mThread:Ljava/lang/Thread;

.field private final mThreadSync:Ljava/lang/Object;

.field private mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

.field private mZoomInEnabled:Z

.field private mZoomOutEnabled:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThreadSync:Ljava/lang/Object;

    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->NEVER:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    const/16 v0, 0x1f4

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimationDurationInMillis:I

    const/16 v0, 0xdac

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mShowDelayInMillis:I

    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mMapView:Lorg/osmdroid/views/MapView;

    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimationDurationInMillis:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsController$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/CustomZoomButtonsController$1;-><init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lorg/osmdroid/views/CustomZoomButtonsController$2;

    invoke-direct {p1, p0}, Lorg/osmdroid/views/CustomZoomButtonsController$2;-><init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mRunnable:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/osmdroid/views/CustomZoomButtonsController;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    return p0
.end method

.method static synthetic access$100(Lorg/osmdroid/views/CustomZoomButtonsController;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lorg/osmdroid/views/CustomZoomButtonsController;F)F
    .registers 2

    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    return p1
.end method

.method static synthetic access$300(Lorg/osmdroid/views/CustomZoomButtonsController;)V
    .registers 1

    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->invalidate()V

    return-void
.end method

.method static synthetic access$400(Lorg/osmdroid/views/CustomZoomButtonsController;)J
    .registers 3

    iget-wide v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mLatestActivation:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/CustomZoomButtonsController;)I
    .registers 1

    iget p0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mShowDelayInMillis:I

    return p0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/CustomZoomButtonsController;)J
    .registers 3

    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->nowInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lorg/osmdroid/views/CustomZoomButtonsController;)V
    .registers 1

    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->startFadeOut()V

    return-void
.end method

.method private checkJustActivated()Z
    .registers 3

    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private invalidate()V
    .registers 2

    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    return-void
.end method

.method private nowInMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private startFadeOut()V
    .registers 4

    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mMapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lorg/osmdroid/views/CustomZoomButtonsController$3;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/CustomZoomButtonsController$3;-><init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopFadeOut()V
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method public activate()V
    .registers 5

    iget-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->SHOW_AND_FADEOUT:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    iget-boolean v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mJustActivated:Z

    :goto_0
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->stopFadeOut()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->nowInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mLatestActivation:J

    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->invalidate()V

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThreadSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_6
    monitor-exit v0

    :cond_7
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    iget v1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    iget-boolean v2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomInEnabled:Z

    iget-boolean v3, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomOutEnabled:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->draw(Landroid/graphics/Canvas;FZZ)V

    return-void
.end method

.method public getDisplay()Lorg/osmdroid/views/CustomZoomButtonsDisplay;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    return-object v0
.end method

.method public isTouched(Landroid/view/MotionEvent;)Z
    .registers 5

    iget v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->checkJustActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomInEnabled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mDisplay:Lorg/osmdroid/views/CustomZoomButtonsDisplay;

    invoke-virtual {v0, p1, v1}, Lorg/osmdroid/views/CustomZoomButtonsDisplay;->isTouched(Landroid/view/MotionEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomOutEnabled:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public onDetach()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->detached:Z

    invoke-direct {p0}, Lorg/osmdroid/views/CustomZoomButtonsController;->stopFadeOut()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/CustomZoomButtonsController;->isTouched(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/CustomZoomButtonsController;->isTouched(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnZoomListener(Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mListener:Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;

    return-void
.end method

.method public setShowFadeOutDelays(II)V
    .registers 3

    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mShowDelayInMillis:I

    iput p2, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mFadeOutAnimationDurationInMillis:I

    return-void
.end method

.method public setVisibility(Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;)V
    .registers 3

    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    sget-object p1, Lorg/osmdroid/views/CustomZoomButtonsController$4;->$SwitchMap$org$osmdroid$views$CustomZoomButtonsController$Visibility:[I

    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mVisibility:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    invoke-virtual {v0}, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mAlpha01:F

    :goto_0
    return-void
.end method

.method public setZoomInEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomInEnabled:Z

    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController;->mZoomOutEnabled:Z

    return-void
.end method
