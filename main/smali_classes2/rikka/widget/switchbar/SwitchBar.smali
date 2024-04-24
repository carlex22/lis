.class public Lrikka/widget/switchbar/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final KEY_IS_CHECKED:Ljava/lang/String; = "rikka.widget.switchbar.isChecked"

.field private static final KEY_SUPER_STATES:Ljava/lang/String; = "rikka.widget.switchbar.superStates"


# instance fields
.field private isBroadcasting:Z

.field private isChecked:Z

.field private mOnCheckedChangeListener:Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;

.field private final mStatusText:Landroid/widget/TextView;

.field private final mSwitch:Landroid/widget/Switch;

.field private mSwitchOffText:Ljava/lang/CharSequence;

.field private mSwitchOnText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lrikka/widget/switchbar/SwitchBar;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrikka/widget/switchbar/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lrikka/widget/switchbar/R$attr;->switchBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lrikka/widget/switchbar/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lrikka/widget/switchbar/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mOnCheckedChangeListener:Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lrikka/widget/switchbar/SwitchBar;->isChecked:Z

    iput-boolean v1, p0, Lrikka/widget/switchbar/SwitchBar;->isBroadcasting:Z

    if-eqz p2, :cond_0

    sget-object v0, Lrikka/widget/switchbar/R$styleable;->SwitchBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lrikka/widget/switchbar/R$styleable;->SwitchBar_android_textColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sget p3, Lrikka/widget/switchbar/R$styleable;->SwitchBar_switchOnText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOnText:Ljava/lang/CharSequence;

    sget p3, Lrikka/widget/switchbar/R$styleable;->SwitchBar_switchOffText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOffText:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lrikka/widget/switchbar/R$layout;->switchbar_widget_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x1020014

    invoke-virtual {p0, p1}, Lrikka/widget/switchbar/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lrikka/widget/switchbar/SwitchBar;->mStatusText:Landroid/widget/TextView;

    const p2, 0x1020017

    invoke-virtual {p0, p2}, Lrikka/widget/switchbar/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    new-instance p1, Lrikka/widget/switchbar/SwitchBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lrikka/widget/switchbar/SwitchBar$$ExternalSyntheticLambda0;-><init>(Lrikka/widget/switchbar/SwitchBar;)V

    invoke-virtual {p0, p1}, Lrikka/widget/switchbar/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lrikka/widget/switchbar/SwitchBar;->updateViewStates()V

    return-void
.end method

.method private updateViewStates()V
    .registers 3

    iget-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOnText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOffText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lrikka/widget/switchbar/SwitchBar;->isChecked:Z

    return v0
.end method

.method synthetic lambda$new$0$rikka-widget-switchbar-SwitchBar(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->toggle()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lrikka/widget/switchbar/SwitchBar;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lrikka/widget/switchbar/SwitchBar;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "rikka.widget.switchbar.superStates"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "rikka.widget.switchbar.isChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lrikka/widget/switchbar/SwitchBar;->setChecked(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rikka.widget.switchbar.superStates"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "rikka.widget.switchbar.isChecked"

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrikka/widget/switchbar/SwitchBar;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lrikka/widget/switchbar/SwitchBar;->isChecked:Z

    if-eq v0, p1, :cond_3

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lrikka/widget/switchbar/SwitchBar;->isBroadcasting:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lrikka/widget/switchbar/SwitchBar;->isBroadcasting:Z

    iget-object p2, p0, Lrikka/widget/switchbar/SwitchBar;->mOnCheckedChangeListener:Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0, p1}, Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;->onCheckedChanged(Lrikka/widget/switchbar/SwitchBar;Z)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lrikka/widget/switchbar/SwitchBar;->isBroadcasting:Z

    :cond_2
    iput-boolean p1, p0, Lrikka/widget/switchbar/SwitchBar;->isChecked:Z

    invoke-direct {p0}, Lrikka/widget/switchbar/SwitchBar;->updateViewStates()V

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->refreshDrawableState()V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;)V
    .registers 2

    iput-object p1, p0, Lrikka/widget/switchbar/SwitchBar;->mOnCheckedChangeListener:Lrikka/widget/switchbar/SwitchBar$OnCheckedChangeListener;

    return-void
.end method

.method public setSwitchOffText(I)V
    .registers 3

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrikka/widget/switchbar/SwitchBar;->setSwitchOffText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchOffText(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOffText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lrikka/widget/switchbar/SwitchBar;->mStatusText:Landroid/widget/TextView;

    iget-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOffText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSwitchOnText(I)V
    .registers 3

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrikka/widget/switchbar/SwitchBar;->setSwitchOnText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchOnText(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOnText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lrikka/widget/switchbar/SwitchBar;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrikka/widget/switchbar/SwitchBar;->mStatusText:Landroid/widget/TextView;

    iget-object v0, p0, Lrikka/widget/switchbar/SwitchBar;->mSwitchOnText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lrikka/widget/switchbar/SwitchBar;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lrikka/widget/switchbar/SwitchBar;->setChecked(Z)V

    return-void
.end method
