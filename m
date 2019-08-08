Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5278C8693D
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 21:01:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 70049204FC;
	Thu,  8 Aug 2019 19:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y5hsngwH0JrP; Thu,  8 Aug 2019 19:01:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 00747204AA;
	Thu,  8 Aug 2019 19:01:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8251BF38B
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 19:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39D138359A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 19:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xr1ToSekZi6j for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 19:01:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65AFB8377F
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 19:01:19 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ymmswq+oNE/ntA2NJP7x4NNZ/kERwsUk4plR/Ndbsaus2czvFb1IpHcjP4xQCuBZ70g2SbCrid
 8iwiQ2QjRy7fnef1pghoix01dBpY3WrufufkqE4Kaes2eIIhc+AtLDZoyV0sU8ojWEUlG5JR+8
 6pmZmYBNyAZXjVMA3iyhPni/1kCeowB9olGdQChYk0URTllb24u+uPcC6OsBbGwIOernbgy8lh
 ldVPvhRFUvE5UQPJw0KbZkz2kpG3fkBI67W6KPSkmInb9xvKdKTgflnsMl2j7wBQAZGlrto+Ww
 pEI=
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="43663567"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Aug 2019 12:01:18 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Aug 2019 12:01:18 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 8 Aug 2019 12:01:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdpwJ2DgIHBkykPQzrCPcECosXG2mho4ImffLLweCdTh79B5WmsqT3swxu++Ef/Z0ewi29298qQla0+sqlvRqRwJ8x/+yw2mJYrLCDRB+1CR36JDipvpnfB1p7907HB9iWYEzJeDM16/3dEglUvkQYGIkyjDfseXyeQi4BJb0CeHpGdHIBrBHzGiLe0oVTaTTocEtkeNKBJQM9SZRSaRh2zNpqpsxjEL3y2fhBsCYVhhzv8Gg5yfuCKiXdtMonu8nEgVICzFwwOtbuojXZ4/CgQI3gRBTaJw6QL1w35V1AG10Q5numeOMNdbpfdEhamXulUCRbyeM0zPf5YebW6AuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6tZ5XosXShfsikzPZuxry7tFfCsyMyos3R5YxD1RAg=;
 b=Vgdrup1GeV/YlFt8tdydNg/YNz1tqBwga5OuKBVCFXxZY/Tn+yqUOeVeYuB+amU6+V1Vo3FGi+1QjRt4ZUYD5NQcNMqaFl/m2IiCUpASnsJ/rX7hqY1uoipXNvoLxrtONEkH9ou8bFQn947F6w7C183sRKKCsrcNflwIVdS9c8fcttH6ry2HDSpmwf8zI/sPAqShQnCgdm8/gRllQxrd3lHz4/KNNCH7A98WtxU2pUbVnNyyj9gWUQ+U3tyUxW5IXhXkoEwgnq5HDv5OBV9d+T1RzxJWavOxJmkzViZ6JASF40YcvCcv2RjJyXJUqDN60BjPPD+ke7ktK+oVcdU4qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6tZ5XosXShfsikzPZuxry7tFfCsyMyos3R5YxD1RAg=;
 b=xAKp69lk7ilmbdQz+psrxJjY+PEzhLYTKtB1KaL8IheJ9c1LOPbtUe+v8NxTqGCzFmVs5GyTN77w0anrJU4JJyrG6PdCc4daZvLHEbPDH8t/oU0wdcDu8SbNBTIQDCX4Mkt2SDsVpDdu14T6N3ZDdCy1zgQIhubwrgqZ20hfRmE=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB0047.namprd11.prod.outlook.com (10.164.204.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 19:01:02 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336%2]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 19:01:02 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH] staging: wilc1000: Don't reset WILC CPU disgracefully
Thread-Topic: [PATCH] staging: wilc1000: Don't reset WILC CPU disgracefully
Thread-Index: AQHVThuf8VGDsR9UJ0CFWi5DsV4FNA==
Date: Thu, 8 Aug 2019 19:01:02 +0000
Message-ID: <20190808190054.16079-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9550a45-ee6a-4b1f-ef78-08d71c32c1b5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB0047; 
x-ms-traffictypediagnostic: MWHPR11MB0047:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB00476576812B0A3AEF33B39E8DD70@MWHPR11MB0047.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(136003)(346002)(39860400002)(43544003)(189003)(199004)(6916009)(25786009)(2351001)(486006)(71200400001)(71190400001)(66066001)(2906002)(66446008)(6486002)(53936002)(4326008)(386003)(6512007)(52116002)(6506007)(186003)(478600001)(50226002)(8676002)(8936002)(107886003)(2616005)(102836004)(476003)(81156014)(81166006)(26005)(7736002)(256004)(14444005)(5640700003)(66946007)(66476007)(2501003)(64756008)(66556008)(6436002)(14454004)(99286004)(305945005)(36756003)(3846002)(6116002)(86362001)(54906003)(1076003)(316002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB0047;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ap39GN8DUJ9U3TRSP1Bhh9MzNMENLAmGKfEL0M0Hx9GEG0FxKmU50rPRgUfsTA7bdlnA9ELD5R2H8OGikdSZ58gKKgdJNy0k7TKaFREv9LUtT2tOHtMlWdUK5kL7m+0RRkWNHw3P4I0f8bQ0otqomMjZhYs+OFvcPuHTpFppdKir2dSA/5Fw8j49s7aTG7j31FdFDj4vEsuT7kwUovs5rooqPFOFh3dk91CTOWXTlHqgmQQhkKheXaV+/wyJ3oECn2Iu4+Ycn0xHJgj3sJfVeRn/ggDm8RwR8OUQjM+v2sNDjmnCJa0tBTdZ4SVPKG2i8nkscEgsP9lJEHhTUNG5xcMyRsmoOwSdtTYplgHecCWho4tNjf5LZyTvtgtT0Ry0h51vVCneAWGrPHEt4SXE1opXL/m3uSEJTvaZXlx6Pvc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c9550a45-ee6a-4b1f-ef78-08d71c32c1b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 19:01:02.2741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pA0tjTm8sOKvURHz7qKH9xatAuxLzV0+8vePKnPQl2mA2bYY0/HphPnJGmeirSApjGyS8fEl1aBRvdwzKUQHDiVoyaDRR7d450encVBNFog=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0047
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 johannes@sipsolutions.net, Ajay.Kathat@microchip.com,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Adham Abozaeid <adham.abozaeid@microchip.com>

Send abort request to WILC from wilc_wlan_stop instead of resetting the
CPU.
The abort request was being sent from wilc_wlan_cleanup after the CPU
was reset which wasn't the correct order. The abort request handler
in the chip will take care of resetting the CPU.

Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
---
 drivers/staging/wilc1000/wilc_netdev.c |  4 +-
 drivers/staging/wilc1000/wilc_wlan.c   | 69 ++++----------------------
 drivers/staging/wilc1000/wilc_wlan.h   |  5 +-
 3 files changed, 16 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index 57510400f243..cd11c35adcfe 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -475,7 +475,7 @@ static void wilc_wlan_deinitialize(struct net_device *dev)
 		wlan_deinitialize_threads(dev);
 		deinit_irq(dev);
 
-		wilc_wlan_stop(wl);
+		wilc_wlan_stop(wl, vif);
 		wilc_wlan_cleanup(dev);
 		wlan_deinit_locks(dev);
 
@@ -573,7 +573,7 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 		return 0;
 
 fail_fw_start:
-		wilc_wlan_stop(wl);
+		wilc_wlan_stop(wl, vif);
 
 fail_irq_enable:
 		if (!wl->dev_irq_num &&
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index d4ca6467485c..6831999deac4 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -968,60 +968,32 @@ int wilc_wlan_start(struct wilc *wilc)
 	return (ret < 0) ? ret : 0;
 }
 
-int wilc_wlan_stop(struct wilc *wilc)
+int wilc_wlan_stop(struct wilc *wilc, struct wilc_vif *vif)
 {
 	u32 reg = 0;
 	int ret;
-	u8 timeout = 10;
 
 	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
 
-	ret = wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
+	ret = wilc->hif_func->hif_read_reg(wilc, WILC_GP_REG_0, &reg);
 	if (!ret) {
+		netdev_err(vif->ndev, "Error while reading reg\n");
 		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
-		return ret;
+		return -EIO;
 	}
 
-	reg &= ~BIT(10);
-	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GLB_RESET_0, reg);
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_0,
+					(reg | WILC_ABORT_REQ_BIT));
 	if (!ret) {
+		netdev_err(vif->ndev, "Error while writing reg\n");
 		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
-		return ret;
+		return -EIO;
 	}
 
-	do {
-		ret = wilc->hif_func->hif_read_reg(wilc,
-						   WILC_GLB_RESET_0, &reg);
-		if (!ret) {
-			release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
-			return ret;
-		}
-
-		if ((reg & BIT(10))) {
-			reg &= ~BIT(10);
-			ret = wilc->hif_func->hif_write_reg(wilc,
-							    WILC_GLB_RESET_0,
-							    reg);
-			timeout--;
-		} else {
-			ret = wilc->hif_func->hif_read_reg(wilc,
-							   WILC_GLB_RESET_0,
-							   &reg);
-			if (!ret) {
-				release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
-				return ret;
-			}
-			break;
-		}
+	wilc->hif_func->hif_read_reg(wilc, WILC_FW_HOST_COMM, &reg);
+	reg = BIT(0);
 
-	} while (timeout);
-	reg = (BIT(0) | BIT(1) | BIT(2) | BIT(3) | BIT(8) | BIT(9) | BIT(26) |
-	       BIT(29) | BIT(30) | BIT(31));
-
-	wilc->hif_func->hif_write_reg(wilc, WILC_GLB_RESET_0, reg);
-	reg = (u32)~BIT(10);
-
-	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GLB_RESET_0, reg);
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_FW_HOST_COMM, reg);
 
 	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 
@@ -1032,8 +1004,6 @@ void wilc_wlan_cleanup(struct net_device *dev)
 {
 	struct txq_entry_t *tqe;
 	struct rxq_entry_t *rqe;
-	u32 reg = 0;
-	int ret;
 	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wilc = vif->wilc;
 
@@ -1058,23 +1028,6 @@ void wilc_wlan_cleanup(struct net_device *dev)
 	wilc->rx_buffer = NULL;
 	kfree(wilc->tx_buffer);
 	wilc->tx_buffer = NULL;
-
-	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
-
-	ret = wilc->hif_func->hif_read_reg(wilc, WILC_GP_REG_0, &reg);
-	if (!ret) {
-		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
-		return;
-	}
-
-	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_0,
-					(reg | ABORT_INT));
-	if (!ret) {
-		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
-		return;
-	}
-
-	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 	wilc->hif_func->hif_deinit(NULL);
 }
 
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index 802f11807659..f566d040bb72 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -98,6 +98,7 @@
 #define WILC_VMM_TBL_RX_SHADOW_BASE	WILC_AHB_SHARE_MEM_BASE
 #define WILC_VMM_TBL_RX_SHADOW_SIZE	256
 
+#define WILC_FW_HOST_COMM		0x13c0
 #define WILC_GP_REG_0			0x149c
 #define WILC_GP_REG_1			0x14a0
 
@@ -129,7 +130,7 @@
 
 #define WILC_PLL_TO_SDIO	4
 #define WILC_PLL_TO_SPI		2
-#define ABORT_INT		BIT(31)
+#define WILC_ABORT_REQ_BIT		BIT(31)
 
 #define WILC_RX_BUFF_SIZE	(96 * 1024)
 #define WILC_TX_BUFF_SIZE	(64 * 1024)
@@ -280,7 +281,7 @@ struct wilc_vif;
 int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 				u32 buffer_size);
 int wilc_wlan_start(struct wilc *wilc);
-int wilc_wlan_stop(struct wilc *wilc);
+int wilc_wlan_stop(struct wilc *wilc, struct wilc_vif *vif);
 int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
 			      u32 buffer_size,
 			      void (*tx_complete_fn)(void *, int));
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
