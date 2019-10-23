Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF213E1374
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 09:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFF29204D8;
	Wed, 23 Oct 2019 07:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXivTgZMPoXu; Wed, 23 Oct 2019 07:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5BB0200E5;
	Wed, 23 Oct 2019 07:53:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0ADBC1BF311
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 07:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 07CD4874F3
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 07:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3D3zbKJUgdf for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 07:52:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D016087482
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 07:52:35 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A8E6AC35CB118D024D9F;
 Wed, 23 Oct 2019 15:52:30 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Wed, 23 Oct 2019
 15:52:18 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <gregkh@linuxfoundation.org>, <yuehaibing@huawei.com>
Subject: [PATCH -next] staging: comedi: remove unused variable
 'route_table_size'
Date: Wed, 23 Oct 2019 15:52:06 +0800
Message-ID: <20191023075206.33088-1-yuehaibing@huawei.com>
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

drivers/staging/comedi/drivers/ni_routes.c:52:21: warning:
 route_table_size defined but not used [-Wunused-const-variable=]

It is never used since introduction.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/comedi/drivers/ni_routes.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_routes.c b/drivers/staging/comedi/drivers/ni_routes.c
index eb61494..673d732 100644
--- a/drivers/staging/comedi/drivers/ni_routes.c
+++ b/drivers/staging/comedi/drivers/ni_routes.c
@@ -49,8 +49,6 @@
 /* Helper for accessing data. */
 #define RVi(table, src, dest)	((table)[(dest) * NI_NUM_NAMES + (src)])
 
-static const size_t route_table_size = NI_NUM_NAMES * NI_NUM_NAMES;
-
 /*
  * Find the proper route_values and ni_device_routes tables for this particular
  * device.
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
