Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2E254DED
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0505D87A15;
	Tue, 25 Jun 2019 11:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EOM-CQ2xBiiy; Tue, 25 Jun 2019 11:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84863868E7;
	Tue, 25 Jun 2019 11:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D01791BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CAA9E82405
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXs1Mv4g0kcP for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:48:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03C22822CA
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hwfl45ANFHM3TXurUSVqZYEKWL59l7BrlEY6fMWf5p0=; b=IvONJ8NbKhjhLlhjw7TH76/ZF
 jScOFAlXLSwLZsG8uA+JQh096RhUXDgTAi++Sn+Fukx7ijW7fxF7VjgItjSS8MkwWmuOjg6HvoDp8
 /vPZhm4ZCKb4WQeEWngXzhuEaU3M7vRD+rx4DVru7sBVjbt9242tlstdRQ0T3ThFnVQ1z6j1EeV5l
 Ao2UM4eD6jt4eCsFDlaX+gO2IDIqCQuHade5W1+ncUIw+Z0NkMd+U8d9PDcfi67to/a66Y+jMpee8
 QidBkTbS9sRaQwO8zANAWwQYK9fHZNhqf2RpuSWtRpWe0pDkUZ7E8gToO3Cz/nHyopElYcHNYCQcN
 Nk6j5RQQQ==;
Received: from 177.205.71.220.dynamic.adsl.gvt.net.br ([177.205.71.220]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfjw7-0002Of-JA; Tue, 25 Jun 2019 11:48:31 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hfjw4-00070R-Jn; Tue, 25 Jun 2019 08:48:28 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH] media: schedule removal for legacy staging drivers
Date: Tue, 25 Jun 2019 08:48:26 -0300
Message-Id: <0fed8053f3f3a45762f2547c8ebc4e0d2728abd0.1561463295.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Keeping legacy problematic code forever is not a good idea.

So, let's schedule a date for those legacy stuff to rest in piece.

If someone wants to steps up and take them from the staging ostracism
and do give them a rejuvenation shower in order to address the
isues pointed on their TODO lists, be our guest!

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/media/bcm2048/TODO      | 6 ++++++
 drivers/staging/media/davinci_vpfe/TODO | 7 +++++++
 drivers/staging/media/omap4iss/TODO     | 7 +++++++
 drivers/staging/media/soc_camera/TODO   | 9 +++++++++
 4 files changed, 29 insertions(+)

diff --git a/drivers/staging/media/bcm2048/TODO b/drivers/staging/media/bcm2048/TODO
index 6bee2a2dad68..478984672c9b 100644
--- a/drivers/staging/media/bcm2048/TODO
+++ b/drivers/staging/media/bcm2048/TODO
@@ -1,3 +1,9 @@
+NOTE:
+   The bcm2048 driver fixes on this TODO were not addressed yet.
+   It has been a long time since the last related change.
+   Unless someone steps up addressing those, this driver is
+   scheduled to be removed for Kernel 5.4.
+
 TODO:
 
 From the initial code review:
diff --git a/drivers/staging/media/davinci_vpfe/TODO b/drivers/staging/media/davinci_vpfe/TODO
index cc8bd9306f2a..9d4577a911c9 100644
--- a/drivers/staging/media/davinci_vpfe/TODO
+++ b/drivers/staging/media/davinci_vpfe/TODO
@@ -1,3 +1,10 @@
+NOTE:
+   The davinci_vpfe driver fixes on this TODO were not addressed yet.
+   It has been a long time since the last related change.
+   Unless someone steps up addressing those, this driver is
+   scheduled to be removed for Kernel 5.4.
+
+
 TODO (general):
 ==================================
 
diff --git a/drivers/staging/media/omap4iss/TODO b/drivers/staging/media/omap4iss/TODO
index 4d220ef82653..fb90be3c1f32 100644
--- a/drivers/staging/media/omap4iss/TODO
+++ b/drivers/staging/media/omap4iss/TODO
@@ -1,3 +1,10 @@
+NOTE:
+   The omap4iss driver fixes on this TODO were not addressed yet.
+   It has been a long time since the last related change.
+   Unless someone steps up addressing those, this driver is
+   scheduled to be removed for Kernel 5.4.
+
+
 * Fix FIFO/buffer overflows and underflows
 * Replace dummy resizer code with a real implementation
 * Fix checkpatch errors and warnings
diff --git a/drivers/staging/media/soc_camera/TODO b/drivers/staging/media/soc_camera/TODO
index 932af6443b67..677dcdc1de61 100644
--- a/drivers/staging/media/soc_camera/TODO
+++ b/drivers/staging/media/soc_camera/TODO
@@ -1,3 +1,12 @@
+NOTE:
+   The old drivers that depends on SoC camera framework require
+   conversion. We're not accepting any patches that are doing just
+   checkpatch or style fixes before such conversion.
+
+   If nobody steps up addressing those, this driver is scheduled to be
+   removed for Kernel 5.5.
+
+
 The SoC camera framework is obsolete and scheduled for removal in the near
 future. Developers are encouraged to convert the drivers to use the
 regular V4L2 API if these drivers are still needed (and if someone has the
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
