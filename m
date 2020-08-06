Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1538D23DA28
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 13:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16F5023DB4;
	Thu,  6 Aug 2020 11:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKN4sC0+RRCn; Thu,  6 Aug 2020 11:57:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5B85A22008;
	Thu,  6 Aug 2020 11:57:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66A4B1BF3E5
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 11:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 631D4883E0
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 11:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FpDNRn8xLM7S for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 11:57:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C312883D4
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 11:57:22 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1k3eWM-0002Xr-4q; Thu, 06 Aug 2020 11:57:18 +0000
From: Colin King <colin.king@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] media: atomisp: fix spelling mistake "unsupport" ->
 "unsupported"
Date: Thu,  6 Aug 2020 12:57:17 +0100
Message-Id: <20200806115717.59613-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There are spelling mistakes in some dev_err messages. Fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index f8d616f08b51..25312903f27e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -2588,7 +2588,7 @@ static int atomisp_g_parm(struct file *file, void *fh,
 	struct atomisp_device *isp = video_get_drvdata(vdev);
 
 	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
-		dev_err(isp->dev, "unsupport v4l2 buf type\n");
+		dev_err(isp->dev, "unsupported v4l2 buf type\n");
 		return -EINVAL;
 	}
 
@@ -2610,7 +2610,7 @@ static int atomisp_s_parm(struct file *file, void *fh,
 	int fps;
 
 	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
-		dev_err(isp->dev, "unsupport v4l2 buf type\n");
+		dev_err(isp->dev, "unsupported v4l2 buf type\n");
 		return -EINVAL;
 	}
 
@@ -2668,7 +2668,7 @@ static int atomisp_s_parm_file(struct file *file, void *fh,
 	struct atomisp_device *isp = video_get_drvdata(vdev);
 
 	if (parm->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
-		dev_err(isp->dev, "unsupport v4l2 buf type for output\n");
+		dev_err(isp->dev, "unsupported v4l2 buf type for output\n");
 		return -EINVAL;
 	}
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
