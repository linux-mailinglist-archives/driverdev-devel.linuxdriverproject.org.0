Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6E91C5537
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 14:15:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EF7089453;
	Tue,  5 May 2020 12:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOXMcpgSkTCb; Tue,  5 May 2020 12:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F0B6893E0;
	Tue,  5 May 2020 12:14:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A63EB1BF3BC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 12:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0DDC878BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 12:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LlLR6AFOXNev
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 12:14:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0652E876A2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 12:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588680897; x=1620216897;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=KgCSMFUIncgcbBP0amYZpCUHChrC4lnH3cO4G41NKYg=;
 b=onI8W91y3ZBvHHMmuWXvtt/c6YMUjlvpWa75+J2iaqp0XhkxYNt/hnik
 whWlfc60973+G9IskLliZNrNaHeFTLYargRQLnNT1PgPvWAbBQ2ApHnVJ
 aScmiB9Wo2wr/b38I0TR9Fo3jID2K0LqeY8/L+U1nm/KYAUoEsXGsPkzZ
 wx6mUBMU9zPNf6Ofeom/wdXjNECKJMbfwxSXZIKODOT6LrDLkhbiAEkGH
 HUptvM+Bu45zEH59RLZsHJklpXoPRFqbYhIWXmGA1jV6teQsQ4Za3V3jG
 W5uek1vGWRgFRSADOgnTg3Q8S2suQ/RnzVh+Wb8HQ977Ej57l/QBsgKD+ g==;
IronPort-SDR: kfleuZ9gRPVJ8KyryVEWkdNwz22tqErheRUKlK/C/CQ9OCuXirmhbmWM9XhAvcZul9SnAN6lzV
 oi974BVGMPJz+I+AwbdzZmfZDa/H88rTHRgtYduwR8y/G5FcHwpqcqbHKlMp4sFsp/FPp1+u60
 /o62HAaM25f3CJ181iOTq3DNiEFee6pzd3JS7m5w8m2GYZZm5s2eDQgvvbqTJ2XuB4PQhHJ7Ik
 my3+4PefFa6TlvtZiE9S+OFHKia7GvruUmRtOTmQiAxnPcjCVZMWOmj+A+HmCM6Vi8u5ThZgsv
 fPk=
X-IronPort-AV: E=Sophos;i="5.73,354,1583218800"; d="scan'208";a="74809204"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 May 2020 05:14:57 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 05:14:56 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 5 May 2020 05:15:00 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: usb: add PM functions
Date: Tue, 5 May 2020 14:14:52 +0200
Message-ID: <1588680892-9413-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds the implementation of the PM functions resume and suspend.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/usb/usb.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index b31a49c..daa5e4b 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1221,11 +1221,39 @@ static void hdm_disconnect(struct usb_interface *interface)
 	put_device(&mdev->dev);
 }
 
+static int hdm_suspend(struct usb_interface *interface, pm_message_t message)
+{
+	struct most_dev *mdev = usb_get_intfdata(interface);
+	int i;
+
+	mutex_lock(&mdev->io_mutex);
+	for (i = 0; i < mdev->iface.num_channels; i++) {
+		most_stop_enqueue(&mdev->iface, i);
+		usb_kill_anchored_urbs(&mdev->busy_urbs[i]);
+	}
+	mutex_unlock(&mdev->io_mutex);
+	return 0;
+}
+
+static int hdm_resume(struct usb_interface *interface)
+{
+	struct most_dev *mdev = usb_get_intfdata(interface);
+	int i;
+
+	mutex_lock(&mdev->io_mutex);
+	for (i = 0; i < mdev->iface.num_channels; i++)
+		most_resume_enqueue(&mdev->iface, i);
+	mutex_unlock(&mdev->io_mutex);
+	return 0;
+}
+
 static struct usb_driver hdm_usb = {
 	.name = "hdm_usb",
 	.id_table = usbid,
 	.probe = hdm_probe,
 	.disconnect = hdm_disconnect,
+	.resume = hdm_resume,
+	.suspend = hdm_suspend,
 };
 
 module_usb_driver(hdm_usb);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
