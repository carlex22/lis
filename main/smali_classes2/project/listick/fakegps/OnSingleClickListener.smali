.class public abstract Lproject/listick/fakegps/OnSingleClickListener;
.super Ljava/lang/Object;
.source "OnSingleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_CLICK_INTERVAL:J = 0x258L


# instance fields
.field private mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lproject/listick/fakegps/OnSingleClickListener;->mLastClickTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lproject/listick/fakegps/OnSingleClickListener;->mLastClickTime:J

    const-wide/16 v0, 0x258

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lproject/listick/fakegps/OnSingleClickListener;->onSingleClick(Landroid/view/View;)V

    return-void
.end method

.method public abstract onSingleClick(Landroid/view/View;)V
.end method
