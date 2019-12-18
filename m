Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B733A123F4C
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 06:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C8E9878E6;
	Wed, 18 Dec 2019 05:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncCN0vck2bI5; Wed, 18 Dec 2019 05:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87AC9878A1;
	Wed, 18 Dec 2019 05:57:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7761BF59B
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 05:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A91C878A1
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 05:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66YfR2wy2zzv for <devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 05:57:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m972.mail.163.com (mail-m972.mail.163.com [123.126.97.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BF6887895
 for <devel@driverdev.osuosl.org>; Wed, 18 Dec 2019 05:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=BulQTA6G1N4TWHEAvp
 OsyuqFrzbeQQmLPGWhFy4BohA=; b=XRJUCRbB0X3DC2/ZWr5mhVoutDzXnQaiEt
 WgrdPoK52rCc6FT37BGdo8Hhrvn2tMTeTA0OnEvtoK44npKsg7WF10/hfhZQLKBG
 CzR4vDrxolydO3b0qEmiKwWiYHEOoW0U4F+dPnzZ3csAD9CqAV4qYCXI1CvXqGqy
 /IL6HA/1g=
Received: from localhost.localdomain (unknown [218.106.182.184])
 by smtp2 (Coremail) with SMTP id GtxpCgBnMzqbv_ldmP0WAA--.443S3;
 Wed, 18 Dec 2019 13:57:01 +0800 (CST)
From: Xidong Wang <wangxidong_97@163.com>
To: Xidong Wang <wangxidong_97@163.com>, Marc Dietrich <marvin24@gmx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/1] staging: nvec: check return value
Date: Wed, 18 Dec 2019 13:56:38 +0800
Message-Id: <1576648598-12257-1-git-send-email-wangxidong_97@163.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: GtxpCgBnMzqbv_ldmP0WAA--.443S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtryxWw1DXw4Uuw4DJr4Utwb_yoW3ZFX_Cw
 savw1xZrZrArn7Ar4qywn8ArW29rWfWrs2qr4qg392vayUur4Sv3yDXr1DC3yUW3yxGrW3
 uFyqkr4ayr13ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUjFAp7UUUUU==
X-Originating-IP: [218.106.182.184]
X-CM-SenderInfo: pzdqw5xlgr0wrbzxqiywtou0bp/1tbi8A2P81uoWGCDAwAAsK
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, ac100@lists.launchpad.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In nvec_kbd_probe(), the return value of devm_input_allocate_device()
should be checked before it is used.

Signed-off-by: Xidong Wang <wangxidong_97@163.com>
---
 drivers/staging/nvec/nvec_kbd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/nvec/nvec_kbd.c b/drivers/staging/nvec/nvec_kbd.c
index 01dbb66..386d619 100644
--- a/drivers/staging/nvec/nvec_kbd.c
+++ b/drivers/staging/nvec/nvec_kbd.c
@@ -123,6 +123,8 @@ static int nvec_kbd_probe(struct platform_device *pdev)
 		keycodes[j++] = extcode_tab_us102[i];
 
 	idev = devm_input_allocate_device(&pdev->dev);
+	if (!idev)
+		return -ENOMEM;
 	idev->name = "nvec keyboard";
 	idev->phys = "nvec";
 	idev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_REP) | BIT_MASK(EV_LED);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
