.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvImsiAddrNumType"
.end annotation


# instance fields
.field mNam:B

.field mNum:B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 487
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNam:B

    .line 488
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNum:B

    .line 486
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
    .line 491
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 492
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 493
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNam:B

    .line 494
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNum:B

    .line 491
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x2

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 498
    iget-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNam:B

    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNum:B

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->pack(BB)[B

    move-result-object v0

    return-object v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 506
    const-string/jumbo v0, "nam:%x, num:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvImsiAddrNumType;->mNum:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
