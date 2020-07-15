Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DDC220E3E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 15:35:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E028231C8;
	Wed, 15 Jul 2020 13:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmRyExdDZVoX; Wed, 15 Jul 2020 13:35:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9375C23251;
	Wed, 15 Jul 2020 13:35:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5EB1BF3F4
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 13:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88349897F1
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 13:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jhFjM-wfdvb8 for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 13:34:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m963.mail.126.com (mail-m963.mail.126.com [123.126.96.3])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C89AE897DE
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 13:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=Wsk0EW3NKnQYOliQwG
 GUlcFkMt5BvGU9p5h2zd+faXo=; b=N5OuaLw4bFTclyFje8Met8ZM2lbSoccaQd
 xTg6Ww313Ba2mJImdtGCLgLqX5VJdfjhd+m3Ml+P7Fs4Finu9IbdZMGulskaeNvu
 GB47ZVQ5vDT9dMsn9zFWG/f1lPyB1bKFnqtjpcaW0TsYWe/MhEmo6KzRbfbcltLy
 qn8xbDu6g=
Received: from zhixu-home.lan (unknown [114.249.221.156])
 by smtp8 (Coremail) with SMTP id NORpCgDn7f3qBQ9fWhQlAQ--.2826S2;
 Wed, 15 Jul 2020 21:34:36 +0800 (CST)
From: Zhixu Zhao <zhixu001@126.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, joe@perches.com,
 linux-kernel@vger.kernel.org, rcy@google.com, rspringer@google.com,
 toddpoynor@google.com, dan.carpenter@oracle.com
Subject: [PATCH v3] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Date: Wed, 15 Jul 2020 21:33:13 +0800
Message-Id: <20200715133313.16327-1-zhixu001@126.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200617161127.32006-1-zhixu001@126.com>
References: <20200617161127.32006-1-zhixu001@126.com>
X-CM-TRANSID: NORpCgDn7f3qBQ9fWhQlAQ--.2826S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw13JF4rCr48Zw15CF15Jwb_yoW5KF1kpa
 y8Cas8KrZFqwsIqr13JF4UArZxXr1qyryjk3ySyrWkJrZ8ta48Jr48GF18KayIyFWUAr47
 Wr1DJFWjy34DXaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRBVbPUUUUU=
X-Originating-IP: [114.249.221.156]
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiJAxifFpEAOdvXAAAs8
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
Cc: zhixu001@126.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A coding alignment issue is found by checkpatch.pl.
Fix it by using a temporary for gasket_dev->bar_data[bar_num].

Signed-off-by: Zhixu Zhao <zhixu001@126.com>
---

Changes in v2:
  - gasket_dev->bar_data[bar_num] was used everywhere. Now replace it
    with a `struct gasket_bar_data *data`, making the code more elegant.
    Thanks to Joe Perches.

About v3:
  - Resolved all comments in v2. Resending it...

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
