Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33513316417
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 11:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8CB085FDB;
	Wed, 10 Feb 2021 10:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mBD4zqolTpb; Wed, 10 Feb 2021 10:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7798B85C19;
	Wed, 10 Feb 2021 10:43:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 267FA1BF47D
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 10:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DEEC85C19
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 10:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ohEmzjriQdge for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 10:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from qq.com (out203-205-221-202.mail.qq.com [203.205.221.202])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ABAC85BD1
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 10:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1612953821;
 bh=Pn28xr+UotDdG+hi2pXZUrNt6M4BMX86858otp9JNwo=;
 h=From:To:Cc:Subject:Date;
 b=LTB5ZNewnDMT/+A+DPOLlQL4PSTjah9eWDdOdGQ1xGF3BFtVsVMynfbzP3D41sInQ
 C21MJ3pnkslHKHS08sMbxDF0BDDdXX56Xdh8TJTSwjz9JtGFgL3I5KjST1OHCZlcBM
 wCS33cKpLHeJNJ0CzL71HaHb5+6zC5/x15Jwrwm0=
Received: from sig.localnet ([1.193.79.12])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id A873FC50; Wed, 10 Feb 2021 18:42:07 +0800
X-QQ-mid: xmsmtpt1612953727tp9zvwuzo
Message-ID: <tencent_30203B4B4D63EBA1A5083C4AB110C9243C08@qq.com>
X-QQ-XMAILINFO: OEArAL79m7TBmaEopn1X13AvVAQjGmKth+TtalMnWwKzihIphtHSs04Guhaaks
 V59BztBhIWdyFDSRuLF/SHfLSVTKo91+pKLTKHMZjHdmFHfVtnB/vRMhbicgNW6P7RU7swwIqFB6
 7N1TXz1YhQER/JWb78U1we8q8JB/4KiK4oKrPq2d41u73dOxedb5ELGj0eCCn7/OcNsIrxqzYyjG
 6Ctq9v1To4ZcAfauC0xRODUwt74iC2u8DvGqoB2JyIIJT7dURNcF2tacta5A6vqs3wm4xqFEaJGQ
 VegGooiOkRKwFW67hYEyV/VAvipEQJChx5rwFbX/walO4qITBzz2tSfM5G6n4/x7+0QVm5xRkSgV
 NXnbaUeR82JI0DSan4I9GS14gxDM8eu4UFUbRGobQD9BMVZmBr5bj4lftFMPYS4B+V6ZWJcPuPq7
 H41MgXWmRtirve+bffV1OiEnD8cdSIyJJREbwQh6N7YWYe0HMF/2PWtx/hNAvVBTtUEm4R5Gt3mp
 ZHsw2+pyAv+rGh1UnEHIl2oVKUgcAaYQdVNSxk5aYRuMhS+rBKMw7Dqdtr8aN4A1qtdLC9ZGUYoY
 ZTwaefGmneZta6Gns1KZWUc4N2m3EknwMJGt68kgvon3iRUtYtrVVXelwm8azsQhtivysQ4MWQIv
 xHmfzicVpB6LvTmyeYKScsJShcFKbWdZlPMjt4L/bqY1P7yZa+YaO4+5+6qWsxKmkvcX5xbhEgUU
 qZN1YJKFHJXNZYpk7omGB78RwlHWn/OX/rzmAPJ4D+gxA2NdfQFie9SGAVne2ehmxr6Dcu/EB11d
 05s2Gdga0S1A==
From: Yujia Qiao <rapiz@foxmail.com>
To: Greg Kroah-Hartman <greg@kroah.com>,
 Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH] Staging: vt6655: Replace a camel case variable name
Date: Wed, 10 Feb 2021 18:42:07 +0800
X-OQ-MSGID: <3616477.ZnpOxRL0vK@sig>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camel case variable names with snake case in baseband.c.

Signed-off-by: Yujia Qiao <rapiz@foxmail.com>
---
 drivers/staging/vt6655/baseband.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/
baseband.c
index 6b25d75d2501..1aa675241599 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1683,7 +1683,7 @@ static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] 
= {
 	{0xF0, 0x00},
 };
 
-static const unsigned short awcFrameTime[MAX_RATE] = {
+static const unsigned short awc_frame_time[MAX_RATE] = {
 		10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };
 
@@ -1716,7 +1716,7 @@ unsigned int bb_get_frame_time(unsigned char 
by_preamble_type,
 	if (rate_idx > RATE_54M)
 		return 0;
 
-	rate = (unsigned int)awcFrameTime[rate_idx];
+	rate = (unsigned int)awc_frame_time[rate_idx];
 
 	if (rate_idx <= 3) {		    /* CCK mode */
 		if (by_preamble_type == 1) /* Short */
-- 
2.30.0




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
