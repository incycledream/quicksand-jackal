.class public Lcom/jhlabs/image/SkyFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "SkyFilter.java"


# static fields
.field private static final r255:F = 0.003921569f


# instance fields
.field private H:F

.field private amount:F

.field private angle:F

.field private basis:Lcom/jhlabs/math/Function2D;

.field private bias:F

.field private cameraAzimuth:F

.field private cameraElevation:F

.field private cloudCover:F

.field private cloudSharpness:F

.field private exponents:[F

.field private fBm:Lcom/jhlabs/math/FBM;

.field private fov:F

.field private gain:F

.field private glow:F

.field private glowFalloff:F

.field private haziness:F

.field private height:F

.field private lacunarity:F

.field private max:F

.field private min:F

.field mn:F

.field mx:F

.field private octaves:F

.field private operation:I

.field protected random:Ljava/util/Random;

.field private ridged:Z

.field private scale:F

.field private skyColors:Ljava/awt/image/BufferedImage;

.field private skyPixels:[I

.field private stretch:F

.field private sunAzimuth:F

.field private sunB:F

.field private sunColor:I

.field private sunElevation:F

.field private sunG:F

.field private sunR:F

.field private sunRadius:F

.field private t:F

.field private tan:[F

.field private time:F

.field private width:F

.field private windSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->stretch:F

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/jhlabs/image/SkyFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->amount:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->H:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 31
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->octaves:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->lacunarity:F

    .line 33
    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->gain:F

    const v2, 0x3f19999a    # 0.6f

    .line 34
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->bias:F

    .line 40
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/jhlabs/image/SkyFilter;->random:Ljava/util/Random;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 43
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->cloudCover:F

    .line 44
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->cloudSharpness:F

    const v3, 0x3e99999a    # 0.3f

    .line 45
    iput v3, p0, Lcom/jhlabs/image/SkyFilter;->time:F

    .line 46
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->glow:F

    .line 47
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->glowFalloff:F

    const v3, 0x3f75c28f    # 0.96f

    .line 48
    iput v3, p0, Lcom/jhlabs/image/SkyFilter;->haziness:F

    .line 49
    iput v1, p0, Lcom/jhlabs/image/SkyFilter;->t:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 50
    iput v3, p0, Lcom/jhlabs/image/SkyFilter;->sunRadius:F

    const/4 v3, -0x1

    .line 51
    iput v3, p0, Lcom/jhlabs/image/SkyFilter;->sunColor:I

    .line 53
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->sunAzimuth:F

    .line 54
    iput v2, p0, Lcom/jhlabs/image/SkyFilter;->sunElevation:F

    .line 55
    iput v1, p0, Lcom/jhlabs/image/SkyFilter;->windSpeed:F

    .line 57
    iput v1, p0, Lcom/jhlabs/image/SkyFilter;->cameraAzimuth:F

    .line 58
    iput v1, p0, Lcom/jhlabs/image/SkyFilter;->cameraElevation:F

    .line 59
    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->fov:F

    .line 71
    iget-object v0, p0, Lcom/jhlabs/image/SkyFilter;->skyColors:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SkyColors.png"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Toolkit;->getImage(Ljava/net/URL;)Ljava/awt/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Image;->getSource()Ljava/awt/image/ImageProducer;

    move-result-object v0

    invoke-static {v0}, Lcom/jhlabs/image/ImageUtils;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/jhlabs/image/SkyFilter;->skyColors:Ljava/awt/image/BufferedImage;

    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 5

    const v0, 0x43b98000    # 371.0f

    add-float/2addr p1, v0

    const v0, 0x44044000    # 529.0f

    add-float/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    move p2, p1

    const/4 p1, 0x0

    .line 324
    :goto_0
    iget v3, p0, Lcom/jhlabs/image/SkyFilter;->octaves:F

    float-to-int v4, v3

    if-ge v1, v4, :cond_0

    .line 325
    iget v3, p0, Lcom/jhlabs/image/SkyFilter;->t:F

    invoke-static {p2, v2, v3}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/jhlabs/image/SkyFilter;->exponents:[F

    aget v4, v4, v1

    mul-float v3, v3, v4

    add-float/2addr p1, v3

    .line 326
    iget v3, p0, Lcom/jhlabs/image/SkyFilter;->lacunarity:F

    mul-float p2, p2, v3

    mul-float v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-int v4, v3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    .line 332
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->t:F

    invoke-static {p2, v2, v0}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result p2

    mul-float v3, v3, p2

    iget-object p2, p0, Lcom/jhlabs/image/SkyFilter;->exponents:[F

    aget p2, p2, v1

    mul-float v3, v3, p2

    add-float/2addr p1, v3

    :cond_1
    return p1
.end method

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 18

    move-object/from16 v0, p0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 271
    iget v3, v0, Lcom/jhlabs/image/SkyFilter;->sunColor:I

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const v5, 0x3b808081

    mul-float v4, v4, v5

    iput v4, v0, Lcom/jhlabs/image/SkyFilter;->sunR:F

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float v4, v4, v5

    .line 272
    iput v4, v0, Lcom/jhlabs/image/SkyFilter;->sunG:F

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, v5

    .line 273
    iput v3, v0, Lcom/jhlabs/image/SkyFilter;->sunB:F

    const v3, 0x461c4000    # 10000.0f

    .line 275
    iput v3, v0, Lcom/jhlabs/image/SkyFilter;->mn:F

    const v3, -0x39e3c000    # -10000.0f

    .line 276
    iput v3, v0, Lcom/jhlabs/image/SkyFilter;->mx:F

    .line 277
    iget v3, v0, Lcom/jhlabs/image/SkyFilter;->octaves:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/jhlabs/image/SkyFilter;->exponents:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 279
    :goto_0
    iget v5, v0, Lcom/jhlabs/image/SkyFilter;->octaves:F

    float-to-int v5, v5

    if-gt v4, v5, :cond_0

    .line 280
    iget-object v5, v0, Lcom/jhlabs/image/SkyFilter;->exponents:[F

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    neg-int v8, v4

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v4

    .line 281
    iget v5, v0, Lcom/jhlabs/image/SkyFilter;->lacunarity:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v4, -0x40800000    # -1.0f

    .line 284
    iput v4, v0, Lcom/jhlabs/image/SkyFilter;->min:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 285
    iput v4, v0, Lcom/jhlabs/image/SkyFilter;->max:F

    .line 290
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcom/jhlabs/image/SkyFilter;->width:F

    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcom/jhlabs/image/SkyFilter;->height:F

    .line 293
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    .line 294
    new-array v5, v4, [F

    iput-object v5, v0, Lcom/jhlabs/image/SkyFilter;->tan:[F

    :goto_1
    if-ge v3, v4, :cond_1

    .line 296
    iget-object v5, v0, Lcom/jhlabs/image/SkyFilter;->tan:[F

    iget v6, v0, Lcom/jhlabs/image/SkyFilter;->fov:F

    int-to-float v7, v3

    mul-float v6, v6, v7

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    if-nez p2, :cond_2

    move-object/from16 v4, p1

    .line 299
    invoke-virtual {v0, v4, v3}, Lcom/jhlabs/image/SkyFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p2

    :goto_2
    const/high16 v5, 0x427c0000    # 63.0f

    .line 300
    iget v6, v0, Lcom/jhlabs/image/SkyFilter;->time:F

    mul-float v6, v6, v5

    float-to-int v13, v6

    .line 302
    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v5

    .line 303
    iget-object v8, v0, Lcom/jhlabs/image/SkyFilter;->skyColors:Ljava/awt/image/BufferedImage;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    add-int/lit8 v15, v13, 0x1

    const/16 v16, 0x40

    const/16 v17, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v17}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    .line 304
    invoke-virtual {v5}, Ljava/awt/Graphics2D;->dispose()V

    .line 305
    invoke-super {v0, v4, v4}, Lcom/jhlabs/image/PointFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 309
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/jhlabs/image/SkyFilter;->mn:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/jhlabs/image/SkyFilter;->mx:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v1

    long-to-float v1, v5

    const v2, 0x3a83126f    # 0.001f

    mul-float v1, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    iput-object v3, v0, Lcom/jhlabs/image/SkyFilter;->exponents:[F

    .line 311
    iput-object v3, v0, Lcom/jhlabs/image/SkyFilter;->tan:[F

    return-object v4
.end method

.method public filterRGB(III)I
    .locals 10

    int-to-float p1, p1

    .line 340
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->width:F

    div-float v0, p1, v0

    int-to-float v1, p2

    .line 342
    iget v2, p0, Lcom/jhlabs/image/SkyFilter;->height:F

    div-float v2, v1, v2

    .line 343
    iget v3, p0, Lcom/jhlabs/image/SkyFilter;->haziness:F

    float-to-double v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v2

    mul-float v5, v5, v2

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const v4, 0x3b808081

    mul-float v3, v3, v4

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float v5, v5, v4

    and-int/lit16 p3, p3, 0xff

    int-to-float p3, p3

    mul-float p3, p3, v4

    .line 349
    iget v4, p0, Lcom/jhlabs/image/SkyFilter;->width:F

    .line 354
    iget-object v4, p0, Lcom/jhlabs/image/SkyFilter;->tan:[F

    aget p2, v4, p2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v6, p2, v4

    mul-float v0, v0, v6

    .line 356
    iget v6, p0, Lcom/jhlabs/image/SkyFilter;->t:F

    iget v7, p0, Lcom/jhlabs/image/SkyFilter;->windSpeed:F

    mul-float v6, v6, v7

    add-float/2addr p2, v6

    .line 359
    iget v6, p0, Lcom/jhlabs/image/SkyFilter;->scale:F

    div-float/2addr v0, v6

    .line 360
    iget v7, p0, Lcom/jhlabs/image/SkyFilter;->stretch:F

    mul-float v6, v6, v7

    div-float/2addr p2, v6

    .line 361
    invoke-virtual {p0, v0, p2}, Lcom/jhlabs/image/SkyFilter;->evaluate(FF)F

    move-result p2

    const v0, 0x3f9d70a4    # 1.23f

    add-float/2addr p2, v0

    const v0, 0x401d70a4    # 2.46f

    div-float/2addr p2, v0

    .line 373
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->cloudCover:F

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v6, p2, v0

    if-gez v6, :cond_0

    const/4 p2, 0x0

    .line 377
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->cloudSharpness:F

    float-to-double v6, v0

    float-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p2, v6

    sub-float p2, v4, p2

    .line 381
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->mn:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->mn:F

    .line 382
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->mx:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/SkyFilter;->mx:F

    .line 385
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->width:F

    iget v6, p0, Lcom/jhlabs/image/SkyFilter;->sunAzimuth:F

    mul-float v0, v0, v6

    .line 386
    iget v6, p0, Lcom/jhlabs/image/SkyFilter;->height:F

    iget v7, p0, Lcom/jhlabs/image/SkyFilter;->sunElevation:F

    mul-float v6, v6, v7

    sub-float/2addr p1, v0

    sub-float/2addr v1, v6

    mul-float p1, p1, p1

    mul-float v1, v1, v1

    add-float/2addr p1, v1

    float-to-double v0, p1

    .line 392
    iget p1, p0, Lcom/jhlabs/image/SkyFilter;->glowFalloff:F

    float-to-double v6, p1

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    neg-float p1, p1

    .line 393
    iget v1, p0, Lcom/jhlabs/image/SkyFilter;->glow:F

    mul-float p1, p1, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v0

    .line 397
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->sunR:F

    mul-float v1, p1, v0

    add-float/2addr v3, v1

    .line 398
    iget v1, p0, Lcom/jhlabs/image/SkyFilter;->sunG:F

    mul-float v6, p1, v1

    add-float/2addr v5, v6

    .line 399
    iget v6, p0, Lcom/jhlabs/image/SkyFilter;->sunB:F

    mul-float p1, p1, v6

    add-float/2addr p3, p1

    mul-float p1, p2, p2

    mul-float p1, p1, p2

    mul-float p1, p1, p2

    sub-float p1, v4, p1

    .line 421
    iget v7, p0, Lcom/jhlabs/image/SkyFilter;->amount:F

    mul-float p1, p1, v7

    mul-float v0, v0, p1

    mul-float v1, v1, p1

    mul-float v6, v6, p1

    mul-float p2, p2, v2

    sub-float p1, v4, p2

    mul-float v3, v3, p1

    mul-float v0, v0, p2

    add-float/2addr v3, v0

    mul-float v5, v5, p1

    mul-float v1, v1, p2

    add-float/2addr v5, v1

    mul-float p1, p1, p3

    mul-float p2, p2, v6

    add-float/2addr p1, p2

    .line 436
    iget p2, p0, Lcom/jhlabs/image/SkyFilter;->gain:F

    neg-float p3, v3

    mul-float p3, p3, p2

    float-to-double v0, p3

    .line 437
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p3, v0

    sub-float p3, v4, p3

    neg-float v0, v5

    mul-float v0, v0, p2

    float-to-double v0, v0

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v4, v0

    neg-float p1, p1

    mul-float p1, p1, p2

    float-to-double p1, p1

    .line 439
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr v4, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p3, p3, p1

    float-to-int p2, p3

    shl-int/lit8 p2, p2, 0x10

    mul-float v0, v0, p1

    float-to-int p3, v0

    shl-int/lit8 p3, p3, 0x8

    mul-float v4, v4, p1

    float-to-int p1, v4

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getAmount()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->angle:F

    return v0
.end method

.method public getBias()F
    .locals 1

    .line 209
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->bias:F

    return v0
.end method

.method public getCameraAzimuth()F
    .locals 1

    .line 257
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->cameraAzimuth:F

    return v0
.end method

.method public getCameraElevation()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->cameraElevation:F

    return v0
.end method

.method public getCloudCover()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->cloudCover:F

    return v0
.end method

.method public getCloudSharpness()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->cloudSharpness:F

    return v0
.end method

.method public getFOV()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->fov:F

    return v0
.end method

.method public getGain()F
    .locals 1

    .line 201
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->gain:F

    return v0
.end method

.method public getGlow()F
    .locals 1

    .line 153
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->glow:F

    return v0
.end method

.method public getGlowFalloff()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->glowFalloff:F

    return v0
.end method

.method public getH()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->H:F

    return v0
.end method

.method public getHaziness()F
    .locals 1

    .line 217
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->haziness:F

    return v0
.end method

.method public getLacunarity()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->lacunarity:F

    return v0
.end method

.method public getOctaves()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->octaves:F

    return v0
.end method

.method public getOperation()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->operation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->stretch:F

    return v0
.end method

.method public getSunAzimuth()F
    .locals 1

    .line 233
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->sunAzimuth:F

    return v0
.end method

.method public getSunColor()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->sunColor:I

    return v0
.end method

.method public getSunElevation()F
    .locals 1

    .line 225
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->sunElevation:F

    return v0
.end method

.method public getT()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->t:F

    return v0
.end method

.method public getTime()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->time:F

    return v0
.end method

.method public getWindSpeed()F
    .locals 1

    .line 265
    iget v0, p0, Lcom/jhlabs/image/SkyFilter;->windSpeed:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->amount:F

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->angle:F

    return-void
.end method

.method public setBias(F)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->bias:F

    return-void
.end method

.method public setCameraAzimuth(F)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->cameraAzimuth:F

    return-void
.end method

.method public setCameraElevation(F)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->cameraElevation:F

    return-void
.end method

.method public setCloudCover(F)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->cloudCover:F

    return-void
.end method

.method public setCloudSharpness(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->cloudSharpness:F

    return-void
.end method

.method public setFOV(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->fov:F

    return-void
.end method

.method public setGain(F)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->gain:F

    return-void
.end method

.method public setGlow(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->glow:F

    return-void
.end method

.method public setGlowFalloff(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->glowFalloff:F

    return-void
.end method

.method public setH(F)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->H:F

    return-void
.end method

.method public setHaziness(F)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->haziness:F

    return-void
.end method

.method public setLacunarity(F)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->lacunarity:F

    return-void
.end method

.method public setOctaves(F)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->octaves:F

    return-void
.end method

.method public setOperation(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->operation:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->stretch:F

    return-void
.end method

.method public setSunAzimuth(F)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->sunAzimuth:F

    return-void
.end method

.method public setSunColor(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->sunColor:I

    return-void
.end method

.method public setSunElevation(F)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->sunElevation:F

    return-void
.end method

.method public setT(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->t:F

    return-void
.end method

.method public setTime(F)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->time:F

    return-void
.end method

.method public setWindSpeed(F)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/jhlabs/image/SkyFilter;->windSpeed:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Sky..."

    return-object v0
.end method
