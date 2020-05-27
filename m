Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6925E1E3D42
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EB2388788;
	Wed, 27 May 2020 09:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2im982UybtQy; Wed, 27 May 2020 09:06:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF9978878A;
	Wed, 27 May 2020 09:06:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 140041BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C85587D86
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ER6tCDH-V2rh
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C887287943
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570405; x=1622106405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=YT1p2jkhQjEOh+Toh8EnfM+hDVS9WGd+MEUj6fk8RGk=;
 b=EmAVqnhr8j+nPINdTgczZ3ITEzy1YYZaRxnWkGvRsMudl4yeU4mtxMkH
 nsbrmH2Sdxz/d13sNl9Shnt0UppYVyd8Xt4NNboc081PDngMVshExTwRK
 vJN1nEyGYVlr+5zjUDEfTrjB+OnZVkly8tEJqcNIgNJrSFENwevmepwqT
 pXDMSsx13odfMM6ZB03Tfs1Ty7VrPf9iGvW5NqvfwUTalQG7wZHECZ5CV
 Qo89BHY2kzI2qw2BFwwQuo2PYX+wKrqIzeRS4pVOBFT++d7JOPvc5un2B
 eRrsDpySQunkemGGKsEWShiStcLGLomLl/ejBpLPhjIGJHY+LZCX6Mefz Q==;
IronPort-SDR: 1GoF4Q1UpYguWjtUqN+Lvi3TYgQf7dU2/KSUKFlEKneT6u6gclI+2jdMS4N7h4nVSjFdF1Vuje
 mO5el0pc51INc/7y+5WLGyXkfZtGFOQg3o0RPZKXiKHElRuD+l5OK0fJXf5T+2/6GD2gEGbFB6
 4ccrlF0uPzgJOXtCpJNINwY4BihGikXeg73ChEcC6n4DpyDfCCjt+2ZbX56Kr7K27Y1SeMxIQh
 AiVCQHcaRH/Mug4yiXSN7VZ4VKaQ1qd27VLH66XeiXrrs+dZBeYVpXmiSfjNyDjIj1Lrp+iA+L
 tg0=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="77204630"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:43 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:42 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 10/10] staging: most: usb: use function sysfs_streq
Date: Wed, 27 May 2020 11:06:27 +0200
Message-ID: <1590570387-27069-11-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
References: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch replaces function strcmp() with sysfs_streq() to compare
strings provided via sysfs.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 1c4bdb8..df5876c 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -808,7 +808,7 @@ static int get_stat_reg_addr(const struct regs *regs, int size,
 	int i;
 
 	for (i = 0; i < size; i++) {
-		if (!strcmp(name, regs[i].name)) {
+		if (sysfs_streq(name, regs[i].name)) {
 			*reg_addr = regs[i].reg;
 			return 0;
 		}
@@ -828,10 +828,10 @@ static ssize_t value_show(struct device *dev, struct device_attribute *attr,
 	u16 reg_addr;
 	int err;
 
-	if (!strcmp(name, "arb_address"))
+	if (sysfs_streq(name, "arb_address"))
 		return snprintf(buf, PAGE_SIZE, "%04x\n", dci_obj->reg_addr);
 
-	if (!strcmp(name, "arb_value"))
+	if (sysfs_streq(name, "arb_value"))
 		reg_addr = dci_obj->reg_addr;
 	else if (get_static_reg_addr(ro_regs, name, &reg_addr) &&
 		 get_static_reg_addr(rw_regs, name, &reg_addr))
@@ -858,14 +858,14 @@ static ssize_t value_store(struct device *dev, struct device_attribute *attr,
 	if (err)
 		return err;
 
-	if (!strcmp(name, "arb_address")) {
+	if (sysfs_streq(name, "arb_address")) {
 		dci_obj->reg_addr = val;
 		return count;
 	}
 
-	if (!strcmp(name, "arb_value"))
+	if (sysfs_streq(name, "arb_value"))
 		err = drci_wr_reg(usb_dev, dci_obj->reg_addr, val);
-	else if (!strcmp(name, "sync_ep"))
+	else if (sysfs_streq(name, "sync_ep"))
 		err = start_sync_ep(usb_dev, val);
 	else if (!get_static_reg_addr(rw_regs, name, &reg_addr))
 		err = drci_wr_reg(usb_dev, reg_addr, val);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
