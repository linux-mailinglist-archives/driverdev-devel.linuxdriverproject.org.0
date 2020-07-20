Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3582257F6
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 08:43:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B56A885E27;
	Mon, 20 Jul 2020 06:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJDzplFLtt4q; Mon, 20 Jul 2020 06:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 694D285C52;
	Mon, 20 Jul 2020 06:43:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4251BF397
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 06:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 043232049F
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 06:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kU3DIxl3cKOh for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 06:43:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.mutex.one (mail.mutex.one [62.77.152.124])
 by silver.osuosl.org (Postfix) with ESMTPS id EB23520484
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 06:43:27 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.mutex.one (Postfix) with ESMTP id 8ABA8BF40815;
 Mon, 20 Jul 2020 09:43:25 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at mail.mutex.one
Received: from mail.mutex.one ([127.0.0.1])
 by localhost (mail.mutex.one [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aUSDTB5AIWjP; Mon, 20 Jul 2020 09:43:12 +0300 (EEST)
Received: [127.0.0.1] (localhost [127.0.0.1])nknown [109.103.89.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mutex.one (Postfix) with ESMTPSA id 6ABCFBF403B7;
 Mon, 20 Jul 2020 09:43:12 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mutex.one; s=default;
 t=1595227392; bh=ab3sxIvVtMy1RpXy10nipXf7bkDHQgf370zh7TMSvNE=;
 h=From:To:Cc:Subject:Date:From;
 b=CpFPhet9j73/ovt+/LAfa/zcl+PZl6teedHLNxHqC9p7BFKqsl+/BZn5lutmWsCim
 E4paD9c/4t+6HT5A5tlWGvUrw6GlCmWe9OBC3stkWDoCkDZF8lJMYm1hDjKD90E7lQ
 bZ/cIRda5hxP2gTyrOFaJzXq9CC0WGVeeNsgzRhs=
From: Marian Posteuca <posteuca@mutex.one>
To: Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: dpaa2-ethsw: fix switch/case fallthrough warning
Date: Mon, 20 Jul 2020 09:42:05 +0300
Message-Id: <20200720064205.10323-1-posteuca@mutex.one>
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
Cc: Marian Posteuca <posteuca@mutex.one>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the fallthrough warning that is reported by checkpatch.

Signed-off-by: Marian Posteuca <posteuca@mutex.one>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 2fb75a7c9314..db10fd18914d 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1362,7 +1362,7 @@ static int port_switchdev_blocking_event(struct notifier_block *unused,
 		return NOTIFY_DONE;
 
 	switch (event) {
-	case SWITCHDEV_PORT_OBJ_ADD: /* fall through */
+	case SWITCHDEV_PORT_OBJ_ADD:
 	case SWITCHDEV_PORT_OBJ_DEL:
 		return ethsw_switchdev_port_obj_event(event, dev, ptr);
 	case SWITCHDEV_PORT_ATTR_SET:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
