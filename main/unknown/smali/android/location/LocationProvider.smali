.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "provider name contains illegal character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .registers 4

    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result p0

    iget v0, p1, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    if-lt p0, v0, :cond_7

    :cond_1
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result p0

    iget v0, p1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    if-lt p0, v0, :cond_7

    :cond_2
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    if-eqz p0, :cond_7

    :cond_3
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    if-eqz p0, :cond_7

    :cond_4
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    if-eqz p0, :cond_7

    :cond_5
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result p0

    if-nez p0, :cond_6

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    if-nez p0, :cond_7

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAccuracy()I
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 4

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result p1

    return p1
.end method

.method public requiresCell()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    return v0
.end method

.method public supportsAltitude()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    return v0
.end method
