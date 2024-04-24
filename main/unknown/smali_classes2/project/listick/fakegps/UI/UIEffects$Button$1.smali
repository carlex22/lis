.class Lproject/listick/fakegps/UI/UIEffects$Button$1;
.super Landroid/os/CountDownTimer;
.source "UIEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/UIEffects$Button;->attachErrorWithShake(Landroid/content/Context;Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterEffectAction:Ljava/lang/Runnable;

.field final synthetic val$button:Lcom/google/android/material/button/MaterialButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(JJLcom/google/android/material/button/MaterialButton;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 8

    iput-object p5, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$button:Lcom/google/android/material/button/MaterialButton;

    iput-object p6, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$afterEffectAction:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$button:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0604b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$button:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->clearAnimation()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$button:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$context:Landroid/content/Context;

    const v2, 0x7f01000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$button:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0604f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$Button$1;->val$afterEffectAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
