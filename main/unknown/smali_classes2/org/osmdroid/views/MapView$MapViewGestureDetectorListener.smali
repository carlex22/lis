.class Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapViewGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapView;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapView;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    iget-boolean v0, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1}, Lorg/osmdroid/views/MapView;->access$400(Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/CustomZoomButtonsController;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1}, Lorg/osmdroid/views/MapView;->access$400(Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/CustomZoomButtonsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/CustomZoomButtonsController;->activate()V

    :cond_3
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$500(Lorg/osmdroid/views/MapView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$600(Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    iget-object v7, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lorg/osmdroid/views/overlay/OverlayManager;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1}, Lorg/osmdroid/views/MapView;->access$700(Lorg/osmdroid/views/MapView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1, v1}, Lorg/osmdroid/views/MapView;->access$702(Lorg/osmdroid/views/MapView;Z)Z

    return v1

    :cond_2
    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    iput-boolean p2, p1, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1}, Lorg/osmdroid/views/MapView;->access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v2

    long-to-int v2, v2

    float-to-int p1, p3

    neg-int v3, p1

    float-to-int p1, p4

    neg-int v4, p1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :cond_3
    return p2

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {p1, v1}, Lorg/osmdroid/views/MapView;->access$602(Lorg/osmdroid/views/MapView;Z)Z

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lorg/osmdroid/views/MapView;->access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/metalev/multitouch/controller/MultiTouchController;->isPinching()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    iget-object v6, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/osmdroid/views/overlay/OverlayManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p3, p4}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-interface {v0, p1, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
