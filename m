Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A89C178B9B
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 08:43:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41A2B85E65;
	Wed,  4 Mar 2020 07:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CL4MX3dlOkpw; Wed,  4 Mar 2020 07:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D48085C52;
	Wed,  4 Mar 2020 07:43:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B56F01BF2F4
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 07:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B297585D78
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 07:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HIiWApaDrp0u for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 07:43:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D241885C52
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 07:43:27 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0247euEU022873; Wed, 4 Mar 2020 02:43:26 -0500
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 2ygm52a6t6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Mar 2020 02:43:26 -0500
Received: from ASHBMBX9.ad.analog.com (ashbmbx9.ad.analog.com [10.64.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 0247hP7r026691
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Wed, 4 Mar 2020 02:43:25 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Wed, 4 Mar 2020
 02:43:24 -0500
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Wed, 4 Mar 2020 02:43:24 -0500
Received: from analog.ad.analog.com ([10.48.65.180])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 0247hLKZ014964;
 Wed, 4 Mar 2020 02:43:22 -0500
From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
To: <linux-kernel@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <linux-wireless@vger.kernel.org>, <gregkh@linuxfoundation.org>,
 <ajay.kathat@microchip.com>, <adham.abozaeid@microchip.com>
Subject: [PATCH v2] staging: wilc1000: spi: Use new structure for SPI transfer
 delays
Date: Wed, 4 Mar 2020 09:43:19 +0200
Message-ID: <20200304074319.22107-1-sergiu.cuciurean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227145054.24567-1-sergiu.cuciurean@analog.com>
References: <20200227145054.24567-1-sergiu.cuciurean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-04_01:2020-03-03,
 2020-03-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003040059
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
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In a recent change to the SPI subsystem in commit <bebcfd272df6>
("spi: introduce `delay` field for `spi_transfer` +
spi_transfer_delay_exec()"), a new `delay` struct was added
to replace the `delay_usecs`. This change replaces the current
`delay_usecs` with `delay` for this driver.

The `spi_transfer_delay_exec()` function [in the SPI framework] makes sure
that both `delay_usecs` & `delay` are used (in this order to preserve
backwards compatibility).

Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
---

Changelog v1->v2:
*Removed footnote from the commit description

 drivers/staging/wilc1000/spi.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
index 11653ac118cd..a3779d967a24 100644
--- a/drivers/staging/wilc1000/spi.c
+++ b/drivers/staging/wilc1000/spi.c
@@ -228,7 +228,10 @@ static int wilc_spi_tx(struct wilc *wilc, u8 *b, u32 len)
 		struct spi_transfer tr = {
 			.tx_buf = b,
 			.len = len,
-			.delay_usecs = 0,
+			.delay = {
+				.value = 0,
+				.unit = SPI_DELAY_UNIT_USECS
+			},
 		};
 		char *r_buffer = kzalloc(len, GFP_KERNEL);
 
@@ -269,7 +272,10 @@ static int wilc_spi_rx(struct wilc *wilc, u8 *rb, u32 rlen)
 		struct spi_transfer tr = {
 			.rx_buf = rb,
 			.len = rlen,
-			.delay_usecs = 0,
+			.delay = {
+				.value = 0,
+				.unit = SPI_DELAY_UNIT_USECS
+			},
 
 		};
 		char *t_buffer = kzalloc(rlen, GFP_KERNEL);
@@ -311,7 +317,10 @@ static int wilc_spi_tx_rx(struct wilc *wilc, u8 *wb, u8 *rb, u32 rlen)
 			.tx_buf = wb,
 			.len = rlen,
 			.bits_per_word = 8,
-			.delay_usecs = 0,
+			.delay = {
+				.value = 0,
+				.unit = SPI_DELAY_UNIT_USECS
+			},
 
 		};
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
