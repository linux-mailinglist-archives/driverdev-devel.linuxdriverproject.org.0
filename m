Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B365127CAD
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 15:30:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B6398711A;
	Fri, 20 Dec 2019 14:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6BatOIE6dgW; Fri, 20 Dec 2019 14:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6353387079;
	Fri, 20 Dec 2019 14:30:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A111A1BF384
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 14:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98D6323509
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 14:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RymStIisE2ua for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 14:30:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D017F2010B
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 14:30:42 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C384B21D7D;
 Fri, 20 Dec 2019 14:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576852242;
 bh=dANxbATojZDgt93uvjH1G9EcIEZvg1xeO8+gLAkF7ME=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X9fCcZ/TlVx7EEciBuJEhCk8WkwMgIvup6HDpBv/uG/+63qigCziT7SSFAX1afTFd
 Zp/AZ3yZ2qDEqoZus9dl06l84Gbo5m3DH2W6x9K7dQ+Gj7FjzKrboIV/s8qXCXhklB
 CuWmNTKbvPa7rpD29BaZZfG+EUP6hD9R2/wqNmV4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 35/52] staging/wlan-ng: add CRC32 dependency in
 Kconfig
Date: Fri, 20 Dec 2019 09:29:37 -0500
Message-Id: <20191220142954.9500-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220142954.9500-1-sashal@kernel.org>
References: <20191220142954.9500-1-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Michael Kupfer <michael.kupfer@fau.de>, Kay Friedrich <kay.friedrich@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Kay Friedrich <kay.friedrich@fau.de>

[ Upstream commit 2740bd3351cd5a4351f458aabaa1c9b77de3867b ]

wlan-ng uses the function crc32_le,
but CRC32 wasn't a dependency of wlan-ng

Co-developed-by: Michael Kupfer <michael.kupfer@fau.de>
Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
Link: https://lore.kernel.org/r/20191127112457.2301-1-kay.friedrich@fau.de
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/wlan-ng/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wlan-ng/Kconfig b/drivers/staging/wlan-ng/Kconfig
index ac136663fa8e5..082c16a31616e 100644
--- a/drivers/staging/wlan-ng/Kconfig
+++ b/drivers/staging/wlan-ng/Kconfig
@@ -4,6 +4,7 @@ config PRISM2_USB
 	depends on WLAN && USB && CFG80211
 	select WIRELESS_EXT
 	select WEXT_PRIV
+	select CRC32
 	help
 	  This is the wlan-ng prism 2.5/3 USB driver for a wide range of
 	  old USB wireless devices.
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
