Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 703182D05D6
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 17:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F67A86C8A;
	Sun,  6 Dec 2020 16:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVYjb8x9SgIQ; Sun,  6 Dec 2020 16:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2739A86D33;
	Sun,  6 Dec 2020 16:07:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E9FC1BF28F
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 16:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55603204BD
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 16:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJ3PVYw0q+UY for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 16:07:25 +0000 (UTC)
X-Greylist: delayed 00:08:10 by SQLgrey-1.7.6
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
 by silver.osuosl.org (Postfix) with ESMTP id CF0F920496
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 16:07:23 +0000 (UTC)
Received: from localhost (unknown [60.163.229.220])
 by APP-05 (Coremail) with SMTP id zQCowADnyOHN_8xfCAPUAA--.35835S2;
 Sun, 06 Dec 2020 23:59:10 +0800 (CST)
From: shaojie.dong@isrc.iscas.ac.cn
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: check register_netdev() return value
Date: Sun,  6 Dec 2020 23:59:07 +0800
Message-Id: <20201206155907.7991-1-shaojie.dong@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: zQCowADnyOHN_8xfCAPUAA--.35835S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKr1rWr1kCr4UCrW5Jw43Jrb_yoWfZrbEkw
 1I9r97Jrs8Ca45u3WDCr13AryIvaykWw40qF1jgFWrGryxKws5W34DWFn8GrW8Zr9FkrZx
 Aw12gr1Syr47ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbIAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr0_Gr
 1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
 jxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
 1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4kE6xkIj40Ew7xC0wCY
 02Avz4vE14v_XrWl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxV
 Aqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r12
 6r1DMIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6x
 kF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWrJr0_WFyUJwCI42IY6I8E87Iv
 67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyT
 uYvjfU1LvKUUUUU
X-Originating-IP: [60.163.229.220]
X-CM-SenderInfo: pvkd0ytlhov01qj6x21ufox2xfdvhtffof0/
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 shaojie.dong@isrc.iscas.ac.cn
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: "shaojie.dong" <shaojie.dong@isrc.iscas.ac.cn>

Function register_netdev() can fail, so we should check it's return value

Signed-off-by: shaojie.dong <shaojie.dong@isrc.iscas.ac.cn>
---
 drivers/staging/rtl8712/hal_init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 715f1fe8b..fbcc6de1b 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -45,7 +45,8 @@ static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
 	}
 	adapter->fw = firmware;
 	/* firmware available - start netdev */
-	register_netdev(adapter->pnetdev);
+	if (register_netdev(adapter->pnetdev) != 0)
+		dev_err(&udev->dev, "r8712u: register_netdev() failed\n");
 	complete(&adapter->rtl8712_fw_ready);
 }
 
-- 
2.17.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
