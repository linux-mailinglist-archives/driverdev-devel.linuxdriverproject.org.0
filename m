Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F8A130386
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 17:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1996386937;
	Sat,  4 Jan 2020 16:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ble+CiycIzty; Sat,  4 Jan 2020 16:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80C13853E6;
	Sat,  4 Jan 2020 16:25:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0DD1BF48D
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87B1E878E3
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ei6NRpQ23+Ys for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 16:25:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from condef-06.nifty.com (condef-06.nifty.com [202.248.20.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B1C4878CD
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 16:25:28 +0000 (UTC)
Received: from conuserg-12.nifty.com ([10.126.8.75])by condef-06.nifty.com
 with ESMTP id 004GM7KJ028220
 for <devel@driverdev.osuosl.org>; Sun, 5 Jan 2020 01:22:07 +0900
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 004GLdDQ002506;
 Sun, 5 Jan 2020 01:21:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 004GLdDQ002506
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578154901;
 bh=TiqaSYY64Xax1WPIpJLYHP6PC75uVkv3yj3Gmy8qOdk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZDqe5oDIs4wHlEbsckx2Go9tmXFjLDVDFEoUnLnRL014+tARk14GWDQW/7wB7NG77
 RSXdxasGPp3c2xLZm9iMMNQGlNAky8rhr5ik4Nd6da8DvtTRaqVPAQdzy+U3tUY+6e
 qzSTXuCOpsFLM97G4MccHy0CK6QRIIRTIiTFDJHbM4UORbXz+7g+sQ8+YIqXRwZKyG
 MnlKvt0bkDfdaPQoNLW804DDZbBRVsq2c+uVdvDzQgck7uTm8YuoBOx/4I0GTaIbFx
 UPScMf80D8V0o3inI8TSBiUNNg6moh9Hg+3Hj60P94g0ADlpA344k/95nvNjJcBxWj
 tdg+ES4zoz6PA==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] staging: rtl8192u: remove unneeded compiler flags
Date: Sun,  5 Jan 2020 01:21:36 +0900
Message-Id: <20200104162136.19170-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104162136.19170-1-masahiroy@kernel.org>
References: <20200104162136.19170-1-masahiroy@kernel.org>
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

-std=gnu89 is specified by the top Makefile. Adding it in a driver
Makefile is redundant.

A driver should avoid specifying the optimization flag.
-O2, -O3, or -Os is passed by the top Makefile based on the
CONFIG_CC_OPTIMIZE_FOR_* option.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/staging/rtl8192u/Makefile | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/Makefile b/drivers/staging/rtl8192u/Makefile
index a7e5d3d91d9c..0be7426b6ebc 100644
--- a/drivers/staging/rtl8192u/Makefile
+++ b/drivers/staging/rtl8192u/Makefile
@@ -1,9 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 NIC_SELECT = RTL8192U
 
-ccflags-y := -std=gnu89
-ccflags-y += -O2
-
 ccflags-y += -DCONFIG_FORCE_HARD_FLOAT=y
 ccflags-y += -DJACKSON_NEW_8187 -DJACKSON_NEW_RX
 ccflags-y += -DTHOMAS_BEACON -DTHOMAS_TASKLET -DTHOMAS_SKB -DTHOMAS_TURBO
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
