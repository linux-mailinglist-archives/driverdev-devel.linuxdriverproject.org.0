Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53054EA8FC
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Mar 2022 10:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B33840ABB;
	Tue, 29 Mar 2022 08:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U90pnQ43SQ-x; Tue, 29 Mar 2022 08:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE84140128;
	Tue, 29 Mar 2022 08:09:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8B81BF2C0
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 08:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88744402FE
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 08:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHIzyxTSFPsH for <devel@linuxdriverproject.org>;
 Tue, 29 Mar 2022 08:09:46 +0000 (UTC)
X-Greylist: delayed 00:19:28 by SQLgrey-1.8.0
Received: from m12-14.163.com (m12-14.163.com [220.181.12.14])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0FA440128
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 08:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=a81h0Gq2WHNyBZSI3c
 IfKvhqk2zSuEwED0Bi/9DLrxg=; b=CUGzoTEMIBWRoHybOR5JeOiUDSpQ/KvHl5
 eWbU94CCub4qr2zNjmLlkgZO8gcVI0b+FRvFgakbX6jxd71pE/0+eZuigY8jbHrl
 cbQ2z4zVLLYVehP82bjhUBdEnSqCUj5TQ/TJmKuQiAEQNyylxRZ3NQZvL8VIojEU
 1NdO11CEI=
Received: from localhost (unknown [159.226.95.33])
 by smtp10 (Coremail) with SMTP id DsCowAAHVV01ukJi5UkzDA--.40878S2;
 Tue, 29 Mar 2022 15:50:14 +0800 (CST)
From: QintaoShen <unSimple1993@163.com>
To: linus.walleij@linaro.org
Subject: [PATCH v1] pinctrl: ralink: rt2880: Check for return value of
 devm_kcalloc()
Date: Tue, 29 Mar 2022 15:50:12 +0800
Message-Id: <1648540212-9790-1-git-send-email-unSimple1993@163.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: DsCowAAHVV01ukJi5UkzDA--.40878S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF15XFW7try8Cw1xZr1UJrb_yoWfJrXEkF
 yxt3s3JryUG3W3uw1qya1UZryFkFs7uFyvvFnIqa43CF9Fvan3ur1kWF4UKw1kWr47tFyD
 Cw1YqFn5Zw47CjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_5Ef5UUUUU==
X-Originating-IP: [159.226.95.33]
X-CM-SenderInfo: 5xqvxz5sohimizt6il2tof0z/1tbiXxbSH11534uUsQAAsR
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 QintaoShen <unSimple1993@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memory allocation function devm_kcalloc() may return NULL pointer,
so it is better to add a check for 'p->func[i]->pins' to avoid possible
NULL pointer dereference.

Signed-off-by: QintaoShen <unSimple1993@163.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index 96fc06d..308610e 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -266,6 +266,10 @@ static int rt2880_pinmux_pins(struct rt2880_priv *p)
 						p->func[i]->pin_count,
 						sizeof(int),
 						GFP_KERNEL);
+        
+        if (!p->func[i]->pins)
+            continue;
+
 		for (j = 0; j < p->func[i]->pin_count; j++)
 			p->func[i]->pins[j] = p->func[i]->pin_first + j;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
