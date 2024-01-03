.class public Lcom/jhlabs/vecmath/AxisAngle4f;
.super Ljava/lang/Object;
.source "AxisAngle4f.java"


# instance fields
.field public angle:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/jhlabs/vecmath/AxisAngle4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    .line 38
    iput p2, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    .line 39
    iput p3, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 40
    iput p4, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/AxisAngle4f;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    .line 45
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    .line 46
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 47
    iget p1, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    iput p1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Vector3f;F)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    .line 52
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    .line 53
    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iput p1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 54
    iput p2, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    const/4 v0, 0x1

    .line 31
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    const/4 v0, 0x2

    .line 32
    aget v1, p1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 33
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method


# virtual methods
.method public get(Lcom/jhlabs/vecmath/AxisAngle4f;)V
    .locals 1

    .line 72
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    iput v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    .line 73
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    iput v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    .line 74
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    iput v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 75
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    iput v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public get([F)V
    .locals 2

    .line 79
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 80
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 81
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 82
    iget v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    const/4 v1, 0x3

    aput v0, p1, v1

    return-void
.end method

.method public set(FFFF)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    .line 59
    iput p2, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    .line 60
    iput p3, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 61
    iput p4, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/AxisAngle4f;)V
    .locals 1

    .line 65
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    .line 66
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    .line 67
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    .line 68
    iget p1, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    iput p1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
