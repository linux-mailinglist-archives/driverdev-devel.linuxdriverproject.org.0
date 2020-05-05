Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCA61C5260
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 12:00:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8975894DC;
	Tue,  5 May 2020 10:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5hRj4Lmo2UfA; Tue,  5 May 2020 10:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32D54894E0;
	Tue,  5 May 2020 10:00:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 84FC11BF980
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F5C287893
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUUa0pWPBeKT
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89EA587850
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588672838; x=1620208838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=3KMMdMHpqf0kH2/KKDwzC+3q5OZls69kBOptUsy3R+w=;
 b=EHQcBtsjkPd3aZSKGr0CZRG6L/q1SVj05zm7gRKbEGM+BSPSZ+J2JXdN
 kcqjoVUgUztnkxD7RvtAkJjiin+5rbqsmTCftrCAzxFC4aEftJ7TTI+t6
 +saONLT5yyy/1ZDh5ex2UZcdfoZ/dqbYXEAh3r4ch5tqpRRi+r3oh/rFY
 wZ+d3pfHEV1zqFms4CerGq5N6obmvVq/6moEmn8RvIN9FBGlP9kS3g+ff
 9dCc3LE+kXL2R/1L3Ti11GfNd0sDjGRTLvh15l5MRKLWJavQJ+ufQ6GHX
 I+Z72pGwpxuF/I1J7UYfZGYXAk7XD8OQQAtI2Laz/4yKKwvxa3G9jE+kD w==;
IronPort-SDR: uzvO6pBXVHyQPCCtCviVOzUiS6RzmiPWRg3VLF4d0QpJAU9yWU6B3kThyDFavG5wk8+tx8v22a
 hKRfiFf+KiE4z8QjO9vGx0NJbcqI3AhMFipr5OQDF8RgbA+i/RMiwOpezG2spbM2kXaOJOidH6
 FLx4+Dd4k5H0XFvnOS4LeTbbZ5NxBGgs0e4oLiWGPOlnSSvi/3r7QNegTJqSt3/qC2evXKhBYJ
 bjRlDEvWSUTPa4gomk7SvcY1yGeqAAgNNCdCtLALXVxoRf61HgQhPOSp3/h7Sf+m/rFxU4mh9v
 Vsk=
X-IronPort-AV: E=Sophos;i="5.73,354,1583218800"; d="scan'208";a="78347995"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 May 2020 03:00:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 03:00:37 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 5 May 2020 03:00:36 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] staging: most: usb: consolidate code
Date: Tue, 5 May 2020 12:00:29 +0200
Message-ID: <1588672829-28883-5-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
References: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
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

This patch applies the same look and feel when assigning local variables.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/usb/usb.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 62d773c..b31a49c 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -548,7 +548,7 @@ static void hdm_read_completion(struct urb *urb)
 static int hdm_enqueue(struct most_interface *iface, int channel,
 		       struct mbo *mbo)
 {
-	struct most_dev *mdev;
+	struct most_dev *mdev = to_mdev(iface);
 	struct most_channel_config *conf;
 	int retval = 0;
 	struct urb *urb;
@@ -560,7 +560,6 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 	if (iface->num_channels <= channel || channel < 0)
 		return -ECHRNG;
 
-	mdev = to_mdev(iface);
 	conf = &mdev->conf[channel];
 
 	mutex_lock(&mdev->io_mutex);
@@ -741,9 +740,8 @@ static void hdm_request_netinfo(struct most_interface *iface, int channel,
 						   unsigned char,
 						   unsigned char *))
 {
-	struct most_dev *mdev;
+	struct most_dev *mdev = to_mdev(iface);
 
-	mdev = to_mdev(iface);
 	mdev->on_netinfo = on_netinfo;
 	if (!on_netinfo)
 		return;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
