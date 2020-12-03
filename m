Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65912CD5DD
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:50:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D12F87AB5;
	Thu,  3 Dec 2020 12:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yraL3i2ZxGcN; Thu,  3 Dec 2020 12:50:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE94787AA6;
	Thu,  3 Dec 2020 12:50:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37DCC1BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 34EFA87532
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Or5mOFmfhXQ1 for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED6928751E
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:52 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MjBNV-1kHDye2uNp-00fBnI; Thu, 03 Dec 2020 13:48:09 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 07/11] drivers: staging: vc04_services: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:47:59 +0100
Message-Id: <20201203124803.23390-7-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:9XsuyMzeLdDwbcF1TI1lSA8b7w/uiTMP9U8S++LIpCmkG+5ZaaW
 OgfN0w5eaNjNrS6rtIwWQFSJXftdzj5xIg0/UIhrd617VcTOZ40OrmHIYfOV+1mIj+qWIhq
 yt7IhsmUEbL4s7VgBNEBSW18KRm3jB+XOLxSehcPTHLTfcrCa8p2MfhX8b61wP9kUlRfibZ
 dCcmwi7HtfBAWyW88U39g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:SMJMDEo01Sk=:cGETZ8DbR9yWxRgclj+NVN
 66P3jQpMHZjs2vP7ZF15Ab0MfDViev8Wlkohud50g1Y5imMvaRnyeLpmYCjkJ2xtk/ewoPvSB
 yMI/lqFtNq6DkXiZl71X/Dn8r8kcNDHijlP6CAytUCHy4eDShv7/X4F2GQ4QC6oA6A5floJRc
 B9KZA8dpiR1WYEXVxqtipv4mTAVWbg4TdOOWPE6XKha1gE33veEKTbu/f8LXj7CvS80zkELh1
 mPv1m3Amm89j18y5onlwmBjNZ0I5ZhRyCEyNw2HLFaNGEZdYTYV3WKrS8VKtIxj/npquG+P/f
 Q5JfYMej52+8Pur2tBZilUZRvbhaEgnqDs6uvS2B/kxdQmWdfkZRUgP2aiMcMZ+KNbtCFb2qz
 LyjtOORKgEvU0J0fV+3Ss7pAQSdS5wfmWo7cWNidL3pPadq25hNGXyWQhcbga
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, rcy@google.com,
 f.fainelli@gmail.com, rspringer@google.com, laurent.pinchart@ideasonboard.com,
 netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mchehab@kernel.org, nsaenzjulienne@suse.de, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove MODULE_VERSION(), as it doesn't seem to have any practical purpose.
For in-tree drivers, the kernel version really matters. OTOH, the module
version doesn't seem to be actively maintained - the code received changes
while the version remained constant.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index df90c1f9d148..0b20dd51c340 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -2011,5 +2011,4 @@ module_platform_driver(bcm2835_camera_driver)
 MODULE_DESCRIPTION("Broadcom 2835 MMAL video capture");
 MODULE_AUTHOR("Vincent Sanders");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(BM2835_MMAL_VERSION);
 MODULE_ALIAS("platform:bcm2835-camera");
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
