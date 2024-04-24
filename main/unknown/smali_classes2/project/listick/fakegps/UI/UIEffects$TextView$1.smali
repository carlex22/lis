.class Lproject/listick/fakegps/UI/UIEffects$TextView$1;
.super Landroid/os/CountDownTimer;
.source "UIEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/UIEffects$TextView;->attachErrorWithShake(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterEffectAction:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(JJLandroid/widget/TextView;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 8

    iput-object p5, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$textView:Landroid/widget/TextView;

    iput-object p6, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$afterEffectAction:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$context:Landroid/content/Context;

    const v2, 0x7f080167

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$context:Landroid/content/Context;

    const v2, 0x7f01000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0604ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/UIEffects$TextView$1;->val$afterEffectAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
