Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C15FC66702
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73FEF864CD;
	Fri, 12 Jul 2019 06:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIXTLKW6CYe5; Fri, 12 Jul 2019 06:28:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3D2D86472;
	Fri, 12 Jul 2019 06:28:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A65F1BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D70FD87635
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4cmLUYqMi1n for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 10D4F87631
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:42 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i189so3849148pfg.10
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5VSUQ38Kjy1j7IQzs7/6SPh4XKaxUatvSyMVMS5Cx4Y=;
 b=sVb1PVHbbQqd3iXKA/NmLbsuaRtasyHOoFwN0quuIhM1FE50l1aUBYEEDBsE2x2SO4
 0bVXc4LqSd32KB6ZZe5zBJZuO4xPwOaOiuWf1ctZucbqBOEbCW512KuCg8zZgDzLrO4s
 2koKIDGEkOIf5qFPQICEcfaKko6V8a80CDpfQ1rjuRu8rfVL2mcMEYAcNwMh7vZJxN0Z
 eUZCdBpiwimVbxW5BV+SIkW/sr8WgGedFuPvRCMRM+X4g1/euw3lqip8F6UJmE/bgAdw
 PalhpQhnADx2Y8Hi0mKAmUbEg7ymTdvdnkHi1YObEwz6Jfa8AuurLESy9ndHKrcDbYSg
 B8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5VSUQ38Kjy1j7IQzs7/6SPh4XKaxUatvSyMVMS5Cx4Y=;
 b=UT/sMjshLv5cAzYzLiK+1mnZ7u9AIVhGUAM4idnnzjrMCdVlgwmFK9sJ1VF1DdqhBX
 wqI/vNA/6bfXxWLYmYlCcCZsOd9+xqjNWRuTwmtF0ZhUkN4+Vop86hn/BbRQsCzKVhus
 eISQgNpCxlUwrQVgmhw29fbuviIvykxegEhG3U+J4NREcNKcuFFTJbv8TJm3T5e2ujB0
 eXYIbmQ85xrx8DwWEfHwtemtKBTyhqQbuEIpZJsIBSMoHyD+wL0Yi9G0oktkSA0+dgu1
 DOJ+ZKafUGYn3mLIq1g/HMNnFO2AcmtlN7RrLyt77RS7jpoUwfE4IHRax0dP0J1br9c2
 XcFw==
X-Gm-Message-State: APjAAAUlTkq61r50iSNuF+k+gH1CNbWh0UslIUSxpJDmVjPyLkDemYsa
 RwDp8KRIrxwukEsf4bgf01k=
X-Google-Smtp-Source: APXvYqwNpPg1j0ZW51U/JRDvuTWfnDuEPXOckpH224mCwcZagw4dX+jSdKg3SFKxMA5e7L78GUPgSQ==
X-Received: by 2002:a63:224a:: with SMTP id t10mr8821183pgm.289.1562912921647; 
 Thu, 11 Jul 2019 23:28:41 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:41 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: wlan-ng: Replace function hfa384x_dowmem()
Date: Fri, 12 Jul 2019 11:58:07 +0530
Message-Id: <20190712062807.9361-10-nishkadg.linux@gmail.com>
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
hfa384x_dowmem as these parameters are only assigned the same constant
values (DOWAIT, NULL, NULL, NULL respectively).
Modify hfa384x_dowmem to use these constants directly. Remove check for
value of mode (as it will always be DOWAIT).
Remove function hfa384x_dowmem_wait as it does nothing except call
hfa384x_dowmem with these extra arguments.
Modify call sites of hfa384x_dowmem_wait to call hfa384x_dowmem instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 51 +++++++++------------------
 1 file changed, 17 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 9be06a33268c..28d372a0663a 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -255,12 +255,10 @@ hfa384x_dormem(struct hfa384x *hw,
 
 static int
 hfa384x_dowmem(struct hfa384x *hw,
-	       enum cmd_mode mode,
 	       u16 page,
 	       u16 offset,
 	       void *data,
-	       unsigned int len,
-	       ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data);
+	       unsigned int len);
 
 static int hfa384x_isgood_pdrcode(u16 pdrcode);
 
@@ -816,14 +814,6 @@ static void hfa384x_cb_status(struct hfa384x *hw,
 	}
 }
 
-static inline int
-hfa384x_dowmem_wait(struct hfa384x *hw,
-		    u16 page, u16 offset, void *data, unsigned int len)
-{
-	return hfa384x_dowmem(hw, DOWAIT,
-			      page, offset, data, len, NULL, NULL, NULL);
-}
-
 /*----------------------------------------------------------------
  * hfa384x_cmd_initialize
  *
@@ -1529,14 +1519,10 @@ hfa384x_dormem(struct hfa384x *hw,
  *
  * Arguments:
  *	hw		device structure
- *	mode		DOWAIT or DOASYNC
  *	page		MAC address space page (CMD format)
  *	offset		MAC address space offset
  *	data		Ptr to data buffer containing write data
  *	len		Length of the data to read (max == 2048)
- *	cmdcb		command callback for async calls, NULL for DOWAIT calls
- *	usercb		user callback for async calls, NULL for DOWAIT calls
- *	usercb_data	user supplied data pointer for async calls.
  *
  * Returns:
  *	0		success
@@ -1549,17 +1535,15 @@ hfa384x_dormem(struct hfa384x *hw,
  *
  * Call context:
  *	interrupt (DOWAIT)
- *	process (DOWAIT or DOASYNC)
+ *	process (DOWAIT)
  *----------------------------------------------------------------
  */
 static int
 hfa384x_dowmem(struct hfa384x *hw,
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
@@ -1586,15 +1570,15 @@ hfa384x_dowmem(struct hfa384x *hw,
 	    sizeof(ctlx->outbuf.wmemreq.offset) +
 	    sizeof(ctlx->outbuf.wmemreq.page) + len;
 
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
 		struct usbctlx_cmd_completor completor;
 		struct hfa384x_cmdresult wmemresult;
 
@@ -1901,10 +1885,10 @@ int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr,
 			writelen = writelen > HFA384x_USB_RWMEM_MAXLEN ?
 			    HFA384x_USB_RWMEM_MAXLEN : writelen;
 
-			result = hfa384x_dowmem_wait(hw,
-						     writepage,
-						     writeoffset,
-						     writebuf, writelen);
+			result = hfa384x_dowmem(hw,
+						writepage,
+						writeoffset,
+						writebuf, writelen);
 		}
 
 		/* set the download 'write flash' mode */
@@ -2158,12 +2142,11 @@ int hfa384x_drvr_ramdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len)
 			currlen = HFA384x_USB_RWMEM_MAXLEN;
 
 		/* Do blocking ctlx */
-		result = hfa384x_dowmem_wait(hw,
-					     currpage,
-					     curroffset,
-					     data +
-					     (i * HFA384x_USB_RWMEM_MAXLEN),
-					     currlen);
+		result = hfa384x_dowmem(hw,
+					currpage,
+					curroffset,
+					data + (i * HFA384x_USB_RWMEM_MAXLEN),
+					currlen);
 
 		if (result)
 			break;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
