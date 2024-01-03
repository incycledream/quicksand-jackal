.class public Lcom/jhlabs/vecmath/Tuple4f;
.super Ljava/lang/Object;
.source "Tuple4f.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 38
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 39
    iput p3, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 40
    iput p4, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 45
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 46
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 47
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    const/4 v0, 0x1

    .line 31
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    const/4 v0, 0x2

    .line 32
    aget v1, p1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 33
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method


# virtual methods
.method public absolute()V
    .locals 1

    .line 51
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 52
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 53
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 54
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public absolute(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 58
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 59
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 60
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 61
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public add(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 2

    .line 148
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 149
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 150
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 151
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public add(Lcom/jhlabs/vecmath/Tuple4f;Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 2

    .line 155
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 156
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 157
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 158
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iget p2, p2, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public clamp(FF)V
    .locals 2

    .line 65
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 66
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 68
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 69
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_2

    .line 70
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    goto :goto_1

    :cond_2
    cmpl-float v0, v0, p2

    if-lez v0, :cond_3

    .line 72
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 73
    :cond_3
    :goto_1
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_4

    .line 74
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    goto :goto_2

    :cond_4
    cmpl-float v0, v0, p2

    if-lez v0, :cond_5

    .line 76
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 77
    :cond_5
    :goto_2
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_6

    .line 78
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    goto :goto_3

    :cond_6
    cmpl-float p1, v0, p2

    if-lez p1, :cond_7

    .line 80
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    :cond_7
    :goto_3
    return-void
.end method

.method public get(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 105
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 106
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 107
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 108
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public get([F)V
    .locals 2

    .line 112
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 113
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 114
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 115
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    const/4 v1, 0x3

    aput v0, p1, v1

    return-void
.end method

.method public interpolate(Lcom/jhlabs/vecmath/Tuple4f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 134
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    mul-float v1, v1, v0

    iget v2, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 135
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    mul-float v1, v1, v0

    iget v2, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 136
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    mul-float v1, v1, v0

    iget v2, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 137
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 119
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 120
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 121
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 122
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public negate(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 126
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 127
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 128
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 129
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    neg-float p1, p1

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public scale(F)V
    .locals 1

    .line 141
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 142
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 143
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 144
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public set(FFFF)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 85
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 86
    iput p3, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 87
    iput p4, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 98
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 99
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 100
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 101
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public set([F)V
    .locals 2

    const/4 v0, 0x0

    .line 91
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    const/4 v0, 0x1

    .line 92
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    const/4 v0, 0x2

    .line 93
    aget v1, p1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 94
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public sub(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 2

    .line 162
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 163
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 164
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 165
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public sub(Lcom/jhlabs/vecmath/Tuple4f;Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 2

    .line 169
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    .line 170
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    .line 171
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    .line 172
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iget p2, p2, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
