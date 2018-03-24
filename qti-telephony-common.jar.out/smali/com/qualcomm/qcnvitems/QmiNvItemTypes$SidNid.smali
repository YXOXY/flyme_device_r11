.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SidNid"
.end annotation


# static fields
.field public static final NID_SIZE:I = 0x2

.field public static final NUM_INSTANCES_SIZE:I = 0x1

.field public static final SID_SIZE:I = 0x2


# instance fields
.field private nid:[I

.field private numInstances:S

.field private sid:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    new-array v0, v2, [I

    .line 59
    aput p1, v0, v3

    .line 60
    new-array v1, v2, [I

    .line 61
    aput p2, v1, v3

    .line 58
    invoke-direct {p0, v2, v0, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;-><init>(S[I[I)V

    .line 57
    return-void
.end method

.method public constructor <init>(S[I[I)V
    .locals 0
    .param p1, "numInstances"    # S
    .param p2, "sid"    # [I
    .param p3, "nid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->setSidNid(S[I[I)V

    .line 69
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 74
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 75
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v2

    iput-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    .line 79
    array-length v2, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 80
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 82
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    if-ge v1, v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->sid:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    aput v3, v2, v1

    .line 84
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->nid:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    aput v3, v2, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 1
    .param p1, "sid"    # [I
    .param p2, "nid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 66
    array-length v0, p1

    int-to-short v0, v0

    invoke-direct {p0, v0, p1, p2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;-><init>(S[I[I)V

    .line 65
    return-void
.end method


# virtual methods
.method public getNid()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->getNid(I)I

    move-result v0

    return v0
.end method

.method public getNid(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->nid:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNumInstances()I
    .locals 1

    .prologue
    .line 98
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->getSid(I)I

    move-result v0

    return v0
.end method

.method public getSid(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->sid:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 177
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setNid(I)V
    .locals 3
    .param p1, "nid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->setNid(II)V

    .line 134
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNid(II)V
    .locals 3
    .param p1, "nid"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->nid:[I

    aput p1, v1, p2

    .line 143
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNumInstances(S)V
    .locals 3
    .param p1, "numInstances"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    .line 88
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSid(I)V
    .locals 3
    .param p1, "sid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->setSid(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSid(II)V
    .locals 3
    .param p1, "sid"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->sid:[I

    aput p1, v1, p2

    .line 117
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSidNid(S[I[I)V
    .locals 4
    .param p1, "numInstances"    # S
    .param p2, "sid"    # [I
    .param p3, "nid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 154
    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_0

    array-length v2, p2

    if-eq v2, p1, :cond_1

    .line 155
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 158
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(S)V

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 160
    aget v2, p2, v1

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V

    .line 161
    aget v2, p3, v1

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    :cond_2
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    .line 167
    iput-object p2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->sid:[I

    .line 168
    iput-object p3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->nid:[I

    .line 153
    return-void
.end method

.method public setSidNid([I[I)V
    .locals 1
    .param p1, "sid"    # [I
    .param p2, "nid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 172
    array-length v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->setSidNid(S[I[I)V

    .line 171
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 183
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    if-ge v1, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->sid:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 186
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->nid:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    const-string/jumbo v2, "num_instances=%d"

    new-array v3, v8, [Ljava/lang/Object;

    iget-short v4, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->numInstances:S

    if-ge v0, v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sid[%d]=%d, nid[%d]=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->sid:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;->nid:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-object v1
.end method
