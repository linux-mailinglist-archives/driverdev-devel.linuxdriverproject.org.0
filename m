Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9655F1C93C0
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 May 2020 17:09:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 409F989604;
	Thu,  7 May 2020 15:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pas0mTujlxFW; Thu,  7 May 2020 15:09:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3FA189272;
	Thu,  7 May 2020 15:09:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65C881BF470
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 15:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2857086432
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 15:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3UooyKuPTbg for <devel@linuxdriverproject.org>;
 Thu,  7 May 2020 15:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 49056863A4
 for <devel@driverdev.osuosl.org>; Thu,  7 May 2020 15:09:44 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jWi6u-0008H6-Py; Thu, 07 May 2020 15:06:52 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Gromm <christian.gromm@microchip.com>,
 Masahiro Yamada <masahiroy@kernel.org>, devel@driverdev.osuosl.org
Subject: [PATCH][next] staging: most: usb: sanity check channel before using
 it as an index into arrays
Date: Thu,  7 May 2020 16:06:52 +0100
Message-Id: <20200507150652.52238-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.1
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

Currently channel is being sanity checked after it has been used as
an index into some arrays. Fix this by moving the sanity check of
channel before the arrays are indexed with it.

Addresses-Coverity: ("Negative array index read")
Fixes: 59ed0480b950 ("Staging: most: replace pr_*() functions by dev_*()")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/most/usb/usb.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index b31a49c37f7f..24ebd3071380 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -664,11 +664,6 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 	struct most_dev *mdev = to_mdev(iface);
 	struct device *dev = &mdev->usb_device->dev;
 
-	mdev->is_channel_healthy[channel] = true;
-	mdev->clear_work[channel].channel = channel;
-	mdev->clear_work[channel].mdev = mdev;
-	INIT_WORK(&mdev->clear_work[channel].ws, wq_clear_halt);
-
 	if (!conf) {
 		dev_err(dev, "Bad config pointer.\n");
 		return -EINVAL;
@@ -677,6 +672,12 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 		dev_err(dev, "Channel ID out of range.\n");
 		return -EINVAL;
 	}
+
+	mdev->is_channel_healthy[channel] = true;
+	mdev->clear_work[channel].channel = channel;
+	mdev->clear_work[channel].mdev = mdev;
+	INIT_WORK(&mdev->clear_work[channel].ws, wq_clear_halt);
+
 	if (!conf->num_buffers || !conf->buffer_size) {
 		dev_err(dev, "Misconfig: buffer size or #buffers zero.\n");
 		return -EINVAL;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
