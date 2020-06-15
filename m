Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B24B51FB106
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 14:44:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 540F087751;
	Tue, 16 Jun 2020 12:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LyULgteFFLLX; Tue, 16 Jun 2020 12:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E4C08771E;
	Tue, 16 Jun 2020 12:44:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B2BF1BF2C8
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 12:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B377A8539F
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 12:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4e0DN27-WqjU for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 12:44:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0120.hostedemail.com
 [216.40.44.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D10888699
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 12:44:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id C1F2D1802452A
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 19:07:27 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 4E3B118029126;
 Mon, 15 Jun 2020 19:07:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1461:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:2914:3138:3139:3140:3141:3142:3151:3353:3622:3865:3867:3868:3871:4321:5007:7903:8603:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12297:12555:12740:12760:12895:13439:14181:14659:14721:21080:21220:21600:21611:21627:21987:21990:30003:30054:30056:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:6, LUA_SUMMARY:none
X-HE-Tag: actor55_460e15f26df8
X-Filterd-Recvd-Size: 4226
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Mon, 15 Jun 2020 19:07:23 +0000 (UTC)
Message-ID: <3d843013419f2946cf991913c76b8d0218930366.camel@perches.com>
Subject: Re: [PATCH] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
From: Joe Perches <joe@perches.com>
To: Zhixu Zhao <zhixu001@126.com>, Rob Springer <rspringer@google.com>, Todd
 Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>, Richard
 Yeh <rcy@google.com>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Mon, 15 Jun 2020 12:07:22 -0700
In-Reply-To: <20200614135131.11282-1-zhixu001@126.com>
References: <20200614135131.11282-1-zhixu001@126.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
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

On Sun, 2020-06-14 at 21:51 +0800, Zhixu Zhao wrote:
> Fix a coding alignment issue found by checkpatch.pl.

Another option would be to use a temporary for
gasket_dev->bar_data[bar_num]

Something like:
---
 drivers/staging/gasket/gasket_core.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index 67325fbaf760..73b138f984cf 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -262,6 +262,7 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
 		internal_desc->driver_desc;
 	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
 	int ret;
+	struct gasket_bar_data *data;
 
 	if (desc_bytes == 0)
 		return 0;
@@ -270,31 +271,32 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
 		/* not PCI: skip this entry */
 		return 0;
 	}
+
+	data = &gasket_dev->bar_data[bar_num];
+
 	/*
 	 * pci_resource_start and pci_resource_len return a "resource_size_t",
 	 * which is safely castable to ulong (which itself is the arg to
 	 * request_mem_region).
 	 */
-	gasket_dev->bar_data[bar_num].phys_base =
+	data->phys_base =
 		(ulong)pci_resource_start(gasket_dev->pci_dev, bar_num);
-	if (!gasket_dev->bar_data[bar_num].phys_base) {
+	if (!data->phys_base) {
 		dev_err(gasket_dev->dev, "Cannot get BAR%u base address\n",
 			bar_num);
 		return -EINVAL;
 	}
 
-	gasket_dev->bar_data[bar_num].length_bytes =
+	data->length_bytes =
 		(ulong)pci_resource_len(gasket_dev->pci_dev, bar_num);
-	if (gasket_dev->bar_data[bar_num].length_bytes < desc_bytes) {
+	if (data->length_bytes < desc_bytes) {
 		dev_err(gasket_dev->dev,
 			"PCI BAR %u space is too small: %lu; expected >= %lu\n",
-			bar_num, gasket_dev->bar_data[bar_num].length_bytes,
-			desc_bytes);
+			bar_num, data->length_bytes, desc_bytes);
 		return -ENOMEM;
 	}
 
-	if (!request_mem_region(gasket_dev->bar_data[bar_num].phys_base,
-				gasket_dev->bar_data[bar_num].length_bytes,
+	if (!request_mem_region(data->phys_base, data->length_bytes,
 				gasket_dev->dev_info.name)) {
 		dev_err(gasket_dev->dev,
 			"Cannot get BAR %d memory region %p\n",
@@ -302,10 +304,8 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
 		return -EINVAL;
 	}
 
-	gasket_dev->bar_data[bar_num].virt_base =
-		ioremap(gasket_dev->bar_data[bar_num].phys_base,
-				gasket_dev->bar_data[bar_num].length_bytes);
-	if (!gasket_dev->bar_data[bar_num].virt_base) {
+	data->virt_base = ioremap(data->phys_base, data->length_bytes);
+	if (!data->virt_base) {
 		dev_err(gasket_dev->dev,
 			"Cannot remap BAR %d memory region %p\n",
 			bar_num, &gasket_dev->pci_dev->resource[bar_num]);
@@ -319,9 +319,8 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
 	return 0;
 
 fail:
-	iounmap(gasket_dev->bar_data[bar_num].virt_base);
-	release_mem_region(gasket_dev->bar_data[bar_num].phys_base,
-			   gasket_dev->bar_data[bar_num].length_bytes);
+	iounmap(data->virt_base);
+	release_mem_region(data->phys_base, data->length_bytes);
 	return ret;
 }
 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
