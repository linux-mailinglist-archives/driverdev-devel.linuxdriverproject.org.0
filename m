Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BCCABBC8
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 17:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 268C8881DE;
	Fri,  6 Sep 2019 15:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJ+D3wlMqzHl; Fri,  6 Sep 2019 15:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43AF68818E;
	Fri,  6 Sep 2019 15:08:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4FD1BF296
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 15:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E504688187
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 15:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id luIX2ureqPyv for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 15:08:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5574788183
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 15:08:29 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i6FqZ-0001Eg-V9; Fri, 06 Sep 2019 15:08:24 +0000
From: Colin King <colin.king@canonical.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] media: imx7-mipi-csis: make array 'registers' static const,
 makes object smaller
Date: Fri,  6 Sep 2019 16:08:23 +0100
Message-Id: <20190906150823.30859-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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

Don't populate the array 'registers' on the stack but instead make it
static const. Makes the object code smaller by 10 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
  20138	   5196	    128	  25462	   6376	staging/media/imx/imx7-mipi-csis.o

After:
   text	   data	    bss	    dec	    hex	filename
  20032	   5292	    128	  25452	   636c	staging/media/imx/imx7-mipi-csis.o

(gcc version 9.2.1, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..f8a97b7e2535 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -293,7 +293,7 @@ static int mipi_csis_dump_regs(struct csi_state *state)
 	struct device *dev = &state->pdev->dev;
 	unsigned int i;
 	u32 cfg;
-	struct {
+	static const struct {
 		u32 offset;
 		const char * const name;
 	} registers[] = {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
