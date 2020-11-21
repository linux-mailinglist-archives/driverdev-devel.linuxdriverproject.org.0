Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8E52BBED9
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 13:17:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9524B874E6;
	Sat, 21 Nov 2020 12:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsN8y-MJui+K; Sat, 21 Nov 2020 12:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4EBC2874E5;
	Sat, 21 Nov 2020 12:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A27A1BF37A
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 12:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BF7420112
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 12:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sXJb-Ow5MKR9 for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 12:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E9121FE32
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 12:17:27 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t18so6381852plo.0
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 04:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CQX3P8QPTE+LUFvbaH/yRk4StUbJcxxzzGf4e6Mvf4c=;
 b=SRnWPHT7opcBzPAAdosp2inhdjaRrfSeBtGO6noqEbEFKSqnAFf23pd1F4QZQWhPZx
 Uz0IZT8Dou66+3Vm00kQQx7CZxYmDIuF5fnly6rtHoRfyGV6XKqOOYM90xcgR9snt9zS
 +wk8lfh/VonWOJCiRkW+nyLxHYSaq1UpvmFPMLXw5zeNDlNDJ6EVRI0x3qdDifxrbhAM
 ugh40kiE7aqlwT2duVZT16Q13hG0EXu4Z+FaGIU5TGO4L3coKOY883Km8CwtoT5nIGtn
 4UEJ065nx+k3Vp0A9gwq8iv91ZMIk4TNZEyJB8Kk+TQN0Mh20JdTEkjP9MPfPTvkM7ul
 csGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CQX3P8QPTE+LUFvbaH/yRk4StUbJcxxzzGf4e6Mvf4c=;
 b=N6ktDUiY8m+VZ54ScvHG1BcCWEvR8wBwgr1AHX7mt8S0mfgqa47TnuLuNH3wi3kbdH
 aJPESUx5lYPta8QG2qJQNLzQd7rGOsnsKcuu6PEMdX3nHd+2CcPId6X5U3aW0kV1i2/q
 +lW8TjYDYH5txt9NW0VZQrGEwEG8jiXqRqY5tYdYYIx2M0QZhx0wZRkmE6MHu1V3NrDW
 OKzhxMJqh+d8bV7fFvl9pcGFPIf7EX4DS10RNPvr/FoQDnU2ucmuXoWws2zT1ZT16a6Z
 S2Utp1hpawRCFFA3bbG+JP5Ij3JSY6kxQk5rNQTNWmOKEW11DL8qSkEovEYr7RHvy20e
 WGkQ==
X-Gm-Message-State: AOAM5338pGswQc5aucdW++2jW3ptokSX9cA9Nrln+5ybztBJGfkY85GA
 yR3rdQhQOPRXAg/PE6Xzdg==
X-Google-Smtp-Source: ABdhPJyGMIN0vLrgspU86avmKyLpQHq9uhx2r0whSynwNZ1W9LtU08nJc7+moWJe6Ms3rWU64f31gQ==
X-Received: by 2002:a17:902:830a:b029:d9:e16c:663b with SMTP id
 bd10-20020a170902830ab02900d9e16c663bmr9563499plb.0.1605961047199; 
 Sat, 21 Nov 2020 04:17:27 -0800 (PST)
Received: from he-cluster.localdomain (67.216.221.250.16clouds.com.
 [67.216.221.250])
 by smtp.gmail.com with ESMTPSA id l76sm7168780pfd.82.2020.11.21.04.17.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 04:17:26 -0800 (PST)
From: xiakaixu1987@gmail.com
X-Google-Original-From: kaixuxia@tencent.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove redundant statements
Date: Sat, 21 Nov 2020 20:17:21 +0800
Message-Id: <1605961041-12875-1-git-send-email-kaixuxia@tencent.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, Kaixu Xia <kaixuxia@tencent.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Kaixu Xia <kaixuxia@tencent.com>

The bool variable is2T is true, so the if statement is redundant.
we can directly set the variable bound to 8 and remove the if
statement.

Reported-by: Tosk Robot <tencent_os_robot@tencent.com>
Signed-off-by: Kaixu Xia <kaixuxia@tencent.com>
---
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 85ea535dd6e9..645f4f2a835e 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -1407,14 +1407,9 @@ static bool phy_SimularityCompare_8723B(
 	u32 i, j, diff, SimularityBitMap, bound = 0;
 	u8 final_candidate[2] = {0xFF, 0xFF}; /* for path A and path B */
 	bool bResult = true;
-	bool is2T = true;
 	s32 tmp1 = 0, tmp2 = 0;
 
-	if (is2T)
-		bound = 8;
-	else
-		bound = 4;
-
+	bound = 8;
 	SimularityBitMap = 0;
 
 	for (i = 0; i < bound; i++) {
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
