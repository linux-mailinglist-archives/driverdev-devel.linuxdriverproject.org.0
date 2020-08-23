Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A35624EBCE
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Aug 2020 08:28:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7E958816B;
	Sun, 23 Aug 2020 06:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUOcPz+5c-0I; Sun, 23 Aug 2020 06:28:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6ADBC87EA7;
	Sun, 23 Aug 2020 06:28:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA74D1BF335
 for <devel@linuxdriverproject.org>; Sun, 23 Aug 2020 06:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C705B8551F
 for <devel@linuxdriverproject.org>; Sun, 23 Aug 2020 06:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e49wTnW97u8x for <devel@linuxdriverproject.org>;
 Sun, 23 Aug 2020 06:28:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from zju.edu.cn (mail.zju.edu.cn [61.164.42.155])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5417A85513
 for <devel@driverdev.osuosl.org>; Sun, 23 Aug 2020 06:27:55 +0000 (UTC)
Received: from localhost.localdomain (unknown [210.32.144.184])
 by mail-app2 (Coremail) with SMTP id by_KCgAXwJ1fDEJfRcEbAg--.21359S4;
 Sun, 23 Aug 2020 14:27:46 +0800 (CST)
From: Dinghao Liu <dinghao.liu@zju.edu.cn>
To: dinghao.liu@zju.edu.cn,
	kjlu@umn.edu
Subject: [PATCH] vme: ca91cx42: fix memleak in ca91cx42_dma_list_add
Date: Sun, 23 Aug 2020 14:27:40 +0800
Message-Id: <20200823062743.6860-1-dinghao.liu@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: by_KCgAXwJ1fDEJfRcEbAg--.21359S4
X-Coremail-Antispam: 1UD129KBjvdXoWrtF1rZryDJr13Jr17Gw4rXwb_yoWDAFb_uF
 13C3W2vF4DtFy2q34DCw4rZryq9398uFn3ury8K3sxGFy8Za47KFWjvFW5JryrZw40qFsF
 qr1UCF1fur4jyjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbxAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AK
 wVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20x
 vE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwA2z4x0Y4vEx4A2
 jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
 x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWU
 GwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
 8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_GF1l42xK82IYc2Ij64vIr41l
 42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
 8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8
 ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
 0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI42IY6I8E87Iv67AK
 xVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x0J
 U-J5rUUUUU=
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAgoSBlZdtPnBhAAzss
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
Cc: devel@driverdev.osuosl.org, Manohar Vanga <manohar.vanga@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martyn Welch <martyn@welchs.me.uk>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When we encounter invalid data width or address space,
entry should be freed just like what we've done in the
previous error paths.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
---
 drivers/vme/bridges/vme_ca91cx42.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/vme/bridges/vme_ca91cx42.c b/drivers/vme/bridges/vme_ca91cx42.c
index ea938dc29c5e..1c464afd9d4e 100644
--- a/drivers/vme/bridges/vme_ca91cx42.c
+++ b/drivers/vme/bridges/vme_ca91cx42.c
@@ -1100,7 +1100,8 @@ static int ca91cx42_dma_list_add(struct vme_dma_list *list,
 		break;
 	default:
 		dev_err(dev, "Invalid data width\n");
-		return -EINVAL;
+		retval = -EINVAL;
+		goto err_cycle;
 	}
 
 	/* Setup address space */
@@ -1122,8 +1123,8 @@ static int ca91cx42_dma_list_add(struct vme_dma_list *list,
 		break;
 	default:
 		dev_err(dev, "Invalid address space\n");
-		return -EINVAL;
-		break;
+		retval = -EINVAL;
+		goto err_cycle;
 	}
 
 	if (vme_attr->cycle & VME_SUPER)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
