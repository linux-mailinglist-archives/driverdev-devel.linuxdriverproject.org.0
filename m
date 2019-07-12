Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6816F66701
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 149C186D51;
	Fri, 12 Jul 2019 06:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qhDfHRdX092; Fri, 12 Jul 2019 06:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5562B86C1D;
	Fri, 12 Jul 2019 06:28:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2551BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 72EB88648E
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ev2VBm-w8Po8 for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA8CD86490
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:39 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c73so3840570pfb.13
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+AJ/eR5sMMXfsQTDH1u86KdcdJ0LWTp8oj7GADfBK9A=;
 b=V3LJFIXxUN7QCZRbMS7OYeivLVdrqyOCUoT6NAo6vsGA+xINFCreiNVYL93XVzmU/A
 tKRSleQa9bkz8MM4rovFZQ1XZiuWBklebO8k0wRK/gwA/VEJZoExDI3AiWdTlBhN6SGA
 2rFzmqRn59E5mc2UTFhZyn6T5iNZHYtKOpV3N3nuLWaep2OpC769rofwLkeHlmPTTv5Z
 PoSM57nnyLS/1wd9ZSoB6SordP/mqzOEDFX8ZycU9NQMh+ZZx8UVtgicRaYoxdUvAckh
 k03uz9zj/pO04Dp2dYlD7HE5GVVuXR+0shspTDBn/3tmR0EB+Ol4IlaYkDSdG2JFruLD
 kUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+AJ/eR5sMMXfsQTDH1u86KdcdJ0LWTp8oj7GADfBK9A=;
 b=GbDU9d2uq8XyT+5YPbmLwaBGnmglUjROR4sUSA3wXT07GKh+eClajJBcDMtpRFzEYZ
 1obqwRfOIF/eYFf0nHiWYGdZIvooXgJBEBjL6YpInlboDL35lMHcWpqV02sryed7veTZ
 qdUYHJ4uy1SbcSgY4Wq4llsxgYOBnoOIO6MiOdI4ryTM7OynlBEap+sJ2JtpLg4jA3KM
 mICji+RfP2O1qfFcg5rcgtt6h2tcSxv5X/pJca4uBwggbg0p2wpFlphJWRBxxIkqv8xw
 yHFxjARWHKOLJ12dtmbxlMl9xkFvywMPqA1Y77HpnXUgROmi4aLsEHb5RXCTmO4RELbv
 xVIQ==
X-Gm-Message-State: APjAAAVSDQ/21l+adEpaCiE8Y4EYXr5P+BLr3CZzDUSy9/Jv7JF/0oi2
 ZiUEVEz8rHOluZTVgcMDSdE=
X-Google-Smtp-Source: APXvYqwg+rOzxO+7iuseaNEDvQOzje2Z9ixC6uuaz7v6oKkq+jstPjVSMHztBkV7tvVcNeTaJShjOw==
X-Received: by 2002:a17:90a:c58e:: with SMTP id
 l14mr9603391pjt.104.1562912919553; 
 Thu, 11 Jul 2019 23:28:39 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:39 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: wlan-ng: Replace function hfa384x_dormem()
Date: Fri, 12 Jul 2019 11:58:06 +0530
Message-Id: <20190712062807.9361-9-nishkadg.linux@gmail.com>
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

Remove parameters mode, cmdcb, usercb, and usercb_data from
hfa384x_dormem as these parameters are only assigned the same constant
values (DOWAIT, NULL, NULL, NULL respectively).
Modify hfa384x_dormem to use these constants directly. Remove check for
value of mode (as it will always be DOWAIT).
Remove function hfa384x_dormem_wait as it does nothing except call
hfa384x_dormem with these extra arguments.
Modify call sites of hfa384x_dormem_wait to call hfa384x_dormem instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 37 ++++++++-------------------
 1 file changed, 10 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index c469b89948e6..9be06a33268c 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -248,12 +248,10 @@ hfa384x_dowrid(struct hfa384x *hw,
 
 static int
 hfa384x_dormem(struct hfa384x *hw,
-	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
 	       void *data,
-	       unsigned int len,
-	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
+	       unsigned int len);
 
 static int
 hfa384x_dowmem(struct hfa384x *hw,
@@ -818,14 +816,6 @@ static void hfa384x_cb_status(struct hfa384x *hw,
 	}
 }
 
-static inline int
-hfa384x_dormem_wait(struct hfa384x *hw,
-		    u16 page, u16 offset, void *data, unsigned int len)
-{
-	return hfa384x_dormem(hw, DOWAIT,
-			      page, offset, data, len, NULL, NULL, NULL);
-}
-
 static inline int
 hfa384x_dowmem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
@@ -1454,14 +1444,10 @@ hfa384x_dowrid(struct hfa384x *hw,
  *
  * Arguments:
  *	hw		device structure
- *	mode		DOWAIT or DOASYNC
  *	page		MAC address space page (CMD format)
  *	offset		MAC address space offset
  *	data		Ptr to data buffer to receive read
  *	len		Length of the data to read (max == 2048)
- *	cmdcb		command callback for async calls, NULL for DOWAIT calls
- *	usercb		user callback for async calls, NULL for DOWAIT calls
- *	usercb_data	user supplied data pointer for async calls
  *
  * Returns:
  *	0		success
@@ -1473,18 +1459,15 @@ hfa384x_dowrid(struct hfa384x *hw,
  * Side effects:
  *
  * Call context:
- *	interrupt (DOASYNC)
- *	process (DOWAIT or DOASYNC)
+ *	process (DOWAIT)
  *----------------------------------------------------------------
  */
 static int
 hfa384x_dormem(struct hfa384x *hw,
-	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
 	       void *data,
-	       unsigned int len,
-	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
+	       unsigned int len)
 {
 	int result;
 	struct hfa384x_usbctlx *ctlx;
@@ -1512,15 +1495,15 @@ hfa384x_dormem(struct hfa384x *hw,
 
 	pr_debug("pktsize=%zd\n", ROUNDUP64(sizeof(ctlx->outbuf.rmemreq)));
 
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
 		struct usbctlx_rmem_completor completor;
 
 		result =
@@ -2252,8 +2235,8 @@ int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len)
 		curroffset = HFA384x_ADDR_CMD_MKOFF(pdaloc[i].cardaddr);
 
 		/* units of bytes */
-		result = hfa384x_dormem_wait(hw, currpage, curroffset, buf,
-					     len);
+		result = hfa384x_dormem(hw, currpage, curroffset, buf,
+					len);
 
 		if (result) {
 			netdev_warn(hw->wlandev->netdev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
