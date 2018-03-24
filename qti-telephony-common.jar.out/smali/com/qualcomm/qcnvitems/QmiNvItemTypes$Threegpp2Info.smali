.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
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
.field private cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

.field private dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

.field private inSetMode:Z

.field private minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

.field private namName:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

.field private sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

.field private trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V
    .locals 1
    .param p1, "dirNum"    # Ljava/lang/String;
    .param p2, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .param p3, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .param p4, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .param p5, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 653
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    .line 654
    iput-object p2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    .line 655
    iput-object p3, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    .line 656
    iput-object p4, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    .line 657
    iput-object p5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 652
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V
    .locals 6
    .param p1, "namName"    # Ljava/lang/String;
    .param p2, "dirNum"    # Ljava/lang/String;
    .param p3, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .param p4, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .param p5, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .param p6, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    .prologue
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 663
    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;-><init>(Ljava/lang/String;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V

    .line 664
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 662
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "qmiMsg"    # [B

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;-><init>([BZ)V

    .line 674
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 6
    .param p1, "qmiMsg"    # [B
    .param p2, "inSetMode"    # Z

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 679
    iput-boolean p2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 680
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 681
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 682
    array-length v3, p1

    .line 683
    .local v3, "size":I
    :goto_0
    if-lez v3, :cond_1

    .line 684
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    .line 685
    .local v4, "type":S
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 686
    .local v2, "length":I
    invoke-static {v0, v2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->parseData(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 687
    .local v1, "data":[B
    add-int/lit8 v5, v2, 0x3

    sub-int/2addr v3, v5

    .line 688
    if-eqz p2, :cond_0

    .line 689
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    goto :goto_0

    .line 695
    :pswitch_1
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    goto :goto_0

    .line 699
    :pswitch_2
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    goto :goto_0

    .line 703
    :pswitch_3
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    goto :goto_0

    .line 707
    :pswitch_4
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    goto :goto_0

    .line 712
    :cond_0
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 714
    :pswitch_5
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    goto :goto_0

    .line 718
    :pswitch_6
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    goto :goto_0

    .line 722
    :pswitch_7
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    goto :goto_0

    .line 726
    :pswitch_8
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    goto :goto_0

    .line 730
    :pswitch_9
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    goto :goto_0

    .line 734
    :pswitch_a
    new-instance v5, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    invoke-direct {v5, v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;-><init>([B)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    goto :goto_0

    .line 678
    .end local v1    # "data":[B
    .end local v2    # "length":I
    .end local v4    # "type":S
    :cond_1
    return-void

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 712
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
    .line 817
    if-eqz p0, :cond_0

    .line 818
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    .line 823
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    return-object v0

    .line 818
    :array_0
    .array-data 2
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
    .end array-data

    .line 823
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
.method public getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    return-object v0
.end method

.method public getDirNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getItems(Z)[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v0

    return-object v0
.end method

.method public getItems(Z)[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 7
    .param p1, "inSetMode"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 800
    if-eqz p1, :cond_0

    .line 801
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 802
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    aput-object v1, v0, v6

    .line 801
    return-object v0

    .line 805
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 806
    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 805
    return-object v0
.end method

.method public getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    return-object v0
.end method

.method public getNamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    if-eqz v0, :cond_0

    .line 743
    const-string/jumbo v0, ""

    return-object v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->namName:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    return-object v0
.end method

.method public getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->getTypes(Z)[S

    move-result-object v0

    return-object v0
.end method

.method public setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V
    .locals 1
    .param p1, "cdmaChannels"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    .prologue
    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 791
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->cdmaChannels:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;

    .line 789
    return-void
.end method

.method public setDirNum(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirNum"    # Ljava/lang/String;

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 755
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->dirNum:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    .line 753
    return-void
.end method

.method public setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V
    .locals 1
    .param p1, "minImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    .prologue
    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 773
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->minImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;

    .line 771
    return-void
.end method

.method public setSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;)V
    .locals 1
    .param p1, "sidNid"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 764
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->sidNid:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;

    .line 762
    return-void
.end method

.method public setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V
    .locals 1
    .param p1, "trueImsi"    # Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    .prologue
    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->inSetMode:Z

    .line 782
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;->trueImsi:Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;

    .line 780
    return-void
.end method
