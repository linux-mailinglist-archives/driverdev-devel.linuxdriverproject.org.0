Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 099C0257C11
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 17:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 829F32151F;
	Mon, 31 Aug 2020 15:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mx2DhB8tvmMN; Mon, 31 Aug 2020 15:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89DCB204C4;
	Mon, 31 Aug 2020 15:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6381BF41E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3901D2040A
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oQtOCYqiAlD4 for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 15:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 977382039E
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 15:17:27 +0000 (UTC)
Received: from e123331-lin.nice.arm.com (adsl-83.46.190.3.tellas.gr
 [46.190.3.83])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAB8820936;
 Mon, 31 Aug 2020 15:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598887047;
 bh=Bx4FY5JhoZLx8KTEBPX2ul2KmzV8P0l5/pk4TdwHBvo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ih+SPsCqEZGA06ELihAMJMFtC7u0A9h/P0hOe51EM8fHn5n93MVE6ibNgYXGHr/gV
 J2p1LzaRGUa09AJukZtPVw3OQf59s7cWH6OBMQM6vjpTT/S2epOWUoiQYTwE8GpSl0
 H8NqMHkuMaiA7sSZILkYjk2sJLEpNv9xuPCglSvs=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 6/7] net: wireless: drop bogus CRYPTO_xxx Kconfig selects
Date: Mon, 31 Aug 2020 18:16:48 +0300
Message-Id: <20200831151649.21969-7-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200831151649.21969-1-ardb@kernel.org>
References: <20200831151649.21969-1-ardb@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-nfs@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 netdev@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drop some bogus Kconfig selects that are not entirely accurate, and
unnecessary to begin with, since the same Kconfig options also select
LIB80211 features that already imply the selected functionality (AES
for CCMP, ARC4 and ECB for TKIP)

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/net/wireless/intel/ipw2x00/Kconfig   | 4 ----
 drivers/net/wireless/intersil/hostap/Kconfig | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/drivers/net/wireless/intel/ipw2x00/Kconfig b/drivers/net/wireless/intel/ipw2x00/Kconfig
index b1e7b4470842..1650d5865aa0 100644
--- a/drivers/net/wireless/intel/ipw2x00/Kconfig
+++ b/drivers/net/wireless/intel/ipw2x00/Kconfig
@@ -160,11 +160,7 @@ config LIBIPW
 	select WIRELESS_EXT
 	select WEXT_SPY
 	select CRYPTO
-	select CRYPTO_ARC4
-	select CRYPTO_ECB
-	select CRYPTO_AES
 	select CRYPTO_MICHAEL_MIC
-	select CRYPTO_ECB
 	select CRC32
 	select LIB80211
 	select LIB80211_CRYPT_WEP
diff --git a/drivers/net/wireless/intersil/hostap/Kconfig b/drivers/net/wireless/intersil/hostap/Kconfig
index 6ad88299432f..c865d3156cea 100644
--- a/drivers/net/wireless/intersil/hostap/Kconfig
+++ b/drivers/net/wireless/intersil/hostap/Kconfig
@@ -5,11 +5,7 @@ config HOSTAP
 	select WEXT_SPY
 	select WEXT_PRIV
 	select CRYPTO
-	select CRYPTO_ARC4
-	select CRYPTO_ECB
-	select CRYPTO_AES
 	select CRYPTO_MICHAEL_MIC
-	select CRYPTO_ECB
 	select CRC32
 	select LIB80211
 	select LIB80211_CRYPT_WEP
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
