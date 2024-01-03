.class Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;
.super Ljava/lang/Object;
.source "OctTreeQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/OctTreeQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OctTreeNode"
.end annotation


# instance fields
.field children:I

.field count:I

.field index:I

.field isLeaf:Z

.field leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

.field level:I

.field parent:Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

.field final synthetic this$0:Lcom/jhlabs/image/OctTreeQuantizer;

.field totalBlue:I

.field totalGreen:I

.field totalRed:I


# direct methods
.method constructor <init>(Lcom/jhlabs/image/OctTreeQuantizer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->this$0:Lcom/jhlabs/image/OctTreeQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    .line 43
    iput-object p1, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    return-void
.end method


# virtual methods
.method public list(Ljava/io/PrintStream;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 56
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget v1, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    const-string v2, ": count="

    if-nez v1, :cond_1

    .line 58
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " red="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalRed:I

    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " green="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalGreen:I

    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blue="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->totalBlue:I

    iget v4, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->count:I

    div-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->leaf:[Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 63
    aget-object v1, v1, v0

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/jhlabs/image/OctTreeQuantizer$OctTreeNode;->list(Ljava/io/PrintStream;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
