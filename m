Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAA3281074
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 12:16:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBCB886B72;
	Fri,  2 Oct 2020 10:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkEGr+Q9O-zN; Fri,  2 Oct 2020 10:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DC6886B1A;
	Fri,  2 Oct 2020 10:16:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE8421BF2FF
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 10:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB08286538
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 10:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UviUbjmEzFrS for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 10:16:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF1288652A
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 10:16:26 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1kOI6u-0001yb-FW; Fri, 02 Oct 2020 10:16:20 +0000
From: Colin King <colin.king@canonical.com>
To: Corentin Labbe <clabbe@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 mjpeg-users@lists.sourceforge.net, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH][next] media: zoran: fix spelling mistake and make error
 message more meaningful
Date: Fri,  2 Oct 2020 11:16:20 +0100
Message-Id: <20201002101620.86156-1-colin.king@canonical.com>
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

There is a spelling mistake in a pci_err error message. Fix this and
make the error message a little more meaningful.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 808196ea5b81..d9f8b21edf6a 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -666,7 +666,7 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
 
 	if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT &&
 	    sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
-		pci_err(zr->pci_dev, "%s invalid combinaison\n", __func__);
+		pci_err(zr->pci_dev, "%s invalid selection type combination\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
