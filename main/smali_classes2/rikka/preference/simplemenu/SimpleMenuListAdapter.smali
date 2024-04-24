.class Lrikka/preference/simplemenu/SimpleMenuListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SimpleMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;


# direct methods
.method public constructor <init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    check-cast p1, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->onBindViewHolder(Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->mWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1, v0, p2}, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;->bind(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    new-instance p2, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lrikka/preference/simplemenu/R$layout;->simple_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lrikka/preference/simplemenu/SimpleMenuListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
