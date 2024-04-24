.class public Lproject/listick/fakegps/j/b;
.super Ljava/lang/Object;
.source "OpenRouteService.java"


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/j/b;->a:Ljava/io/File;

    return-void
.end method

.method private b(DD)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.openrouteservice.org/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elevation/point"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?api_key=5b3ce3597851110001cf6248f9453cbecd3a4291932064fcd9a87f38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&format_out=point"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(DDLproject/listick/fakegps/j/c;)V
    .registers 9

    new-instance v0, Lproject/listick/fakegps/n;

    iget-object v1, p0, Lproject/listick/fakegps/j/b;->a:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lproject/listick/fakegps/n;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lproject/listick/fakegps/j/b;->b(DD)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lproject/listick/fakegps/j/b$a;

    invoke-direct {p2, p0, p5}, Lproject/listick/fakegps/j/b$a;-><init>(Lproject/listick/fakegps/j/b;Lproject/listick/fakegps/j/c;)V

    invoke-virtual {v0, p1, p2}, Lproject/listick/fakegps/n;->a(Ljava/lang/String;Lproject/listick/fakegps/n$b;)V

    return-void
.end method
