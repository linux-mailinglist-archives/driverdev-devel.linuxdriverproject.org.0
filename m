Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B430A17CD0C
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Mar 2020 09:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E7518771C;
	Sat,  7 Mar 2020 08:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iaa0uIBEm7Xv; Sat,  7 Mar 2020 08:55:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDE928765D;
	Sat,  7 Mar 2020 08:55:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1E421BF2BF
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 08:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC27F8683C
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 08:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sg-HPVP3i6PE for <devel@linuxdriverproject.org>;
 Sat,  7 Mar 2020 08:55:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C002F86837
 for <devel@driverdev.osuosl.org>; Sat,  7 Mar 2020 08:55:30 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZIK7cmtphlgXbIWeTxJvZ4T2XUjogAMF2/ub7TqgAeIWg+kdAI58khLpQvfgry9F/KRZwWNRF5
 TsICwOhD0STfVH4THqCsXaJs8sDiK8kqwCyqjQSNCdCo0kMyz0lqnFx7lZbz0a+u0CiafbCiMD
 KLN0nSlSny3F+BoSqqPmZBVtKMtunloKRr792blp0uO2fxZZAccUKvuO4BNTZZOZWDrsNCdsKj
 DBjSYnzoRl/Dp+Ib075vuTViJ9UuGBew6WH4/SZsZ2ZzixFpi7/h/BR53TMwM2fO0MmE+l7Key
 /GA=
X-IronPort-AV: E=Sophos;i="5.70,525,1574146800"; d="scan'208";a="68188811"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Mar 2020 01:55:29 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 7 Mar 2020 01:55:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 7 Mar 2020 01:55:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVFQmKwBeYacQrEo0rv6xPsX2oNMfExzkQnocQBJRQpLFpLhnsbsl+PMPVPEqTJ6EWY3HvAEVffw4eKz3ZUZCBGJxX+tA30E2Ivqf+zcVsJc9JmzQc0gdF3ra78/fYLKe8Ogk2WHHycw+h3X0saiWralGdpIKQSY9RwLyG3xI3IBYoOaZzQ77k1VJpksB+1Y/LwP+C1SPT0tL5FOhKdVRUq8phJYhDtbCniSvtbRjoz3W8iMwQpxYCnf6DqsWUScW1EK4zRWbPbaW5MGyiDUZ+abTeLh2g00qx2Wu4/lYWGLXbpDLEtwmOFKZSWPkoRWhFtq50RBEU8JObEE07J2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPWfZHT05++FZn1YWLQ7my7UnCU3vMtHII/JJN83YN8=;
 b=becgSOnBXR4P3DMT4EflkTAaFtMJ+4hQSfYvfsR9XD4ZxViCNRaSVyv3MOrQ2qzUsl2rYCsq5wcu+2A/l3hitakH6WKl5DzQg8oBgVnd+wJkAhAkcG3ldAeaIJzz+VwhQKauMvbiStI4dD4LMUyORK1h9hwrEEIxdQ4/DceU5cPbF3QFQtpliic1j1keSCNCyMMHvhd8sCnq/z6/oh8EpgDhQnPK2G1pg732EqwSuDOEVOluCO+UG8VPYusyjsLvem4uoZUEUWybUJJyVxE0jz133hbnym8EsoSjA3DKtq83EeCix9y9nI4NnhNCpJRhPmVoFej8xJobiwLMlN4nUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPWfZHT05++FZn1YWLQ7my7UnCU3vMtHII/JJN83YN8=;
 b=AOOY+Nc5wG3jCOhQmO8aCvj7SJwpZ/XC+T5n+/9clXvj5NF6nt3RsJ6PAj2ZPv7dSnlVdW7yFUkSkE4Hi4cBdPjMI3PLIVoueIqMYSb6H/RBtv4IdVsKZTZA493kOFnaoUimCkVG8AA1ryjcHvGzAbjir00CzCIXYYPSyju618Y=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1601.namprd11.prod.outlook.com (2603:10b6:405:f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Sat, 7 Mar
 2020 08:55:28 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::a0be:9e7c:714e:e2bd]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::a0be:9e7c:714e:e2bd%6]) with mapi id 15.20.2793.013; Sat, 7 Mar 2020
 08:55:28 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 1/3] staging: wilc1000: use 'interrupts' property instead
 of 'irq-gpio'
Thread-Topic: [PATCH v2 1/3] staging: wilc1000: use 'interrupts' property
 instead of 'irq-gpio'
Thread-Index: AQHV9F4mtqxtgb4KC0aglzgJJfqpVg==
Date: Sat, 7 Mar 2020 08:55:28 +0000
Message-ID: <20200307085523.7320-2-ajay.kathat@microchip.com>
References: <20200307085523.7320-1-ajay.kathat@microchip.com>
In-Reply-To: <20200307085523.7320-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.205.217.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bcdfedb-a600-4114-5e66-08d7c2754902
x-ms-traffictypediagnostic: BN6PR11MB1601:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1601D27ED67BCC64F9694123E3E00@BN6PR11MB1601.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(396003)(136003)(39860400002)(199004)(189003)(76116006)(66446008)(66946007)(91956017)(66556008)(966005)(5660300002)(64756008)(66476007)(36756003)(71200400001)(478600001)(6486002)(6506007)(2616005)(54906003)(4326008)(26005)(107886003)(86362001)(316002)(6512007)(1076003)(81156014)(81166006)(8936002)(186003)(6916009)(2906002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1601;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +QCaMgGOxPXnsL+nlnB2lStx7Mxtm1xSQsBm0slg7zOuKh88xmQdB9alftoigBUSh9G7EKnNvNY63omWQSoUQBAmqE9hsMmzPBW1k880UJHSyooxNA6ZTCnZpJlup+i/QPCAbsnzz795sE7ESvXFwW3nDv1u2aUDeOUbV08g7nwc+ZHj+rBjrdBx4ye4rhNvk+jFyWM05Pgmb3VOojBbLSuz/GA2r+U/0tcejTAZNMw5B5YhpK2/CLpK3D5I0vhEogxIugRWPrE98po6u94/MN6J5p1LfzcnJvfrppdJ/hdLusc1Ufp/L72WPoDKRVSM0dQ4cSG7QRdlZCSZOm4JO8ubybdtObpXGirr2UcdkS/KHSAuP9RfksBT7VN2NP/W+r1pyzr5G1shTofZgDm5c/c0jySVxWIqVRSG4I3Ai7MLk4t6uZM3U1RaxTvI6z9OS4oCB25jTLMKxUABIPsmw1HqodnemwFA59XjJE/zWdOG4IpqTfWW49zr41mOWr16PftAgO8JGOvTFXnAy0snvw==
x-ms-exchange-antispam-messagedata: NSVYjGuNUOLxDjAkWiDAb8mmC1dAfdx5Hz51eYrIHdqdQK/IGPCfRVT7zXe8jsI5Pq06T/NPBfm+G3FjNctEmn2Zvto4/AQSXysy0kX/Ls4nXohOWwCQBN2WdhB6hEMlrkZEew89gO9DM9nd+n5JpA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bcdfedb-a600-4114-5e66-08d7c2754902
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 08:55:28.3011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5R7mTMP1J0FDWhMyiKO+Babw/Uq9NG0J2BnE0Lcwz5g7jINpkmRhAEErjeOT2aP2HfpmoLrj6ky0+G7i8iMJFC5DoUeWfMQON/+b3dRThKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1601
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
 Ajay.Kathat@microchip.com, robh@kernel.org, gregkh@linuxfoundation.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Make use of 'interrupts' property instead of using gpio for handling
the interrupt as suggested in [1].

[1]. https://lore.kernel.org/linux-wireless/20200303015558.GA6876@bogus

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/netdev.c | 24 ++++++++----------------
 drivers/staging/wilc1000/netdev.h |  1 -
 drivers/staging/wilc1000/sdio.c   | 31 ++++++++++++-------------------
 drivers/staging/wilc1000/spi.c    | 15 +--------------
 drivers/staging/wilc1000/wlan.h   |  1 -
 5 files changed, 21 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
index 045f5cdfdca0..a61c1a7aefa8 100644
--- a/drivers/staging/wilc1000/netdev.c
+++ b/drivers/staging/wilc1000/netdev.c
@@ -46,29 +46,21 @@ static irqreturn_t isr_bh_routine(int irq, void *userdata)
 
 static int init_irq(struct net_device *dev)
 {
-	int ret = 0;
 	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wl = vif->wilc;
-
-	ret = gpiod_direction_input(wl->gpio_irq);
-	if (ret) {
-		netdev_err(dev, "could not obtain gpio for WILC_INTR\n");
-		return ret;
-	}
-
-	wl->dev_irq_num = gpiod_to_irq(wl->gpio_irq);
+	int ret;
 
 	ret = request_threaded_irq(wl->dev_irq_num, isr_uh_routine,
 				   isr_bh_routine,
 				   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
 				   "WILC_IRQ", dev);
-	if (ret < 0)
-		netdev_err(dev, "Failed to request IRQ\n");
-	else
-		netdev_dbg(dev, "IRQ request succeeded IRQ-NUM= %d\n",
-			   wl->dev_irq_num);
+	if (ret) {
+		netdev_err(dev, "Failed to request IRQ [%d]\n", ret);
+		return ret;
+	}
+	netdev_dbg(dev, "IRQ request succeeded IRQ-NUM= %d\n", wl->dev_irq_num);
 
-	return ret;
+	return 0;
 }
 
 static void deinit_irq(struct net_device *dev)
@@ -501,7 +493,7 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 		if (ret)
 			goto fail_wilc_wlan;
 
-		if (wl->gpio_irq && init_irq(dev)) {
+		if (wl->dev_irq_num && init_irq(dev)) {
 			ret = -EIO;
 			goto fail_threads;
 		}
diff --git a/drivers/staging/wilc1000/netdev.h b/drivers/staging/wilc1000/netdev.h
index e3689e2a4abb..61cbec674a62 100644
--- a/drivers/staging/wilc1000/netdev.h
+++ b/drivers/staging/wilc1000/netdev.h
@@ -209,7 +209,6 @@ struct wilc {
 	const struct wilc_hif_func *hif_func;
 	int io_type;
 	s8 mac_status;
-	struct gpio_desc *gpio_irq;
 	struct clk *rtc_clk;
 	bool initialized;
 	int dev_irq_num;
diff --git a/drivers/staging/wilc1000/sdio.c b/drivers/staging/wilc1000/sdio.c
index 2301e90c21ca..44b426874c1b 100644
--- a/drivers/staging/wilc1000/sdio.c
+++ b/drivers/staging/wilc1000/sdio.c
@@ -8,6 +8,7 @@
 #include <linux/mmc/sdio_func.h>
 #include <linux/mmc/host.h>
 #include <linux/mmc/sdio.h>
+#include <linux/of_irq.h>
 
 #include "netdev.h"
 #include "cfg80211.h"
@@ -122,33 +123,32 @@ static int wilc_sdio_probe(struct sdio_func *func,
 {
 	struct wilc *wilc;
 	int ret;
-	struct gpio_desc *gpio = NULL;
 	struct wilc_sdio *sdio_priv;
 
 	sdio_priv = kzalloc(sizeof(*sdio_priv), GFP_KERNEL);
 	if (!sdio_priv)
 		return -ENOMEM;
 
-	if (IS_ENABLED(CONFIG_WILC1000_HW_OOB_INTR)) {
-		gpio = gpiod_get(&func->dev, "irq", GPIOD_IN);
-		if (IS_ERR(gpio)) {
-			/* get the GPIO descriptor from hardcode GPIO number */
-			gpio = gpio_to_desc(GPIO_NUM);
-			if (!gpio)
-				dev_err(&func->dev, "failed to get irq gpio\n");
-		}
-	}
-
 	ret = wilc_cfg80211_init(&wilc, &func->dev, WILC_HIF_SDIO,
 				 &wilc_hif_sdio);
 	if (ret) {
 		kfree(sdio_priv);
 		return ret;
 	}
+
+	if (IS_ENABLED(CONFIG_WILC1000_HW_OOB_INTR)) {
+		struct device_node *np = func->card->dev.of_node;
+		int irq_num = of_irq_get(np, 0);
+
+		if (irq_num > 0) {
+			wilc->dev_irq_num = irq_num;
+			sdio_priv->irq_gpio = true;
+		}
+	}
+
 	sdio_set_drvdata(func, wilc);
 	wilc->bus_data = sdio_priv;
 	wilc->dev = &func->dev;
-	wilc->gpio_irq = gpio;
 
 	wilc->rtc_clk = devm_clk_get(&func->card->dev, "rtc_clk");
 	if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
@@ -164,10 +164,6 @@ static void wilc_sdio_remove(struct sdio_func *func)
 {
 	struct wilc *wilc = sdio_get_drvdata(func);
 
-	/* free the GPIO in module remove */
-	if (wilc->gpio_irq)
-		gpiod_put(wilc->gpio_irq);
-
 	if (!IS_ERR(wilc->rtc_clk))
 		clk_disable_unprepare(wilc->rtc_clk);
 
@@ -592,9 +588,6 @@ static int wilc_sdio_init(struct wilc *wilc, bool resume)
 	int loop, ret;
 	u32 chipid;
 
-	if (!resume)
-		sdio_priv->irq_gpio = wilc->dev_irq_num;
-
 	/**
 	 *      function 0 csa enable
 	 **/
diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
index dfd25df75780..852f318a86f0 100644
--- a/drivers/staging/wilc1000/spi.c
+++ b/drivers/staging/wilc1000/spi.c
@@ -151,21 +151,12 @@ static int wilc_bus_probe(struct spi_device *spi)
 {
 	int ret;
 	struct wilc *wilc;
-	struct gpio_desc *gpio;
 	struct wilc_spi *spi_priv;
 
 	spi_priv = kzalloc(sizeof(*spi_priv), GFP_KERNEL);
 	if (!spi_priv)
 		return -ENOMEM;
 
-	gpio = gpiod_get(&spi->dev, "irq", GPIOD_IN);
-	if (IS_ERR(gpio)) {
-		/* get the GPIO descriptor from hardcode GPIO number */
-		gpio = gpio_to_desc(GPIO_NUM);
-		if (!gpio)
-			dev_err(&spi->dev, "failed to get the irq gpio\n");
-	}
-
 	ret = wilc_cfg80211_init(&wilc, &spi->dev, WILC_HIF_SPI, &wilc_hif_spi);
 	if (ret) {
 		kfree(spi_priv);
@@ -175,7 +166,7 @@ static int wilc_bus_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, wilc);
 	wilc->dev = &spi->dev;
 	wilc->bus_data = spi_priv;
-	wilc->gpio_irq = gpio;
+	wilc->dev_irq_num = spi->irq;
 
 	wilc->rtc_clk = devm_clk_get(&spi->dev, "rtc_clk");
 	if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
@@ -190,10 +181,6 @@ static int wilc_bus_remove(struct spi_device *spi)
 {
 	struct wilc *wilc = spi_get_drvdata(spi);
 
-	/* free the GPIO in module remove */
-	if (wilc->gpio_irq)
-		gpiod_put(wilc->gpio_irq);
-
 	if (!IS_ERR(wilc->rtc_clk))
 		clk_disable_unprepare(wilc->rtc_clk);
 
diff --git a/drivers/staging/wilc1000/wlan.h b/drivers/staging/wilc1000/wlan.h
index 5999c5490ea5..7689569cd82f 100644
--- a/drivers/staging/wilc1000/wlan.h
+++ b/drivers/staging/wilc1000/wlan.h
@@ -206,7 +206,6 @@
 #define WILC_TX_BUFF_SIZE	(64 * 1024)
 
 #define MODALIAS		"WILC_SPI"
-#define GPIO_NUM		0x44
 
 #define WILC_PKT_HDR_CONFIG_FIELD	BIT(31)
 #define WILC_PKT_HDR_OFFSET_FIELD	GENMASK(30, 22)
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
