.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvCdmaChType"
.end annotation


# instance fields
.field mChannelA:S

.field mChannelB:S

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

    .line 552
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 553
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mNam:B

    .line 554
    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    .line 555
    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S

    .line 552
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
    .line 558
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 559
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 560
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mNam:B

    .line 561
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 562
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    .line 563
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S

    .line 558
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x6

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 568
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 570
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 571
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    const-string/jumbo v0, "nam:%x, channel_a:%d, channel_b:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelA:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCdmaChType;->mChannelB:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
