.class Lproject/listick/fakegps/UI/SelectPointActivity$3$1;
.super Ljava/lang/Object;
.source "SelectPointActivity.java"

# interfaces
.implements Lproject/listick/fakegps/AsyncGeocoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/SelectPointActivity$3;->onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lproject/listick/fakegps/UI/SelectPointActivity$3;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity$3;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$3;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$200(Lproject/listick/fakegps/UI/SelectPointActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$3;

    iget-object v1, v1, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    const v2, 0x7f120099

    invoke-virtual {v1, v2}, Lproject/listick/fakegps/UI/SelectPointActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$3;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0, p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$002(Lproject/listick/fakegps/UI/SelectPointActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$3;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$200(Lproject/listick/fakegps/UI/SelectPointActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
