Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BC211BB63
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47FC086D64;
	Wed, 11 Dec 2019 18:16:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RJ-vKZ-bpYWY; Wed, 11 Dec 2019 18:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99E9E86D4D;
	Wed, 11 Dec 2019 18:16:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A7B81BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F7C987F34
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BodTxxH1oQT for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
 [209.85.161.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D339687F30
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:40 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id u139so9276056ywf.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nwGdO4R8lji1D/r7NSUfswqgTgfKAYEWc+q0aQAaY34=;
 b=aUxLEcZUouXI6SiOx6pzGdSVCiQx8vK4DJHmtxf40D8r2b8eE/Z7eFcVMho5BCcp5X
 TWAopBJt6oZEaDrtyeLOmvzBUHni/LGxL7s3zooI5vp3hz+tf/sIY36AZ4ujyxRHdSM1
 JW/i27mPlMCELPmiKLsbGaquGB0q4X7u10AVk6/TmUCwWN03CUXliusqyzdUQzTaTKm8
 EmnzAmMs5HpqAoAL5Uh8/pasMHdghdduGWBgA4X5VWID+DVGHsYkcLwljb9EYVaya0T3
 HlMFB3Nr7xLUmO3wfvrHAAHOSmPCjq6O5tjrX4lfjqHKVrh+78yKijz5Zl8ajfsy/tBN
 RoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nwGdO4R8lji1D/r7NSUfswqgTgfKAYEWc+q0aQAaY34=;
 b=B1KNRSZtCv46zEnMhUd/DIJoLqVFH6up0iKQX8Nn2OQ5wwkgSy6n4sSEkGlq8xRDMy
 Cfanr72ezlMT+ic23x9jam6IdnmFIaxy0YoSstYX2iNw8l4YThqecDqPCkb1xhSQUm4p
 N1PJHngAeLM/aGdL7YbYoHcWc3W/6rT2X60qGbFIQ34Yl9S3dXwoF4YlAnPZupyqj9+V
 LjA/8j0EpGO1lrDmIipGEiUAsUsvuIG2rESwRXm1qxDAQVjl2u2PmuBRMI0wpax2gr8K
 5E+TLQUZ+XltoTN/ojC45zoAquFa6cMqKpt5rxEVCrCPkCXL1/Ca9UVO/z6H78hqnMJK
 mQMg==
X-Gm-Message-State: APjAAAXl9czFDosUfq1TwhDcGCSFUFbBKBklmhaWpBfUBWQVt6DlRTjt
 FUVdlC8vohhMmIQ2lIIvfqw=
X-Google-Smtp-Source: APXvYqyozxGB2X1nuGDB7dAEJrbGUelIJWseYKoI5+DIGHJRwfsZF4g4z3Za9/kKACyVGBgBVB3tMw==
X-Received: by 2002:a0d:d2c2:: with SMTP id u185mr875765ywd.211.1576088139917; 
 Wed, 11 Dec 2019 10:15:39 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id f134sm1304186ywb.68.2019.12.11.10.15.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:39 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 23/23] staging: qlge: Fix WARNING: Avoid multiple line
 dereference
Date: Wed, 11 Dec 2019 12:12:52 -0600
Message-Id: <f2e9384f0940fb7e57649a8ea8493abae2c220ee.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: Avoid multiple line dereference in qlge_main.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 102da1fe9899..725db7262a9a 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -399,9 +399,8 @@ static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
 			 * the route field to NIC core.
 			 */
 			cam_output = (CAM_OUT_ROUTE_NIC |
-				      (qdev->
-				       func << CAM_OUT_FUNC_SHIFT) |
-					(0 << CAM_OUT_CQ_ID_SHIFT));
+				      (qdev->func << CAM_OUT_FUNC_SHIFT) |
+				      (0 << CAM_OUT_CQ_ID_SHIFT));
 			if (qdev->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)
 				cam_output |= CAM_OUT_RV;
 			/* route to NIC core */
@@ -3428,10 +3427,9 @@ static int ql_request_irq(struct ql_adapter *qdev)
 				     &qdev->rx_ring[0]);
 			status =
 			    request_irq(pdev->irq, qlge_isr,
-					test_bit(QL_MSI_ENABLED,
-						 &qdev->
-						 flags) ? 0 : IRQF_SHARED,
-					intr_context->name, &qdev->rx_ring[0]);
+					test_bit(QL_MSI_ENABLED, &qdev->flags)
+					? 0 : IRQF_SHARED, intr_context->name,
+					&qdev->rx_ring[0]);
 			if (status)
 				goto err_irq;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
