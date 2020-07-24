Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C8922C58B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 14:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5371186F57;
	Fri, 24 Jul 2020 12:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 67tuRhw2kNRo; Fri, 24 Jul 2020 12:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21D2086F80;
	Fri, 24 Jul 2020 12:50:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 838441BF29D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 12:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7AFD2203C8
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 12:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7PBH9exPZrea for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 12:50:38 +0000 (UTC)
X-Greylist: delayed 00:11:52 by SQLgrey-1.7.6
Received: from aliyun-sdnproxy-3.icoremail.net (aliyun-cloud.icoremail.net
 [47.90.104.110])
 by silver.osuosl.org (Postfix) with SMTP id F0AF920365
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 12:50:37 +0000 (UTC)
Received: from localhost.localdomain (unknown [210.32.144.186])
 by mail-app4 (Coremail) with SMTP id cS_KCgAnnnlG1Bpfy25GAA--.19865S4;
 Fri, 24 Jul 2020 20:30:02 +0800 (CST)
From: Dinghao Liu <dinghao.liu@zju.edu.cn>
To: dinghao.liu@zju.edu.cn,
	kjlu@umn.edu
Subject: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized variable
 authmode
Date: Fri, 24 Jul 2020 20:29:55 +0800
Message-Id: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: cS_KCgAnnnlG1Bpfy25GAA--.19865S4
X-Coremail-Antispam: 1UD129KBjvdXoW7XF43Kr1ruFWUtr1kArW8JFb_yoWDWwb_KF
 W8t34xXr1DAF1fCr4UGF4FqFWIvrWDZr1Iy3yktFZxuF45C3yDur9rCrnrGFW7XFW2qr9r
 Cr4aqr1Fkr18CjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUb-kFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AK
 wVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20x
 vE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1l84ACjcxK6I8E
 87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
 8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_
 Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
 xGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka0xkIwI1lc2xSY4AK
 67AK6ryUMxAIw28IcxkI7VAKI48JMxAIw28IcVCjz48v1sIEY20_GFWkJr1UJwCFx2IqxV
 CFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r10
 6r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxV
 WUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG
 6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JV
 W8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb1rW5UUUUU==
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAggHBlZdtPRcawARsm
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The variable authmode will keep uninitialized if neither if
statements used to initialize this variable are not triggered.
Then authmode may contain a garbage value and influence the
execution flow of this function.

Fix this by initializing it to zero.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9de2d421f6b1..716f8d8a5c13 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1711,7 +1711,7 @@ static int rtw_append_pmkid(struct adapter *Adapter, int iEntry, u8 *ie, uint ie
 
 int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_len)
 {
-	u8 authmode;
+	u8 authmode = 0;
 	uint ielength;
 	int iEntry;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
