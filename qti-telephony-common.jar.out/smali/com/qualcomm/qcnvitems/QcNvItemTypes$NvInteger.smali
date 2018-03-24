.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvInteger"
.end annotation


# instance fields
.field mVal:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I

    .line 86
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I

    .line 90
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x4

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvInteger;->mVal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
