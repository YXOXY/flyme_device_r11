.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvMin1Type"
.end annotation


# instance fields
.field mMin1:[I

.field mNam:B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mNam:B

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    .line 116
    return-void
.end method

.method constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 122
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    .line 123
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mNam:B

    .line 125
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 126
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 127
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 121
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0xc

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 134
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    const-string/jumbo v0, "nam:%x, min1[0]:%x, min1[1]:%x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvMin1Type;->mMin1:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
