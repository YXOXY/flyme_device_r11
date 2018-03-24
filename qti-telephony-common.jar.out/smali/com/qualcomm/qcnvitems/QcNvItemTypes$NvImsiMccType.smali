.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvImsiMccType"
.end annotation


# instance fields
.field mImsiMcc:S

.field mNam:B


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 451
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 452
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mNam:B

    .line 453
    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S

    .line 451
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 457
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 458
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mNam:B

    .line 459
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 460
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S

    .line 456
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x4

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 465
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 466
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 467
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 468
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    const-string/jumbo v0, "nam:%x, imsi_mcc:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiMccType;->mImsiMcc:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
