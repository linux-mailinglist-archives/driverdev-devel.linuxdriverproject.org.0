Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 176729970F
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 16:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6222386AE8;
	Thu, 22 Aug 2019 14:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMzFOnTWDxOU; Thu, 22 Aug 2019 14:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0597E86AA4;
	Thu, 22 Aug 2019 14:41:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 20C191BF989
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D8D086AA4
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9fnHzd7G7ini for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 14:41:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EBC4886A5C
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 14:41:28 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BF9FFAD7C;
 Thu, 22 Aug 2019 14:41:26 +0000 (UTC)
Message-ID: <1566484884.8347.53.camel@suse.com>
Subject: Re: WARNING in r871xu_dev_remove
From: Oliver Neukum <oneukum@suse.com>
To: syzbot <syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com>, 
 kai.heng.feng@canonical.com, devel@driverdev.osuosl.org,
 himadri18.07@gmail.com,  linux.dkm@gmail.com, straube.linux@gmail.com,
 andreyknvl@google.com,  syzkaller-bugs@googlegroups.com,
 florian.c.schilhabel@googlemail.com,  gregkh@linuxfoundation.org,
 Larry.Finger@lwfinger.net, linux-usb@vger.kernel.org
Date: Thu, 22 Aug 2019 16:41:24 +0200
In-Reply-To: <0000000000008f1a550590b57f9a@google.com>
References: <0000000000008f1a550590b57f9a@google.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Am Donnerstag, den 22.08.2019, 07:28 -0700 schrieb syzbot:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    eea39f24 usb-fuzzer: main usb gadget fuzzer driver
> git tree:       https://github.com/google/kasan.git usb-fuzzer
> console output: https://syzkaller.appspot.com/x/log.txt?x=163ae012600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d0c62209eedfd54e
> dashboard link: https://syzkaller.appspot.com/bug?extid=80899a8a8efe8968cde7
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1739cb0e600000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=154fcc2e600000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com

#syz test: https://github.com/google/kasan.git eea39f24

From 4f21b5aabc448719aa612b9359d90a178cb485d8 Mon Sep 17 00:00:00 2001
From: Oliver Neukum <oneukum@suse.com>
Date: Thu, 22 Aug 2019 16:37:33 +0200
Subject: [PATCH] rtl8712: fix race between firmware failing to load and
 disconnect

We have to wait for the attempt to load the firmware to finish
before we evaluate the result.

Reported-by: syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com
Signed-off-by: Oliver Neukum <oneukum@suse.com>
---
 drivers/staging/rtl8712/hal_init.c | 3 ++-
 drivers/staging/rtl8712/usb_intf.c | 8 ++++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

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
index d0daae0b8299..8d7b57073592 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -595,10 +595,13 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
 	if (pnetdev) {
 		struct _adapter *padapter = netdev_priv(pnetdev);
 
-		usb_set_intfdata(pusb_intf, NULL);
-		release_firmware(padapter->fw);
 		/* never exit with a firmware callback pending */
 		wait_for_completion(&padapter->rtl8712_fw_ready);
+		pnetdev = usb_get_intfdata(pusb_intf);
+		usb_set_intfdata(pusb_intf, NULL);
+		if (!pnetdev)
+			goto raced_with_firmware_failure;
+		release_firmware(padapter->fw);
 		if (drvpriv.drv_registered)
 			padapter->surprise_removed = true;
 		unregister_netdev(pnetdev); /* will call netdev_close() */
@@ -609,6 +612,7 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
 		r871x_dev_unload(padapter);
 		r8712_free_drv_sw(padapter);
 
+raced_with_firmware_failure:
 		/* decrease the reference count of the usb device structure
 		 * when disconnect
 		 */
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
