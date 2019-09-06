Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C75AC1DA
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 23:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0070864EF;
	Fri,  6 Sep 2019 21:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KAh7q3Kbt6WG; Fri,  6 Sep 2019 21:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18A9486516;
	Fri,  6 Sep 2019 21:11:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79E0A1BF3FE
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 21:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 760B188253
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 21:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l6cMAMCQOzhM for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 21:11:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
 [216.40.44.214])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F6858822A
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 21:11:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id BEA8580181A2
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 20:55:30 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 16215182CF669;
 Fri,  6 Sep 2019 20:55:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:69:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3873:4321:5007:6119:7903:8603:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12438:12555:12740:12760:12895:13439:14181:14659:14721:21080:21627:30054:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: crib41_2f8de0bcaf609
X-Filterd-Recvd-Size: 3286
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Fri,  6 Sep 2019 20:55:26 +0000 (UTC)
Message-ID: <f64f4ccd12ac9de5368a2d312751d7afae45f824.camel@perches.com>
Subject: Re: [PATCH] Fixed parentheses malpractice in apex_driver.c
From: Joe Perches <joe@perches.com>
To: volery <sandro@volery.com>, rspringer@google.com, toddpoynor@google.com,
 benchan@chromium.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org,  linux-kernel@vger.kernel.org
Date: Fri, 06 Sep 2019 13:55:24 -0700
In-Reply-To: <20190906183801.GA2456@volery>
References: <20190906183801.GA2456@volery>
User-Agent: Evolution 3.32.1-2 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-09-06 at 20:38 +0200, volery wrote:
> There were some parentheses at the end of lines, which I took care of.

Not every instance of this checkpatch warning should be changed.

This specific instance is because it uses very long identifiers
and really maybe should just be left alone.

> This is my first patch.

Welcome, try again though.

If you really want to do something here maybe do something like
use temporaries to reduce line length and remove multiple
scnprintf statements.  This would also reduce object size.

---
 drivers/staging/gasket/apex_driver.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 2973bb920a26..ae1a3a14dde6 100644
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
@@ -524,29 +526,27 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
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
 
+	ret = scnprintf(buf, PAGE_SIZE, "%u\n", val);
+
+exit:
 	gasket_sysfs_put_attr(device, gasket_attr);
 	gasket_sysfs_put_device_data(device, gasket_dev);
 	return ret;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
