Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE702226B3
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 17:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 795E38B3A4;
	Thu, 16 Jul 2020 15:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rGsXrUCs68rD; Thu, 16 Jul 2020 15:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D73F8B39E;
	Thu, 16 Jul 2020 15:19:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FF3A1BF38D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C3138727B
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QDUWIPGnW7d for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 15:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5453487046
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 15:19:48 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id t15so4831711pjq.5
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 08:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SkAb+ZQCHMOj0PuOUxDCiufP7aMc1qYndOmat4SVlkE=;
 b=s7ZMHEaD8l3hfQKladU34x3lpBaJxaoIxB++2ycJ1zXb3XIZbdSyy8xQv3VGmyKDCM
 fpRlsvCOtRQ/FvmjUOLy1u1qEj2svVDSflYceA2Yunq0V5Ho0X/FjIQWBi8Hgtdfjdm7
 157Oww5hjIsgB/zLrBPaGTP9Ho30ggFcdq4Hx1nstOpGyWcUFUwG87PvdAfF5Z22h/c8
 q5U2Sd/f22Hf5TTlvSi2wxR3zq43kHwtMGdWQHhTl+XK7d5AfjmILt21wsL9ogLWw3Wd
 2y0OWsRf2+z+u6O1kw5oIXRQ66SIwX2ywhOlqTYTBnop1MnoYWFDMYiPbM/uZr7SSFpC
 ftFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SkAb+ZQCHMOj0PuOUxDCiufP7aMc1qYndOmat4SVlkE=;
 b=nQQX6+PXacRqB7lacqWgOWzRFYvjAxvZ8dF5WgwIms3znKVIsrvbb8muzvlDlw014v
 0kthUG9zb13yjLYDo+CHTX4srio4tWyg/azb7fL14fIV8ePVJBUocl837+SI5Io8BW91
 nz1tO495J9MsxJFZ89WthWrfKy6MEK9V12AYkK0BJMBlRQLBbGHPmg0gWUz1iyKjNyU7
 ZPiBX9OXFiw2uvAwMZgkUQem96lpU4uy99sgeoHFtew/jKD3vwWAzP84/rwiXElGNFaR
 CU8j4VpS3WP+Y5D/yOKHLBw3pUIW+7Lt8UWanXfuQhuZk93qk17G3D8BGUF+tBTDZic0
 oBXQ==
X-Gm-Message-State: AOAM532q0Qs3OUGUAc0eeOErFkzOzaflEktDDU5IgH+I56eYZf400UuU
 X+MSEaJ0Py/8Yyd9WcxOcAI=
X-Google-Smtp-Source: ABdhPJzbMM63DHJxy9yrgW/roY6OGog39Bc5HtyluVWwo5o97FmFHv12o1ezNvYHvf0HAC3xarpXFQ==
X-Received: by 2002:a17:90a:e017:: with SMTP id
 u23mr5438552pjy.179.1594912787778; 
 Thu, 16 Jul 2020 08:19:47 -0700 (PDT)
Received: from thinkpad.teksavvy.com ([69.172.171.109])
 by smtp.gmail.com with ESMTPSA id l17sm5502252pgn.48.2020.07.16.08.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 08:19:47 -0700 (PDT)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8712: handle firmware load failure
Date: Thu, 16 Jul 2020 08:13:26 -0700
Message-Id: <20200716151324.1036204-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org,
 syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

when firmware fails to load we should not call unregister_netdev()
this patch fixes a race condition between rtl871x_load_fw_cb() and
r871xu_dev_remove() and fixes the bug reported by syzbot

Reported-by: syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=80899a8a8efe8968cde7
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c |  3 ++-
 drivers/staging/rtl8712/usb_intf.c | 11 ++++++++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 40145c0338e4..42c0a3c947f1 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -33,7 +33,6 @@ static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
 {
 	struct _adapter *adapter = context;
 
-	complete(&adapter->rtl8712_fw_ready);
 	if (!firmware) {
 		struct usb_device *udev = adapter->dvobjpriv.pusbdev;
 		struct usb_interface *usb_intf = adapter->pusb_intf;
@@ -41,11 +40,13 @@ static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
 		dev_err(&udev->dev, "r8712u: Firmware request failed\n");
 		usb_put_dev(udev);
 		usb_set_intfdata(usb_intf, NULL);
+		complete(&adapter->rtl8712_fw_ready);
 		return;
 	}
 	adapter->fw = firmware;
 	/* firmware available - start netdev */
 	register_netdev(adapter->pnetdev);
+	complete(&adapter->rtl8712_fw_ready);
 }
 
 static const char firmware_file[] = "rtlwifi/rtl8712u.bin";
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index a87562f632a7..2fcd65260f4c 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -595,13 +595,17 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
 	if (pnetdev) {
 		struct _adapter *padapter = netdev_priv(pnetdev);
 
-		usb_set_intfdata(pusb_intf, NULL);
-		release_firmware(padapter->fw);
 		/* never exit with a firmware callback pending */
 		wait_for_completion(&padapter->rtl8712_fw_ready);
+		pnetdev = usb_get_intfdata(pusb_intf);
+		usb_set_intfdata(pusb_intf, NULL);
+		if (!pnetdev)
+			goto firmware_load_fail;
+		release_firmware(padapter->fw);
 		if (drvpriv.drv_registered)
 			padapter->surprise_removed = true;
-		unregister_netdev(pnetdev); /* will call netdev_close() */
+		if (pnetdev->reg_state != NETREG_UNINITIALIZED)
+			unregister_netdev(pnetdev); /* will call netdev_close() */
 		flush_scheduled_work();
 		udelay(1);
 		/* Stop driver mlme relation timer */
@@ -614,6 +618,7 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
 		 */
 		usb_put_dev(udev);
 	}
+firmware_load_fail:
 	/* If we didn't unplug usb dongle and remove/insert module, driver
 	 * fails on sitesurvey for the first time when device is up.
 	 * Reset usb port for sitesurvey fail issue.
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
