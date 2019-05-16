Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6AD20A96
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 17:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2567A866F0;
	Thu, 16 May 2019 15:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eROS0b2wYG7n; Thu, 16 May 2019 15:03:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E59C386708;
	Thu, 16 May 2019 15:03:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D58511BF3BB
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 15:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0DE823B31
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 15:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ohmNEjol0If for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 15:03:02 +0000 (UTC)
X-Greylist: delayed 00:17:02 by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800044.outbound.protection.outlook.com [40.107.80.44])
 by silver.osuosl.org (Postfix) with ESMTPS id AE8B523B7F
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 15:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lRnjRH5C6G1TZttsN0EG0HqtgPjxumxx5mgT8eucyTE=;
 b=rmOzmF+p9Py065wALvVPJ+skuhLqWFZ1dM9kegQ+a/3p/7NQ5LJcDHqHwz0Fu5pHN5CmMhkrmFZcTa+A0iKC7O5W/NNqhnENDjK+b0KMcjemerpkM5HCsOhWywErbgFZ6Y86sU0RLTlLim4hjtA5nVTnbhhGM2R8U/Na4KuNt2k=
Received: from DM6PR03CA0005.namprd03.prod.outlook.com (2603:10b6:5:40::18) by
 BY2PR03MB554.namprd03.prod.outlook.com (2a01:111:e400:2c38::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1878.22; Thu, 16 May
 2019 14:31:52 +0000
Received: from SN1NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by DM6PR03CA0005.outlook.office365.com
 (2603:10b6:5:40::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16 via Frontend
 Transport; Thu, 16 May 2019 14:31:51 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; gmx.de; dkim=none (message not signed)
 header.d=none; gmx.de; dmarc=bestguesspass action=none header.from=analog.com; 
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT022.mail.protection.outlook.com (10.152.72.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1900.16
 via Frontend Transport; Thu, 16 May 2019 14:31:50 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x4GEVo5q027602
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 16 May 2019 07:31:50 -0700
Received: from ben-Latitude-E6540.analog.com (10.50.1.133) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 16 May 2019 10:31:49 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH 3/5] iio: adc: ad7606: Make SPI register calculation generic
 and add spi support
Date: Thu, 16 May 2019 17:32:06 +0300
Message-ID: <20190516143208.19294-3-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516143208.19294-1-beniamin.bia@analog.com>
References: <20190516143208.19294-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(346002)(2980300002)(189003)(199004)(4326008)(356004)(36756003)(54906003)(6666004)(8936002)(126002)(51416003)(44832011)(106002)(246002)(446003)(7696005)(2616005)(486006)(5660300002)(11346002)(16586007)(77096007)(70586007)(186003)(76176011)(8676002)(476003)(26005)(70206006)(7416002)(2906002)(50226002)(336012)(426003)(7636002)(305945005)(6916009)(316002)(1076003)(48376002)(47776003)(53416004)(50466002)(478600001)(86362001)(2351001)(107886003)(14444005)(72206003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR03MB554; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6eda2412-6e24-4e1a-55df-08d6da0b3c76
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BY2PR03MB554; 
X-MS-TrafficTypeDiagnostic: BY2PR03MB554:
X-Microsoft-Antispam-PRVS: <BY2PR03MB554EB3BACD9B4DB98FE232CF00A0@BY2PR03MB554.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0039C6E5C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: jKqzlErXezhdWF/e/B+BG+u8ays2mlrFqba4BxuVFLnOg4FltHPwUVRzncr/HInC6OLcgp+TlMKMRK+ID22geY4kuWoo9jK6HMlosQZ7ycU4Uk/ld8y+QjPZ9C2DXWGWN5RGXkQncC8e80S3UFfNtXsuL2Wg2mjlcwyAmCn6EfGjpQy4FEMNSzIT52HLvuy538+XyN3x9xoCBRdGAUgWpfZvCeHzdfB/Je03jnbfCcG4dhPCyvaoPZSHPMFDP/eitMqQpyQlPb1xX53f6ZAKg8Ap9jSZ2z1ekEXgo8Ac/97KTw9M8bAb+eg0h0eFG+b8dOIVJm78HZnsA9xe78B7hFnogWI0yqcFYpvGlZp1QOeSCx5WqvA29i9zaYDzQj6cm4j91T5/hiDjrCl4umO6/pJv7jDK7fRtMB/7Q4yHMtA=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2019 14:31:50.8333 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eda2412-6e24-4e1a-55df-08d6da0b3c76
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR03MB554
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, Beniamin Bia <beniamin.bia@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to support AD7616 software mode, the spi register access must be
added and the calculation of registers address must be generic.
The length of address and bit which specifies the read/write operation is
different for every device, that is why it was made generic.

Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
---
 drivers/iio/adc/ad7606.c | 60 ++++++++++++++++++++++++++++++++++++++++
 drivers/iio/adc/ad7606.h |  2 ++
 2 files changed, 62 insertions(+)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index aba0fd123a51..6df81117cacc 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -25,6 +25,8 @@
 #include <linux/iio/triggered_buffer.h>
 #include <linux/iio/trigger_consumer.h>
 
+#include <linux/spi/spi.h>
+
 #include "ad7606.h"
 
 /*
@@ -43,6 +45,11 @@ static const unsigned int ad7616_oversampling_avail[8] = {
 	1, 2, 4, 8, 16, 32, 64, 128,
 };
 
+static int ad7616_spi_rd_wr_cmd(int addr, char isWriteOp)
+{
+	return ((addr & 0x7F) << 1) | ((isWriteOp & 0x1) << 7);
+}
+
 static int ad7606_reset(struct ad7606_state *st)
 {
 	if (st->gpio_reset) {
@@ -55,6 +62,59 @@ static int ad7606_reset(struct ad7606_state *st)
 	return -ENODEV;
 }
 
+static int ad7606_spi_reg_read(struct ad7606_state *st, unsigned int addr)
+{
+	struct spi_device *spi = to_spi_device(st->dev);
+	struct spi_transfer t[] = {
+		{
+			.tx_buf = &st->data[0],
+			.len = 2,
+			.cs_change = 0,
+		}, {
+			.rx_buf = &st->data[1],
+			.len = 2,
+		},
+	};
+	int ret;
+
+	st->data[0] = cpu_to_be16(st->chip_info->spi_rd_wr_cmd(addr, 0) << 8);
+
+	ret = spi_sync_transfer(spi, t, ARRAY_SIZE(t));
+	if (ret < 0)
+		return ret;
+
+	return be16_to_cpu(st->data[1]);
+}
+
+static int ad7606_spi_reg_write(struct ad7606_state *st,
+				unsigned int addr,
+				unsigned int val)
+{
+	struct spi_device *spi = to_spi_device(st->dev);
+
+	st->data[0] = cpu_to_be16((st->chip_info->spi_rd_wr_cmd(addr, 1) << 8) |
+				  (val & 0x1FF));
+
+	return spi_write(spi, &st->data[0], sizeof(st->data[0]));
+}
+
+static int ad7606_spi_write_mask(struct ad7606_state *st,
+				 unsigned int addr,
+				 unsigned long mask,
+				 unsigned int val)
+{
+	int readval;
+
+	readval = ad7606_spi_reg_read(st, addr);
+	if (readval < 0)
+		return readval;
+
+	readval &= ~mask;
+	readval |= val;
+
+	return ad7606_spi_reg_write(st, addr, readval);
+}
+
 static int ad7606_read_samples(struct ad7606_state *st)
 {
 	unsigned int num = st->chip_info->num_channels;
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index d8a509c2c428..dfc60af9b8ac 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -16,6 +16,7 @@
  *			oversampling ratios.
  * @oversampling_num	number of elements stored in oversampling_avail array
  * @os_req_reset	some devices require a reset to update oversampling
+ * @spi_rd_wr_cmd	pointer to the function which calculates the spi address
  * @write_scale_sw	pointer to the function which writes the scale via spi
 			in software mode
  * @write_os_sw		pointer to the function which writes the os via spi
@@ -29,6 +30,7 @@ struct ad7606_chip_info {
 	const unsigned int		*oversampling_avail;
 	unsigned int			oversampling_num;
 	bool				os_req_reset;
+	int (*spi_rd_wr_cmd)(int addr, char isWriteOp);
 	int (*write_scale_sw)(struct iio_dev *indio_dev, int ch, int val);
 	int (*write_os_sw)(struct iio_dev *indio_dev, int val);
 	int (*sw_mode_config)(struct iio_dev *indio_dev);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
