Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEFB66700
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6386487645;
	Fri, 12 Jul 2019 06:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U7rImuF00h3q; Fri, 12 Jul 2019 06:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2DAA87632;
	Fri, 12 Jul 2019 06:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24B261BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1968586472
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7IA6dGdL9dMZ for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C077786493
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:37 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id m4so4077892pgk.0
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fwkor2bHWwjj4RuJ3oISg/JbPLJBSFytqR7C2ZWbZ/s=;
 b=vXKn5EPlcbzML0p1YNSxdlPL4EVH0iZ0pqzd6W54eljW/EYSvqkAMmmZHr5KHYC4Jw
 KWVTIex9wPkF5tJdsjzxWO397rNtGPZorNHTU3qLIpayGWv0D4siUaWQuk/w0FER/VV4
 U85iVuHpfL950UBpWlfCkQP5Q8QoK7o5JjF4KyzHf+Lu37LNsrCbdmPqQ1/s/FW86Fbm
 7qNN9SzGLLI+ak+2aQlygwGOSurJE5v8Gv8yRoHHh337ahOAWQgjIdTGYP/WeXpDEaPI
 G6bMYaRgt/kM8VgavB68nEIMEf1pJOTKUAwkefDpYuNYsjsyl4uhlHK6DmY8QShmI90n
 4LkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fwkor2bHWwjj4RuJ3oISg/JbPLJBSFytqR7C2ZWbZ/s=;
 b=P2yqylYOf4gtoQU7fqRf+Q/Vx9Zn3dfGgwYM1SCRoCEFR2fmg7YjAUr4cd4L4rT5Kr
 dYQT+rpt4dqqxlwKTF6uqRg11L3xiCNUaBGXxxZs33+s0KzRrwYucITtgEAmorgesMdn
 fDBG473d158oL/9b7nMCSyIeLWW7nKL2gbfPWV4m3YYLbVISrcBgUvemaZJFOXcSoXBq
 JOek2/xbkp5hkrqiXFRIkhEpoS4iyO0PXXO50JHqN3GeYEnt+8pgu8uVNxxvu5tp6Zax
 5hJV63kyVMeHRN+FQ+YgyfXVldaxrVugZeRl9C5HOvw5hQVQQAGBmQfvf5tjDvk9NbqR
 uIHQ==
X-Gm-Message-State: APjAAAVcFSSy1A10+A/82pw7vlDa0knl5fK/zAcmFBqyWqz58Ea4hXo3
 vGW+vdhw98Q9jwtZ6jV6FYk=
X-Google-Smtp-Source: APXvYqxn+4EszUJTnSLoHiLDxduXsS0Afq6256fiToScxzcwHuNQhb7pF7VNP+ZfwnYkiIKpNeysZA==
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr9441667pje.123.1562912917450; 
 Thu, 11 Jul 2019 23:28:37 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: wlan-ng: Remove function hfa384x_docmd_wait()
Date: Fri, 12 Jul 2019 11:58:05 +0530
Message-Id: <20190712062807.9361-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712062807.9361-1-nishkadg.linux@gmail.com>
References: <20190712062807.9361-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As hfa384x_docmd is only called by hfa384x_docmd_wait, and
hfa384x_docmd_wait always passes 4 constant arguments (DOWAIT,
NULL, NULL, NULL) to hfa384x_docmd, these constant parameters may be
removed from hfa384x_docmd and their values used directly instead.
Remove check for one of these constant parameters of hfa384x_docmd as
it is no longer necessary.
Remove hfa384x_docmd_wait as it does nothing except call hfa384x_docmd.
Modify call sites of hfa384x_docmd_wait to call hfa384x_docmd instead.
Change type of hfa384x_docmd to inline to match type of former
hfa384x_docmd_wait.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 43 +++++++++------------------
 1 file changed, 14 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index ce1a9ee995a0..c469b89948e6 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -226,11 +226,9 @@ usbctlx_get_rridresult(const struct hfa384x_usb_rridresp *rridresp,
 
 /*---------------------------------------------------*/
 /* Low level req/resp CTLX formatters and submitters */
-static int
+static inline int
 hfa384x_docmd(struct hfa384x *hw,
-	      enum cmd_mode mode,
-	      struct hfa384x_metacmd *cmd,
-	      ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
+	      struct hfa384x_metacmd *cmd);
 
 static int
 hfa384x_dorrid(struct hfa384x *hw,
@@ -820,12 +818,6 @@ static void hfa384x_cb_status(struct hfa384x *hw,
 	}
 }
 
-static inline int hfa384x_docmd_wait(struct hfa384x *hw,
-				     struct hfa384x_metacmd *cmd)
-{
-	return hfa384x_docmd(hw, DOWAIT, cmd, NULL, NULL, NULL);
-}
-
 static inline int
 hfa384x_dormem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
@@ -873,7 +865,7 @@ int hfa384x_cmd_initialize(struct hfa384x *hw)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
+	result = hfa384x_docmd(hw, &cmd);
 
 	pr_debug("cmdresp.init: status=0x%04x, resp0=0x%04x, resp1=0x%04x, resp2=0x%04x\n",
 		 cmd.result.status,
@@ -919,7 +911,7 @@ int hfa384x_cmd_disable(struct hfa384x *hw, u16 macport)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	return hfa384x_docmd_wait(hw, &cmd);
+	return hfa384x_docmd(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -953,7 +945,7 @@ int hfa384x_cmd_enable(struct hfa384x *hw, u16 macport)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	return hfa384x_docmd_wait(hw, &cmd);
+	return hfa384x_docmd(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -996,7 +988,7 @@ int hfa384x_cmd_monitor(struct hfa384x *hw, u16 enable)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	return hfa384x_docmd_wait(hw, &cmd);
+	return hfa384x_docmd(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1053,7 +1045,7 @@ int hfa384x_cmd_download(struct hfa384x *hw, u16 mode, u16 lowaddr,
 	cmd.parm1 = highaddr;
 	cmd.parm2 = codelen;
 
-	return hfa384x_docmd_wait(hw, &cmd);
+	return hfa384x_docmd(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1213,13 +1205,8 @@ static int hfa384x_usbctlx_complete_sync(struct hfa384x *hw,
  *
  * Arguments:
  *	hw		device structure
- *	mode		DOWAIT or DOASYNC
  *       cmd             cmd structure.  Includes all arguments and result
  *                       data points.  All in host order. in host order
- *	cmdcb		command-specific callback
- *	usercb		user callback for async calls, NULL for DOWAIT calls
- *	usercb_data	user supplied data pointer for async calls, NULL
- *			for DOWAIT calls
  *
  * Returns:
  *	0		success
@@ -1235,11 +1222,9 @@ static int hfa384x_usbctlx_complete_sync(struct hfa384x *hw,
  *	process
  *----------------------------------------------------------------
  */
-static int
+static inline int
 hfa384x_docmd(struct hfa384x *hw,
-	      enum cmd_mode mode,
-	      struct hfa384x_metacmd *cmd,
-	      ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
+	      struct hfa384x_metacmd *cmd)
 {
 	int result;
 	struct hfa384x_usbctlx *ctlx;
@@ -1262,15 +1247,15 @@ hfa384x_docmd(struct hfa384x *hw,
 	pr_debug("cmdreq: cmd=0x%04x parm0=0x%04x parm1=0x%04x parm2=0x%04x\n",
 		 cmd->cmd, cmd->parm0, cmd->parm1, cmd->parm2);
 
-	ctlx->reapable = mode;
-	ctlx->cmdcb = cmdcb;
-	ctlx->usercb = usercb;
-	ctlx->usercb_data = usercb_data;
+	ctlx->reapable = DOWAIT;
+	ctlx->cmdcb = NULL;
+	ctlx->usercb = NULL;
+	ctlx->usercb_data = NULL;
 
 	result = hfa384x_usbctlx_submit(hw, ctlx);
 	if (result != 0) {
 		kfree(ctlx);
-	} else if (mode == DOWAIT) {
+	} else {
 		struct usbctlx_cmd_completor cmd_completor;
 		struct usbctlx_completor *completor;
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
