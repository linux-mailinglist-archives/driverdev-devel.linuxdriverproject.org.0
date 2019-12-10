Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA49F119334
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:08:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F173874F3;
	Tue, 10 Dec 2019 21:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wxhAwo9WE5dc; Tue, 10 Dec 2019 21:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2361087113;
	Tue, 10 Dec 2019 21:08:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 110381BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E61F186BA4
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmQimXwFRBzu for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:08:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 250C086B9E
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:08:21 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10DD924684;
 Tue, 10 Dec 2019 21:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012101;
 bh=LboDk7qejJ73KZ6hyiJlV7BfnObNJdQAPw/MXwz8OqU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CaWeVrEPfCDzyirTxetvoyMnjZIXFfEJgVG2AJp73hn69SwHKeA83SMgIaOLhxPqt
 OstZfYQvmjcmZBLfazufT1/QpGP8K/RiQU87A87fMWOFjKiu2SSGRAYQClbri3Vql/
 neA5G6HKpE9UwnNzC4Dt4ZJKCvh9FpB2x0UHkrvg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 076/350] staging/octeon: Use stubs for MIPS &&
 !CAVIUM_OCTEON_SOC
Date: Tue, 10 Dec 2019 16:03:01 -0500
Message-Id: <20191210210735.9077-37-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthew Wilcox <willy@infradead.org>, Paul Burton <paul.burton@mips.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Paul Burton <paul.burton@mips.com>

[ Upstream commit 17a29fea086ba18b000d28439bd5cb4f2b0a527b ]

When building for a non-Cavium MIPS system with COMPILE_TEST=y, the
Octeon ethernet driver hits a number of issues due to use of macros
provided only for CONFIG_CAVIUM_OCTEON_SOC=y configurations. For
example:

  drivers/staging/octeon/ethernet-rx.c:190:6: error:
    'CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE' undeclared (first use in this function)
  drivers/staging/octeon/ethernet-rx.c:472:25: error:
    'OCTEON_IRQ_WORKQ0' undeclared (first use in this function)

These come from various asm/ headers that a non-Octeon build will be
using a non-Octeon version of.

Fix this by using the octeon-stubs.h header for non-Cavium MIPS builds,
and only using the real asm/octeon/ headers when building a Cavium
Octeon kernel configuration.

This requires that octeon-stubs.h doesn't redefine XKPHYS_TO_PHYS, which
is defined for MIPS by asm/addrspace.h which is pulled in by many other
common asm/ headers.

Signed-off-by: Paul Burton <paul.burton@mips.com>
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
URL: https://lore.kernel.org/linux-mips/CAMuHMdXvu+BppwzsU9imNWVKea_hoLcRt9N+a29Q-QsjW=ip2g@mail.gmail.com/
Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: David S. Miller <davem@davemloft.net>

Link: https://lore.kernel.org/r/20191007231741.2012860-1-paul.burton@mips.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/octeon/octeon-ethernet.h | 2 +-
 drivers/staging/octeon/octeon-stubs.h    | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index a8a864b409135..042220d86d33d 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -14,7 +14,7 @@
 #include <linux/of.h>
 #include <linux/phy.h>
 
-#ifdef CONFIG_MIPS
+#ifdef CONFIG_CAVIUM_OCTEON_SOC
 
 #include <asm/octeon/octeon.h>
 
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index b78ce9eaab85d..ae014265064af 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1,5 +1,8 @@
 #define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
-#define XKPHYS_TO_PHYS(p)			(p)
+
+#ifndef XKPHYS_TO_PHYS
+# define XKPHYS_TO_PHYS(p)			(p)
+#endif
 
 #define OCTEON_IRQ_WORKQ0 0
 #define OCTEON_IRQ_RML 0
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
