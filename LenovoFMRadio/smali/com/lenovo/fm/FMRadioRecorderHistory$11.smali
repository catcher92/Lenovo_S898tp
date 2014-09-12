.class Lcom/lenovo/fm/FMRadioRecorderHistory$11;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mEditText:Landroid/widget/EditText;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1176
    .local v14, value:Ljava/lang/String;
    invoke-static {v14}, Lcom/lenovo/fm/Util;->isNameUseable(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f040074

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1181
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1900(Lcom/lenovo/fm/FMRadioRecorderHistory;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 1182
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mStrTempFilePath:Ljava/lang/String;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1900(Lcom/lenovo/fm/FMRadioRecorderHistory;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v13, ori:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    .line 1184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f040071

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1189
    :cond_3
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1190
    .local v9, fileSrcName:Ljava/lang/String;
    const-string v15, "."

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 1191
    const-string v15, "."

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1193
    .local v5, extension:Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 1195
    .local v11, index:I
    const/4 v15, -0x1

    if-ne v11, v15, :cond_6

    .line 1196
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1215
    .end local v5           #extension:Ljava/lang/String;
    .end local v9           #fileSrcName:Ljava/lang/String;
    .end local v11           #index:I
    .end local v13           #ori:Ljava/io/File;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    move-object/from16 v16, v0

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2200(Lcom/lenovo/fm/FMRadioRecorderHistory;)I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 1217
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->finish()V

    goto/16 :goto_0

    .line 1198
    .restart local v5       #extension:Ljava/lang/String;
    .restart local v9       #fileSrcName:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v13       #ori:Ljava/io/File;
    :cond_6
    if-nez v11, :cond_7

    .line 1199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    const v16, 0x7f04005f

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->showMessage(I)V
    invoke-static/range {v15 .. v16}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2000(Lcom/lenovo/fm/FMRadioRecorderHistory;I)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareRename()V
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2100(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    goto/16 :goto_0

    .line 1203
    :cond_7
    invoke-virtual {v14, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, ex:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1207
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1221
    .end local v4           #ex:Ljava/lang/String;
    .end local v5           #extension:Ljava/lang/String;
    .end local v9           #fileSrcName:Ljava/lang/String;
    .end local v11           #index:I
    .end local v13           #ori:Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    move-object/from16 v16, v0

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedPosition:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2200(Lcom/lenovo/fm/FMRadioRecorderHistory;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v15

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1223
    .local v7, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v8, fileSrc:Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1225
    .local v10, filepathDest:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v6, fileDest:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v15

    const-string v16, "duration"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1229
    .local v3, durationIndex:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v15}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v15

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1230
    .local v2, duration:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v15, v10}, Lcom/lenovo/fm/FMRadioRecorderHistory;->isCorrectPath(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1231
    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 1233
    .local v1, bResult:Z
    if-eqz v1, :cond_0

    .line 1235
    const/4 v15, 0x1

    new-array v12, v15, [J

    .line 1236
    .local v12, list:[J
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    move-object/from16 v16, v0

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedId:J
    invoke-static/range {v16 .. v16}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1400(Lcom/lenovo/fm/FMRadioRecorderHistory;)J

    move-result-wide v16

    aput-wide v16, v12, v15

    .line 1238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v12, v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->deleteTracks(Landroid/content/Context;[JZ)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->addToMediaDB(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v15, v6, v2}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2300(Lcom/lenovo/fm/FMRadioRecorderHistory;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 1246
    .end local v1           #bResult:Z
    .end local v12           #list:[J
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/fm/FMRadioRecorderHistory$11;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    const v16, 0x7f04005f

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->showMessage(I)V
    invoke-static/range {v15 .. v16}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$2000(Lcom/lenovo/fm/FMRadioRecorderHistory;I)V

    goto/16 :goto_0
.end method
