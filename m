Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE3BCA3A
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 16:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D09F849A6;
	Tue, 24 Sep 2019 14:29:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVf0FnVQk7yf; Tue, 24 Sep 2019 14:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BD1B8475F;
	Tue, 24 Sep 2019 14:28:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB331BF401
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 14:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F6B920365
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 14:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PhU4ZIzJNOn2 for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 14:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 552502002E
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 14:28:55 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iCloD-00021k-B2
 for devel@driverdev.osuosl.org; Tue, 24 Sep 2019 14:28:53 +0000
Received: by mail-pf1-f199.google.com with SMTP id 194so1622473pfu.3
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 07:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5YkNuEOOhfnHxAM0RhiQZB+Aq9qlq6ccg1LuS0lMLf0=;
 b=pueUfWOVkig4jEPJyqb6+F0nrtP5uIC8y2dR7K6fekNsPKl5MLS8eD6vJICj0aITbg
 SsIVixDtA2H8gcuMBXlP8JsYH33/VNx040o6ghjnRLiHDM+J21PPIBDERjfjnVmY/P74
 LkvQzBU7nblfl1CtdinvGqImZUv7dxHEQzQQT1Ft6L6aMPf/QmjwURuIFNx6YvMheR+q
 fwlq29F5gmNxfGdV+eZLWUiyxe6yqwYIwVMFo9F6yK+LY6PHrSqK9IuM3yHq2xDRWe4L
 3FnYSk/wI/l18h/msm3uARSSQZP6PhSJsI/BW0poNujpgIanjEA8r8oCAgPD1OrPk/Rt
 TLiA==
X-Gm-Message-State: APjAAAVhAMxZapXSoPT4FFKeBvqNGYwfc+ZR3f+LtazsL6apS/wSuEGu
 JR/zrqmiUGTqgbgJMvyZW0R/RPfqS7wRpDwXx6KSKB3bsYZPEyv0EMlmktaqbpXywST+3OwP5B4
 ayqPj7C0mCYZgafRUCo7va5mwnY7jV2+fE/F5BVE=
X-Received: by 2002:a62:f244:: with SMTP id y4mr3837275pfl.2.1569335332096;
 Tue, 24 Sep 2019 07:28:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzLi9oMclWpMESAA1tm9M09vstATTbyIZMUv+NYjlAT8Bd3t7W6yLfNh3/LXVbQ5DOkTnItw==
X-Received: by 2002:a62:f244:: with SMTP id y4mr3837240pfl.2.1569335331782;
 Tue, 24 Sep 2019 07:28:51 -0700 (PDT)
Received: from localhost.localdomain (c-71-63-131-226.hsd1.or.comcast.net.
 [71.63.131.226])
 by smtp.gmail.com with ESMTPSA id 74sm1848668pfy.78.2019.09.24.07.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 07:28:51 -0700 (PDT)
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 dan.carpenter@oracle.com
Subject: [PATCH v2] staging: rtl8188eu: remove dead code/vestigial do..while
 loop
Date: Tue, 24 Sep 2019 07:28:19 -0700
Message-Id: <20190924142819.5243-1-connor.kuehl@canonical.com>
X-Mailer: git-send-email 2.17.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The local variable 'bcmd_down' is always set to true almost immediately
before the do-while's condition is checked. As a result, !bcmd_down
evaluates to false which short circuits the logical AND operator meaning
that the second operand is never reached and is therefore dead code.

Furthermore, the do..while loop may be removed since it will always only
execute once because 'bcmd_down' is always set to true, so the
!bcmd_down evaluates to false and the loop exits immediately after the
first pass.

Fix this by removing the loop and its condition variables 'bcmd_down'
and 'retry_cnts'

While we're in there, also fix some checkpatch.pl suggestions regarding
spaces around arithmetic operators like '+'

Addresses-Coverity: ("Logically dead code")

Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
---
v1 -> v2:
 - remove the loop and its condition variable bcmd_down
 - address some non-invasive checkpatch.pl suggestions as a result of
   deleting the loop

 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c | 55 +++++++++-----------
 1 file changed, 24 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 47352f210c0b..7646167a0b36 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -47,8 +47,6 @@ static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
 ******************************************/
 static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer)
 {
-	u8 bcmd_down = false;
-	s32 retry_cnts = 100;
 	u8 h2c_box_num;
 	u32 msgbox_addr;
 	u32 msgbox_ex_addr;
@@ -71,39 +69,34 @@ static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *p
 		goto exit;
 
 	/* pay attention to if  race condition happened in  H2C cmd setting. */
-	do {
-		h2c_box_num = adapt->HalData->LastHMEBoxNum;
-
-		if (!_is_fw_read_cmd_down(adapt, h2c_box_num)) {
-			DBG_88E(" fw read cmd failed...\n");
-			goto exit;
-		}
-
-		*(u8 *)(&h2c_cmd) = ElementID;
-
-		if (CmdLen <= 3) {
-			memcpy((u8 *)(&h2c_cmd)+1, pCmdBuffer, CmdLen);
-		} else {
-			memcpy((u8 *)(&h2c_cmd)+1, pCmdBuffer, 3);
-			ext_cmd_len = CmdLen-3;
-			memcpy((u8 *)(&h2c_cmd_ex), pCmdBuffer+3, ext_cmd_len);
+	h2c_box_num = adapt->HalData->LastHMEBoxNum;
 
-			/* Write Ext command */
-			msgbox_ex_addr = REG_HMEBOX_EXT_0 + (h2c_box_num * RTL88E_EX_MESSAGE_BOX_SIZE);
-			for (cmd_idx = 0; cmd_idx < ext_cmd_len; cmd_idx++)
-				usb_write8(adapt, msgbox_ex_addr+cmd_idx, *((u8 *)(&h2c_cmd_ex)+cmd_idx));
-		}
-		/*  Write command */
-		msgbox_addr = REG_HMEBOX_0 + (h2c_box_num * RTL88E_MESSAGE_BOX_SIZE);
-		for (cmd_idx = 0; cmd_idx < RTL88E_MESSAGE_BOX_SIZE; cmd_idx++)
-			usb_write8(adapt, msgbox_addr+cmd_idx, *((u8 *)(&h2c_cmd)+cmd_idx));
+	if (!_is_fw_read_cmd_down(adapt, h2c_box_num)) {
+		DBG_88E(" fw read cmd failed...\n");
+		goto exit;
+	}
 
-		bcmd_down = true;
+	*(u8 *)(&h2c_cmd) = ElementID;
 
-		adapt->HalData->LastHMEBoxNum =
-			(h2c_box_num+1) % RTL88E_MAX_H2C_BOX_NUMS;
+	if (CmdLen <= 3) {
+		memcpy((u8 *)(&h2c_cmd) + 1, pCmdBuffer, CmdLen);
+	} else {
+		memcpy((u8 *)(&h2c_cmd) + 1, pCmdBuffer, 3);
+		ext_cmd_len = CmdLen - 3;
+		memcpy((u8 *)(&h2c_cmd_ex), pCmdBuffer + 3, ext_cmd_len);
+
+		/* Write Ext command */
+		msgbox_ex_addr = REG_HMEBOX_EXT_0 + (h2c_box_num * RTL88E_EX_MESSAGE_BOX_SIZE);
+		for (cmd_idx = 0; cmd_idx < ext_cmd_len; cmd_idx++)
+			usb_write8(adapt, msgbox_ex_addr + cmd_idx, *((u8 *)(&h2c_cmd_ex) + cmd_idx));
+	}
+	/*  Write command */
+	msgbox_addr = REG_HMEBOX_0 + (h2c_box_num * RTL88E_MESSAGE_BOX_SIZE);
+	for (cmd_idx = 0; cmd_idx < RTL88E_MESSAGE_BOX_SIZE; cmd_idx++)
+		usb_write8(adapt, msgbox_addr + cmd_idx, *((u8 *)(&h2c_cmd) + cmd_idx));
 
-	} while ((!bcmd_down) && (retry_cnts--));
+	adapt->HalData->LastHMEBoxNum =
+		(h2c_box_num + 1) % RTL88E_MAX_H2C_BOX_NUMS;
 
 	ret = _SUCCESS;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
