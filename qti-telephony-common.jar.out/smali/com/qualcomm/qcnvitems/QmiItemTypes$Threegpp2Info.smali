.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiStructType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Threegpp2Info"
.end annotation


# static fields
.field public static final GET_CDMA_CHANNELS_TYPE:S = 0x15s

.field public static final GET_DIR_NUM_TYPE:S = 0x11s

.field public static final GET_MIN_IMSI_TYPE:S = 0x13s

.field public static final GET_NAM_NAME_TYPE:S = 0x10s

.field public static final GET_SID_NID_TYPE:S = 0x12s

.field public static final GET_TRUE_IMSI_TYPE:S = 0x14s

.field public static final NAM_ID_TYPE:S = 0x1s

.field public static final SET_CDMA_CHANNELS_TYPE:S = 0x14s

.field public static final SET_DIR_NUM_TYPE:S = 0x10s

.field public static final SET_MIN_IMSI_TYPE:S = 0x12s

.field public static final SET_SID_NID_TYPE:S = 0x11s

.field public static final SET_TRUE_IMSI_TYPE:S = 0x13s


# instance fields
.field private cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

.field private dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

.field private inSetMode:Z

.field private minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

.field private namName:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

.field private sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

.field private trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;)V
    .locals 1
    .param p1, "dirNum"    # Ljava/lang/String;
    .param p2, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;
    .param p3, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;
    .param p4, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;
    .param p5, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 928
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    .line 929
    iput-object p2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    .line 930
    iput-object p3, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    .line 931
    iput-object p4, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    .line 932
    iput-object p5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 927
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;)V
    .locals 6
    .param p1, "namName"    # Ljava/lang/String;
    .param p2, "dirNum"    # Ljava/lang/String;
    .param p3, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;
    .param p4, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;
    .param p5, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;
    .param p6, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    .prologue
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 938
    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;-><init>(Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;)V

    .line 939
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 937
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "qmiMsg"    # [B

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;-><init>([BZ)V

    .line 949
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 6
    .param p1, "qmiMsg"    # [B
    .param p2, "inSetMode"    # Z

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 954
    iput-boolean p2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 955
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 956
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 957
    array-length v3, p1

    .line 958
    .local v3, "size":I
    :goto_0
    if-lez v3, :cond_1

    .line 959
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    .line 960
    .local v4, "type":S
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 961
    .local v2, "length":I
    invoke-static {v0, v2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->parseData(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 962
    .local v1, "data":[B
    add-int/lit8 v5, v2, 0x3

    sub-int/2addr v3, v5

    .line 963
    if-eqz p2, :cond_0

    .line 964
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 966
    :pswitch_0
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    goto :goto_0

    .line 970
    :pswitch_1
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    goto :goto_0

    .line 974
    :pswitch_2
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    goto :goto_0

    .line 978
    :pswitch_3
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    goto :goto_0

    .line 982
    :pswitch_4
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    goto :goto_0

    .line 987
    :cond_0
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 989
    :pswitch_5
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    goto :goto_0

    .line 993
    :pswitch_6
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    goto :goto_0

    .line 997
    :pswitch_7
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    goto :goto_0

    .line 1001
    :pswitch_8
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    goto :goto_0

    .line 1005
    :pswitch_9
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    goto :goto_0

    .line 1009
    :pswitch_a
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    goto :goto_0

    .line 953
    .end local v1    # "data":[B
    .end local v2    # "length":I
    .end local v4    # "type":S
    :cond_1
    return-void

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 987
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getTypes(Z)[S
    .locals 1
    .param p0, "inSetMode"    # Z

    .prologue
    .line 1092
    if-eqz p0, :cond_0

    .line 1093
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    .line 1098
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    return-object v0

    .line 1093
    :array_0
    .array-data 2
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
    .end array-data

    .line 1098
    nop

    :array_1
    .array-data 2
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
    .end array-data
.end method


# virtual methods
.method public getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    return-object v0
.end method

.method public getDirNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItems()[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->getItems(Z)[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    move-result-object v0

    return-object v0
.end method

.method public getItems(Z)[Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
    .locals 7
    .param p1, "inSetMode"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    .line 1077
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    aput-object v1, v0, v6

    .line 1076
    return-object v0

    .line 1080
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;

    .line 1081
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1080
    return-object v0
.end method

.method public getMinImsi()Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    return-object v0
.end method

.method public getNamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    if-eqz v0, :cond_0

    .line 1018
    const-string/jumbo v0, ""

    return-object v0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSidNid()Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    return-object v0
.end method

.method public getTrueImsi()Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->getTypes(Z)[S

    move-result-object v0

    return-object v0
.end method

.method public setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;)V
    .locals 1
    .param p1, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    .prologue
    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 1066
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiItemTypes$CdmaChannels;

    .line 1064
    return-void
.end method

.method public setDirNum(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirNum"    # Ljava/lang/String;

    .prologue
    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 1030
    new-instance v0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;

    .line 1028
    return-void
.end method

.method public setMinImsi(Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;)V
    .locals 1
    .param p1, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    .prologue
    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 1048
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$MinImsi;

    .line 1046
    return-void
.end method

.method public setSidNid(Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;)V
    .locals 1
    .param p1, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    .prologue
    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 1039
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiItemTypes$SidNid;

    .line 1037
    return-void
.end method

.method public setTrueImsi(Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;)V
    .locals 1
    .param p1, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    .prologue
    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->inSetMode:Z

    .line 1057
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiItemTypes$TrueImsi;

    .line 1055
    return-void
.end method
