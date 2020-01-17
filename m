Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 713F6140802
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 11:31:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D0EC86DAE;
	Fri, 17 Jan 2020 10:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FxJBrmoL7UZ; Fri, 17 Jan 2020 10:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B36E86DE2;
	Fri, 17 Jan 2020 10:31:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03FA91BF2BB
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 10:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EC4FB86DAE
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 10:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLHllSK1Fr+o for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 10:31:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D122E86DD6
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 10:31:29 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k3ri91OHfHldoW61f821T7S20ZTDSywePNhHDV5L/bBp0HaVk442V+jxJKIACsVn7RdLXHVj4T
 4sIeLXO5XEw5/GqaVOHkhebsViMYD16EwLzUZPscLcZcj/uD7+lSazdsXmJxhIfuuGYD/zKirQ
 pOW3xX+UhMWoOQZjUbIcCZQNHDbOdEPzTX1WRj8e5pOatV5ycGhxY9+bVgu1G7YKEsNaOczRO8
 GKnXoKjDC90MiVCw3Xp+oFGDZpPM3KYn8vENXlidFvsUj9cRWYA7wV7AEEO/A9IIyHGJ30yVB6
 9Fc=
X-IronPort-AV: E=Sophos;i="5.70,329,1574146800"; d="scan'208";a="61369414"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 03:31:29 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 03:31:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 17 Jan 2020 03:31:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GileH9ucLOZ0WmMbsJx/WXWLVGCMePxq9DoX06SjO0aUdzz98JP/kKMFlwMoYNpdVVDNG++EtNPBOkBncJ+7R/enymwv8ZBWBLcGVQzCv9BScv5n7/5W2MFH4hgsuE1hWfzNyBrzgNUGfVH9e/1ptxSX43AWSFYQOg+ICO/apmjqLC1IyL5x5kXRRTDF4xzJY2B5KdyJrMBrH9SlHIV6+RxlPgeXF8cHjOrHrEnOvrNeULFQBBB2yw/9WRPo5puglF/aH6rKblajPkkWXRUQg08ImGjtCgRhpt2c3W16qOlX6+2r9M7XQX+XKhkNJiGq+Hb5f+udkydQXtSD5jpJXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z4sDtNbwx6vkaUI3w0nWsSCdnCCsvGh82TQsgrYmvxM=;
 b=Ww5xSgQeDhjNT6dV3ejpQChtci0xZOo/bT1u0Y72fJjegcy460lsigOg8U2kD6bF97f4xxpjhATwYhuGkMlTEzif7Dyi3f5FSrQpT92jwxFhYk1zDladmOFs6/daXWOJb6lKFFR5lX4eYZi/EADXSSpO9cJrW+9SKqLEM9rZvpkXG8enmlhDP50gveqd/MRmBnrh0wf2bx8yr1jGlcK9ySzSpkPRDvoVOst1D/0F4nVio8l85A9BX8i7zEKoSlfNLRjjnVVxDddf4SeoZolO6EDkGveNxl6t7vVpxUMMEDMz322Gpmke9hC+FCqir6M0iVkHARJFsyjvHaWNROUC5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z4sDtNbwx6vkaUI3w0nWsSCdnCCsvGh82TQsgrYmvxM=;
 b=XwYB2HLnSruiVRghr45G/VsQI70kPQqCpUoQcZn0uWeeMEUOQJ8nR+L0U2YohzqQpec8BIcvLrB9+9mzqQ1WFDcBhbSryvv30KTe6XSIlqZUWYj9Ym623sVizOXa5M+Qt4yNjdrZne6METYq1wyKDbyuJo7da1QIUbSfiBd/3mU=
Received: from DM6PR11MB3996.namprd11.prod.outlook.com (20.176.125.206) by
 DM6PR11MB2907.namprd11.prod.outlook.com (20.177.217.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 10:31:28 +0000
Received: from DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392]) by DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392%5]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 10:31:28 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 4/4] staging: wilc1000: remove unused code prior to throughput
 enhancement in SPI
Thread-Topic: [PATCH 4/4] staging: wilc1000: remove unused code prior to
 throughput enhancement in SPI
Thread-Index: AQHVzSFG90oHFZftCU++AJhMAvfi1w==
Date: Fri, 17 Jan 2020 10:31:27 +0000
Message-ID: <20200117160157.8706-5-ajay.kathat@microchip.com>
References: <20200117160157.8706-1-ajay.kathat@microchip.com>
In-Reply-To: <20200117160157.8706-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebf2e9b7-92e9-47f0-5470-08d79b38692d
x-ms-traffictypediagnostic: DM6PR11MB2907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB29077BD4C98349D84CF17F8CE3310@DM6PR11MB2907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(376002)(346002)(189003)(199004)(8936002)(6916009)(5660300002)(6486002)(81166006)(478600001)(26005)(76116006)(91956017)(8676002)(81156014)(66946007)(66476007)(66446008)(64756008)(66556008)(36756003)(4326008)(2906002)(86362001)(316002)(6506007)(2616005)(107886003)(71200400001)(1076003)(6512007)(186003)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2907;
 H:DM6PR11MB3996.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: symNvoeiv2GXwonW1xpPwU0Yu4M/VwcAAjXu+WG7q2clSGjj7CcSfuAvWMGK0GbATABCV9iZJbL80DNYDDTSFMNQlPMaO8HZNyqi1KISf5lw3O93eYrPtASbSnaYuhE+YDYfWPv7pCyqJCv/Tw2M2ZOcZSlLPgiU2z3/qhh+PpF0MdWvxkRpcHXml311L4IWGtUzmAQmbUaFxGOB1xUooQUYX5CmG6DQUzR/DEoFiAN0SAfWpqGMhfpx8mXYkNLBCBF5DeJjAwaDGToUYYoVAZW7QFgAB0SU5hWh3Jy7U5kKee+yWXYhZhTI1Y7SV14u6505/x2ZenVUZnv7vnlvgsPSaexu3Ah5at/e785za+w+rKHaqxtIuU4ZX2U1PyRyQZHlHtAkbYQwd5AeB+nlosPkzC4AqQPmGt0YPSysm76Prs1NtjEP+ZlfBNj5+0hW
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ebf2e9b7-92e9-47f0-5470-08d79b38692d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 10:31:27.9957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O83qTsPnmlWAWung21bc2Sbhp4wK6RP8ipv6mbmEOxu0uKWvHfgvmjZGCnL9QKIwcYpdJU796Ja87r31XVtjx7AGtpsMmEAT16AGN8TZhy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2907
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

From: Ajay Singh <ajay.kathat@microchip.com>

The firmware now uses throughput enhancement code by default for SPI so
remove the previous implementation as its not used anymore. Removed the
use of 'has_thrpt_enh' element as its always true.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/spi.c | 143 +--------------------------------
 1 file changed, 4 insertions(+), 139 deletions(-)

diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
index 8694ab5fcb22..4b883a933b44 100644
--- a/drivers/staging/wilc1000/spi.c
+++ b/drivers/staging/wilc1000/spi.c
@@ -13,7 +13,6 @@
 struct wilc_spi {
 	int crc_off;
 	int nint;
-	int has_thrpt_enh;
 };
 
 static const struct wilc_hif_func wilc_hif_spi;
@@ -897,8 +896,6 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 		return 0;
 	}
 
-	spi_priv->has_thrpt_enh = 1;
-
 	isinit = 1;
 
 	return 1;
@@ -906,154 +903,22 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 
 static int wilc_spi_read_size(struct wilc *wilc, u32 *size)
 {
-	struct spi_device *spi = to_spi_device(wilc->dev);
-	struct wilc_spi *spi_priv = wilc->bus_data;
 	int ret;
 
-	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
-					size);
-		*size = *size  & IRQ_DMA_WD_CNT_MASK;
-	} else {
-		u32 tmp;
-		u32 byte_cnt;
-
-		ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE,
-					&byte_cnt);
-		if (!ret) {
-			dev_err(&spi->dev,
-				"Failed read WILC_VMM_TO_HOST_SIZE ...\n");
-			return ret;
-		}
-		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
-		*size = tmp;
-	}
+	ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE, size);
+	*size = *size & IRQ_DMA_WD_CNT_MASK;
 
 	return ret;
 }
 
 static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
-	struct spi_device *spi = to_spi_device(wilc->dev);
-	struct wilc_spi *spi_priv = wilc->bus_data;
-	int ret;
-	u32 tmp;
-	u32 byte_cnt;
-	bool unexpected_irq;
-	int j;
-	u32 unknown_mask;
-	u32 irq_flags;
-	int k = IRG_FLAGS_OFFSET + 5;
-
-	if (spi_priv->has_thrpt_enh)
-		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
-					 int_status);
-	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
-	if (!ret) {
-		dev_err(&spi->dev,
-			"Failed read WILC_VMM_TO_HOST_SIZE ...\n");
-		return ret;
-	}
-	tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
-
-	j = 0;
-	do {
-		wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
-		tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
-
-		if (spi_priv->nint > 5) {
-			wilc_spi_read_reg(wilc, 0x1a94, &irq_flags);
-			tmp |= (((irq_flags >> 0) & 0x7) << k);
-		}
-
-		unknown_mask = ~((1ul << spi_priv->nint) - 1);
-
-		unexpected_irq = (tmp >> IRG_FLAGS_OFFSET) & unknown_mask;
-		if (unexpected_irq) {
-			dev_err(&spi->dev,
-				"Unexpected interrupt(2):j=%d,tmp=%x,mask=%x\n",
-				j, tmp, unknown_mask);
-		}
-
-		j++;
-	} while (unexpected_irq);
-
-	*int_status = tmp;
-
-	return ret;
+	return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE, int_status);
 }
 
 static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 {
-	struct spi_device *spi = to_spi_device(wilc->dev);
-	struct wilc_spi *spi_priv = wilc->bus_data;
-	int ret;
-	u32 flags;
-	u32 tbl_ctl;
-
-	if (spi_priv->has_thrpt_enh) {
-		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
-					  val);
-	}
-
-	flags = val & (BIT(MAX_NUM_INT) - 1);
-	if (flags) {
-		int i;
-
-		ret = 1;
-		for (i = 0; i < spi_priv->nint; i++) {
-			/*
-			 * No matter what you write 1 or 0,
-			 * it will clear interrupt.
-			 */
-			if (flags & 1)
-				ret = wilc_spi_write_reg(wilc,
-							 0x10c8 + i * 4, 1);
-			if (!ret)
-				break;
-			flags >>= 1;
-		}
-		if (!ret) {
-			dev_err(&spi->dev,
-				"Failed wilc_spi_write_reg, set reg %x ...\n",
-				0x10c8 + i * 4);
-			return ret;
-		}
-		for (i = spi_priv->nint; i < MAX_NUM_INT; i++) {
-			if (flags & 1)
-				dev_err(&spi->dev,
-					"Unexpected interrupt cleared %d...\n",
-					i);
-			flags >>= 1;
-		}
-	}
-
-	tbl_ctl = 0;
-	/* select VMM table 0 */
-	if (val & SEL_VMM_TBL0)
-		tbl_ctl |= BIT(0);
-	/* select VMM table 1 */
-	if (val & SEL_VMM_TBL1)
-		tbl_ctl |= BIT(1);
-
-	ret = wilc_spi_write_reg(wilc, WILC_VMM_TBL_CTL, tbl_ctl);
-	if (!ret) {
-		dev_err(&spi->dev, "fail write reg vmm_tbl_ctl...\n");
-		return ret;
-	}
-
-	if (val & EN_VMM) {
-		/*
-		 * enable vmm transfer.
-		 */
-		ret = wilc_spi_write_reg(wilc, WILC_VMM_CORE_CTL, 1);
-		if (!ret) {
-			dev_err(&spi->dev, "fail write reg vmm_core_ctl...\n");
-			return ret;
-		}
-	}
-
-	return ret;
+	return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE, val);
 }
 
 static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
