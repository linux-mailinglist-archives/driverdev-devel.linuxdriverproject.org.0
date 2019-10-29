Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C43BE8B3F
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 15:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 711C4857EB;
	Tue, 29 Oct 2019 14:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QIv2ysdv0iMq; Tue, 29 Oct 2019 14:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28C24864B2;
	Tue, 29 Oct 2019 14:55:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 106BC1BF59F
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03E968715D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+vXknUtPuZz for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 14:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CCC0886FB0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 14:55:33 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id l3so10080436qtp.2
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 07:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LmgR9oPizlpQpJDPadSYMWMkrDeAdDc9lMRtktjVOTI=;
 b=bUF4EwhK6Pu8zDwnpntNw1GKUtJChaAfV3PpCbTc7nm3tgAWJfAyf/owf/w1Q4V5BA
 FEbQFcyw56JE7JmkXGEkDrLDqNe/FPM5is6+rHSiVYTxuj3C0MgfUHqUiJwpRYvAtIIY
 8PWNv+U9Ju0A0McLD8Pr03U/rE8W9ObJQfXx2eE0SN5Zk/Eha/p6PNzLhsHYkSuaE2Ei
 3VKIhTtiP3mYQw3Z8ZcN1nhiB3RW/QrCAXP1FU/e768cvt98TRTdMhFSTGlpDAWqaAVV
 e8+UmcZf6xE41V6joqhoWVsA+HcLtFlarQdJkuARuq2rt+JER9Sa0jkGDWr2WMgvz4Wz
 +jWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LmgR9oPizlpQpJDPadSYMWMkrDeAdDc9lMRtktjVOTI=;
 b=VkkBMp5E+d7tFpPAMBKxTFXQgFgaKk9O2aCrUelseKXTGQ8j77rQbEi4FnqJn9KAZ3
 rC/XTbm/XNtfAQdLpA3943AmPmtZpQW5smoCN9dOhT7+Z5rBM0ArkksXquS9szt+6bW5
 cbr00ESnOU/XvJprLvWewbFPim1dyv0sjIjPxMVAcZq06ZL6e61235h4B/lq/EgYSWLI
 OPE9HXpdq4N6C3hhEq16o1YUgMbm+fwYBAFDt4L2JnjYvMQPhzgp2HMUiR19IE51+Yw9
 +KDCt3/8DTNutSxnZzJAiAMkfK8HIZjzzmJeCpTPjWSnO3er7+jR28Gr3pDXcaUK9/t7
 jVrg==
X-Gm-Message-State: APjAAAVaAIGRECwf34ytxir9jor1Le/R8vzCyaVnW0TOQIwdd+ryLBES
 tEw5hT7Y2lFji0oQxdPFTY0=
X-Google-Smtp-Source: APXvYqxHsT8DA8vNsnasktgfPIXb5ucSxf5/qqO5t7Sq6rmrbIR+KVaknmhmjcp1dA2HTUCstP96ZQ==
X-Received: by 2002:ac8:5214:: with SMTP id r20mr4862962qtn.140.1572360932699; 
 Tue, 29 Oct 2019 07:55:32 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 g17sm5978069qte.89.2019.10.29.07.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 07:55:31 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2 1/3] staging: rts5208: Eliminate the use of Camel Case in
 files ms
Date: Tue, 29 Oct 2019 11:55:15 -0300
Message-Id: <20191029145517.630-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in file ms.h and ms.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 2 files changed, 78 insertions(+), 78 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index e853fa9cc950..5c7c13dfefa0 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -590,7 +590,7 @@ static int ms_identify_media_type(struct rtsx_chip *chip, int switch_8bit_bus)
 	int retval, i;
 	u8 val;
 
-	retval = ms_set_rw_reg_addr(chip, Pro_StatusReg, 6, SystemParm, 1);
+	retval = ms_set_rw_reg_addr(chip, pro_status_reg, 6, system_parm, 1);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -840,7 +840,7 @@ static int msxc_change_power(struct rtsx_chip *chip, u8 mode)
 
 	ms_cleanup_work(chip);
 
-	retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
+	retval = ms_set_rw_reg_addr(chip, 0, 0, pro_data_count1, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -885,7 +885,7 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
 	int found_sys_info = 0, found_model_name = 0;
 #endif
 
-	retval = ms_set_rw_reg_addr(chip, Pro_IntReg, 2, Pro_SystemParm, 7);
+	retval = ms_set_rw_reg_addr(chip, pro_int_REG, 2, pro_system_parm, 7);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1232,7 +1232,7 @@ static int ms_read_status_reg(struct rtsx_chip *chip)
 	int retval;
 	u8 val[2];
 
-	retval = ms_set_rw_reg_addr(chip, StatusReg0, 2, 0, 0);
+	retval = ms_set_rw_reg_addr(chip, status_reg0, 2, 0, 0);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1255,8 +1255,8 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 	int retval, i;
 	u8 val, data[10];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1307,8 +1307,8 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
 
-			retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-						    MS_EXTRA_SIZE, SystemParm,
+			retval = ms_set_rw_reg_addr(chip, overwrite_flag,
+						    MS_EXTRA_SIZE, system_parm,
 						    6);
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
@@ -1339,8 +1339,8 @@ static int ms_write_extra_data(struct rtsx_chip *chip, u16 block_addr,
 	if (!buf || (buf_len < MS_EXTRA_SIZE))
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6 + MS_EXTRA_SIZE);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6 + MS_EXTRA_SIZE);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1392,8 +1392,8 @@ static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
 	int retval;
 	u8 val, data[6];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1465,8 +1465,8 @@ static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 7);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 7);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1519,8 +1519,8 @@ static int ms_erase_block(struct rtsx_chip *chip, u16 phy_blk)
 	int retval, i = 0;
 	u8 val, data[6];
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -1579,7 +1579,7 @@ static void ms_set_page_status(u16 log_blk, u8 type, u8 *extra, int extra_len)
 
 	memset(extra, 0xFF, MS_EXTRA_SIZE);
 
-	if (type == setPS_NG) {
+	if (type == set_PS_NG) {
 		/* set page status as 1:NG,and block status keep 1:OK */
 		extra[0] = 0xB8;
 	} else {
@@ -1670,8 +1670,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-					    MS_EXTRA_SIZE, SystemParm, 6);
+		retval = ms_set_rw_reg_addr(chip, overwrite_flag,
+					    MS_EXTRA_SIZE, system_parm, 6);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -1725,7 +1725,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 					return STATUS_FAIL;
 
 				if (uncorrect_flag) {
-					ms_set_page_status(log_blk, setPS_NG,
+					ms_set_page_status(log_blk, set_PS_NG,
 							   extra,
 							   MS_EXTRA_SIZE);
 					if (i == 0)
@@ -1738,8 +1738,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 						i, extra[0]);
 					MS_SET_BAD_BLOCK_FLG(ms_card);
 
-					ms_set_page_status(log_blk, setPS_Error,
-							   extra,
+					ms_set_page_status(log_blk,
+							   set_PS_error, extra,
 							   MS_EXTRA_SIZE);
 					ms_write_extra_data(chip, new_blk, i,
 							    extra,
@@ -1767,8 +1767,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 			}
 		}
 
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-					    SystemParm, (6 + MS_EXTRA_SIZE));
+		retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+					    system_parm, (6 + MS_EXTRA_SIZE));
 
 		ms_set_err_code(chip, MS_NO_ERROR);
 
@@ -1822,8 +1822,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 		}
 
 		if (i == 0) {
-			retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
-						    MS_EXTRA_SIZE, SystemParm,
+			retval = ms_set_rw_reg_addr(chip, overwrite_flag,
+						    MS_EXTRA_SIZE, system_parm,
 						    7);
 			if (retval != STATUS_SUCCESS)
 				return STATUS_FAIL;
@@ -1980,8 +1980,8 @@ static int reset_ms(struct rtsx_chip *chip)
 	for (reg_addr = BLOCK_SIZE_0; reg_addr <= PAGE_SIZE_1; reg_addr++)
 		rtsx_add_cmd(chip, READ_REG_CMD, reg_addr, 0, 0);
 
-	rtsx_add_cmd(chip, READ_REG_CMD, MS_Device_Type, 0, 0);
-	rtsx_add_cmd(chip, READ_REG_CMD, MS_4bit_Support, 0, 0);
+	rtsx_add_cmd(chip, READ_REG_CMD, MS_device_type, 0, 0);
+	rtsx_add_cmd(chip, READ_REG_CMD, MS_4bit_support, 0, 0);
 
 	retval = rtsx_send_cmd(chip, MS_CARD, 100);
 	if (retval < 0)
@@ -2057,7 +2057,7 @@ static int reset_ms(struct rtsx_chip *chip)
 
 	/* Switch I/F Mode */
 	if (ptr[15]) {
-		retval = ms_set_rw_reg_addr(chip, 0, 0, SystemParm, 1);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, system_parm, 1);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -2887,7 +2887,7 @@ int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
-	retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, Pro_TPCParm, 0x01);
+	retval = ms_set_rw_reg_addr(chip, 0x00, 0x00, pro_TPC_parm, 0x01);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -2970,8 +2970,8 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 		}
 	}
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, 6);
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, 6);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -3026,7 +3026,7 @@ static int ms_read_multiple_pages(struct rtsx_chip *chip, u16 phy_blk,
 					if (!(chip->card_wp & MS_CARD)) {
 						reset_ms(chip);
 						ms_set_page_status
-							(log_blk, setPS_NG,
+							(log_blk, set_PS_NG,
 							 extra,
 							 MS_EXTRA_SIZE);
 						ms_write_extra_data
@@ -3131,8 +3131,8 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 	u8 *ptr;
 
 	if (!start_page) {
-		retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-					    SystemParm, 7);
+		retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+					    system_parm, 7);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
 
@@ -3165,8 +3165,8 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 			return STATUS_FAIL;
 	}
 
-	retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
-				    SystemParm, (6 + MS_EXTRA_SIZE));
+	retval = ms_set_rw_reg_addr(chip, overwrite_flag, MS_EXTRA_SIZE,
+				    system_parm, (6 + MS_EXTRA_SIZE));
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
 
@@ -3773,9 +3773,9 @@ static int mg_set_tpc_para_sub(struct rtsx_chip *chip, int type,
 	u8 buf[6];
 
 	if (type == 0)
-		retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_TPCParm, 1);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, pro_TPC_parm, 1);
 	else
-		retval = ms_set_rw_reg_addr(chip, 0, 0, Pro_DataCount1, 6);
+		retval = ms_set_rw_reg_addr(chip, 0, 0, pro_data_count1, 6);
 
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
@@ -4154,7 +4154,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		} else {
 			set_sense_type(chip, lun, SENSE_TYPE_MG_WRITE_ERR);
 		}
-		goto SetICVFinish;
+		goto set_ICV_finish;
 	}
 
 #ifdef MG_SET_ICV_SLOW
@@ -4195,7 +4195,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 					       SENSE_TYPE_MG_WRITE_ERR);
 			}
 			retval = STATUS_FAIL;
-			goto SetICVFinish;
+			goto set_ICV_finish;
 		}
 	}
 #else
@@ -4214,11 +4214,11 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		} else {
 			set_sense_type(chip, lun, SENSE_TYPE_MG_WRITE_ERR);
 		}
-		goto SetICVFinish;
+		goto set_ICV_finish;
 	}
 #endif
 
-SetICVFinish:
+set_ICV_finish:
 	kfree(buf);
 	return retval;
 }
diff --git a/drivers/staging/rts5208/ms.h b/drivers/staging/rts5208/ms.h
index 952cc14dd079..dc7289ba9c4c 100644
--- a/drivers/staging/rts5208/ms.h
+++ b/drivers/staging/rts5208/ms.h
@@ -92,37 +92,37 @@
 #define PRO_FORMAT		0x10
 #define PRO_SLEEP		0x11
 
-#define	IntReg			0x01
-#define StatusReg0		0x02
-#define StatusReg1		0x03
-
-#define SystemParm		0x10
-#define BlockAdrs		0x11
-#define CMDParm			0x14
-#define PageAdrs		0x15
-
-#define OverwriteFlag		0x16
-#define ManagemenFlag		0x17
-#define LogicalAdrs		0x18
-#define ReserveArea		0x1A
-
-#define	Pro_IntReg		0x01
-#define Pro_StatusReg		0x02
-#define Pro_TypeReg		0x04
-#define	Pro_IFModeReg		0x05
-#define Pro_CatagoryReg		0x06
-#define Pro_ClassReg		0x07
-
-#define Pro_SystemParm		0x10
-#define Pro_DataCount1		0x11
-#define Pro_DataCount0		0x12
-#define Pro_DataAddr3		0x13
-#define Pro_DataAddr2		0x14
-#define Pro_DataAddr1		0x15
-#define Pro_DataAddr0		0x16
-
-#define Pro_TPCParm		0x17
-#define Pro_CMDParm		0x18
+#define int_REG			0x01
+#define status_reg0		0x02
+#define status_reg1		0x03
+
+#define system_parm		0x10
+#define block_adrs		0x11
+#define CMD_parm		0x14
+#define page_adrs		0x15
+
+#define overwrite_flag		0x16
+#define managemen_flag		0x17
+#define logical_adrs		0x18
+#define reserve_area		0x1A
+
+#define pro_int_REG		0x01
+#define pro_status_reg		0x02
+#define pro_type_reg		0x04
+#define pro_IF_mode_reg		0x05
+#define pro_category_reg	0x06
+#define pro_class_reg		0x07
+
+#define pro_system_parm		0x10
+#define pro_data_count1		0x11
+#define pro_data_count0		0x12
+#define pro_data_addr3		0x13
+#define pro_data_addr2		0x14
+#define pro_data_addr1		0x15
+#define pro_data_addr0		0x16
+
+#define pro_TPC_parm		0x17
+#define pro_CMD_parm		0x18
 
 #define	INT_REG_CED		0x80
 #define	INT_REG_ERR		0x40
@@ -152,12 +152,12 @@
 #define	PAGE_SIZE_0		(PPBUF_BASE2 + 0x1a0 + 8)
 #define	PAGE_SIZE_1		(PPBUF_BASE2 + 0x1a0 + 9)
 
-#define MS_Device_Type		(PPBUF_BASE2 + 0x1D8)
+#define MS_device_type		(PPBUF_BASE2 + 0x1D8)
 
-#define	MS_4bit_Support		(PPBUF_BASE2 + 0x1D3)
+#define MS_4bit_support		(PPBUF_BASE2 + 0x1D3)
 
-#define setPS_NG	1
-#define setPS_Error	0
+#define set_PS_NG	1
+#define set_PS_error	0
 
 #define	PARALLEL_8BIT_IF	0x40
 #define	PARALLEL_4BIT_IF	0x00
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
