Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C619922F38
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:47:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1AC092276C;
	Mon, 20 May 2019 08:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-q3aQNrRwRn; Mon, 20 May 2019 08:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 578AA221D2;
	Mon, 20 May 2019 08:47:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6ED521BF857
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B7878587D
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSD-655gWGIX for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:47:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D75485772
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:47:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6D03206BA;
 Mon, 20 May 2019 08:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342065;
 bh=WbkWodV9w5UqE7aUWME1BaLlI8Aes52aODGWjaw3pJ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UXVrEQA9ovTlJ/7iNiNaWbPlPj9qU7MH7VhPWmtawrHHHmcvClVFTVqWK3l3/4WeE
 OrQPYerUlSB8r7hnquGAiXxPPWccHOdTHJVCD9cag/TP0WcaRG6wbpTlewih3cMS6C
 26if4RVlgmJsrGxN3Hgiaeh9FxWldbysS0tsyajo=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 6/7] staging: kpc2000: dma_common_defs.h: remove unused
 inline functions
Date: Mon, 20 May 2019 10:47:15 +0200
Message-Id: <20190520084716.28063-7-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520084716.28063-1-gregkh@linuxfoundation.org>
References: <20190520084716.28063-1-gregkh@linuxfoundation.org>
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
 v2: no changes

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
