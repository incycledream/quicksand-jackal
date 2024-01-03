.class public Lcom/jhlabs/image/OctTreeQuantizer;
.super Ljava/lang/Object;
.source "OctTreeQuantizer.java"

# interfaces
.implements Lcom/jhlabs/image/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;
    }
.end annotation


# static fields
.field static final MAX_LEVEL:I = 0x5


# instance fields
.field private colorList:[Ljava/util/Vector;

.field private colors:I

.field private maximumColors:I

.field private nodes:I

.field private reduceColors:I

.field private root:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/jhlabs/image/OctTreeQuantizer;->nodes:I

    .line 71
    iput v0, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    const/16 v1, 0x100

    .line 75
    invoke-virtual {p0, v1}, Lcom/jhlabs/image/OctTreeQuantizer;->setup(I)V

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/util/Vector;

    .line 76
    iput-object v2, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colorList:[Ljava/util/Vector;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colorList:[Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    invoke-direct {v0, p0}, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;-><init>(Lcom/jhlabs/image/OctTreeQuantizer;)V

    iput-object v0, p0, Lcom/jhlabs/image/OctTreeQuantizer;->root:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    return-void
.end method

.method private buildColorTable(Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;[II)I
    .locals 4

    .line 251
    iget v0, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    iget v1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->maximumColors:I

    if-le v0, v1, :cond_0

    .line 252
    invoke-direct {p0, v1}, Lcom/jhlabs/image/OctTreeQuantizer;->reduceTree(I)V

    .line 254
    :cond_0
    iget-boolean v0, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 255
    iget v0, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    const/high16 v2, -0x1000000

    .line 256
    iget v3, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    div-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget v3, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    div-int/2addr v3, v0

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    iget v2, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    div-int/2addr v2, v0

    or-int v0, v1, v2

    aput v0, p2, p3

    add-int/lit8 p2, p3, 0x1

    .line 260
    iput p3, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->index:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 263
    iget-object v2, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 264
    iput p3, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->index:I

    .line 265
    iget-object v2, p1, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, p2, p3}, Lcom/jhlabs/image/OctTreeQuantizer;->buildColorTable(Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;[II)I

    move-result p3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p2, p3

    :goto_1
    return p2
.end method

.method private insertColor(I)V
    .locals 10

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 142
    iget-object v2, p0, Lcom/jhlabs/image/OctTreeQuantizer;->root:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x5

    if-gt v2, v5, :cond_5

    const/16 v6, 0x80

    shr-int/2addr v6, v2

    and-int v7, v0, v6

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    and-int v8, v1, v6

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x2

    :cond_1
    and-int/2addr v6, p1

    if-eqz v6, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 157
    :cond_2
    iget-object v6, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aget-object v6, v6, v7

    const/4 v8, 0x1

    if-nez v6, :cond_3

    .line 160
    iget v6, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->children:I

    add-int/2addr v6, v8

    iput v6, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->children:I

    .line 162
    new-instance v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    invoke-direct {v6, p0}, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;-><init>(Lcom/jhlabs/image/OctTreeQuantizer;)V

    .line 163
    iput-object v4, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->parent:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    .line 164
    iget-object v9, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aput-object v6, v9, v7

    .line 165
    iput-boolean v3, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    .line 166
    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->nodes:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->nodes:I

    .line 167
    iget-object v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colorList:[Ljava/util/Vector;

    aget-object v4, v4, v2

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-ne v2, v5, :cond_4

    .line 170
    iput-boolean v8, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    .line 171
    iput v8, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    .line 172
    iput v0, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    .line 173
    iput v1, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    .line 174
    iput p1, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    .line 175
    iput v2, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->level:I

    .line 176
    iget p1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    return-void

    .line 181
    :cond_3
    iget-boolean v4, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    if-eqz v4, :cond_4

    .line 182
    iget v2, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    add-int/2addr v2, v8

    iput v2, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    .line 183
    iget v2, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    add-int/2addr v2, v0

    iput v2, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    .line 184
    iget v0, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    .line 185
    iget v0, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    add-int/2addr v0, p1

    iput v0, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    return-void

    :cond_4
    move-object v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "insertColor failed"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private reduceTree(I)V
    .locals 10

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_5

    .line 195
    iget-object v1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colorList:[Ljava/util/Vector;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 197
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 198
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    .line 199
    iget v5, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->children:I

    if-lez v5, :cond_3

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 201
    iget-object v6, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aget-object v6, v6, v5

    if-eqz v6, :cond_1

    .line 203
    iget-boolean v8, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    if-nez v8, :cond_0

    .line 204
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "not a leaf!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    iget v9, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    add-int/2addr v8, v9

    iput v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    .line 206
    iget v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    iget v9, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    add-int/2addr v8, v9

    iput v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    .line 207
    iget v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    iget v9, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    add-int/2addr v8, v9

    iput v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    .line 208
    iget v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    iget v9, v6, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    add-int/2addr v8, v9

    iput v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    .line 209
    iget-object v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    const/4 v9, 0x0

    aput-object v9, v8, v5

    .line 210
    iget v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->children:I

    sub-int/2addr v8, v7

    iput v8, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->children:I

    .line 211
    iget v8, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    .line 212
    iget v8, p0, Lcom/jhlabs/image/OctTreeQuantizer;->nodes:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/jhlabs/image/OctTreeQuantizer;->nodes:I

    .line 213
    iget-object v7, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colorList:[Ljava/util/Vector;

    add-int/lit8 v8, v0, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 216
    :cond_2
    iput-boolean v7, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    .line 217
    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    .line 218
    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    if-gt v4, p1, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 225
    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Unable to reduce the OctTree"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addPixels([III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, v0, p2

    .line 99
    aget v1, p1, v1

    invoke-direct {p0, v1}, Lcom/jhlabs/image/OctTreeQuantizer;->insertColor(I)V

    .line 100
    iget v1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    iget v2, p0, Lcom/jhlabs/image/OctTreeQuantizer;->reduceColors:I

    if-le v1, v2, :cond_0

    .line 101
    invoke-direct {p0, v2}, Lcom/jhlabs/image/OctTreeQuantizer;->reduceTree(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public buildColorTable([I[I)V
    .locals 5

    .line 238
    array-length v0, p1

    .line 239
    array-length v1, p2

    iput v1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->maximumColors:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 241
    aget v3, p1, v2

    invoke-direct {p0, v3}, Lcom/jhlabs/image/OctTreeQuantizer;->insertColor(I)V

    .line 242
    iget v3, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer;->reduceColors:I

    if-le v3, v4, :cond_0

    .line 243
    invoke-direct {p0, v4}, Lcom/jhlabs/image/OctTreeQuantizer;->reduceTree(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget p1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    iget v0, p0, Lcom/jhlabs/image/OctTreeQuantizer;->maximumColors:I

    if-le p1, v0, :cond_2

    .line 246
    invoke-direct {p0, v0}, Lcom/jhlabs/image/OctTreeQuantizer;->reduceTree(I)V

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->root:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    invoke-direct {p0, p1, p2, v1}, Lcom/jhlabs/image/OctTreeQuantizer;->buildColorTable(Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;[II)I

    return-void
.end method

.method public buildColorTable()[I
    .locals 3

    .line 229
    iget v0, p0, Lcom/jhlabs/image/OctTreeQuantizer;->colors:I

    new-array v0, v0, [I

    .line 230
    iget-object v1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->root:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/jhlabs/image/OctTreeQuantizer;->buildColorTable(Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;[II)I

    return-object v0
.end method

.method public getIndexForColor(I)I
    .locals 8

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 110
    iget-object v2, p0, Lcom/jhlabs/image/OctTreeQuantizer;->root:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x5

    if-gt v2, v5, :cond_5

    const/16 v5, 0x80

    shr-int/2addr v5, v2

    and-int v6, v0, v5

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    and-int v7, v1, v5

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x2

    :cond_1
    and-int/2addr v5, p1

    if-eqz v5, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 124
    :cond_2
    iget-object v5, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aget-object v5, v5, v6

    if-nez v5, :cond_3

    .line 127
    iget p1, v4, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->index:I

    return p1

    .line 128
    :cond_3
    iget-boolean v4, v5, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->isLeaf:Z

    if-eqz v4, :cond_4

    .line 129
    iget p1, v5, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->index:I

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object v4, v5

    goto :goto_0

    .line 133
    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "getIndexForColor failed"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v3
.end method

.method public setup(I)V
    .locals 1

    .line 87
    iput p1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->maximumColors:I

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0x200

    .line 88
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/jhlabs/image/OctTreeQuantizer;->reduceColors:I

    return-void
.end method
