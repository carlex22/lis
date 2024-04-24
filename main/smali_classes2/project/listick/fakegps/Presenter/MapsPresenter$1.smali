.class Lproject/listick/fakegps/Presenter/MapsPresenter$1;
.super Ljava/lang/Object;
.source "MapsPresenter.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Presenter/MapsPresenter;->sendDeviceAnalytics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$1;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
