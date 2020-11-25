Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B262C42FF
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 16:36:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B936987699;
	Wed, 25 Nov 2020 15:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u721XP6WYWoD; Wed, 25 Nov 2020 15:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A3D787684;
	Wed, 25 Nov 2020 15:36:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 005FF1BF2FC
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 15:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F00078718B
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 15:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZKwt9H3sBw4 for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 15:36:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 751E98716B
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 15:36:49 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA13420857;
 Wed, 25 Nov 2020 15:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606318609;
 bh=h60ek0hTv04VHgQSiFeWek+FE4Lk+MHPlUOUUhBX+ng=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HYsW6S20lGRsMFSPK2OaauEF+r3PkOMvkQFb+6IMsI5IS2Ug9HORuv//hcS4+2A2C
 83knZ25RP5Dx6y9XyTV/FXrwCIrsYFCupJwGwWS/D2NTqw1iymjJcUNILwvYlOU2j7
 EFGOe9Imqdgirb4Z/vTJaIVNKOSmwH/9vr9MPltI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 07/23] staging: ralink-gdma: fix kconfig
 dependency bug for DMA_RALINK
Date: Wed, 25 Nov 2020 10:36:22 -0500
Message-Id: <20201125153638.810419-7-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153638.810419-1-sashal@kernel.org>
References: <20201125153638.810419-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Necip Fazil Yildiran <fazilyildiran@gmail.com>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Necip Fazil Yildiran <fazilyildiran@gmail.com>

[ Upstream commit 06ea594051707c6b8834ef5b24e9b0730edd391b ]

When DMA_RALINK is enabled and DMADEVICES is disabled, it results in the
following Kbuild warnings:

WARNING: unmet direct dependencies detected for DMA_ENGINE
  Depends on [n]: DMADEVICES [=n]
  Selected by [y]:
  - DMA_RALINK [=y] && STAGING [=y] && RALINK [=y] && !SOC_RT288X [=n]

WARNING: unmet direct dependencies detected for DMA_VIRTUAL_CHANNELS
  Depends on [n]: DMADEVICES [=n]
  Selected by [y]:
  - DMA_RALINK [=y] && STAGING [=y] && RALINK [=y] && !SOC_RT288X [=n]

The reason is that DMA_RALINK selects DMA_ENGINE and DMA_VIRTUAL_CHANNELS
without depending on or selecting DMADEVICES while DMA_ENGINE and
DMA_VIRTUAL_CHANNELS are subordinate to DMADEVICES. This can also fail
building the kernel as demonstrated in a bug report.

Honor the kconfig dependency to remove unmet direct dependency warnings
and avoid any potential build failures.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=210055
Signed-off-by: Necip Fazil Yildiran <fazilyildiran@gmail.com>
Link: https://lore.kernel.org/r/20201104181522.43567-1-fazilyildiran@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/ralink-gdma/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/Kconfig b/drivers/staging/ralink-gdma/Kconfig
index 54e8029e6b1af..0017376234e28 100644
--- a/drivers/staging/ralink-gdma/Kconfig
+++ b/drivers/staging/ralink-gdma/Kconfig
@@ -2,6 +2,7 @@
 config DMA_RALINK
 	tristate "RALINK DMA support"
 	depends on RALINK && !SOC_RT288X
+	depends on DMADEVICES
 	select DMA_ENGINE
 	select DMA_VIRTUAL_CHANNELS
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
