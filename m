Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FEFAE39A
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 08:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 56A5A2152F;
	Tue, 10 Sep 2019 06:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HadRhWcTTXEx; Tue, 10 Sep 2019 06:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2CD2203A4;
	Tue, 10 Sep 2019 06:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE36B1BF30E
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 06:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D76B12010D
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 06:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22ss1JtWbqkQ for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 06:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
 [217.26.49.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 80D812000B
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 06:19:34 +0000 (UTC)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
 by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7ZUw-000CyG-0M; Tue, 10 Sep 2019 08:19:30 +0200
Received: from 8.28.150.83.ftth.ewwwb.as8758.net ([83.150.28.8] helo=volery)
 by asmtp012.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7ZUv-000IZx-TV; Tue, 10 Sep 2019 08:19:29 +0200
X-Authenticated-Sender-Id: sandro@volery.com
Date: Tue, 10 Sep 2019 08:19:28 +0200
From: Sandro Volery <sandro@volery.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] Staging: gasket: Use temporaries to reduce line length.
Message-ID: <20190910061928.GA9623@volery>
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
Cc: joe@perches.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Using temporaries for gasket_page_table entries to remove scnprintf()
statements and reduce line length, as suggested by Joe Perches. Thanks!

Signed-off-by: Sandro Volery <sandro@volery.com>
---
v3: Fixed faulty copy/paste of function
v2: Attempt to fix
v1: Original patch


 drivers/staging/gasket/apex_driver.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 2973bb920a26..46199c8ca441 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -509,6 +509,8 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
 	struct gasket_dev *gasket_dev;
 	struct gasket_sysfs_attribute *gasket_attr;
 	enum sysfs_attribute_type type;
+	struct gasket_page_table *gpt;
+	uint val;
 
 	gasket_dev = gasket_sysfs_get_device_data(device);
 	if (!gasket_dev) {
@@ -524,29 +526,25 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
 	}
 
 	type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
+	gpt = gasket_dev->page_table[0];
 	switch (type) {
 	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
-		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries(
-					gasket_dev->page_table[0]));
+		val = gasket_page_table_num_entries(gpt);
 		break;
 	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
-		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_simple_entries(
-					gasket_dev->page_table[0]));
+		val = gasket_page_table_num_simple_entries(gpt);
 		break;
 	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
-		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_active_pages(
-					gasket_dev->page_table[0]));
+		val = gasket_page_table_num_active_pages(gpt);
 		break;
 	default:
 		dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
 			attr->attr.name);
 		ret = 0;
-		break;
+		goto exit;
 	}
-
+	ret = scnprintf(buf, PAGE_SIZE, "%u\n", val);
+exit:
 	gasket_sysfs_put_attr(device, gasket_attr);
 	gasket_sysfs_put_device_data(device, gasket_dev);
 	return ret;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
