Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7772D2ED0
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 16:56:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F011887492;
	Tue,  8 Dec 2020 15:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VPemviC2nE9G; Tue,  8 Dec 2020 15:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0511874A4;
	Tue,  8 Dec 2020 15:55:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 684D11BF38D
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 15:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F97D2036B
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 15:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwOaiXAOh9pT for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 15:55:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E50020358
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 15:55:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 8564B1F44B0A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: rkvdec: silence ktest bot build warning
Date: Tue,  8 Dec 2020 17:55:40 +0200
Message-Id: <20201208155540.340583-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some configurations built by the ktest bot produce the following
warn, so mark the struct as __maybe_unused to avoid unnecessary
ML spam.

>> drivers/staging/media/rkvdec/rkvdec.c:967:34: warning: unused variable 'of_rkvdec_match' [-Wunused-const-variable]
   static const struct of_device_id of_rkvdec_match[] = {
				    ^
   1 warning generated.

vim +/of_rkvdec_match +967 drivers/staging/media/rkvdec/rkvdec.c

   966
 > 967	static const struct of_device_id of_rkvdec_match[] = {
   968		{ .compatible = "rockchip,rk3399-vdec" },
   969		{ /* sentinel */ }
   970	};
   971	MODULE_DEVICE_TABLE(of, of_rkvdec_match);
   972

Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index aa4f8c287618..3af0f02ec59b 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -992,7 +992,7 @@ static void rkvdec_watchdog_func(struct work_struct *work)
 	}
 }
 
-static const struct of_device_id of_rkvdec_match[] = {
+static const struct of_device_id __maybe_unused of_rkvdec_match[] = {
 	{ .compatible = "rockchip,rk3399-vdec" },
 	{ /* sentinel */ }
 };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
