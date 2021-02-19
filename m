Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A4F31F7ED
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:08:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 992CA606E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pR_8onYOp03 for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 11:08:31 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 8BC97606F8; Fri, 19 Feb 2021 11:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 756056068A;
	Fri, 19 Feb 2021 11:08:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7AE1BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CFA660590
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkeH8ztZA_re for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:08:02 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 545C6606C4; Fri, 19 Feb 2021 11:08:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 299A460590
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:08:00 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id z68so3831757pgz.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NH8nJLseGbJKdWpzwLWPfIlJFkrysRID4hRNSais6WE=;
 b=JPcNC8V1Q4wYLMSPgV3F5FdVWhw1JB8EEWuPNUFxl/7t+WIydN3cxpezvrbGj7sQwm
 i+zKw+QLPRrx5LyQdls8UOssPiBrHEt7Dpbsbol9jgaKhzNTTVz2E4tOdrwXXjaq+3zf
 PxBnHkxUTNfe8mdQhj0zWTOQdVubumAMiXIviFal6xt6a6jcfYl+yspfMZR+0YDQmgwm
 vAuVm0/wTuYe71EuBtrkncBj4oCPoYc8gfBY5pZlqItee8kwsQ9LWqeiri0feicT5pfQ
 Zc9Vjq9zCEEntPPP6NfDLMB+LQumrbnsJh97hVdbQZDFsQ9zxXDj7eFHbAjpBDneaBtH
 DTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NH8nJLseGbJKdWpzwLWPfIlJFkrysRID4hRNSais6WE=;
 b=mLb7Ut0/OMb5cK1fUIG42RtT6o/JNj/0obYxNjCH2n3XMdlRnGOP95iB6hOBWmO6o3
 RtEvn3qKAxWm/p0dhHk4WWrcwOTBS9LSdqCF6RtHD0sOsmQQx4R80uD5wkf4bA/zYk5s
 stOp8v673o0wTr/YUOsldGcPhPWi26Yx9pJ8C2YmR9Vs1Z9y7/+SIGhzYH8kfhb1WkGX
 4vbgoISJE/A2Zb/CNXCGBvr/5G2okylbZtnxCCzWQ7oOW+P92hSOn0t+tkEgfJBP+Wib
 QevruEHhk0qzIRbEUALXkJsdTJX00zrBcb4ACbNuVuMAlQmhiZBfXc43pJHo0JrUj4W/
 94hQ==
X-Gm-Message-State: AOAM531PVzAMfxnRYfskM1QUoRQRLrOkNpwETdtxYBEypHkIe2JLysOe
 2I/IL0YvRDz62SIDn6LfThk=
X-Google-Smtp-Source: ABdhPJz1JmpCPnWcrujxZRxIH/eihCZpExohrVgiP4cItpNnDjIU1/239LHzyPJ+ZekScrJLKAHs/g==
X-Received: by 2002:a65:4942:: with SMTP id q2mr7989803pgs.34.1613732880505;
 Fri, 19 Feb 2021 03:08:00 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id t21sm9555113pfe.174.2021.02.19.03.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 03:08:00 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/3] staging: rtl8192u: fixed coding style of
 r8190_rtl8256.c
Date: Fri, 19 Feb 2021 19:07:53 +0800
Message-Id: <20210219110755.4993-1-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Du Cheng <ducheng2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

use MACRO __func__ instead of "phy_set_rf8256_bandwidth" for RT_TRACE()
inside phy_set_rf8256_bandwidth(), reported by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
changes v3:
* break up changes into 3 patches

changes v2:
* improve description

changes v1:
* fix coding style

 drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index fee3bfb99075..7294a3fbe205 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -73,11 +73,11 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 					else
 						rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x14, bMask12Bits, 0x5ab);
 				} else {
-					RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown hardware version\n");
+					RT_TRACE(COMP_ERR, "%s(): unknown hardware version\n", __func__);
 					}
 				break;
 		default:
-				RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\n", Bandwidth);
+				RT_TRACE(COMP_ERR, "%s(): unknown Bandwidth: %#X\n", __func__, Bandwidth);
 				break;
 		}
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
