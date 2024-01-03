.class public Lcom/jhlabs/image/Histogram;
.super Ljava/lang/Object;
.source "Histogram.java"


# static fields
.field public static final BLUE:I = 0x2

.field public static final GRAY:I = 0x3

.field public static final GREEN:I = 0x1

.field public static final RED:I


# instance fields
.field protected histogram:[[I

.field protected isGray:Z

.field protected maxFrequency:[I

.field protected maxValue:[I

.field protected mean:[F

.field protected minFrequency:[I

.field protected minValue:[I

.field protected numSamples:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    move-object v1, v0

    check-cast v1, [[I

    iput-object v1, p0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    .line 45
    iput-object v0, p0, Lcom/jhlabs/image/Histogram;->minValue:[I

    .line 46
    iput-object v0, p0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    .line 47
    iput-object v0, p0, Lcom/jhlabs/image/Histogram;->minFrequency:[I

    .line 48
    iput-object v0, p0, Lcom/jhlabs/image/Histogram;->maxFrequency:[I

    .line 49
    iput-object v0, p0, Lcom/jhlabs/image/Histogram;->mean:[F

    return-void
.end method

.method public constructor <init>([IIIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x100

    const/4 v4, 0x3

    .line 53
    filled-new-array {v4, v3}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 54
    iput-object v6, v0, Lcom/jhlabs/image/Histogram;->minValue:[I

    new-array v5, v5, [I

    .line 55
    iput-object v5, v0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    new-array v5, v4, [I

    .line 56
    iput-object v5, v0, Lcom/jhlabs/image/Histogram;->minFrequency:[I

    new-array v5, v4, [I

    .line 57
    iput-object v5, v0, Lcom/jhlabs/image/Histogram;->maxFrequency:[I

    new-array v5, v4, [F

    .line 58
    iput-object v5, v0, Lcom/jhlabs/image/Histogram;->mean:[F

    mul-int v5, v1, v2

    .line 60
    iput v5, v0, Lcom/jhlabs/image/Histogram;->numSamples:I

    const/4 v5, 0x1

    .line 61
    iput-boolean v5, v0, Lcom/jhlabs/image/Histogram;->isGray:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    const/16 v9, 0xff

    if-ge v7, v2, :cond_1

    mul-int v10, v7, p5

    add-int v10, p4, v10

    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v1, :cond_0

    add-int/lit8 v12, v11, 0x1

    .line 67
    aget v11, p1, v11

    shr-int/lit8 v13, v11, 0x10

    and-int/2addr v13, v9

    shr-int/lit8 v14, v11, 0x8

    and-int/2addr v14, v9

    and-int/2addr v11, v9

    .line 71
    iget-object v15, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v16, v15, v6

    aget v17, v16, v13

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v13

    .line 72
    aget-object v13, v15, v5

    aget v16, v13, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v13, v14

    .line 73
    aget-object v13, v15, v8

    aget v14, v13, v11

    add-int/2addr v14, v5

    aput v14, v13, v11

    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 78
    iget-object v2, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v7, v2, v6

    aget v7, v7, v1

    aget-object v10, v2, v5

    aget v10, v10, v1

    if-ne v7, v10, :cond_3

    aget-object v7, v2, v5

    aget v7, v7, v1

    aget-object v2, v2, v8

    aget v2, v2, v1

    if-eq v7, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    :cond_3
    :goto_3
    iput-boolean v6, v0, Lcom/jhlabs/image/Histogram;->isGray:Z

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_a

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_6

    .line 86
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v7, v7, v1

    aget v7, v7, v2

    if-lez v7, :cond_5

    .line 87
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->minValue:[I

    aput v2, v7, v1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    const/16 v2, 0xff

    :goto_7
    if-ltz v2, :cond_8

    .line 93
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v7, v7, v1

    aget v7, v7, v2

    if-lez v7, :cond_7

    .line 94
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    aput v2, v7, v1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 99
    :cond_8
    :goto_8
    iget-object v2, v0, Lcom/jhlabs/image/Histogram;->minFrequency:[I

    const v7, 0x7fffffff

    aput v7, v2, v1

    .line 100
    iget-object v2, v0, Lcom/jhlabs/image/Histogram;->maxFrequency:[I

    aput v6, v2, v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_9

    .line 102
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->minFrequency:[I

    aget v10, v7, v1

    iget-object v11, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v11, v11, v1

    aget v11, v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v7, v1

    .line 103
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->maxFrequency:[I

    aget v10, v7, v1

    iget-object v11, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v11, v11, v1

    aget v11, v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v7, v1

    .line 104
    iget-object v7, v0, Lcom/jhlabs/image/Histogram;->mean:[F

    aget v10, v7, v1

    iget-object v11, v0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object v11, v11, v1

    aget v11, v11, v2

    mul-int v11, v11, v2

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v7, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 106
    :cond_9
    iget-object v2, v0, Lcom/jhlabs/image/Histogram;->mean:[F

    aget v7, v2, v1

    iget v10, v0, Lcom/jhlabs/image/Histogram;->numSamples:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    aput v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 108
    :cond_a
    iget-object v1, v0, Lcom/jhlabs/image/Histogram;->minValue:[I

    aget v2, v1, v6

    aget v3, v1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/jhlabs/image/Histogram;->minValue:[I

    aget v3, v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v1, v4

    .line 109
    iget-object v1, v0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    aget v2, v1, v6

    aget v3, v1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    aget v3, v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v4

    return-void
.end method


# virtual methods
.method public getFrequency(I)I
    .locals 2

    .line 121
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getFrequency(II)I
    .locals 2

    .line 127
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->histogram:[[I

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getMaxFrequency()I
    .locals 2

    .line 147
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->maxFrequency:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxFrequency(I)I
    .locals 2

    .line 153
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->maxFrequency:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getMaxValue()I
    .locals 2

    .line 170
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxValue(I)I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->maxValue:[I

    aget p1, v0, p1

    return p1
.end method

.method public getMeanValue()F
    .locals 2

    .line 180
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->mean:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getMeanValue(I)F
    .locals 1

    .line 186
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->mean:[F

    aget p1, v0, p1

    return p1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getMinFrequency()I
    .locals 2

    .line 134
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->minFrequency:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMinFrequency(I)I
    .locals 2

    .line 140
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->minFrequency:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getMinValue()I
    .locals 2

    .line 160
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->minValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMinValue(I)I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/jhlabs/image/Histogram;->minValue:[I

    aget p1, v0, p1

    return p1
.end method

.method public getNumSamples()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/jhlabs/image/Histogram;->numSamples:I

    return v0
.end method

.method public isGray()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/jhlabs/image/Histogram;->isGray:Z

    return v0
.end method
