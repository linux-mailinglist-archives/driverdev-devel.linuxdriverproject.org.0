Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 170A423BCC0
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 16:56:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2C238638F;
	Tue,  4 Aug 2020 14:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XrcWzrzvvWyA; Tue,  4 Aug 2020 14:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95FC48634C;
	Tue,  4 Aug 2020 14:56:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B0791BF34C
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 14:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 66FB385727
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 14:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtDLMhy0BoQQ for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 14:56:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B2ABA85514
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 14:56:42 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id x6so7109968pgx.12
 for <devel@driverdev.osuosl.org>; Tue, 04 Aug 2020 07:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1zlkQXHTnbRlJd/3ZzLVxh5Iw6jOTtxiQTFs7UMIY4o=;
 b=I+dv9nc4PtO8E1z1HGrGyeZqlKQ/KFSiH5myPv/OeubgWRxa/VU3Dl9gjYSz2SIsjX
 YDxTn7bbhKcQs9jw5p1i2fpDt0gVW1E2zQelqWpMfQ9FsOaXX3tSweevlSHJQrcMzyLU
 uEdqK4IRJ8kQwHtkm+pLXtVYjDcPH/NlVl36yh980e+E66BrpDCpjyNrl8QvAnDQbjAq
 LY6nBqOx2kpI8P9y7T4PoLK4CB4V/0ox8i1CJgCrQ+c2k+FgmbBh8R+MXPkFn+dOSdQt
 h0nOeP/06w/IXWu5h8Kx4V04IZ7pHByIoI338w6AHyzQIJsvziLHGsewoDScYRvUDHN+
 GbDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1zlkQXHTnbRlJd/3ZzLVxh5Iw6jOTtxiQTFs7UMIY4o=;
 b=FBYWhPJ+7Ow6XTfX1P9sG7uw/fjVW2XmwWOKO7oiVFut5StdKKWHWFXrHqba3V9vci
 tVJ3CG1WnYiALufiotXhtcIgi67YZ6SE6NnR1t2qJchFAKO9fJ/QFUzrWKccSssVNisG
 yJZr9R9atMzTco5ddy1Gib2oOOi9T7IomkkAWJ+ku3n3hRLF1PzSw4gM9wUaLanb6gay
 lZAA1D3mH4yacFe4puvpLU1aKzj4d/LVTmG/YUdzBi+PTO/S1ukXOY+Wk6IjuBnkVdWg
 DBCHfPFj7qvoZwBVJJII6bd3hxWLqnK8Wq/MGrYv9LFtu/0EBhYKXPdQzY5CCYHQ72fK
 H99g==
X-Gm-Message-State: AOAM533yppLDGRMXhIJ7uHByPLbmrpTbR1FMYxelBbYUSLh0pjmhtrf4
 nNY/vb+QtHLdoxJEMIpAiMk=
X-Google-Smtp-Source: ABdhPJx8ZsVNiNGW+px8G91BilooiJIDKuK7z464JjO6ei/v3BMnlnwVWClLH9Lc7sqHENLZzxPb9A==
X-Received: by 2002:aa7:9ace:: with SMTP id x14mr10446574pfp.216.1596553002225; 
 Tue, 04 Aug 2020 07:56:42 -0700 (PDT)
Received: from thinkpad.teksavvy.com (104.36.148.139.aurocloud.com.
 [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id j198sm21321310pfd.205.2020.08.04.07.56.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Aug 2020 07:56:41 -0700 (PDT)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: fix out of bounds read in
 prism2sta_probe_usb()
Date: Tue,  4 Aug 2020 07:56:14 -0700
Message-Id: <20200804145614.104320-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

let's use usb_find_common_endpoints() to discover endpoints, it does all
necessary checks for type and xfer direction

remove memset() in hfa384x_create(), because we now assign endpoints in
prism2sta_probe_usb() and because create_wlan() uses kzalloc() to
allocate hfa384x struct before calling hfa384x_create()

Fixes: faaff9765664 ("staging: wlan-ng: properly check endpoint types")
Reported-and-tested-by: syzbot+22794221ab96b0bab53a@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=22794221ab96b0bab53a
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c |  5 -----
 drivers/staging/wlan-ng/prism2usb.c   | 19 ++++++-------------
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index fa1bf8b069fd..2720f7319a3d 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -524,13 +524,8 @@ static void hfa384x_usb_defer(struct work_struct *data)
  */
 void hfa384x_create(struct hfa384x *hw, struct usb_device *usb)
 {
-	memset(hw, 0, sizeof(*hw));
 	hw->usb = usb;
 
-	/* set up the endpoints */
-	hw->endp_in = usb_rcvbulkpipe(usb, 1);
-	hw->endp_out = usb_sndbulkpipe(usb, 2);
-
 	/* Set up the waitq */
 	init_waitqueue_head(&hw->cmdq);
 
diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index 456603fd26c0..4b08dc1da4f9 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -61,23 +61,14 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 			       const struct usb_device_id *id)
 {
 	struct usb_device *dev;
-	const struct usb_endpoint_descriptor *epd;
-	const struct usb_host_interface *iface_desc = interface->cur_altsetting;
+	struct usb_endpoint_descriptor *bulk_in, *bulk_out;
+	struct usb_host_interface *iface_desc = interface->cur_altsetting;
 	struct wlandevice *wlandev = NULL;
 	struct hfa384x *hw = NULL;
 	int result = 0;
 
-	if (iface_desc->desc.bNumEndpoints != 2) {
-		result = -ENODEV;
-		goto failed;
-	}
-
-	result = -EINVAL;
-	epd = &iface_desc->endpoint[1].desc;
-	if (!usb_endpoint_is_bulk_in(epd))
-		goto failed;
-	epd = &iface_desc->endpoint[2].desc;
-	if (!usb_endpoint_is_bulk_out(epd))
+	result = usb_find_common_endpoints(iface_desc, &bulk_in, &bulk_out, NULL, NULL);
+	if (result)
 		goto failed;
 
 	dev = interface_to_usbdev(interface);
@@ -96,6 +87,8 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 	}
 
 	/* Initialize the hw data */
+	hw->endp_in = usb_rcvbulkpipe(dev, bulk_in->bEndpointAddress);
+	hw->endp_out = usb_sndbulkpipe(dev, bulk_out->bEndpointAddress);
 	hfa384x_create(hw, dev);
 	hw->wlandev = wlandev;
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
