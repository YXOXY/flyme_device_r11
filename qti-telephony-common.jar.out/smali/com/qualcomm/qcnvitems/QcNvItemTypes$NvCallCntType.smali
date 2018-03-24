.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvCallCntType"
.end annotation


# instance fields
.field mCount:I

.field nam:B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 683
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->nam:B

    .line 684
    iput v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I

    .line 682
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
    .line 687
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 688
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 689
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->nam:B

    .line 690
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 691
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I

    .line 687
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 703
    const/16 v0, 0x8

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 696
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->nam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 697
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 698
    iget v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 699
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 707
    const-string/jumbo v0, "nam:%d, Count:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->nam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCallCntType;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
