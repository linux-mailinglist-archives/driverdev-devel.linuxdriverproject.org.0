Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F024E15045E
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 11:39:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79B8185617;
	Mon,  3 Feb 2020 10:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSP3vw2SM21u; Mon,  3 Feb 2020 10:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B294E83659;
	Mon,  3 Feb 2020 10:39:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F30431BF40F
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 10:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EEA3D814E9
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 10:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4RqOfUppYvi for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 10:39:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1040981419
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 10:39:46 +0000 (UTC)
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
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k8HlJYfs1+KBH+2oU12wOp/oAQzOQtWoyO7IQZuBUej+pTVE7L+D5r/226Zg9D9tgRhXEZNgJ5
 BM7uoJ4iJmnD2sd3iqGVoV39WmlqVrw0CQBoQwLkC8vwAiOzNUQbe2q1Neq63SBFwF+50Sip2d
 ak9m5nTQETq6CcCukB+foqB0Kk2qsARFHGIUsN8Y5whWwzk5NBdt/2Ch3nifisp4Sgqyx3nd6N
 3HUStDV+XJG8gbcfNFDxnqr03rVqu/EfjdvrOD8A83eQeDGgghdmDSXS9sgHQEjF6CpBiJkN+F
 big=
X-IronPort-AV: E=Sophos;i="5.70,397,1574146800"; d="scan'208";a="64590228"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Feb 2020 03:39:45 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Feb 2020 03:39:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Feb 2020 03:39:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkMg4EzavS1HYhg8MxLY6tGwSKqRvLqtVHDQdoOLl3XsJXaB9ieDE2WyklNsMtVm5X8tM53ayvB8aaqvSJFGEwv/WwMgh64XlHpe/ocozOWu/DguDy3oOx1pig1eTY1sads5PCHAgdS9QqmhwDBjIGZFYHdAWv5f+nkct07GuytU/n00CxS2Dz89VgIBDhvbmjWo9ZcIugrpLVe4Ov8lP2OkHcxg3zgL8z+1CE+XehyGDXfdGWvJaZ2jVpcYLwYbpuTl2jPCq+Ak8xPkyYziBo4aWRWchYjjvg6VnFbQfyslhFGkdEcgVvSUP73I1S4DPCwOaz/QOSoIcKMoBO8XqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wcjXlmr614jxZliI7Blnqrh39bTb2yaUMi5dFQPjrBs=;
 b=BtL0RrgW60Onb6ShEaNkls74QMeZAGwWPaa5j9bxZuTWvnWpfb0U5Q+uL80L0G61qlr/HidblqEG9WZav2gAra0KT8Gnc6ulXaXFOSDU31WRujvdT9z4AZo45kZS/84W42zjfhB2vpw89VNnYmTsJDLXEzU/PJ+FHskLUy8lLd/tJUQk9SxVC4VdxS7RNgosMZ0F9OlhSxRhrgyedM0n7JemFTJYeoY0qN6bwaEhLkNlD5a1CnoXU9IM9nmEb64pqgOcupIl0sPb1fJdSdUSkhMFhK1aCNGvUr4uhCNOo0aqgFR4/c4jaAUJiP+4/QLQyvv/Hp1MJWZ/tNzCewpp8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wcjXlmr614jxZliI7Blnqrh39bTb2yaUMi5dFQPjrBs=;
 b=OKZmjJ+H73i5ECZ7oJs8ZDCYRLAIdXbvLTSx8kocInqwGln8eBM0KRPsedcQwWRDrdGmGPO94RCFg2zwsQu6RjlQUyYNZmi5W9xH7IDvzMZv6q4+u+71LrMZTNOUxaX7AZ2IFpPBgw0zMQAYJxwId8x3RsEDUYggGks1qWIXN0Y=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1555.namprd11.prod.outlook.com (10.172.22.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.33; Mon, 3 Feb 2020 10:39:43 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::584d:cea5:1dfc:7e61]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::584d:cea5:1dfc:7e61%3]) with mapi id 15.20.2686.031; Mon, 3 Feb 2020
 10:39:43 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH] staging: wilc1000: refactor SPI read/write commands handling
 API's
Thread-Topic: [PATCH] staging: wilc1000: refactor SPI read/write commands
 handling API's
Thread-Index: AQHV2n4+CH5y1i+WQUqJqy4RcoUd2Q==
Date: Mon, 3 Feb 2020 10:39:43 +0000
Message-ID: <20200203160848.4052-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f27b9e3-eca1-4243-4c4c-08d7a8956146
x-ms-traffictypediagnostic: BN6PR11MB1555:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB15555CEA04887B870616CD20E3000@BN6PR11MB1555.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0302D4F392
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(4326008)(6486002)(6506007)(8676002)(54906003)(26005)(6916009)(107886003)(91956017)(2906002)(81166006)(76116006)(81156014)(6512007)(66446008)(66476007)(64756008)(66556008)(66946007)(1076003)(8936002)(5660300002)(2616005)(86362001)(71200400001)(966005)(36756003)(186003)(316002)(478600001)(30864003)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1555;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: keB/X3m9MUO569HFUb+jJJR+bEaFnqyhJCmkocBss/Dn5uq3Dq74U7Gg+gteaJYdtkV/57A3rStCkBOAqzg0xGhwyBufuqz9e8bhx+wo3sNYTgto99XYDnl4Qwhi4mBmbZ+SOXVIieT+6MDt/1n0jK8HxG03isao1pzncChr8MLqVaXPYP0bzMHOIr9xrJFsb/1ivxPFPRVIn1HTDO/ZrZ8eBDeC3Jz1FiNLSETceQu/LhD/jVHeg9gS6v3hem7Om/HD6WeL2TJ6/t1T0nD0S0qB+JC5AY3oaUdw6e4M17mElTKDSELKzSckABJNG+cClB+cL4RqTBxjmPJ64vuPnc9j/FqO+yTFpLscTeh4KUqJTrXe4oJhT3HdG06Y48V9gjcBVM/Q8i3u7aKF7syw/7mKREeUPQQ+cXHuv9UqttiseZa0WI5G0Za7AQpJXg9Eq5unJ0AiGlzCFcD9gapFudjDNZHTeHxKmZUCUixBSnDUsibXmlbcKXi8fzJN5gvPe5YLRhjmuUtHQXQqKwBULg==
x-ms-exchange-antispam-messagedata: qWXsqDEprvgi3fOoBGTEyu3cGkqpvQtf1d1F7q7UCdWl/tpRloVxwZgxFcxFpS8ndFLiRzMDgYeGF7HdDmNr+cASv17cXHjYMyAuNcXgKS/ojajHHKy1KrvDMzs2ddEQJvIewOwU4xQNlPd0BC/llA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f27b9e3-eca1-4243-4c4c-08d7a8956146
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2020 10:39:43.0285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HaDPA8KnoHgv5H7AzmCPv/pm38Jr0kXRwaYp8YpfngkcnUT/PL+8dX9h58nM90dDPcoB4k0Byy0cSBDukeE1h3d/51K4mY8yeQbMNt5o1gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1555
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

Refactor SPI commands handling by making use of 'struct' for data
exchange and extraction of information flow between host and firmware.
The SPI read/write commands are now handled in separate function instead
of using a single function to process all types of command.
The use of 'struct' helped to make the code self explanatory. These
points were discussed and suggested during code review [1].

1. https://www.spinics.net/lists/linux-wireless/msg191489.html

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/spi.c | 754 ++++++++++++++++-----------------
 1 file changed, 374 insertions(+), 380 deletions(-)

diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
index 3ffc7b4fddf6..9a9f3624e158 100644
--- a/drivers/staging/wilc1000/spi.c
+++ b/drivers/staging/wilc1000/spi.c
@@ -70,6 +70,11 @@ static u8 crc7(u8 crc, const u8 *buffer, u32 len)
 	return crc;
 }
 
+static u8 wilc_get_crc7(u8 *buffer, u32 len)
+{
+	return crc7(0x7f, (const u8 *)buffer, len) << 1;
+}
+
 /********************************************
  *
  *      Spi protocol Function
@@ -97,6 +102,52 @@ static u8 crc7(u8 crc, const u8 *buffer, u32 len)
 
 #define USE_SPI_DMA				0
 
+#define WILC_SPI_COMMAND_STAT_SUCCESS		0
+#define WILC_GET_RESP_HDR_START(h)		(((h) >> 4) & 0xf)
+
+struct wilc_spi_cmd {
+	u8 cmd_type;
+	union {
+		struct {
+			u8 addr[3];
+			u8 crc[0];
+		} __packed simple_cmd;
+		struct {
+			u8 addr[3];
+			u8 size[2];
+			u8 crc[0];
+		} __packed dma_cmd;
+		struct {
+			u8 addr[3];
+			u8 size[3];
+			u8 crc[0];
+		} __packed dma_cmd_ext;
+		struct {
+			u8 addr[2];
+			__be32 data;
+			u8 crc[0];
+		} __packed internal_w_cmd;
+		struct {
+			u8 addr[3];
+			__be32 data;
+			u8 crc[0];
+		} __packed w_cmd;
+	} u;
+} __packed;
+
+struct wilc_spi_read_rsp_data {
+	u8 rsp_cmd_type;
+	u8 status;
+	u8 resp_header;
+	u8 resp_data[4];
+	u8 crc[0];
+} __packed;
+
+struct wilc_spi_rsp_data {
+	u8 rsp_cmd_type;
+	u8 status;
+} __packed;
+
 static int wilc_bus_probe(struct spi_device *spi)
 {
 	int ret;
@@ -284,335 +335,6 @@ static int wilc_spi_tx_rx(struct wilc *wilc, u8 *wb, u8 *rb, u32 rlen)
 	return ret;
 }
 
-static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
-			    u8 clockless)
-{
-	struct spi_device *spi = to_spi_device(wilc->dev);
-	struct wilc_spi *spi_priv = wilc->bus_data;
-	u8 wb[32], rb[32];
-	u8 wix, rix;
-	u32 len2;
-	u8 rsp;
-	int len = 0;
-	int result = 0;
-	int retry;
-	u8 crc[2];
-
-	wb[0] = cmd;
-	switch (cmd) {
-	case CMD_SINGLE_READ: /* single word (4 bytes) read */
-		wb[1] = (u8)(adr >> 16);
-		wb[2] = (u8)(adr >> 8);
-		wb[3] = (u8)adr;
-		len = 5;
-		break;
-
-	case CMD_INTERNAL_READ: /* internal register read */
-		wb[1] = (u8)(adr >> 8);
-		if (clockless == 1)
-			wb[1] |= BIT(7);
-		wb[2] = (u8)adr;
-		wb[3] = 0x00;
-		len = 5;
-		break;
-
-	case CMD_TERMINATE:
-		wb[1] = 0x00;
-		wb[2] = 0x00;
-		wb[3] = 0x00;
-		len = 5;
-		break;
-
-	case CMD_REPEAT:
-		wb[1] = 0x00;
-		wb[2] = 0x00;
-		wb[3] = 0x00;
-		len = 5;
-		break;
-
-	case CMD_RESET:
-		wb[1] = 0xff;
-		wb[2] = 0xff;
-		wb[3] = 0xff;
-		len = 5;
-		break;
-
-	case CMD_DMA_WRITE: /* dma write */
-	case CMD_DMA_READ:  /* dma read */
-		wb[1] = (u8)(adr >> 16);
-		wb[2] = (u8)(adr >> 8);
-		wb[3] = (u8)adr;
-		wb[4] = (u8)(sz >> 8);
-		wb[5] = (u8)(sz);
-		len = 7;
-		break;
-
-	case CMD_DMA_EXT_WRITE: /* dma extended write */
-	case CMD_DMA_EXT_READ:  /* dma extended read */
-		wb[1] = (u8)(adr >> 16);
-		wb[2] = (u8)(adr >> 8);
-		wb[3] = (u8)adr;
-		wb[4] = (u8)(sz >> 16);
-		wb[5] = (u8)(sz >> 8);
-		wb[6] = (u8)(sz);
-		len = 8;
-		break;
-
-	case CMD_INTERNAL_WRITE: /* internal register write */
-		wb[1] = (u8)(adr >> 8);
-		if (clockless == 1)
-			wb[1] |= BIT(7);
-		wb[2] = (u8)(adr);
-		wb[3] = b[3];
-		wb[4] = b[2];
-		wb[5] = b[1];
-		wb[6] = b[0];
-		len = 8;
-		break;
-
-	case CMD_SINGLE_WRITE: /* single word write */
-		wb[1] = (u8)(adr >> 16);
-		wb[2] = (u8)(adr >> 8);
-		wb[3] = (u8)(adr);
-		wb[4] = b[3];
-		wb[5] = b[2];
-		wb[6] = b[1];
-		wb[7] = b[0];
-		len = 9;
-		break;
-
-	default:
-		result = -EINVAL;
-		break;
-	}
-
-	if (result)
-		return result;
-
-	if (!spi_priv->crc_off)
-		wb[len - 1] = (crc7(0x7f, (const u8 *)&wb[0], len - 1)) << 1;
-	else
-		len -= 1;
-
-#define NUM_SKIP_BYTES (1)
-#define NUM_RSP_BYTES (2)
-#define NUM_DATA_HDR_BYTES (1)
-#define NUM_DATA_BYTES (4)
-#define NUM_CRC_BYTES (2)
-#define NUM_DUMMY_BYTES (3)
-	if (cmd == CMD_RESET ||
-	    cmd == CMD_TERMINATE ||
-	    cmd == CMD_REPEAT) {
-		len2 = len + (NUM_SKIP_BYTES + NUM_RSP_BYTES + NUM_DUMMY_BYTES);
-	} else if (cmd == CMD_INTERNAL_READ || cmd == CMD_SINGLE_READ) {
-		int tmp = NUM_RSP_BYTES + NUM_DATA_HDR_BYTES + NUM_DATA_BYTES
-			+ NUM_DUMMY_BYTES;
-		if (!spi_priv->crc_off)
-			len2 = len + tmp + NUM_CRC_BYTES;
-		else
-			len2 = len + tmp;
-	} else {
-		len2 = len + (NUM_RSP_BYTES + NUM_DUMMY_BYTES);
-	}
-#undef NUM_DUMMY_BYTES
-
-	if (len2 > ARRAY_SIZE(wb)) {
-		dev_err(&spi->dev, "spi buffer size too small (%d) (%zu)\n",
-			len2, ARRAY_SIZE(wb));
-		return -EINVAL;
-	}
-	/* zero spi write buffers. */
-	for (wix = len; wix < len2; wix++)
-		wb[wix] = 0;
-	rix = len;
-
-	if (wilc_spi_tx_rx(wilc, wb, rb, len2)) {
-		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * Command/Control response
-	 */
-	if (cmd == CMD_RESET || cmd == CMD_TERMINATE || cmd == CMD_REPEAT)
-		rix++; /* skip 1 byte */
-
-	rsp = rb[rix++];
-
-	if (rsp != cmd) {
-		dev_err(&spi->dev,
-			"Failed cmd response, cmd (%02x), resp (%02x)\n",
-			cmd, rsp);
-		return -EINVAL;
-	}
-
-	/*
-	 * State response
-	 */
-	rsp = rb[rix++];
-	if (rsp != 0x00) {
-		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
-			rsp);
-		return -EINVAL;
-	}
-
-	if (cmd == CMD_INTERNAL_READ || cmd == CMD_SINGLE_READ ||
-	    cmd == CMD_DMA_READ || cmd == CMD_DMA_EXT_READ) {
-		/*
-		 * Data Respnose header
-		 */
-		retry = 100;
-		do {
-			/*
-			 * ensure there is room in buffer later
-			 * to read data and crc
-			 */
-			if (rix < len2) {
-				rsp = rb[rix++];
-			} else {
-				retry = 0;
-				break;
-			}
-			if (((rsp >> 4) & 0xf) == 0xf)
-				break;
-		} while (retry--);
-
-		if (retry <= 0) {
-			dev_err(&spi->dev,
-				"Error, data read response (%02x)\n", rsp);
-			return -EAGAIN;
-		}
-	}
-
-	if (cmd == CMD_INTERNAL_READ || cmd == CMD_SINGLE_READ) {
-		/*
-		 * Read bytes
-		 */
-		if ((rix + 3) < len2) {
-			b[0] = rb[rix++];
-			b[1] = rb[rix++];
-			b[2] = rb[rix++];
-			b[3] = rb[rix++];
-		} else {
-			dev_err(&spi->dev,
-				"buffer overrun when reading data.\n");
-			return -EINVAL;
-		}
-
-		if (!spi_priv->crc_off) {
-			/*
-			 * Read Crc
-			 */
-			if ((rix + 1) < len2) {
-				crc[0] = rb[rix++];
-				crc[1] = rb[rix++];
-			} else {
-				dev_err(&spi->dev,
-					"buffer overrun when reading crc.\n");
-				return -EINVAL;
-			}
-		}
-	} else if ((cmd == CMD_DMA_READ) || (cmd == CMD_DMA_EXT_READ)) {
-		int ix;
-
-		/* some data may be read in response to dummy bytes. */
-		for (ix = 0; (rix < len2) && (ix < sz); )
-			b[ix++] = rb[rix++];
-
-		sz -= ix;
-
-		if (sz > 0) {
-			int nbytes;
-
-			if (sz <= (DATA_PKT_SZ - ix))
-				nbytes = sz;
-			else
-				nbytes = DATA_PKT_SZ - ix;
-
-			/*
-			 * Read bytes
-			 */
-			if (wilc_spi_rx(wilc, &b[ix], nbytes)) {
-				dev_err(&spi->dev,
-					"Failed block read, bus err\n");
-				return -EINVAL;
-			}
-
-			/*
-			 * Read Crc
-			 */
-			if (!spi_priv->crc_off && wilc_spi_rx(wilc, crc, 2)) {
-				dev_err(&spi->dev,
-					"Failed block crc read, bus err\n");
-				return -EINVAL;
-			}
-
-			ix += nbytes;
-			sz -= nbytes;
-		}
-
-		/*
-		 * if any data in left unread,
-		 * then read the rest using normal DMA code.
-		 */
-		while (sz > 0) {
-			int nbytes;
-
-			if (sz <= DATA_PKT_SZ)
-				nbytes = sz;
-			else
-				nbytes = DATA_PKT_SZ;
-
-			/*
-			 * read data response only on the next DMA cycles not
-			 * the first DMA since data response header is already
-			 * handled above for the first DMA.
-			 */
-			/*
-			 * Data Respnose header
-			 */
-			retry = 10;
-			do {
-				if (wilc_spi_rx(wilc, &rsp, 1)) {
-					dev_err(&spi->dev,
-						"Failed resp read, bus err\n");
-					result = -EINVAL;
-					break;
-				}
-				if (((rsp >> 4) & 0xf) == 0xf)
-					break;
-			} while (retry--);
-
-			if (result)
-				break;
-
-			/*
-			 * Read bytes
-			 */
-			if (wilc_spi_rx(wilc, &b[ix], nbytes)) {
-				dev_err(&spi->dev,
-					"Failed block read, bus err\n");
-				result = -EINVAL;
-				break;
-			}
-
-			/*
-			 * Read Crc
-			 */
-			if (!spi_priv->crc_off && wilc_spi_rx(wilc, crc, 2)) {
-				dev_err(&spi->dev,
-					"Failed block crc read, bus err\n");
-				result = -EINVAL;
-				break;
-			}
-
-			ix += nbytes;
-			sz -= nbytes;
-		}
-	}
-	return result;
-}
-
 static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
@@ -686,19 +408,328 @@ static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
  *      Spi Internal Read/Write Function
  *
  ********************************************/
+static int wilc_spi_single_read(struct wilc *wilc, u8 cmd, u32 adr, void *b,
+				u8 clockless)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u8 wb[32], rb[32];
+	int cmd_len, resp_len;
+	u8 crc[2];
+	struct wilc_spi_cmd *c;
+	struct wilc_spi_read_rsp_data *r;
+
+	memset(wb, 0x0, sizeof(wb));
+	memset(rb, 0x0, sizeof(rb));
+	c = (struct wilc_spi_cmd *)wb;
+	c->cmd_type = cmd;
+	if (cmd == CMD_SINGLE_READ) {
+		c->u.simple_cmd.addr[0] = adr >> 16;
+		c->u.simple_cmd.addr[1] = adr >> 8;
+		c->u.simple_cmd.addr[2] = adr;
+	} else if (cmd == CMD_INTERNAL_READ) {
+		c->u.simple_cmd.addr[0] = adr >> 8;
+		if (clockless == 1)
+			c->u.simple_cmd.addr[0] |= BIT(7);
+		c->u.simple_cmd.addr[1] = adr;
+		c->u.simple_cmd.addr[2] = 0x0;
+	} else {
+		dev_err(&spi->dev, "cmd [%x] not supported\n", cmd);
+		return -EINVAL;
+	}
+
+	cmd_len = offsetof(struct wilc_spi_cmd, u.simple_cmd.crc);
+	resp_len = sizeof(*r);
+	if (!spi_priv->crc_off) {
+		c->u.simple_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+		cmd_len += 1;
+		resp_len += 2;
+	}
+
+	if (cmd_len + resp_len > ARRAY_SIZE(wb)) {
+		dev_err(&spi->dev,
+			"spi buffer size too small (%d) (%d) (%zu)\n",
+			cmd_len, resp_len, ARRAY_SIZE(wb));
+		return -EINVAL;
+	}
+
+	if (wilc_spi_tx_rx(wilc, wb, rb, cmd_len + resp_len)) {
+		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
+		return -EINVAL;
+	}
+
+	r = (struct wilc_spi_read_rsp_data *)&rb[cmd_len];
+	if (r->rsp_cmd_type != cmd) {
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, r->rsp_cmd_type);
+		return -EINVAL;
+	}
+
+	if (r->status != WILC_SPI_COMMAND_STAT_SUCCESS) {
+		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
+			r->status);
+		return -EINVAL;
+	}
+
+	if (WILC_GET_RESP_HDR_START(r->resp_header) != 0xf) {
+		dev_err(&spi->dev, "Error, data read response (%02x)\n",
+			r->resp_header);
+		return -EINVAL;
+	}
+
+	if (b)
+		memcpy(b, r->resp_data, 4);
+
+	if (!spi_priv->crc_off)
+		memcpy(crc, r->crc, 2);
+
+	return 0;
+}
+
+static int wilc_spi_write_cmd(struct wilc *wilc, u8 cmd, u32 adr, u32 data,
+			      u8 clockless)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u8 wb[32], rb[32];
+	int cmd_len, resp_len;
+	struct wilc_spi_cmd *c;
+	struct wilc_spi_rsp_data *r;
+
+	memset(wb, 0x0, sizeof(wb));
+	memset(rb, 0x0, sizeof(rb));
+	c = (struct wilc_spi_cmd *)wb;
+	c->cmd_type = cmd;
+	if (cmd == CMD_INTERNAL_WRITE) {
+		c->u.internal_w_cmd.addr[0] = adr >> 8;
+		if (clockless == 1)
+			c->u.internal_w_cmd.addr[0] |= BIT(7);
+
+		c->u.internal_w_cmd.addr[1] = adr;
+		c->u.internal_w_cmd.data = cpu_to_be32(data);
+		cmd_len = offsetof(struct wilc_spi_cmd, u.internal_w_cmd.crc);
+		if (!spi_priv->crc_off)
+			c->u.internal_w_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else if (cmd == CMD_SINGLE_WRITE) {
+		c->u.w_cmd.addr[0] = adr >> 16;
+		c->u.w_cmd.addr[1] = adr >> 8;
+		c->u.w_cmd.addr[2] = adr;
+		c->u.w_cmd.data = cpu_to_be32(data);
+		cmd_len = offsetof(struct wilc_spi_cmd, u.w_cmd.crc);
+		if (!spi_priv->crc_off)
+			c->u.w_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else {
+		dev_err(&spi->dev, "write cmd [%x] not supported\n", cmd);
+		return -EINVAL;
+	}
+
+	if (!spi_priv->crc_off)
+		cmd_len += 1;
+
+	resp_len = sizeof(*r);
+
+	if (cmd_len + resp_len > ARRAY_SIZE(wb)) {
+		dev_err(&spi->dev,
+			"spi buffer size too small (%d) (%d) (%zu)\n",
+			cmd_len, resp_len, ARRAY_SIZE(wb));
+		return -EINVAL;
+	}
+
+	if (wilc_spi_tx_rx(wilc, wb, rb, cmd_len + resp_len)) {
+		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
+		return -EINVAL;
+	}
+
+	r = (struct wilc_spi_rsp_data *)&rb[cmd_len];
+	if (r->rsp_cmd_type != cmd) {
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, r->rsp_cmd_type);
+		return -EINVAL;
+	}
+
+	if (r->status != WILC_SPI_COMMAND_STAT_SUCCESS) {
+		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
+			r->status);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int wilc_spi_dma_rw(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u8 wb[32], rb[32];
+	int cmd_len, resp_len;
+	int retry, ix = 0;
+	u8 crc[2];
+	struct wilc_spi_cmd *c;
+	struct wilc_spi_rsp_data *r;
+
+	memset(wb, 0x0, sizeof(wb));
+	memset(rb, 0x0, sizeof(rb));
+	c = (struct wilc_spi_cmd *)wb;
+	c->cmd_type = cmd;
+	if (cmd == CMD_DMA_WRITE || cmd == CMD_DMA_READ) {
+		c->u.dma_cmd.addr[0] = adr >> 16;
+		c->u.dma_cmd.addr[1] = adr >> 8;
+		c->u.dma_cmd.addr[2] = adr;
+		c->u.dma_cmd.size[0] = sz >> 8;
+		c->u.dma_cmd.size[1] = sz;
+		cmd_len = offsetof(struct wilc_spi_cmd, u.dma_cmd.crc);
+		if (!spi_priv->crc_off)
+			c->u.dma_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else if (cmd == CMD_DMA_EXT_WRITE || cmd == CMD_DMA_EXT_READ) {
+		c->u.dma_cmd_ext.addr[0] = adr >> 16;
+		c->u.dma_cmd_ext.addr[1] = adr >> 8;
+		c->u.dma_cmd_ext.addr[2] = adr;
+		c->u.dma_cmd_ext.size[0] = sz >> 16;
+		c->u.dma_cmd_ext.size[1] = sz >> 8;
+		c->u.dma_cmd_ext.size[2] = sz;
+		cmd_len = offsetof(struct wilc_spi_cmd, u.dma_cmd_ext.crc);
+		if (!spi_priv->crc_off)
+			c->u.dma_cmd_ext.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else {
+		dev_err(&spi->dev, "dma read write cmd [%x] not supported\n",
+			cmd);
+		return -EINVAL;
+	}
+	if (!spi_priv->crc_off)
+		cmd_len += 1;
+
+	resp_len = sizeof(*r);
+
+	if (cmd_len + resp_len > ARRAY_SIZE(wb)) {
+		dev_err(&spi->dev, "spi buffer size too small (%d)(%d) (%zu)\n",
+			cmd_len, resp_len, ARRAY_SIZE(wb));
+		return -EINVAL;
+	}
+
+	if (wilc_spi_tx_rx(wilc, wb, rb, cmd_len + resp_len)) {
+		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
+		return -EINVAL;
+	}
+
+	r = (struct wilc_spi_rsp_data *)&rb[cmd_len];
+	if (r->rsp_cmd_type != cmd) {
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, r->rsp_cmd_type);
+		return -EINVAL;
+	}
+
+	if (r->status != WILC_SPI_COMMAND_STAT_SUCCESS) {
+		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
+			r->status);
+		return -EINVAL;
+	}
+
+	if (cmd == CMD_DMA_WRITE || cmd == CMD_DMA_EXT_WRITE)
+		return 0;
+
+	while (sz > 0) {
+		int nbytes;
+		u8 rsp;
+
+		if (sz <= DATA_PKT_SZ)
+			nbytes = sz;
+		else
+			nbytes = DATA_PKT_SZ;
+
+		/*
+		 * Data Response header
+		 */
+		retry = 100;
+		do {
+			if (wilc_spi_rx(wilc, &rsp, 1)) {
+				dev_err(&spi->dev,
+					"Failed resp read, bus err\n");
+				return -EINVAL;
+			}
+			if (WILC_GET_RESP_HDR_START(rsp) == 0xf)
+				break;
+		} while (retry--);
+
+		/*
+		 * Read bytes
+		 */
+		if (wilc_spi_rx(wilc, &b[ix], nbytes)) {
+			dev_err(&spi->dev,
+				"Failed block read, bus err\n");
+			return -EINVAL;
+		}
+
+		/*
+		 * Read Crc
+		 */
+		if (!spi_priv->crc_off && wilc_spi_rx(wilc, crc, 2)) {
+			dev_err(&spi->dev,
+				"Failed block crc read, bus err\n");
+			return -EINVAL;
+		}
+
+		ix += nbytes;
+		sz -= nbytes;
+	}
+	return 0;
+}
+
+static int wilc_spi_read_reg(struct wilc *wilc, u32 addr, u32 *data)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+	u8 cmd = CMD_SINGLE_READ;
+	u8 clockless = 0;
+
+	if (addr < 0x30) {
+		/* Clockless register */
+		cmd = CMD_INTERNAL_READ;
+		clockless = 1;
+	}
+
+	result = wilc_spi_single_read(wilc, cmd, addr, data, clockless);
+	if (result) {
+		dev_err(&spi->dev, "Failed cmd, read reg (%08x)...\n", addr);
+		return result;
+	}
+
+	le32_to_cpus(data);
+
+	return 0;
+}
+
+static int wilc_spi_read(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+
+	if (size <= 4)
+		return -EINVAL;
+
+	result = wilc_spi_dma_rw(wilc, CMD_DMA_EXT_READ, addr, buf, size);
+	if (result) {
+		dev_err(&spi->dev, "Failed cmd, read block (%08x)...\n", addr);
+		return result;
+	}
+
+	return 0;
+}
 
 static int spi_internal_write(struct wilc *wilc, u32 adr, u32 dat)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int result;
 
-	cpu_to_le32s(&dat);
-	result = spi_cmd_complete(wilc, CMD_INTERNAL_WRITE, adr, (u8 *)&dat, 4,
-				  0);
-	if (result)
+	result = wilc_spi_write_cmd(wilc, CMD_INTERNAL_WRITE, adr, dat, 0);
+	if (result) {
 		dev_err(&spi->dev, "Failed internal write cmd...\n");
+		return result;
+	}
 
-	return result;
+	return 0;
 }
 
 static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
@@ -706,8 +737,7 @@ static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int result;
 
-	result = spi_cmd_complete(wilc, CMD_INTERNAL_READ, adr, (u8 *)data, 4,
-				  0);
+	result = wilc_spi_single_read(wilc, CMD_INTERNAL_READ, adr, data, 0);
 	if (result) {
 		dev_err(&spi->dev, "Failed internal read cmd...\n");
 		return result;
@@ -715,7 +745,7 @@ static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
 
 	le32_to_cpus(data);
 
-	return result;
+	return 0;
 }
 
 /********************************************
@@ -731,18 +761,19 @@ static int wilc_spi_write_reg(struct wilc *wilc, u32 addr, u32 data)
 	u8 cmd = CMD_SINGLE_WRITE;
 	u8 clockless = 0;
 
-	cpu_to_le32s(&data);
 	if (addr < 0x30) {
 		/* Clockless register */
 		cmd = CMD_INTERNAL_WRITE;
 		clockless = 1;
 	}
 
-	result = spi_cmd_complete(wilc, cmd, addr, (u8 *)&data, 4, clockless);
-	if (result)
+	result = wilc_spi_write_cmd(wilc, cmd, addr, data, clockless);
+	if (result) {
 		dev_err(&spi->dev, "Failed cmd, write reg (%08x)...\n", addr);
+		return result;
+	}
 
-	return result;
+	return 0;
 }
 
 static int wilc_spi_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
@@ -756,7 +787,7 @@ static int wilc_spi_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
 	if (size <= 4)
 		return -EINVAL;
 
-	result = spi_cmd_complete(wilc, CMD_DMA_EXT_WRITE, addr, NULL, size, 0);
+	result = wilc_spi_dma_rw(wilc, CMD_DMA_EXT_WRITE, addr, NULL, size);
 	if (result) {
 		dev_err(&spi->dev,
 			"Failed cmd, write block (%08x)...\n", addr);
@@ -767,51 +798,14 @@ static int wilc_spi_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
 	 * Data
 	 */
 	result = spi_data_write(wilc, buf, size);
-	if (result)
-		dev_err(&spi->dev, "Failed block data write...\n");
-
-	return result;
-}
-
-static int wilc_spi_read_reg(struct wilc *wilc, u32 addr, u32 *data)
-{
-	struct spi_device *spi = to_spi_device(wilc->dev);
-	int result;
-	u8 cmd = CMD_SINGLE_READ;
-	u8 clockless = 0;
-
-	if (addr < 0x30) {
-		/* Clockless register */
-		cmd = CMD_INTERNAL_READ;
-		clockless = 1;
-	}
-
-	result = spi_cmd_complete(wilc, cmd, addr, (u8 *)data, 4, clockless);
 	if (result) {
-		dev_err(&spi->dev, "Failed cmd, read reg (%08x)...\n", addr);
+		dev_err(&spi->dev, "Failed block data write...\n");
 		return result;
 	}
 
-	le32_to_cpus(data);
-
 	return 0;
 }
 
-static int wilc_spi_read(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
-{
-	struct spi_device *spi = to_spi_device(wilc->dev);
-	int result;
-
-	if (size <= 4)
-		return -EINVAL;
-
-	result = spi_cmd_complete(wilc, CMD_DMA_EXT_READ, addr, buf, size, 0);
-	if (result)
-		dev_err(&spi->dev, "Failed cmd, read block (%08x)...\n", addr);
-
-	return result;
-}
-
 /********************************************
  *
  *      Bus interfaces
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
