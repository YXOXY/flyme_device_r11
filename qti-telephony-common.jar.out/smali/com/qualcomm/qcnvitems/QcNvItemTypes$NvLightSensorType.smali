.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvLightSensorType"
.end annotation


# instance fields
.field private mLightSensor:[I


# direct methods
.method constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1158
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1160
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v2, 0x1f

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    .line 1161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    :cond_0
    return-void
.end method

.method constructor <init>([I)V
    .locals 3
    .param p1, "lightSensor"    # [I

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1149
    const/16 v1, 0x1f

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    .line 1150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1147
    :cond_0
    return-void
.end method


# virtual methods
.method public getLightSensor()[I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1169
    const/16 v0, 0x7c

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1176
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1191
    const-string/jumbo v0, "light_sensor: 0x%x 0x%x 0x%x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvLightSensorType;->mLightSensor:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
