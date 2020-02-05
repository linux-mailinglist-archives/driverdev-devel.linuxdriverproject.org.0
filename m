Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C771523EA
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 01:11:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AD8485A74;
	Wed,  5 Feb 2020 00:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-R6DJZdMg_T; Wed,  5 Feb 2020 00:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCD10859CF;
	Wed,  5 Feb 2020 00:11:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93A3D1BF45A
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EBBF859CF
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JU5n_E1nTZa8 for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 00:11:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B9DA481BDB
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 00:11:42 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E35A2891B1;
 Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580861498;
 bh=IhPUhSSDDjQoI0blZkV3gyPDHloqc6R5MelhKc8cWFM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=l9IwziBNV7daVS32v9VJ/xGypl/Zxjuwkzs0eANRDZldiOA3avA5A8I3WKOXeFNVS
 leJd3SRTm3tScvndA/x1t01aQtR+f7leARFMKODol06K+4E3HYUmhSkpeKXHzHVNsw
 ooLe9JHTWWJrbvdolvCh5wFYjNCBFQsSAFypJ1r17SZtwjIdWzN4qcUWU73OWJNUDB
 dRX7AsLL6dBP3uaGw/BOjoR637ObySZfefArhO4oMkP7D9E6YOmcPWsaij+PpU7JA1
 XgweN7BpRSN99g9/J5f6PO3ZGfG2SFZ+LoVfS4f+9Mg8j6NBz0mCchh5m5Gh2ErN1H
 rTarg1hIF/j3Q==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5e3a083b0000>; Wed, 05 Feb 2020 13:11:39 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 348F913EEDE;
 Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id A4B97280038; Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregkh@linuxfoundation.org, ralf@linux-mips.org, paulburton@kernel.org,
 linux@roeck-us.net, dan.carpenter@oracle.com, willy@infradead.org
Subject: [PATCH 6/6] Revert "staging/octeon: Mark Ethernet driver as BROKEN"
Date: Wed,  5 Feb 2020 13:11:16 +1300
Message-Id: <20200205001116.14096-7-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
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
Cc: devel@driverdev.osuosl.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This reverts commit 075a1e87d1e2358d0b0301ac8f8e7f25051decf1. Now that
the build issues have been fixed we can resume build testing.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/staging/octeon/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/octeon/Kconfig b/drivers/staging/octeon/Kconfig
index e7f4ddcc1361..5319909eb2f6 100644
--- a/drivers/staging/octeon/Kconfig
+++ b/drivers/staging/octeon/Kconfig
@@ -3,7 +3,6 @@ config OCTEON_ETHERNET
 	tristate "Cavium Networks Octeon Ethernet support"
 	depends on CAVIUM_OCTEON_SOC || COMPILE_TEST
 	depends on NETDEVICES
-	depends on BROKEN
 	select PHYLIB
 	select MDIO_OCTEON
 	help
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
