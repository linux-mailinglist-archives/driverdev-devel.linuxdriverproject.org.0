Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB0A2322CD
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 18:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 194058683A;
	Wed, 29 Jul 2020 16:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HRkRGSua7jMC; Wed, 29 Jul 2020 16:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EAEEF866B1;
	Wed, 29 Jul 2020 16:38:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C47851BF36B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 16:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C112A8798A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 16:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 75rI3pReNqbD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 16:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C19D879CF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 16:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1596040733; x=1627576733;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=WjtMyXWY5xCBnim9hBLxxXcK/rPPx1+Ih0m1GGoQftg=;
 b=xf+TvG3x7+Cif1la9eatBceBn/hhduVLnnbRxxgjcCwu/8wg16OE6CMp
 /GG3PCXNvC20lPApeiPs9iKHlusKuKwY5mRkFWW9Zsmd20pQ4sS1I/nVp
 e/NAdBh8RlwCR+Jg+HcDAQVZ0OGspHoByNNegkYLAW4q28o2EUi+/80Rh
 p/UzM8M5JF+kUouYuTP0V3N9itcCzfYU4d9FMoEIA/7VhQKqonwp7VXzX
 j4IvzM/bsncmpSEkUKDgn1yEgRgzl+owfluSOew7SNGB+exSCQEGMDej5
 Llzabgj6XWkUTO3HPgnUNhb7OtGeulh+HcyhGLjFcxGQQR9PB3VKYjeFH Q==;
IronPort-SDR: VXzIu3+vOG63yUSD1+jdwNfhyrexMh9c2Zy1Ufl5wFEI+4uhpVr2AL5E5PRF4pW16DRpHTSaxg
 dwb9+qTxExuN5AUPUPJZx6e3XtXnIlFKhEbtr99y0feTk+sOlnizlMF+V8mqsSG7tB7pJcWm64
 VeIKe80G0/kYyul+eRvoy6PewhIvAstl1KM8Y+fCOsM9rKffgCJeAZcsU9x/06u3Fp117yWczd
 pxq3nxyD0trZzftlc0Cj5JqzB1QaqhDv70tYDnBbmHNwFu8EYHccX8mrbqiEDaD6EeVwW75gs1
 M34=
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="85056482"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Jul 2020 09:38:52 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 29 Jul 2020 09:38:49 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 29 Jul 2020 09:38:05 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: usb: rename most_usb.ko
Date: Wed, 29 Jul 2020 18:38:48 +0200
Message-ID: <1596040728-3353-1-git-send-email-christian.gromm@microchip.com>
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

To avoid a name conflict when adding the usb module to the
driver's directory in the stable branch, this patch simply
renames the kernel object.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/usb/{most_usb.ko => most-usb.ko} | Bin
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename drivers/staging/most/usb/{most_usb.ko => most-usb.ko} (100%)

diff --git a/drivers/staging/most/usb/most_usb.ko b/drivers/staging/most/usb/most-usb.ko
similarity index 100%
rename from drivers/staging/most/usb/most_usb.ko
rename to drivers/staging/most/usb/most-usb.ko
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
