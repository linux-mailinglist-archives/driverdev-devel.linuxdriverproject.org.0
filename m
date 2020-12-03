Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791A02CD5DF
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A8C687AC5;
	Thu,  3 Dec 2020 12:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tfIQtZ5rIu8O; Thu,  3 Dec 2020 12:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF60D87AAF;
	Thu,  3 Dec 2020 12:51:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 273971BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D3E98751E
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nauQs8ZFMVCV for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED6F287524
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:52 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N8EdM-1k71GC1Duq-014BRB; Thu, 03 Dec 2020 13:48:08 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 05/11] drivers: staging: media: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:47:57 +0100
Message-Id: <20201203124803.23390-5-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:A0wBouam6WJUm1DquNPVyfLSDZ7oZQEPiMGhLxEU02kxYrt9m/l
 qBaYNXzkuBPYnfZdW8HRf0++cDR7uTmElGWf3KjE7uInz+SGrk+9h+AQnZPoRL8Hs+Dc+E+
 cFw4h1W+AVq4Q/AAYW9K1Fo9wicqhgYFQMkEWjYd1AubvyrTkPx5S7XDYIgdFwxfSfvgjLk
 U7bFCMDUb4rW9NeFC2W9w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:sO9KKuke2Hw=:L60L84285TFxRIHYc21T8G
 K6rv60i1By+bQFmxPzrd+amNhMCSH/fOMA0FnRTzI8xOznEc/+GJNK4dVHB/f4sV/YE5rNAMD
 nymnQs+vfE1VDd2hXfHdqqWgdPD+HOaCsqGneIIYd7jJzZuUfKWwirR0QiOEwaOAbrdPudDQ1
 0yUBlPieMWXwsPoIoYiIe7QbCS1Yweg5sNEUnSEpLsqCsbW+NpZaIVlxcV5l4q0kFNVPEKRbv
 KpHGkIFNC1FjlB4j2XltEq9p38IuJCnwjqOiTAzS+H3TxqJID5+bl0GCdJG+zs7fw/zP0fQiE
 35TMb3zEINkZARbtpsi80OwVO3XSuJ7dpISmazmU3Vh1W2MMeGazJedw6boswoEzI3xkUFTzU
 rmt6EOwk693/LGqL0GJtzI1QuSdk4LnKISEtmcign/pMG1B073KFeqx+lw2De
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

Remove MODULE_VERSION(), as it doesn't seem to serve any practical purpose.
For in-tree drivers, the kernel version matters. The code received lots of
changes, but module version remained constant, since the driver landed in
mainline. So, this version doesn't seem have any practical meaning anymore.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/media/omap4iss/iss.c       | 1 -
 drivers/staging/media/omap4iss/iss_video.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index e06ea7ea1e50..dae9073e7d3c 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -1349,4 +1349,3 @@ module_platform_driver(iss_driver);
 MODULE_DESCRIPTION("TI OMAP4 ISS driver");
 MODULE_AUTHOR("Sergio Aguirre <sergio.a.aguirre@gmail.com>");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(ISS_VIDEO_DRIVER_VERSION);
diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
index 8b3dd92021e1..526281bf0051 100644
--- a/drivers/staging/media/omap4iss/iss_video.h
+++ b/drivers/staging/media/omap4iss/iss_video.h
@@ -18,7 +18,6 @@
 #include <media/videobuf2-dma-contig.h>
 
 #define ISS_VIDEO_DRIVER_NAME		"issvideo"
-#define ISS_VIDEO_DRIVER_VERSION	"0.0.2"
 
 struct iss_device;
 struct iss_video;
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
