Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B6E215BC
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:52:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C98698688A;
	Fri, 17 May 2019 08:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFdaLiwpXPim; Fri, 17 May 2019 08:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4715186886;
	Fri, 17 May 2019 08:52:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD5AA1BF969
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE572868A9
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTjXB3L-lVkv for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 967008685B
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6EB22082E;
 Fri, 17 May 2019 08:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083003;
 bh=sNaME+1Nq5Yoo4CCwCq5b9W0hi5YR1NtzACpQTJ5P8I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aISNot67o8WNdYV2Q9iMUFC8KmGCMBpuwIaCHIqTV0gEjUBzC5vyZxKjj3IBGEP6t
 u1jD5wI+vr+0Yv4wserGQvakKn8WFH4J1bMIseWTzJ3pL7aotQQox58JXzDMO7yAjJ
 3De4MLCdr78+Ns0y2UtsdovFZvUPm5JsXgtTLy4w=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: kpc2000: dma_common_defs.h: remove unused
 inline functions
Date: Fri, 17 May 2019 10:49:44 +0200
Message-Id: <20190517084945.2810-11-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517084945.2810-1-gregkh@linuxfoundation.org>
References: <20190517084945.2810-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The functions GetBackEndStatus() and BackEndControlSetClear() are never
used by any code, so just remove them.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index f35e636b1fb7..efc35c8e9d5c 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -25,19 +25,5 @@ static inline  void  SetBackEndControl(void __iomem *regs, u32 value)
 {
     writel(value, regs + 0);
 }
-static inline  u32  GetBackEndStatus(void __iomem *regs)
-{
-    return readl(regs + 0);
-}
-
-static inline  u32  BackEndControlSetClear(void __iomem *regs, u32 set_bits, u32 clear_bits)
-{
-    u32 start_val = GetBackEndStatus(regs);
-    u32 new_val = start_val;
-    new_val &= ~clear_bits;
-    new_val |= set_bits;
-    SetBackEndControl(regs, new_val);
-    return start_val;
-}
 
 #endif /* KPC_DMA_COMMON_DEFS_H_ */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
