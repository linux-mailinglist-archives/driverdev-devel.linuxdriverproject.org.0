Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A369E8D9
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 15:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C09248800D;
	Tue, 27 Aug 2019 13:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0lireZbdK2I; Tue, 27 Aug 2019 13:14:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AFE087F44;
	Tue, 27 Aug 2019 13:14:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91C2D1BF85D
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 13:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 842A4883CC
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 13:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVDjfme793gK for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 13:14:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8F81588378
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 13:14:13 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7EFC672E772FE8289F6A;
 Tue, 27 Aug 2019 21:14:06 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 21:13:56 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <christian.gromm@microchip.com>,
 <dan.carpenter@oracle.com>, <colin.king@canonical.com>,
 <yuehaibing@huawei.com>
Subject: [PATCH] staging: most: sound: Fix error path of audio_init
Date: Tue, 27 Aug 2019 21:13:46 +0800
Message-ID: <20190827131346.12704-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If most_register_configfs_subsys() fails, we should
call most_deregister_component() do cleanup.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 919c03ae11b9 ("staging: most: enable configfs support")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/most/sound/sound.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 342f390..7981706 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -802,8 +802,11 @@ static int __init audio_init(void)
 	if (ret)
 		pr_err("Failed to register %s\n", comp.name);
 	ret = most_register_configfs_subsys(&comp);
-	if (ret)
+	if (ret) {
 		pr_err("Failed to register %s configfs subsys\n", comp.name);
+		most_deregister_component(&comp);
+	}
+
 	return ret;
 }
 
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
