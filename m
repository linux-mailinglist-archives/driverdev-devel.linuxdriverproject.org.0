Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 950B028886B
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 14:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08D8E876EE;
	Fri,  9 Oct 2020 12:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EN07pOO8hTdL; Fri,  9 Oct 2020 12:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED060876C6;
	Fri,  9 Oct 2020 12:15:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 594B51BF3AE
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 12:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52763876D9
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 12:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O1kiKRBXY761 for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 12:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BFF58876C6
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 12:15:35 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d0.dynamic.kabel-deutschland.de
 [95.90.213.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2894820709;
 Fri,  9 Oct 2020 12:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602245735;
 bh=rTq2L7ADDGmC2aCG76C+N7crz/74z4eDGRcypwoL840=;
 h=From:To:Cc:Subject:Date:From;
 b=C5sH7wq7QFxHzbOtQD/FfMEkillGm3JuYzND+5IAX/Q1lBbqzqcyznKkoKzUVZv58
 dAmSLBnMDSMdP5FHOHDVG2e6fHy5ZtXV/cIZMchTxnMZJwSewyY55WEqNrtDqwjp1D
 4oZsmDmtIFN5JQqlkiTuoJi3nDN/POOyCsDLOQMA=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kQrJ6-003ksz-HO; Fri, 09 Oct 2020 14:15:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 0/2] Fix new warnings at linux-next
Date: Fri,  9 Oct 2020 14:15:29 +0200
Message-Id: <cover.1602245659.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-clk@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are some file renames at linux-next that are causing some
new documentation warnings. Address them.

Mauro Carvalho Chehab (2):
  MAINTAINERS: fix broken doc refs due to yaml conversion
  crypto: sun8x-ce*: update entries to its documentation

 Documentation/devicetree/bindings/clock/hi6220-clock.txt | 2 +-
 MAINTAINERS                                              | 9 ++++-----
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c        | 2 +-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c        | 2 +-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c        | 2 +-
 .../devicetree/bindings/net/wireless/silabs,wfx.yaml     | 2 +-
 6 files changed, 9 insertions(+), 10 deletions(-)

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
