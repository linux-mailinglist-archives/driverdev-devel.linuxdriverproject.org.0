Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B246CAC086
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 21:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C159120502;
	Fri,  6 Sep 2019 19:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWPDpo5J6E59; Fri,  6 Sep 2019 19:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C70B720443;
	Fri,  6 Sep 2019 19:26:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E304C1BF5B5
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 19:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DFAD684B96
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 19:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Wy6f1HIxDbg for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 19:26:50 +0000 (UTC)
X-Greylist: delayed 00:48:43 by SQLgrey-1.7.6
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
 [217.26.49.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76EAA847CB
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 19:26:50 +0000 (UTC)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
 by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i6J7T-000Jjb-HO; Fri, 06 Sep 2019 20:38:03 +0200
Received: from 145-126.cable.senselan.ch ([83.222.145.126] helo=volery)
 by asmtp012.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i6J7T-000Axi-Dk; Fri, 06 Sep 2019 20:38:03 +0200
X-Authenticated-Sender-Id: sandro@volery.com
Date: Fri, 6 Sep 2019 20:38:01 +0200
From: volery <sandro@volery.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Fixed parentheses malpractice in apex_driver.c
Message-ID: <20190906183801.GA2456@volery>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There were some parentheses at the end of lines, which I took care of.
This is my first patch.

Signed-off-by: Sandro Volery <sandro@volery.com>
---
 drivers/staging/gasket/apex_driver.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 464648ee2036..78ebd590f877 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -527,17 +527,20 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
 	switch (type) {
 	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries(
+				gasket_page_table_num_entries
+				(
 					gasket_dev->page_table[0]));
 		break;
 	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_simple_entries(
+				gasket_page_table_num_simple_entries
+				(
 					gasket_dev->page_table[0]));
 		break;
 	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_active_pages(
+				gasket_page_table_num_active_pages
+				(
 					gasket_dev->page_table[0]));
 		break;
 	default:
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
