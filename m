Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C7E1303A1
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 17:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C374D87DA6;
	Sat,  4 Jan 2020 16:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FawR7aTjSfDk; Sat,  4 Jan 2020 16:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0679887BEE;
	Sat,  4 Jan 2020 16:38:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F69F1BF48D
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C0E287BEE
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dhsccHCa3EiG for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 16:38:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com [210.131.2.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 64D1F86BE2
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 16:38:16 +0000 (UTC)
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 004GbK3g014547;
 Sun, 5 Jan 2020 01:37:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 004GbK3g014547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578155840;
 bh=eVPEihLHvjWVdkHTKHyBtb7lWwnPyh5OmidubGr2h+E=;
 h=From:To:Cc:Subject:Date:From;
 b=Owo0KpWI83RZ8ZIBybFOknpo+F6+l2b9sd9skrV+L5JShGTDTyH3852v4juZhVduw
 MYyMytG0KGrPXjglbxSzotesdmp02vJs8Pp8C+BB5QpuxjgZy+/CLoMs8/71OP77hv
 DQ/122xP4fAb3xFvAnupptg93HsPxbvR/36nxuzEfQgAG6t+I6/zQZTYfUCbsyxlar
 YIVQfOTfH/ittgEWac2QJWPRdZzASkEMuSVJj6FcQFvS+Lb12aTxRe3GFk67a/3IQ7
 lbPOIiKPBsVdLPHDBDiMbawTVplbnYQaTTLF7CvyF8uHvKxXyMiOIqLhxvuhXMzsLM
 lADupzK04bneA==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rts5208: remove unneeded header include path
Date: Sun,  5 Jan 2020 01:37:10 +0900
Message-Id: <20200104163710.21582-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Masahiro Yamada <masahiroy@kernel.org>,
 Mukesh Ojha <mojha@codeaurora.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A header include path without $(srctree)/ is suspicous because it does
not work with O= builds.

I can build drivers/staging/rts5208/ without this include path.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/staging/rts5208/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rts5208/Makefile b/drivers/staging/rts5208/Makefile
index 6a934c41c738..3c9e9797d3d9 100644
--- a/drivers/staging/rts5208/Makefile
+++ b/drivers/staging/rts5208/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_RTS5208) := rts5208.o
 
-ccflags-y := -Idrivers/scsi
-
 rts5208-y := rtsx.o rtsx_chip.o rtsx_transport.o rtsx_scsi.o \
 	rtsx_card.o general.o sd.o xd.o ms.o spi.o
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
