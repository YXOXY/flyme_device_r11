.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiShort"
.end annotation


# instance fields
.field private mVal:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->mVal:S

    .line 122
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->mVal:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 135
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 136
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 139
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->mVal:S

    .line 134
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x2

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->mVal:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toInt()I
    .locals 1

    .prologue
    .line 143
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->mVal:S

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiShort;->mVal:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
