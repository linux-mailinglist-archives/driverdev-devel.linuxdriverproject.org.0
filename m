Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5595203261
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE29C884A8;
	Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fexG3DRinPRH; Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D069388364;
	Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9286D1BF488
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7EDA72155D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jayddhh3-qMo
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B804203D1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815701; x=1624351701;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=fzLknJMe77mrm+Hrun7TSv4WNCPQrd/Cwi0X8tRSoow=;
 b=Aacu20GQnzZ6tFuuKO4v4Ufk4Rz9k/lnoyuGCNpBosAZUJyHpjb7aekK
 HyxNcLmoXpZYyDXtaUfd1DCJeLSco0hNEfw92ipYNGyieNNJrazrcJ58h
 8TuFPNludrUV1qfIDETYJFvb1HcutBBwUbNGWwPtxkyHX1GUjhx0R0M61
 M5s4p+pDlgKPP3ZSBMl3fTk3rFP+3mTb7AcpnshwjN97NALn1yv/tRFdc
 u3WCm/2C9rqnGyypkqeHypV0yoNf4ACoEY390J8NC2aD6bbryPB6Kl7k+
 BNEwQckO4hFMbG4Xl6yRi+l0rA5eEmuckfwP5UsE3flTIPfWNAEXPZdwC w==;
IronPort-SDR: AUOV0VL+8xzjlf7lolbDs0hEbOLRCqlakgoTQg52V/sDOfwirJw4nHrY7vvCBeX3kcPN1pdq6g
 Vs3B3+rfsAdJ99qVkhVEoZp9jXvwQl3JqmU7HPr2VNOiWCszS496gareLZQZTpOJrxR666R6ID
 bGplsSnBwmXg9x/qIguW4T608iWJeuEDiTiZ4iJ1OFsTrIPOBjlEVBuhkFvMHBnzT6PSSFG5nf
 odRi7pqBjduDF7RG8Tda9P/TOiu+nneaNCVvhgyUERWFBclYzKiPBzqYPN2Av6PZqSB5AYYAlq
 960=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="84541900"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:18 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:17 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 0/6] staging: most: cdev: clean-up and improvements
Date: Mon, 22 Jun 2020 10:48:09 +0200
Message-ID: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Patch set to fix minor issues and improve things a little.

Christian Gromm (6):
  staging: most: cdev: remove noisy log messages
  staging: most: cdev: use dev_*() functions to print messages
  staging: most: cdev: remove overcautious parameter checking
  staging: most: cdev: fix up parenthesizing
  staging: most: cdev: fix return values
  staging: most: cdev: simplify list iteration

 drivers/staging/most/cdev/cdev.c | 49 +++++++++++-----------------------------
 1 file changed, 13 insertions(+), 36 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
