.class Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;
.super Ljava/lang/Object;
.source "ItemizedOverlayControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->initViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;->this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;->this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;

    iget-object p1, p1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;->this$0:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;

    iget-object p1, p1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    invoke-interface {p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;->onPrevious()V

    :cond_0
    return-void
.end method
