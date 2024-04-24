.class Lrikka/material/app/DayNightDelegate$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DayNightDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;


# direct methods
.method constructor <init>(Lrikka/material/app/DayNightDelegate$AutoNightModeManager;)V
    .registers 2

    iput-object p1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager$1;->this$1:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager$1;->this$1:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    invoke-virtual {p1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->onChange()V

    return-void
.end method
