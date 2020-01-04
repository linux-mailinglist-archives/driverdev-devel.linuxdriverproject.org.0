Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B43F5130387
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 17:25:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 220EC86A07;
	Sat,  4 Jan 2020 16:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Is5k-UzMmXdS; Sat,  4 Jan 2020 16:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B43538696A;
	Sat,  4 Jan 2020 16:25:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF201BF48D
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0926A859FC
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCGC_ILt9N3j for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 16:25:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from condef-09.nifty.com (condef-09.nifty.com [202.248.20.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 936DC85552
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 16:25:28 +0000 (UTC)
Received: from conuserg-12.nifty.com ([10.126.8.75])by condef-09.nifty.com
 with ESMTP id 004GM6Io023961
 for <devel@driverdev.osuosl.org>; Sun, 5 Jan 2020 01:22:06 +0900
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 004GLdDO002506;
 Sun, 5 Jan 2020 01:21:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 004GLdDO002506
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578154899;
 bh=inGRar/36DuAvId9san8la6FXfoLzIDHO0k/ekyTCzk=;
 h=From:To:Cc:Subject:Date:From;
 b=oBklGmFOApViN6lRtO/l5EJXmd+Kd1MlnRq0rHNF0dt7I/lvZvSFwg+mEtDGOc6Ws
 HHVvt1+BRoPl3JgY6z2hv8EEz6iqhzq2Z1/HTLUp/t3ryjIWT4BrAOtQ1TdNkkOTJP
 vHxeOvau22MHGM70WWbhz6uwUNpmUPSwm0tf4EQfM7M6U0reXvVnSGHBBJRm8nr1W0
 h5Z/nd7Fn034CSsIAw29cz1PpFWSG8dGFGwCR1Cazb+4Uh7ny0MXdp9W2ond5yunij
 9/7lC5OAWquwR6Msgcl8Cmcoqz4V31Pqhiz5kqGSZDc5zhPwhVvyZaqDrVbkDdb3US
 UiWUOsatXIDGQ==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging: rtl8192u: remove unused Makefile
Date: Sun,  5 Jan 2020 01:21:34 +0900
Message-Id: <20200104162136.19170-1-masahiroy@kernel.org>
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
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/rtl8192u/ieee80211/Makefile is not used at all.
All the build rules are described in drivers/staging/rtl8192u/Makefile.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/staging/rtl8192u/ieee80211/Makefile | 27 ---------------------
 1 file changed, 27 deletions(-)
 delete mode 100644 drivers/staging/rtl8192u/ieee80211/Makefile

diff --git a/drivers/staging/rtl8192u/ieee80211/Makefile b/drivers/staging/rtl8192u/ieee80211/Makefile
deleted file mode 100644
index 0d4d6489f767..000000000000
--- a/drivers/staging/rtl8192u/ieee80211/Makefile
+++ /dev/null
@@ -1,27 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-NIC_SELECT = RTL8192U
-
-ccflags-y := -O2
-ccflags-y += -DJACKSON_NEW_8187 -DJACKSON_NEW_RX
-
-ieee80211-rsl-objs := ieee80211_rx.o \
-		      ieee80211_softmac.o \
-		      ieee80211_tx.o \
-		      ieee80211_wx.o \
-		      ieee80211_module.o \
-		      ieee80211_softmac_wx.o\
-		      rtl819x_HTProc.o\
-		      rtl819x_TSProc.o\
-		      rtl819x_BAProc.o\
-		      dot11d.o
-
-ieee80211_crypt-rsl-objs := ieee80211_crypt.o
-ieee80211_crypt_tkip-rsl-objs := ieee80211_crypt_tkip.o
-ieee80211_crypt_ccmp-rsl-objs := ieee80211_crypt_ccmp.o
-ieee80211_crypt_wep-rsl-objs := ieee80211_crypt_wep.o
-
-obj-m +=ieee80211-rsl.o
-obj-m +=ieee80211_crypt-rsl.o
-obj-m +=ieee80211_crypt_wep-rsl.o
-obj-m +=ieee80211_crypt_tkip-rsl.o
-obj-m +=ieee80211_crypt_ccmp-rsl.o
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
