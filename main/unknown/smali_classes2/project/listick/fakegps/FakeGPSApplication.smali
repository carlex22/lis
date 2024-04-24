.class public Lproject/listick/fakegps/FakeGPSApplication;
.super Landroid/app/Application;
.source "FakeGPSApplication.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lproject/listick/fakegps/FakeGPSApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p1}, Lproject/listick/fakegps/PermissionManager;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lme/weishu/reflection/Reflection;->unseal(Landroid/content/Context;)I

    :cond_0
    return-void
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lproject/listick/fakegps/FakeGPSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lproject/listick/fakegps/FakeGPSApplication;->context:Landroid/content/Context;

    return-void
.end method
