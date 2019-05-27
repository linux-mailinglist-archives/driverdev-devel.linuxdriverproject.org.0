Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC8A2B5DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 14:57:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75C05864B2;
	Mon, 27 May 2019 12:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVf3bXXLJb4k; Mon, 27 May 2019 12:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FE2C8613C;
	Mon, 27 May 2019 12:57:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 646F01BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 12:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5FF9622DD3
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 12:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ia87540g8vbC for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 12:56:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800089.outbound.protection.outlook.com [40.107.80.89])
 by silver.osuosl.org (Postfix) with ESMTPS id 1358E21F69
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 12:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=662tjqK9oljOciz7ZFmGFdjYxExMiNz4NCgMjETdjAU=;
 b=A8YHAEWnCjVsJORRIP+pe+nQbclBBTtdDbj+ZQQgLJSSmOLezMwVmNa+/iKzSMtjxPisbTGVFvp3RQxWwJf8ko2IvhUN0F09cy9vZtTe2t0IPSWaZxzO3ZxS2EHWSQe+a9/IF7kFZVpEXoX9Vj9XBPKVF7ToFkOsDr9sEJuCYl0=
Received: from BN6PR03CA0018.namprd03.prod.outlook.com (2603:10b6:404:23::28)
 by SN2PR03MB2270.namprd03.prod.outlook.com (2603:10b6:804:d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.16; Mon, 27 May
 2019 12:56:55 +0000
Received: from BL2NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by BN6PR03CA0018.outlook.office365.com
 (2603:10b6:404:23::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Mon, 27 May 2019 12:56:55 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; gmx.de; dkim=none (message not signed)
 header.d=none; gmx.de; dmarc=bestguesspass action=none header.from=analog.com; 
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT063.mail.protection.outlook.com (10.152.77.121) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1922.16
 via Frontend Transport; Mon, 27 May 2019 12:56:55 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x4RCusff022711
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 27 May 2019 05:56:54 -0700
Received: from ben-Latitude-E6540.analog.com (10.50.1.100) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Mon, 27 May 2019 08:56:53 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH v2 4/4] iio: adc: ad7606: Add debug mode for ad7616
Date: Mon, 27 May 2019 15:56:50 +0300
Message-ID: <20190527125650.2405-4-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527125650.2405-1-beniamin.bia@analog.com>
References: <20190527125650.2405-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(396003)(2980300002)(199004)(189003)(70586007)(1076003)(186003)(77096007)(50466002)(6916009)(70206006)(305945005)(2906002)(246002)(2351001)(106002)(48376002)(54906003)(86362001)(50226002)(8676002)(47776003)(8936002)(26005)(7636002)(478600001)(7416002)(72206003)(336012)(476003)(44832011)(14444005)(5660300002)(107886003)(36756003)(4326008)(76176011)(51416003)(7696005)(356004)(53416004)(426003)(446003)(316002)(16586007)(2616005)(126002)(486006)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN2PR03MB2270; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c09e0c6-3adc-469a-0922-08d6e2a2cbee
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709054)(1401327)(2017052603328);
 SRVR:SN2PR03MB2270; 
X-MS-TrafficTypeDiagnostic: SN2PR03MB2270:
X-Microsoft-Antispam-PRVS: <SN2PR03MB227034010B3F6BE207D9E1E2F01D0@SN2PR03MB2270.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-Forefront-PRVS: 0050CEFE70
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 0WwhvngExQwO+8ExQalcw75MyceI0uL5y8tX3EUIl3WzEnjhIK2zS8gUdEsSE0iCz+zzaG0WWuhqtkqa/fXD7Qa2kON+wcgmdp0j8UjBvTriXAah2W/g8WpzFAKDHZq6/JV03Jpa9dmQO0ojchcS71k7WiuROiT7bjA56v1NwxooG3gy/OqAbc/1oo1tAOYC3eC0Va7s3DhPbaVdKW5dYUvplSITJ21W1kDCheAuHbw3UKeIv751/clIAipJf89l0QYLJXMnRhsbhvfPiokSKtH0Dkuj/GUQ/iQijABhe5FE/RbvL9PF/joT6ZN72BOTuPqvL7NOcqZmy49ncUKCxpQ3292OhVW6PCwgCbU8ed7TtMXZqUqp0d9BBP3hLP8Xy6YMz39osOkNjpvSga5Ox3Tmq2zE8ObDRtP7RdluK24=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2019 12:56:55.2447 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c09e0c6-3adc-469a-0922-08d6e2a2cbee
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR03MB2270
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

Support for register access was added for spi devices.

Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
Acked-by: Jonathan Cameron <jic23@kernel.org>
---
Changes in v2:
-nothing changed

 drivers/iio/adc/ad7606.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 8e09ad4bb72e..0eccfc873802 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -134,6 +134,30 @@ static int ad7606_spi_write_mask(struct ad7606_state *st,
 	return ad7606_spi_reg_write(st, addr, readval);
 }
 
+static int ad7606_reg_access(struct iio_dev *indio_dev,
+			     unsigned int reg,
+			     unsigned int writeval,
+			     unsigned int *readval)
+{
+	struct ad7606_state *st = iio_priv(indio_dev);
+	int ret;
+
+	mutex_lock(&st->lock);
+	if (readval) {
+		ret = ad7606_spi_reg_read(st, reg);
+		if (ret < 0)
+			goto err_unlock;
+		*readval = ret;
+		ret = 0;
+	} else {
+		ret = ad7606_spi_reg_write(st, reg, writeval);
+	}
+err_unlock:
+	mutex_unlock(&st->lock);
+
+	return ret;
+}
+
 static int ad7606_read_samples(struct ad7606_state *st)
 {
 	unsigned int num = st->chip_info->num_channels;
@@ -645,6 +669,7 @@ static const struct iio_info ad7606_info_no_os_or_range = {
 static const struct iio_info ad7606_info_os_and_range = {
 	.read_raw = &ad7606_read_raw,
 	.write_raw = &ad7606_write_raw,
+	.debugfs_reg_access = &ad7606_reg_access,
 	.attrs = &ad7606_attribute_group_os_and_range,
 	.validate_trigger = &ad7606_validate_trigger,
 };
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
