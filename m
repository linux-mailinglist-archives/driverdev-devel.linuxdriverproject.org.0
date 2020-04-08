Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0531A2695
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 17:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7579882DD;
	Wed,  8 Apr 2020 15:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tyTeMKYqbca3; Wed,  8 Apr 2020 15:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CA4688292;
	Wed,  8 Apr 2020 15:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FEC51BF275
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 15:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9AF0A88292
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 15:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hc4Q36V5+HJ3 for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 15:59:13 +0000 (UTC)
X-Greylist: delayed 00:05:18 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A05B1875DA
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 15:59:12 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MTAW9-1jjUM20lyh-00UXnC; Wed, 08 Apr 2020 17:53:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] media: staging: rkisp1: avoid unused variable warning
Date: Wed,  8 Apr 2020 17:52:44 +0200
Message-Id: <20200408155325.2077345-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:68Z72znrNvEuHIJsN20T/ABmAB4bmydH1GC38M8EeLkViwTTCj5
 pGlc7UTVbkUzb3TX+27y7HvCoxt6g49BGBUEx+iIZG69x2Sw/ZAeDGz4YJQ/1RylPMQQTYI
 zejJf3aUKH6QMhCjW2+TZbGrVbYkE02vPqUUa6B8COUi1NZ10c+LnN9+a5YJYKVdNmBmcX6
 jwT6sd1yAggxfj72OZTEw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Awc+4kQhE8c=:sfAq2pQt8/fe4nw3avggR9
 qLMntFK2qNiGCAWdTFNewRQz9kJVMd+JPvJ71CjVEDrmHCOCST9/TgUI/nLPqCqQV7Qf2V194
 3aLNwp9zNSoqAkCbosHPlfLHR+O+nUpY6ItE1Vww/5ayA7SV2049g9Rb1qQ40WFtlytyC+v/j
 2IXpNuKPwgmKdD5cTg7oAiDpT/Go/h7y04N4E/NlFbwYh6OAaIvM3Z6uPIaM5FjoclseQCCNO
 esYVPNqfZPWYkXSfjE9u6TePc8NyA9wQtQi6QcUK9nYB5AzjM/BmyA4WovUpwByzEVJQRy1PS
 k6+wXuPtnOcOShVfl6OOrHcsbaZeIejYciOBydHza0v5tm+tMzy+bEYoq+7zNRo1aYrR2ojEl
 HiYXhzd7Z1iBuKpIsLV8WaJ447El0EtmBwo4GelzYnzhhWO1QqaHF/n1G2mV2FfAIodsQWnJr
 atxHX6RywJ6i4E0H7mR36Yp2dsI5cnYSYIXsrVFt1OuuIfMewt07mN+2z9cpKIOEF6vkIg4TP
 X2sNXvjoiJkfwRAXzl7YjIKsSnLQOPK3ZpJQ0YFaeX8jaRUXVZtd6h3VAF/ydUKinWitpFn6l
 u4ybm+uMMuUD9F773+uoa1OFrQ3JnC1TKP8HG0DVb0V5+gAtTKBpRzEfZt7pwxlvXROJwOgbO
 YUc14fZywXQAcr10v7iUh4uWW+d75kiV/Z5BNnn+gaxJk3H+2qf9uIJPABv1F0sZKgPu71ZrO
 gDzb4PNmel2tHIt6SKQSBxmZeF3j8CbR9zqYmBMeNV8+pAeaBD4kKRllEoyVNA/qbfQLSHu1X
 r89xQV3nAPR7o4YAT55oeHG/rWGbALDF9hqPgyJkG/Bf5idjmpZONOHclDNBtltcck35KwZLM
 AzU9OBJi5byUp8hwYseChhsZ7kXmTPuShEWwoo1phCgVJMLmh9suF8qlKZVOr/ZfIf58vfiZm
 2jyBZKwW/YAC2D3qVZeiiqFQmk7oLeIzgvzEj1r+er2hRq/9U+igYhSGEuLJ15dN0CITatO03
 aA==
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
Cc: devel@driverdev.osuosl.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When compile-testing with CONFIG_OF disabled, we get a warning
about an unused variable, and about inconsistent Kconfig dependencies:

WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
  Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
  Selected by [m]:
  - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])

drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
  457 |  struct device_node *node = pdev->dev.of_node;

Simply open-coding the pointer dereference in the only place
the variable is used avoids the warning in all configurations,
so we can allow compile-testing as well.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c           | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
index bd0147624de1..dd5d4d741bdd 100644
--- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
+++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
@@ -2,7 +2,7 @@
 
 config PHY_ROCKCHIP_DPHY_RX0
 	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
 	select GENERIC_PHY_MIPI_DPHY
 	select GENERIC_PHY
 	help
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index b1b3c058e957..5e7e797aad71 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -454,7 +454,6 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 
 static int rkisp1_probe(struct platform_device *pdev)
 {
-	struct device_node *node = pdev->dev.of_node;
 	const struct rkisp1_match_data *clk_data;
 	const struct of_device_id *match;
 	struct device *dev = &pdev->dev;
@@ -463,7 +462,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	unsigned int i;
 	int ret, irq;
 
-	match = of_match_node(rkisp1_of_match, node);
+	match = of_match_node(rkisp1_of_match, pdev->dev.of_node);
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
 	if (!rkisp1)
 		return -ENOMEM;
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
