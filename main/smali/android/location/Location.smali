.class public Landroid/location/Location;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private final mResults:[F

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/location/Location;->mHasAltitude:Z

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    iput-boolean v2, p0, Landroid/location/Location;->mHasSpeed:Z

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mSpeed:F

    iput-boolean v2, p0, Landroid/location/Location;->mHasBearing:Z

    iput v3, p0, Landroid/location/Location;->mBearing:F

    iput-boolean v2, p0, Landroid/location/Location;->mHasAccuracy:Z

    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    iput v3, p0, Landroid/location/Location;->mDistance:F

    iput v3, p0, Landroid/location/Location;->mInitialBearing:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/location/Location;->mHasAltitude:Z

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    iput-boolean v2, p0, Landroid/location/Location;->mHasSpeed:Z

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mSpeed:F

    iput-boolean v2, p0, Landroid/location/Location;->mHasBearing:Z

    iput v3, p0, Landroid/location/Location;->mBearing:F

    iput-boolean v2, p0, Landroid/location/Location;->mHasAccuracy:Z

    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    iput v3, p0, Landroid/location/Location;->mDistance:F

    iput v3, p0, Landroid/location/Location;->mInitialBearing:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$1002(Landroid/location/Location;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method static synthetic access$102(Landroid/location/Location;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/Location;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic access$502(Landroid/location/Location;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/Location;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic access$702(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$802(Landroid/location/Location;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic access$902(Landroid/location/Location;F)F
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .registers 68

    move-object/from16 v0, p8

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p0, v1

    mul-double v5, p4, v1

    mul-double v7, p2, v1

    mul-double v1, v1, p6

    sub-double/2addr v1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    const-wide v7, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v11, v7, v9

    mul-double v13, v3, v5

    const/16 v16, 0x0

    move-wide/from16 v17, v1

    move/from16 v15, v16

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    :goto_0
    const/16 v0, 0x14

    if-ge v15, v0, :cond_3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v19, v9, v27

    mul-double v21, v7, v5

    mul-double v23, v3, v9

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    mul-double v19, v19, v19

    mul-double v21, v21, v21

    add-double v19, v19, v21

    move-wide/from16 p2, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v19, v11, v25

    move-wide/from16 p4, v5

    add-double v5, v13, v19

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v21

    const-wide/16 v29, 0x0

    cmpl-double v0, v3, v29

    if-nez v0, :cond_0

    move-wide/from16 v19, v29

    goto :goto_1

    :cond_0
    mul-double v19, v11, v27

    div-double v19, v19, v3

    :goto_1
    mul-double v23, v19, v19

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    sub-double v23, v31, v23

    cmpl-double v0, v23, v29

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    if-nez v0, :cond_1

    move-wide/from16 v35, v29

    goto :goto_2

    :cond_1
    mul-double v35, v13, v33

    div-double v35, v35, v23

    sub-double v35, v5, v35

    :goto_2
    const-wide v37, 0x3f7b9adfe2939d71L    # 0.006739496756586903

    mul-double v37, v37, v23

    const-wide/high16 v39, 0x40d0000000000000L    # 16384.0

    div-double v39, v37, v39

    const-wide v41, 0x4065e00000000000L    # 175.0

    mul-double v41, v41, v37

    const-wide/high16 v43, 0x4074000000000000L    # 320.0

    sub-double v43, v43, v41

    mul-double v43, v43, v37

    const-wide/high16 v41, -0x3f78000000000000L    # -768.0

    add-double v43, v43, v41

    mul-double v43, v43, v37

    const-wide/high16 v41, 0x40b0000000000000L    # 4096.0

    add-double v43, v43, v41

    mul-double v39, v39, v43

    add-double v39, v39, v31

    const-wide/high16 v41, 0x4090000000000000L    # 1024.0

    div-double v41, v37, v41

    const-wide v43, 0x4047800000000000L    # 47.0

    mul-double v43, v43, v37

    const-wide v45, 0x4052800000000000L    # 74.0

    sub-double v45, v45, v43

    mul-double v45, v45, v37

    const-wide/high16 v43, -0x3fa0000000000000L    # -128.0

    add-double v45, v45, v43

    mul-double v37, v37, v45

    const-wide/high16 v43, 0x4070000000000000L    # 256.0

    add-double v37, v37, v43

    mul-double v41, v41, v37

    const-wide v37, 0x3f2b775a85ed1bbcL    # 2.0955066698943685E-4

    mul-double v37, v37, v23

    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    mul-double v23, v23, v43

    const-wide/high16 v43, 0x4010000000000000L    # 4.0

    sub-double v23, v43, v23

    const-wide v45, 0x3f6b775a85ed1bbcL    # 0.0033528106718309896

    mul-double v23, v23, v45

    add-double v23, v23, v43

    mul-double v37, v37, v23

    mul-double v23, v35, v35

    mul-double v47, v41, v3

    div-double v49, v41, v43

    mul-double v51, v23, v33

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    add-double v51, v51, v53

    mul-double v51, v51, v5

    const-wide/high16 v55, 0x4018000000000000L    # 6.0

    div-double v41, v41, v55

    mul-double v41, v41, v35

    mul-double v55, v3, v43

    mul-double v55, v55, v3

    const-wide/high16 v57, -0x3ff8000000000000L    # -3.0

    add-double v55, v55, v57

    mul-double v41, v41, v55

    mul-double v23, v23, v43

    add-double v23, v23, v57

    mul-double v41, v41, v23

    sub-double v51, v51, v41

    mul-double v49, v49, v51

    add-double v49, v35, v49

    mul-double v23, v47, v49

    sub-double v31, v31, v37

    mul-double v45, v45, v31

    mul-double v19, v19, v45

    mul-double v3, v3, v37

    mul-double v37, v37, v5

    mul-double v33, v33, v35

    mul-double v33, v33, v35

    add-double v33, v33, v53

    mul-double v37, v37, v33

    add-double v35, v35, v37

    mul-double v3, v3, v35

    add-double v3, v21, v3

    mul-double v19, v19, v3

    add-double v19, v1, v19

    sub-double v3, v19, v17

    div-double v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    move-wide/from16 v19, v39

    goto :goto_3

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v17, v19

    move-wide/from16 v19, v39

    goto/16 :goto_0

    :cond_3
    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    :goto_3
    const-wide v0, 0x41583fc4141bda51L    # 6356752.3142

    mul-double v19, v19, v0

    sub-double v21, v21, v23

    mul-double v0, v19, v21

    double-to-float v0, v0

    move-object/from16 v1, p8

    aput v0, v1, v16

    array-length v0, v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    mul-double v3, v9, v27

    move-wide/from16 v5, p4

    mul-double/2addr v5, v7

    move-wide/from16 v11, p2

    mul-double v13, v11, v9

    mul-double v13, v13, v25

    sub-double v13, v5, v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v0

    const-wide v13, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v3, v13

    double-to-float v0, v3

    aput v0, v1, v2

    array-length v0, v1

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    mul-double v7, v7, v27

    neg-double v3, v11

    mul-double/2addr v9, v3

    mul-double v25, v25, v5

    add-double v9, v9, v25

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v0

    mul-double/2addr v3, v13

    double-to-float v0, v3

    aput v0, v1, v2

    :cond_4
    return-void
.end method

.method public static convert(Ljava/lang/String;)D
    .registers 15

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    const-string v5, "coordinate="

    if-lt v4, v3, :cond_a

    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    if-ne v4, v3, :cond_2

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    if-eqz v1, :cond_1

    neg-double v0, v2

    return-wide v0

    :cond_1
    return-wide v2

    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v10, v4

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-wide v12, v8

    :goto_1
    if-eqz v1, :cond_4

    const/16 v2, 0xb4

    if-ne v6, v2, :cond_4

    cmpl-double v2, v10, v8

    if-nez v2, :cond_4

    cmpl-double v2, v12, v8

    if-nez v2, :cond_4

    move v0, v3

    :cond_4
    int-to-double v2, v6

    cmpg-double v4, v2, v8

    if-ltz v4, :cond_9

    const/16 v4, 0xb3

    if-le v6, v4, :cond_5

    if-eqz v0, :cond_9

    :cond_5
    cmpg-double v0, v10, v8

    if-ltz v0, :cond_8

    const-wide v6, 0x404d800000000000L    # 59.0

    cmpl-double v0, v10, v6

    if-gtz v0, :cond_8

    cmpg-double v0, v12, v8

    if-ltz v0, :cond_7

    cmpl-double v0, v12, v6

    if-gtz v0, :cond_7

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v10, v6

    add-double/2addr v2, v10

    add-double/2addr v12, v2

    div-double/2addr v12, v4

    if-eqz v1, :cond_6

    neg-double v0, v12

    return-wide v0

    :cond_6
    return-wide v12

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "coordinate"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(DI)Ljava/lang/String;
    .registers 10

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_5

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "outputType="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-double p0, p0

    :cond_2
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eq p2, v0, :cond_3

    if-ne p2, v1, :cond_4

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v5, v0

    sub-double/2addr p0, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v5

    if-ne p2, v1, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v0, p2

    sub-double/2addr p0, v0

    mul-double/2addr p0, v5

    :cond_4
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coordinate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static distanceBetween(DDDD[F)V
    .registers 11

    if-eqz p8, :cond_0

    array-length v0, p8

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "results is null or has length < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .registers 12

    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v3, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v5, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLat1:D

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLon1:D

    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLat2:D

    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLon2:D

    iget-object p1, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, p0, Landroid/location/Location;->mDistance:F

    const/4 v1, 0x1

    aget p1, p1, v1

    iput p1, p0, Landroid/location/Location;->mInitialBearing:F

    :cond_1
    iget p1, p0, Landroid/location/Location;->mInitialBearing:F

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .registers 12

    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v3, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v5, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLat1:D

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLon1:D

    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLat2:D

    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLon2:D

    iget-object p1, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, p0, Landroid/location/Location;->mDistance:F

    const/4 v1, 0x1

    aget p1, p1, v1

    iput p1, p0, Landroid/location/Location;->mInitialBearing:F

    :cond_1
    iget p1, p0, Landroid/location/Location;->mDistance:F

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAccuracy()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/location/Location;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/location/Location;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public isComplete()Z
    .registers 5

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeComplete()V
    .registers 5

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return-void
.end method

.method public removeAltitude()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return-void
.end method

.method public removeBearing()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return-void
.end method

.method public removeSpeed()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTime:J

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/location/Location;->mHasAltitude:Z

    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    iput-boolean v3, p0, Landroid/location/Location;->mHasSpeed:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    iput-boolean v3, p0, Landroid/location/Location;->mHasBearing:Z

    iput v1, p0, Landroid/location/Location;->mBearing:F

    iput-boolean v3, p0, Landroid/location/Location;->mHasAccuracy:Z

    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public set(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-boolean v0, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    iget-boolean v0, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    iget-boolean v0, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    iget-boolean v0, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    iget v0, p1, Landroid/location/Location;->mAccuracy:F

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setAccuracy(F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return-void
.end method

.method public setAltitude(D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return-void
.end method

.method public setBearing(F)V
    .registers 4

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_1

    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, " %.6f,%.6f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Location;->mAccuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " acc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " acc=???"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v1, :cond_3

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v1, :cond_4

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v1, :cond_5

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean p2, p0, Landroid/location/Location;->mHasAltitude:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean p2, p0, Landroid/location/Location;->mHasSpeed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Landroid/location/Location;->mHasBearing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Landroid/location/Location;->mHasAccuracy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
