Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2AC5AE05
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 05:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 343F520429;
	Sun, 30 Jun 2019 03:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwm70ai-y+xz; Sun, 30 Jun 2019 03:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BBDA1203AC;
	Sun, 30 Jun 2019 03:56:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FA0D1BF859
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 03:56:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5CEFC873BC
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 03:56:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjWxpu9uBc-6 for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 03:56:34 +0000 (UTC)
X-Greylist: delayed 00:06:37 by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24D0B873B6
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 03:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 82CE435AD1;
 Sun, 30 Jun 2019 05:49:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcVaHcMZLjIq; Sun, 30 Jun 2019 05:49:53 +0200 (CEST)
From: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1561866593; bh=9Ans4RlZn8dOH7qDF/10KOpQwK7T65Z7lmdyjzSs6EM=;
 h=From:To:Cc:Subject:Date;
 b=cxRkBFtLkJqF49ZKRJOmdQPn1WiL+0gAI0IbH2izNDvE48VmypAe/M+yVswDVcpFO
 G0jOYvwIl4tfIuw0ErGts8jklgNnMtIWEvNlyZh8OcbO8t+B05MxH238awK/j5QT/v
 nbXssB0o4AV839WeDkBIp/uhnTDe0fbi/XVVhvPViaoGK6bTFZNUFLBjloaQ5Di5dq
 RXOmMjmDq8tGhSHt/U4rrmlPxmbRJOkNDNvw4+b26gcLLvKWHgsf5t5eQpesV8YC9v
 zQX855x2+tPa8WxqO2WIhB0VOjyXG2m+5kjkuCm5D5k7o7pU+3BZF6rvzObA8kfsqZ
 zhNvFdQA6TUqw==
To: 
Subject: [PATCH] media: imx7-media-csi: Remove unneeded break after return
Date: Sat, 29 Jun 2019 22:49:04 -0500
Message-Id: <20190630034905.7124-1-chinmaya.mahesh@disroot.org>
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:

WARNING: break is not useful after a goto or return

Signed-off-by: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
---
 drivers/staging/media/imx/imx7-media-csi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index a708a0340eb1..c15acca1dc0d 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1021,7 +1021,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
 		break;
 	default:
 		return -EINVAL;
-		break;
 	}
 	return 0;
 }
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
