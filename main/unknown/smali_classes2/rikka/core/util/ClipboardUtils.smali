.class public Lrikka/core/util/ClipboardUtils;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static put(Landroid/content/Context;Landroid/content/ClipData;)Z
    .registers 3

    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .registers 3

    const-string v0, "label"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-static {p0, p1}, Lrikka/core/util/ClipboardUtils;->put(Landroid/content/Context;Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method
