Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC271FD1A5
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 18:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BA108742E;
	Wed, 17 Jun 2020 16:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7SvuwcAnHkP; Wed, 17 Jun 2020 16:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24BFF873F1;
	Wed, 17 Jun 2020 16:12:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF53B1BF5A3
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 16:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB917873F9
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 16:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubhKQQ89ioyp for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 16:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m963.mail.126.com (mail-m963.mail.126.com [123.126.96.3])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AF1C873F1
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 16:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=o8xG9c5meYjmWWp/0P
 CIRTjcybBm99Rz8hWdqIX3rqc=; b=Nc8lSrLpxgUUZ8guUoDste63Jo8KN3etGZ
 owl9by6etAXJQd8L1mWLxod0JSqJCuzQ8rXRAxQMFYO+0It2sDBgwm3hpdZYv651
 GKZEtl8ybzLnjGStiiFSAaf4kjNPjtUjulEfDllnUxv768kFcBQttFWf/fzwP5z1
 N+MC7VgN8=
Received: from zhixu-home.lan (unknown [114.249.228.138])
 by smtp8 (Coremail) with SMTP id NORpCgCHqIDHQOpeLmgYBA--.75S2;
 Thu, 18 Jun 2020 00:11:52 +0800 (CST)
From: Zhixu Zhao <zhixu001@126.com>
To: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Ben Chan <benchan@chromium.org>, Richard Yeh <rcy@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>
Subject: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Date: Thu, 18 Jun 2020 00:11:27 +0800
Message-Id: <20200617161127.32006-1-zhixu001@126.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: NORpCgCHqIDHQOpeLmgYBA--.75S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw13JF1DXr4UJw4DXw48Xrb_yoW5Kw4xpa
 y8Cas8KrZFqwsIqr13JFWYyrZxXr1qyryjk3yfArWkJrZ8ta48Jr48GF18KayIyFWUZr47
 Wr1DJFWjy34DXaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRBc_hUUUUU=
X-Originating-IP: [114.249.228.138]
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiZwhGfF16eKkEXwAAs4
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
Cc: Zhixu Zhao <zhixu001@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A coding alignment issue is found by checkpatch.pl.
Fix it by using a temporary for gasket_dev->bar_data[bar_num].

Signed-off-by: Zhixu Zhao <zhixu001@126.com>
---

Please ignore the last email (if you received it) because I forgot to Cc
the mailing list. Sorry for the noise...

Changes in v2:
  - gasket_dev->bar_data[bar_num] was used everywhere. Now replace it
    with a `struct gasket_bar_data *data`, making the code more elegant.
    Thanks to Joe Perches.

 drivers/staging/gasket/gasket_core.c | 29 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index 67325fbaf760..28dab302183b 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -261,6 +261,7 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
 	const struct gasket_driver_desc *driver_desc =
 		internal_desc->driver_desc;
 	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
+	struct gasket_bar_data *data;
 	int ret;
 
 	if (desc_bytes == 0)
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
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
