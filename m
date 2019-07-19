Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B2D6DA11
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 05:59:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DA4888167;
	Fri, 19 Jul 2019 03:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id baAzzC9vAfHm; Fri, 19 Jul 2019 03:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B26DA880A1;
	Fri, 19 Jul 2019 03:59:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CB101BF295
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 03:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49FAA880A1
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 03:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAzO+HAxCza9 for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 03:59:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1DE587FE7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 03:59:30 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BA8E2189F;
 Fri, 19 Jul 2019 03:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508770;
 bh=3GGrEOm9fazLA5eumls6MQ4xq/akDvOrKzvg5TbmCUM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Sz4jSDsiyRMvVJvoyIeoqAq6kElmEzTaHO1nUwLs+sSBK5qKtiWN/+kAO1oz0Qo6K
 Ie0sJSaEeTvzBMVBljwFqPt+3Lm0o2aGhjRbP+N+RuIUEDafk8zu0L2f8QSzDdNriQ
 OhVMvRIoNxX2qOQUdQKEfCHQE+QIQdtxELVgmy34=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 080/171] staging: ks7010: Fix build error
Date: Thu, 18 Jul 2019 23:55:11 -0400
Message-Id: <20190719035643.14300-80-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, Hulk Robot <hulkci@huawei.com>,
 devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: YueHaibing <yuehaibing@huawei.com>

[ Upstream commit 3e5bc68fa596874500e8c718605aa44d5e42a34c ]

when CRYPTO is m and KS7010 is y, building fails:

drivers/staging/ks7010/ks_hostif.o: In function `michael_mic.constprop.13':
ks_hostif.c:(.text+0x560): undefined reference to `crypto_alloc_shash'
ks_hostif.c:(.text+0x580): undefined reference to `crypto_shash_setkey'
ks_hostif.c:(.text+0x5e0): undefined reference to `crypto_destroy_tfm'
ks_hostif.c:(.text+0x614): undefined reference to `crypto_shash_update'
ks_hostif.c:(.text+0x62c): undefined reference to `crypto_shash_update'
ks_hostif.c:(.text+0x648): undefined reference to `crypto_shash_finup'

Add CRYPTO and CRYPTO_HASH dependencies to fix this.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 8b523f20417d ("staging: ks7010: removed custom Michael MIC implementation.")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/ks7010/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ks7010/Kconfig b/drivers/staging/ks7010/Kconfig
index 0987fdc2f70d..9d7cbc8b12df 100644
--- a/drivers/staging/ks7010/Kconfig
+++ b/drivers/staging/ks7010/Kconfig
@@ -5,6 +5,7 @@ config KS7010
 	select WIRELESS_EXT
 	select WEXT_PRIV
 	select FW_LOADER
+	depends on CRYPTO && CRYPTO_HASH
 	help
 	  This is a driver for KeyStream KS7010 based SDIO WIFI cards. It is
 	  found on at least later Spectec SDW-821 (FCC-ID "S2Y-WLAN-11G-K" only,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
