Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39966225740
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 07:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F45C20BF8;
	Mon, 20 Jul 2020 05:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkCpolA6-a9u; Mon, 20 Jul 2020 05:52:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F73820788;
	Mon, 20 Jul 2020 05:52:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 711041BF2FE
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 05:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61F8A85A56
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 05:52:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8xd5pJyAzwgt for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 05:52:46 +0000 (UTC)
X-Greylist: delayed 00:21:06 by SQLgrey-1.7.6
Received: from mail.mutex.one (mail.mutex.one [62.77.152.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3F47859FC
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 05:52:46 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.mutex.one (Postfix) with ESMTP id 43542BF40804;
 Mon, 20 Jul 2020 08:31:38 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at mail.mutex.one
Received: from mail.mutex.one ([127.0.0.1])
 by localhost (mail.mutex.one [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7lWadLv2zUF; Mon, 20 Jul 2020 08:31:25 +0300 (EEST)
Received: [127.0.0.1] (localhost [127.0.0.1])nknown [109.103.89.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mutex.one (Postfix) with ESMTPSA id 1E54BBF4081B;
 Mon, 20 Jul 2020 08:31:25 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mutex.one; s=default;
 t=1595223085; bh=3Q9wo/RG1dE1G4AJjRDMl1EzN2ABC523RLFu8lO45+o=;
 h=From:To:Cc:Subject:Date:From;
 b=I1UNQqWcpweA0tJO4MSGrr+sXL60dyCyzOC0yYAVR6sUE6sE5bxzNnk0ctkdwzKIW
 myXeWMd10HeFDieroyfgs5xF1lbiV/L73zc+2b12jPmkoWCYM0SrbssyNUDisfQrRu
 rqINk9076cV13yEncmTngZt59JTweN9igrDykisI=
From: Marian Posteuca <posteuca@mutex.one>
To: Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: dpaa2-ethsw: fix switch/case fallthrough warning
Date: Mon, 20 Jul 2020 08:30:36 +0300
Message-Id: <20200720053036.10383-1-posteuca@mutex.one>
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
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 2fb75a7c9314..4986591097dc 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1362,7 +1362,8 @@ static int port_switchdev_blocking_event(struct notifier_block *unused,
 		return NOTIFY_DONE;
 
 	switch (event) {
-	case SWITCHDEV_PORT_OBJ_ADD: /* fall through */
+	case SWITCHDEV_PORT_OBJ_ADD:
+		fallthrough;
 	case SWITCHDEV_PORT_OBJ_DEL:
 		return ethsw_switchdev_port_obj_event(event, dev, ptr);
 	case SWITCHDEV_PORT_ATTR_SET:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
