.class public Lproject/listick/fakegps/UI/CaptchaActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CaptchaActivity.java"


# static fields
.field public static final ACTIVITY_REQUEST_CODE:I = 0x9

.field public static final KEY_CAPTCHA_RESULT:Ljava/lang/String; = "captcha_result"

.field public static final KEY_DATA:Ljava/lang/String; = "data"


# instance fields
.field private data:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/CaptchaActivity;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/CaptchaActivity;->data:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/UI/CaptchaActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lproject/listick/fakegps/UI/CaptchaActivity;->finishActivity(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private finishActivity(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    const-string v0, "captcha_result"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lproject/listick/fakegps/UI/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/CaptchaActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lproject/listick/fakegps/UI/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/CaptchaActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/CaptchaActivity;->setContentView(I)V

    const-string p1, "uimode"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/CaptchaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/CaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lproject/listick/fakegps/UI/CaptchaActivity;->data:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/UI/CaptchaActivity;->data:Landroid/content/Intent;

    :cond_0
    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v1, Lproject/listick/fakegps/UI/CaptchaActivity$1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/CaptchaActivity$1;-><init>(Lproject/listick/fakegps/UI/CaptchaActivity;)V

    const-string v2, "CaptchaCallback"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://littleangry.ru/lfg/verification.html?theme="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
