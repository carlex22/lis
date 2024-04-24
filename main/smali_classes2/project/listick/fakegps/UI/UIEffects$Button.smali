.class Lproject/listick/fakegps/UI/UIEffects$Button;
.super Ljava/lang/Object;
.source "UIEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/UI/UIEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Button"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachErrorWithShake(Landroid/content/Context;Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V
    .registers 12

    const v0, 0x7f010035

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    const v0, 0x7f0604c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    new-instance v0, Lproject/listick/fakegps/UI/UIEffects$Button$1;

    const-wide/16 v2, 0x320

    const-wide/16 v4, 0x3e8

    move-object v1, v0

    move-object v6, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lproject/listick/fakegps/UI/UIEffects$Button$1;-><init>(JJLcom/google/android/material/button/MaterialButton;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
