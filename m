Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F33F41F8940
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jun 2020 16:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9A6A86B9D;
	Sun, 14 Jun 2020 14:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ubQCWlY_7TqW; Sun, 14 Jun 2020 14:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39C0386B33;
	Sun, 14 Jun 2020 14:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D08C1BF5AE
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 14:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6943485CD0
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 14:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsGNxPdn2ZgZ for <devel@linuxdriverproject.org>;
 Sun, 14 Jun 2020 14:34:11 +0000 (UTC)
X-Greylist: delayed 00:30:52 by SQLgrey-1.7.6
Received: from mail-m965.mail.126.com (mail-m965.mail.126.com [123.126.96.5])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CB3E4874F7
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 14:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=lsbRBE5rJ6r7F+hR4L
 UAghXlgSQa25BI4H503EvZ2m0=; b=bpU9clATCOiwWUDZ5kwlipVICcIKF1cblZ
 Ye0xZZ2rjeeJmQDr8b4Iyyo9At44Op1ynKhPpr0ymA/XoT+ar/yanwGx2ARbjT9+
 XjTeghWIecPKFiGzQd/VBduqCwxR9Oxjju4AqxqJ5BHRQxTXa0XbATv420kpN2F3
 okFlBuX8I=
Received: from zhixu-home.lan (unknown [114.249.235.144])
 by smtp10 (Coremail) with SMTP id NuRpCgBnbyMaLuZeZ7olRw--.5682S2;
 Sun, 14 Jun 2020 22:03:08 +0800 (CST)
From: Zhixu Zhao <zhixu001@126.com>
To: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Ben Chan <benchan@chromium.org>, Richard Yeh <rcy@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Date: Sun, 14 Jun 2020 21:51:31 +0800
Message-Id: <20200614135131.11282-1-zhixu001@126.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: NuRpCgBnbyMaLuZeZ7olRw--.5682S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Xw1DAry5Jw48trWxuF15urg_yoWfAFcEkr
 4Iy34xX3Z5Kas7GF15Gr9rGFy5twnrXrWvgFW2q3yUW3yqvF4UWrW8Ar1kuF4Dur47uFy8
 C3yUCrn0qw1ayjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUjwZ2PUUUUU==
X-Originating-IP: [114.249.235.144]
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiDxxDfFpEAyneeQAAs-
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

Fix a coding alignment issue found by checkpatch.pl.

Signed-off-by: Zhixu Zhao <zhixu001@126.com>
---
 drivers/staging/gasket/gasket_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index 67325fbaf760..357063ad5c33 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -304,7 +304,7 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
 
 	gasket_dev->bar_data[bar_num].virt_base =
 		ioremap(gasket_dev->bar_data[bar_num].phys_base,
-				gasket_dev->bar_data[bar_num].length_bytes);
+			gasket_dev->bar_data[bar_num].length_bytes);
 	if (!gasket_dev->bar_data[bar_num].virt_base) {
 		dev_err(gasket_dev->dev,
 			"Cannot remap BAR %d memory region %p\n",
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
