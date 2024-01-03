.class public Lcom/jhlabs/image/DitherFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "DitherFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final dither90Halftone6x6Matrix:[I

.field public static final ditherCluster3Matrix:[I

.field public static final ditherCluster4Matrix:[I

.field public static final ditherCluster8Matrix:[I

.field public static final ditherLines4x4Matrix:[I

.field protected static final ditherMagic2x2Matrix:[I

.field protected static final ditherMagic4x4Matrix:[I

.field public static final ditherOrdered4x4Matrix:[I

.field public static final ditherOrdered6x6Matrix:[I

.field public static final ditherOrdered8x8Matrix:[I

.field static final serialVersionUID:J = 0x216bf4abf36395e7L


# instance fields
.field public colorDither:Z

.field public cols:I

.field protected div:[I

.field private initialized:Z

.field public levels:I

.field protected map:[I

.field public matrix:[I

.field protected mod:[I

.field public rows:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/DitherFilter;->ditherMagic2x2Matrix:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 30
    fill-array-data v1, :array_1

    sput-object v1, Lcom/jhlabs/image/DitherFilter;->ditherMagic4x4Matrix:[I

    new-array v1, v0, [I

    .line 36
    fill-array-data v1, :array_2

    sput-object v1, Lcom/jhlabs/image/DitherFilter;->ditherOrdered4x4Matrix:[I

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_3

    sput-object v0, Lcom/jhlabs/image/DitherFilter;->ditherLines4x4Matrix:[I

    const/16 v0, 0x24

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_4

    sput-object v1, Lcom/jhlabs/image/DitherFilter;->dither90Halftone6x6Matrix:[I

    const/16 v1, 0x40

    new-array v2, v1, [I

    .line 63
    fill-array-data v2, :array_5

    sput-object v2, Lcom/jhlabs/image/DitherFilter;->ditherOrdered6x6Matrix:[I

    const/16 v2, 0x100

    new-array v3, v2, [I

    .line 75
    fill-array-data v3, :array_6

    sput-object v3, Lcom/jhlabs/image/DitherFilter;->ditherOrdered8x8Matrix:[I

    new-array v0, v0, [I

    .line 94
    fill-array-data v0, :array_7

    sput-object v0, Lcom/jhlabs/image/DitherFilter;->ditherCluster3Matrix:[I

    new-array v0, v1, [I

    .line 103
    fill-array-data v0, :array_8

    sput-object v0, Lcom/jhlabs/image/DitherFilter;->ditherCluster4Matrix:[I

    new-array v0, v2, [I

    .line 114
    fill-array-data v0, :array_9

    sput-object v0, Lcom/jhlabs/image/DitherFilter;->ditherCluster8Matrix:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xe
        0x3
        0xd
        0xb
        0x5
        0x8
        0x6
        0xc
        0x2
        0xf
        0x1
        0x7
        0x9
        0x4
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x8
        0x2
        0xa
        0xc
        0x4
        0xe
        0x6
        0x3
        0xb
        0x1
        0x9
        0xf
        0x7
        0xd
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_4
    .array-data 4
        0x1d
        0x12
        0xc
        0x13
        0x1e
        0x22
        0x11
        0x7
        0x4
        0x8
        0x14
        0x1c
        0xb
        0x3
        0x0
        0x1
        0x9
        0x1b
        0x10
        0x6
        0x2
        0x5
        0xd
        0x1a
        0x19
        0xf
        0xa
        0xe
        0x15
        0x1f
        0x21
        0x19
        0x18
        0x17
        0x21
        0x24
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3b
        0xf
        0x37
        0x2
        0x38
        0xc
        0x34
        0x21
        0x11
        0x2f
        0x1f
        0x22
        0x12
        0x2c
        0x1c
        0x9
        0x31
        0x5
        0x3f
        0xa
        0x32
        0x6
        0x3c
        0x29
        0x19
        0x25
        0x15
        0x2a
        0x1a
        0x26
        0x16
        0x3
        0x39
        0xd
        0x35
        0x0
        0x3a
        0xe
        0x36
        0x23
        0x13
        0x2d
        0x1d
        0x20
        0x10
        0x2e
        0x1e
        0xb
        0x33
        0x7
        0x3d
        0x8
        0x30
        0x4
        0x3e
        0x2b
        0x1b
        0x27
        0x17
        0x28
        0x18
        0x24
        0x14
    .end array-data

    :array_6
    .array-data 4
        0x1
        0xeb
        0x3b
        0xdb
        0xf
        0xe7
        0x37
        0xd7
        0x2
        0xe8
        0x38
        0xd8
        0xc
        0xe4
        0x34
        0xd4
        0x81
        0x41
        0xbb
        0x7b
        0x8f
        0x4f
        0xb7
        0x77
        0x82
        0x42
        0xb8
        0x78
        0x8c
        0x4c
        0xb4
        0x74
        0x21
        0xc1
        0x11
        0xfb
        0x2f
        0xcf
        0x1f
        0xf7
        0x22
        0xc2
        0x12
        0xf8
        0x2c
        0xcc
        0x1c
        0xf4
        0xa1
        0x61
        0x91
        0x51
        0xaf
        0x6f
        0x9f
        0x5f
        0xa2
        0x62
        0x92
        0x52
        0xac
        0x6c
        0x9c
        0x5c
        0x9
        0xe1
        0x31
        0xd1
        0x5
        0xef
        0x3f
        0xdf
        0xa
        0xe2
        0x32
        0xd2
        0x6
        0xec
        0x3c
        0xdc
        0x89
        0x49
        0xb1
        0x71
        0x85
        0x45
        0xbf
        0x7f
        0x8a
        0x4a
        0xb2
        0x72
        0x86
        0x46
        0xbc
        0x7c
        0x29
        0xc9
        0x19
        0xf1
        0x25
        0xc5
        0x15
        0xff
        0x2a
        0xca
        0x1a
        0xf2
        0x26
        0xc6
        0x16
        0xfc
        0xa9
        0x69
        0x99
        0x59
        0xa5
        0x65
        0x95
        0x55
        0xaa
        0x6a
        0x9a
        0x5a
        0xa6
        0x66
        0x96
        0x56
        0x3
        0xe9
        0x39
        0xd9
        0xd
        0xe5
        0x35
        0xd5
        0x0
        0xea
        0x3a
        0xda
        0xe
        0xe6
        0x36
        0xd6
        0x83
        0x43
        0xb9
        0x79
        0x8d
        0x4d
        0xb5
        0x75
        0x80
        0x40
        0xba
        0x7a
        0x8e
        0x4e
        0xb6
        0x76
        0x23
        0xc3
        0x13
        0xf9
        0x2d
        0xcd
        0x1d
        0xf5
        0x20
        0xc0
        0x10
        0xfa
        0x2e
        0xce
        0x1e
        0xf6
        0xa3
        0x63
        0x93
        0x53
        0xad
        0x6d
        0x9d
        0x5d
        0xa0
        0x60
        0x90
        0x50
        0xae
        0x6e
        0x9e
        0x5e
        0xb
        0xe3
        0x33
        0xd3
        0x7
        0xed
        0x3d
        0xdd
        0x8
        0xe0
        0x30
        0xd0
        0x4
        0xee
        0x3e
        0xde
        0x8b
        0x4b
        0xb3
        0x73
        0x87
        0x47
        0xbd
        0x7d
        0x88
        0x48
        0xb0
        0x70
        0x84
        0x44
        0xbe
        0x7e
        0x2b
        0xcb
        0x1b
        0xf3
        0x27
        0xc7
        0x17
        0xfd
        0x28
        0xc8
        0x18
        0xf0
        0x24
        0xc4
        0x14
        0xfe
        0xab
        0x6b
        0x9b
        0x5b
        0xa7
        0x67
        0x97
        0x57
        0xa8
        0x68
        0x98
        0x58
        0xa4
        0x64
        0x94
        0x54
    .end array-data

    :array_7
    .array-data 4
        0x9
        0xb
        0xa
        0x8
        0x6
        0x7
        0xc
        0x11
        0x10
        0x5
        0x0
        0x1
        0xd
        0xe
        0xf
        0x4
        0x3
        0x2
        0x8
        0x6
        0x7
        0x9
        0xb
        0xa
        0x5
        0x0
        0x1
        0xc
        0x11
        0x10
        0x4
        0x3
        0x2
        0xd
        0xe
        0xf
    .end array-data

    :array_8
    .array-data 4
        0x12
        0x14
        0x13
        0x10
        0xd
        0xb
        0xc
        0xf
        0x1b
        0x1c
        0x1d
        0x16
        0x4
        0x3
        0x2
        0x9
        0x1a
        0x1f
        0x1e
        0x15
        0x5
        0x0
        0x1
        0xa
        0x17
        0x19
        0x18
        0x11
        0x8
        0x6
        0x7
        0xe
        0xd
        0xb
        0xc
        0xf
        0x12
        0x14
        0x13
        0x10
        0x4
        0x3
        0x2
        0x9
        0x1b
        0x1c
        0x1d
        0x16
        0x5
        0x0
        0x1
        0xa
        0x1a
        0x1f
        0x1e
        0x15
        0x8
        0x6
        0x7
        0xe
        0x17
        0x19
        0x18
        0x11
    .end array-data

    :array_9
    .array-data 4
        0x40
        0x45
        0x4d
        0x57
        0x56
        0x4c
        0x44
        0x43
        0x3f
        0x3a
        0x32
        0x28
        0x29
        0x33
        0x3b
        0x3c
        0x46
        0x5e
        0x64
        0x6d
        0x6c
        0x63
        0x5d
        0x4b
        0x39
        0x21
        0x1b
        0x12
        0x13
        0x1c
        0x22
        0x34
        0x4e
        0x65
        0x72
        0x74
        0x73
        0x70
        0x62
        0x53
        0x31
        0x1a
        0xd
        0xb
        0xc
        0xf
        0x1d
        0x2c
        0x58
        0x6e
        0x7b
        0x7c
        0x7d
        0x76
        0x6b
        0x55
        0x27
        0x11
        0x4
        0x3
        0x2
        0x9
        0x14
        0x2a
        0x59
        0x6f
        0x7a
        0x7f
        0x7e
        0x75
        0x6a
        0x54
        0x26
        0x10
        0x5
        0x0
        0x1
        0xa
        0x15
        0x2b
        0x4f
        0x66
        0x77
        0x79
        0x78
        0x71
        0x61
        0x52
        0x30
        0x19
        0x8
        0x6
        0x7
        0xe
        0x1e
        0x2d
        0x47
        0x5f
        0x67
        0x68
        0x69
        0x60
        0x5c
        0x4a
        0x38
        0x20
        0x18
        0x17
        0x16
        0x1f
        0x23
        0x35
        0x41
        0x48
        0x50
        0x5a
        0x5b
        0x51
        0x49
        0x42
        0x3e
        0x37
        0x2f
        0x25
        0x24
        0x2e
        0x36
        0x3d
        0x3f
        0x3a
        0x32
        0x28
        0x29
        0x33
        0x3b
        0x3c
        0x40
        0x45
        0x4d
        0x57
        0x56
        0x4c
        0x44
        0x43
        0x39
        0x21
        0x1b
        0x12
        0x13
        0x1c
        0x22
        0x34
        0x46
        0x5e
        0x64
        0x6d
        0x6c
        0x63
        0x5d
        0x4b
        0x31
        0x1a
        0xd
        0xb
        0xc
        0xf
        0x1d
        0x2c
        0x4e
        0x65
        0x72
        0x74
        0x73
        0x70
        0x62
        0x53
        0x27
        0x11
        0x4
        0x3
        0x2
        0x9
        0x14
        0x2a
        0x58
        0x6e
        0x7b
        0x7c
        0x7d
        0x76
        0x6b
        0x55
        0x26
        0x10
        0x5
        0x0
        0x1
        0xa
        0x15
        0x2b
        0x59
        0x6f
        0x7a
        0x7f
        0x7e
        0x75
        0x6a
        0x54
        0x30
        0x19
        0x8
        0x6
        0x7
        0xe
        0x1e
        0x2d
        0x4f
        0x66
        0x77
        0x79
        0x78
        0x71
        0x61
        0x52
        0x38
        0x20
        0x18
        0x17
        0x16
        0x1f
        0x23
        0x35
        0x47
        0x5f
        0x67
        0x68
        0x69
        0x60
        0x5c
        0x4a
        0x3e
        0x37
        0x2f
        0x25
        0x24
        0x2e
        0x36
        0x3d
        0x41
        0x48
        0x50
        0x5a
        0x5b
        0x51
        0x49
        0x42
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/jhlabs/image/DitherFilter;->initialized:Z

    const/4 v0, 0x2

    .line 141
    iput v0, p0, Lcom/jhlabs/image/DitherFilter;->rows:I

    .line 142
    iput v0, p0, Lcom/jhlabs/image/DitherFilter;->cols:I

    .line 143
    sget-object v0, Lcom/jhlabs/image/DitherFilter;->ditherMagic4x4Matrix:[I

    iput-object v0, p0, Lcom/jhlabs/image/DitherFilter;->matrix:[I

    const/4 v0, 0x6

    .line 144
    iput v0, p0, Lcom/jhlabs/image/DitherFilter;->levels:I

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/jhlabs/image/DitherFilter;->colorDither:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 6

    .line 181
    iget-boolean v0, p0, Lcom/jhlabs/image/DitherFilter;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 182
    iput-boolean v1, p0, Lcom/jhlabs/image/DitherFilter;->initialized:Z

    .line 183
    invoke-virtual {p0}, Lcom/jhlabs/image/DitherFilter;->initialize()V

    :cond_0
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    shr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 189
    iget v4, p0, Lcom/jhlabs/image/DitherFilter;->cols:I

    rem-int/2addr p1, v4

    .line 190
    iget v5, p0, Lcom/jhlabs/image/DitherFilter;->rows:I

    rem-int/2addr p2, v5

    .line 191
    iget-object v5, p0, Lcom/jhlabs/image/DitherFilter;->matrix:[I

    mul-int p2, p2, v4

    add-int/2addr p2, p1

    aget p1, v5, p2

    .line 192
    iget-boolean p2, p0, Lcom/jhlabs/image/DitherFilter;->colorDither:Z

    if-eqz p2, :cond_4

    .line 193
    iget-object p2, p0, Lcom/jhlabs/image/DitherFilter;->map:[I

    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->mod:[I

    aget v4, v4, v2

    if-le v4, p1, :cond_1

    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget v2, v4, v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget v2, v4, v2

    :goto_0
    aget p2, p2, v2

    .line 194
    iget-object v2, p0, Lcom/jhlabs/image/DitherFilter;->map:[I

    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->mod:[I

    aget v4, v4, v3

    if-le v4, p1, :cond_2

    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget v3, v4, v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget v3, v4, v3

    :goto_1
    aget v2, v2, v3

    .line 195
    iget-object v3, p0, Lcom/jhlabs/image/DitherFilter;->map:[I

    iget-object v4, p0, Lcom/jhlabs/image/DitherFilter;->mod:[I

    aget v4, v4, p3

    if-le v4, p1, :cond_3

    iget-object p1, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget p1, p1, p3

    add-int/2addr p1, v1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget p1, p1, p3

    :goto_2
    aget p1, v3, p1

    goto :goto_4

    :cond_4
    add-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 197
    div-int/lit8 v2, v2, 0x3

    .line 198
    iget-object p2, p0, Lcom/jhlabs/image/DitherFilter;->map:[I

    iget-object p3, p0, Lcom/jhlabs/image/DitherFilter;->mod:[I

    aget p3, p3, v2

    if-le p3, p1, :cond_5

    iget-object p1, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget p1, p1, v2

    add-int/2addr p1, v1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    aget p1, p1, v2

    :goto_3
    aget p2, p2, p1

    move p1, p2

    move v2, p1

    :goto_4
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 p3, v2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getLevels()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/jhlabs/image/DitherFilter;->levels:I

    return v0
.end method

.method public getMatrix()[I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/jhlabs/image/DitherFilter;->matrix:[I

    return-object v0
.end method

.method protected initialize()V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/jhlabs/image/DitherFilter;->matrix:[I

    array-length v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/jhlabs/image/DitherFilter;->cols:I

    iput v0, p0, Lcom/jhlabs/image/DitherFilter;->rows:I

    .line 166
    iget v0, p0, Lcom/jhlabs/image/DitherFilter;->levels:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jhlabs/image/DitherFilter;->map:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    :goto_0
    iget v2, p0, Lcom/jhlabs/image/DitherFilter;->levels:I

    if-ge v1, v2, :cond_0

    mul-int/lit16 v3, v1, 0xff

    add-int/lit8 v2, v2, -0x1

    .line 168
    div-int/2addr v3, v2

    .line 169
    iget-object v2, p0, Lcom/jhlabs/image/DitherFilter;->map:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    new-array v2, v1, [I

    .line 171
    iput-object v2, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    new-array v2, v1, [I

    .line 172
    iput-object v2, p0, Lcom/jhlabs/image/DitherFilter;->mod:[I

    .line 173
    iget v2, p0, Lcom/jhlabs/image/DitherFilter;->rows:I

    iget v3, p0, Lcom/jhlabs/image/DitherFilter;->cols:I

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 175
    iget-object v3, p0, Lcom/jhlabs/image/DitherFilter;->div:[I

    iget v4, p0, Lcom/jhlabs/image/DitherFilter;->levels:I

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v0

    div-int/2addr v4, v1

    aput v4, v3, v0

    .line 176
    iget-object v3, p0, Lcom/jhlabs/image/DitherFilter;->mod:[I

    mul-int v4, v0, v2

    div-int/2addr v4, v1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setLevels(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/jhlabs/image/DitherFilter;->levels:I

    return-void
.end method

.method public setMatrix([I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/jhlabs/image/DitherFilter;->matrix:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Dither..."

    return-object v0
.end method
