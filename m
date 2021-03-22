Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93104343E0E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 11:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4310D401F8;
	Mon, 22 Mar 2021 10:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3v0qtQJPrAaA; Mon, 22 Mar 2021 10:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0E8240025;
	Mon, 22 Mar 2021 10:36:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93E381BF3A1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 10:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F7EF82D12
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 10:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1kEKXx_3Hqy8 for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 10:35:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16E9A82CF1
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 10:35:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A354E6198F;
 Mon, 22 Mar 2021 10:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616409356;
 bh=jrHBX/HLRZtzoQhT2R3gMkK4qqxzt3mtlKLFiEw5HP4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r1GcUI3CodBI120K8W9OfN3fxMdAxZbFiwZ0Av2N5stN3MchlfKWRyZFQE7etM/yC
 QmXPHRn9HuLn1oXh6WWd4qLqw3zWfVRoype0A+A50Tn9EMZDKnsWVELkKGSJdwUOmF
 fOsNJUlPNAxE/NYPd/VEFZXRoKDSDmN3cwVCC5mRV72c3J4xHjZ45En7JJ6DlGPiTl
 Lbu7hzIhthDafzE8qo5lenJFaao4/KK28cytGj8RbbiCc9/Cy1LUhAvTVpa1AQqGct
 MBHvbi+8h5Ehm95EaHIHIRxmVBBHevCxne/tJ14+9Vc+brJal5FzOPI+WH9nMZBPPN
 emByPzwLHMGmg==
From: Arnd Bergmann <arnd@kernel.org>
To: Marc Dietrich <marvin24@gmx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging/nvec:: avoid Wempty-body warning
Date: Mon, 22 Mar 2021 11:35:40 +0100
Message-Id: <20210322103545.704121-2-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210322103545.704121-1-arnd@kernel.org>
References: <20210322103545.704121-1-arnd@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Kumar Kartikeya Dwivedi <memxor@gmail.com>,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

This driver has a few disabled diagnostics, which can probably
just get removed, or might still be helpful:

drivers/staging/nvec/nvec_ps2.c: In function 'nvec_ps2_notifier':
drivers/staging/nvec/nvec_ps2.c:94:77: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
   94 |                         NVEC_PHD("unhandled mouse event: ", msg, msg[1] + 2);

Changing the empty macro to the usual 'do {} while (0)' at least
shuts up the compiler warnings.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/nvec/nvec_ps2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_ps2.c b/drivers/staging/nvec/nvec_ps2.c
index 157009015c3b..06041c7f7d4f 100644
--- a/drivers/staging/nvec/nvec_ps2.c
+++ b/drivers/staging/nvec/nvec_ps2.c
@@ -28,7 +28,7 @@
 	print_hex_dump(KERN_DEBUG, str, DUMP_PREFIX_NONE, \
 			16, 1, buf, len, false)
 #else
-#define NVEC_PHD(str, buf, len)
+#define NVEC_PHD(str, buf, len) do { } while (0)
 #endif
 
 enum ps2_subcmds {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
