.class Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SimpleMenuListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/preference/simplemenu/SimpleMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCheckedTextView:Landroid/widget/CheckedTextView;

.field private mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "position"
        }
    .end annotation

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getSelectedIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getMode()I

    move-result p2

    if-ne p2, v2, :cond_1

    const v2, 0x7fffffff

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iget-object p1, p1, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    iget-object p2, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getMode()I

    move-result p2

    aget-object p1, p1, p2

    aget p1, p1, v1

    iget-object p2, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getOnItemClickListener()Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getOnItemClickListener()Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;

    move-result-object p1

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;->onClick(I)V

    :cond_0
    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
