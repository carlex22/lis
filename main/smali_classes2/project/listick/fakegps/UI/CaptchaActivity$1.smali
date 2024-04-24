.class Lproject/listick/fakegps/UI/CaptchaActivity$1;
.super Ljava/lang/Object;
.source "CaptchaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/CaptchaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/CaptchaActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/CaptchaActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/CaptchaActivity$1;->this$0:Lproject/listick/fakegps/UI/CaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptchaPassed(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/UI/CaptchaActivity$1;->this$0:Lproject/listick/fakegps/UI/CaptchaActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/CaptchaActivity;->access$000(Lproject/listick/fakegps/UI/CaptchaActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lproject/listick/fakegps/UI/CaptchaActivity;->access$100(Lproject/listick/fakegps/UI/CaptchaActivity;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
