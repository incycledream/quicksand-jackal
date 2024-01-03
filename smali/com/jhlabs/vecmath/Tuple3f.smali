.class public Lcom/jhlabs/vecmath/Tuple3f;
.super Ljava/lang/Object;
.source "Tuple3f.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0, v0}, Lcom/jhlabs/vecmath/Tuple3f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 37
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 38
    iput p3, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 43
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 44
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    const/4 v0, 0x1

    .line 31
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    const/4 v0, 0x2

    .line 32
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method


# virtual methods
.method public absolute()V
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 49
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 50
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public absolute(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 1

    .line 54
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 55
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 56
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public add(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 2

    .line 130
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 131
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 132
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public add(Lcom/jhlabs/vecmath/Tuple3f;Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 2

    .line 136
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 137
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 138
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iget p2, p2, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public clamp(FF)V
    .locals 2

    .line 60
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 61
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 63
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 64
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_2

    .line 65
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    goto :goto_1

    :cond_2
    cmpl-float v0, v0, p2

    if-lez v0, :cond_3

    .line 67
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 68
    :cond_3
    :goto_1
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_4

    .line 69
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    goto :goto_2

    :cond_4
    cmpl-float p1, v0, p2

    if-lez p1, :cond_5

    .line 71
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    :cond_5
    :goto_2
    return-void
.end method

.method public get(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 94
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 95
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iput v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public get([F)V
    .locals 2

    .line 99
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 100
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 101
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    const/4 v1, 0x2

    aput v0, p1, v1

    return-void
.end method

.method public interpolate(Lcom/jhlabs/vecmath/Tuple3f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 118
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    mul-float v1, v1, v0

    iget v2, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 119
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    mul-float v1, v1, v0

    iget v2, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 120
    iget v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public negate()V
    .locals 1

    .line 105
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 106
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 107
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public negate(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 1

    .line 111
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 112
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 113
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    neg-float p1, p1

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public scale(F)V
    .locals 1

    .line 124
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 125
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 126
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public scaleAdd(FLcom/jhlabs/vecmath/Tuple3f;)V
    .locals 2

    .line 154
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 155
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 156
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iget p2, p2, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public scaleAdd(FLcom/jhlabs/vecmath/Tuple3f;Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 2

    .line 160
    iget v0, p2, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    mul-float v0, v0, p1

    iget v1, p3, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 161
    iget v0, p2, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    mul-float v0, v0, p1

    iget v1, p3, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 162
    iget p2, p2, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    mul-float p1, p1, p2

    iget p2, p3, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public set(FFF)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 76
    iput p2, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 77
    iput p3, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 1

    .line 87
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 88
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 89
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    const/4 v0, 0x1

    .line 82
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    const/4 v0, 0x2

    .line 83
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public sub(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 2

    .line 142
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 143
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iget v1, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 144
    iget v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public sub(Lcom/jhlabs/vecmath/Tuple3f;Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 2

    .line 148
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    .line 149
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iget v1, p2, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    .line 150
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iget p2, p2, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
