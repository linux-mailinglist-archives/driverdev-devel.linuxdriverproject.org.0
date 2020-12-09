Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B5D2D44F6
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 16:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41259873EB;
	Wed,  9 Dec 2020 15:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c8TgNco3xEu9; Wed,  9 Dec 2020 15:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E59BD87364;
	Wed,  9 Dec 2020 15:01:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 432121BF38B
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 15:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BCAB22E2C7
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 15:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLKKAdNDhh34 for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 15:01:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
 by silver.osuosl.org (Postfix) with ESMTP id 2F4ED2E2D0
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 15:01:30 +0000 (UTC)
Received: from localhost (unknown [125.120.23.64])
 by APP-01 (Coremail) with SMTP id qwCowADHz0_G5tBfB490AQ--.7550S2;
 Wed, 09 Dec 2020 23:01:27 +0800 (CST)
From: shaojie.dong@isrc.iscas.ac.cn
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: check register_netdev() return value
Date: Wed,  9 Dec 2020 23:01:24 +0800
Message-Id: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: qwCowADHz0_G5tBfB490AQ--.7550S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKr1rWr1kCr4UCr47Jry7KFg_yoWfKwcE9w
 1I9r97Grs8Ca45u3WUAr13AryxZaykWw4vqF1jgFWrGryxKws5XrykWFn8Gay8Z3sFyrZr
 Aw12gr1Syr47WjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbI8FF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Jr0_
 Gr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Jr0_Gr
 1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0
 cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8Jw
 ACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lw4CEc2x0rVAKj4xxMxkI
 ecxEwVAFwVW5WwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c
 02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_
 Jw1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7
 CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAF
 wI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvj
 fU1jg4UUUUU
X-Originating-IP: [125.120.23.64]
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
 drivers/staging/rtl8712/hal_init.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 715f1fe8b..38a3e3d44 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -45,7 +45,10 @@ static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
 	}
 	adapter->fw = firmware;
 	/* firmware available - start netdev */
-	register_netdev(adapter->pnetdev);
+	if (register_netdev(adapter->pnetdev) != 0) {
+		netdev_err(adapter->pnetdev, "register_netdev() failed\n");
+		free_netdev(adapter->pnetdev);
+	}
 	complete(&adapter->rtl8712_fw_ready);
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
