Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A32ECA70
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 22:43:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8AB324D07;
	Fri,  1 Nov 2019 21:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mGNvaoZW6hi; Fri,  1 Nov 2019 21:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B989524C10;
	Fri,  1 Nov 2019 21:43:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9CA1BF3CB
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 21:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01169884CE
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 21:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRjRicJ82r51 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 21:42:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30068.outbound.protection.outlook.com [40.107.3.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 346378841A
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 21:42:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aEUK2zNOfJCezAikvfsvyzyypjqpHf7cOT74ndPtp7D1z2RIGMNwKbCS5+VaXzSNcBerKCr/b8kRXZ+GkMPuj0eYsQJMnebKn+3kLSoPaFc3a1w0xasN5QycJSn2Ad6K7fOGZ2d8dkoMxA0thOPEo9KdkX6f7v3Fc6C1rSks92M9RKtCetlqxV54gxYCH4nIRjiO7pbNJiSconHqo2IINtwsoJga4eM5wuuKKI9eLnb+ihuV+wY4GaaIJYZjHv4hjCVwippBuPw0Bz2DIVDMYJjWRuf7+c59P38kFCvaIrY06gQrE6aq4OAZ2FwqksKryB5i1ZFgmfkSg+7QPdx6uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxb+HVUn/l8CkWGYDXNiETmLkd1TFiUuTiHiXY5rRO8=;
 b=RwoM8NjdzBEbVdqn3czGBG0PLpi/llNfJtvqjeUn+TbxmNYTWSnZ/bAwR/0H/0lNfFqboJeaXYpdCVdlvSq91VJzDA1Nl+NB1uDWeY6YELt5pr1evC1/pYYagvnrek/rqG74igorN2uFn4I7/ux4cq/S6xLfe+x6a6Ekcmpf9Gpr1QNW/52PdjFTB1n8kr5oeJR4c2gY4afp40OLaVoNMIEOyhhpxSxjgYvUhBmbDiyD6KPYGU4Yy6d+U8m8EvEFvgTuDuQ39vo2EspihnMdX+qhtH0bTdyXDlhy7XmjeRfbJBay7NtKc54e9t5Pll+5JwTmYa3QuEJ8+zSa7H6eAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxb+HVUn/l8CkWGYDXNiETmLkd1TFiUuTiHiXY5rRO8=;
 b=Mj5bg8QtTBnP3NBwvx2yui+4/Is4DcqMGY0JLGBVE2ZOawjEg4MPtGsHnTR21gk2Q5IgQ+FWoJtQV6jwQBdm7wRdajdcn+swzjGKm/e1VGERuXmbcc693MSHgN2jAQR+H/+/gwHTpNcfn5N3WNYLaDS6itcc7iqByM6VlFFLVwc=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4679.eurprd08.prod.outlook.com (20.179.47.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 21:42:50 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee%6]) with mapi id 15.20.2387.031; Fri, 1 Nov 2019
 21:42:50 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH 1/3] staging: axis-fifo: avoid parsing ignored device tree
 properties
Thread-Topic: [PATCH 1/3] staging: axis-fifo: avoid parsing ignored device
 tree properties
Thread-Index: AQHVkP1PJ9JbGeTLKk+o14pv3DXh/w==
Date: Fri, 1 Nov 2019 21:42:50 +0000
Message-ID: <20191101214232.16960-2-quentin.deslandes@itdev.co.uk>
References: <20191101214232.16960-1-quentin.deslandes@itdev.co.uk>
In-Reply-To: <20191101214232.16960-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0194.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::14) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [81.98.213.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2c45a5a-ad13-4965-b6b4-08d75f14719e
x-ms-traffictypediagnostic: DBBPR08MB4679:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR08MB4679376BE600BD91D2F5FF7BB3620@DBBPR08MB4679.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(376002)(136003)(346002)(396003)(366004)(199004)(189003)(36756003)(2351001)(86362001)(186003)(66066001)(6916009)(66556008)(476003)(486006)(71200400001)(64756008)(5640700003)(2501003)(6512007)(66946007)(6486002)(44832011)(71190400001)(2906002)(6436002)(11346002)(6116002)(3846002)(50226002)(66476007)(4326008)(305945005)(8936002)(25786009)(5660300002)(7736002)(81166006)(256004)(386003)(8676002)(6506007)(54906003)(81156014)(66446008)(2616005)(508600001)(14454004)(76176011)(30864003)(52116002)(446003)(99286004)(102836004)(316002)(1076003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4679;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uJ0PBQwSfMBjrcvYsnd2BXwS2QQKPv13nRhzLnibTVUPM9mCSSIcZTkgQ62T3jpuUDNKG8HVyEqkCVy66vtAavLGDa66cpKIYUcQu1FFv/GOl4a34SZOfGjLsBapNZ1rJIWQ4BLVkdWREaQJP+DiBsltpUPVz6MRRl9ENo7sg7huir8LeeoxJiJxOzxTDjWpAePeMQWl8938osrtHRNgcKIVSmUGK//T5nSk3wXoz6CKoeB+narfVDfG0d9LEmoALxIdH2fKra+CcGi2ZsKhO/kPwFKx5rk40o2ur7+50K03H6y+g4dFOTY5nTp3riJiV1iR87Xvxw+D1tyj8k+ZLk0v2YXTutlrSrhBxeBSDPgxk/GaDNnUyNc5alK48dayKLOlZrQ9EXboJJvrSuEixTyckmQyXsyphLVY42hxVwNVddtuKD0s3aAf3OCeZ+Jn
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c45a5a-ad13-4965-b6b4-08d75f14719e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 21:42:50.8354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WuYQSE/xv9cdkBNXjUWCLudU97E33Qp10Be8Zsh25BtjRT6RpldCjCIFB7jyz7QBmQYrsfr+3aCR50x3CgT4nayH9GNsYHGVolRcc+btTVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4679
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Cristian Sicilia <sicilia.cristian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some properties were parsed from the device tree and then ignored by the
driver. Some would return an error if absent from the device tree, then
return an error if they were found because they are unsupported by the
driver.

Avoid parsing unused properties and clearly explain in the documentation
the ignored / unsupported properties.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/axis-fifo/axis-fifo.c   | 247 ++++++------------------
 drivers/staging/axis-fifo/axis-fifo.txt |  18 +-
 2 files changed, 74 insertions(+), 191 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index 805437fa249a..b436f48a9d50 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -701,6 +701,68 @@ static int get_dts_property(struct axis_fifo *fifo,
 	return 0;
 }
 
+static int axis_fifo_parse_dt(struct axis_fifo *fifo)
+{
+	int ret;
+	unsigned int value;
+
+	ret = get_dts_property(fifo, "xlnx,axi-str-rxd-tdata-width", &value);
+	if (ret) {
+		dev_err(fifo->dt_device, "missing xlnx,axi-str-rxd-tdata-width property\n");
+		goto end;
+	} else if (value != 32) {
+		dev_err(fifo->dt_device, "xlnx,axi-str-rxd-tdata-width only supports 32 bits\n");
+		ret = -EIO;
+		goto end;
+	}
+
+	ret = get_dts_property(fifo, "xlnx,axi-str-txd-tdata-width", &value);
+	if (ret) {
+		dev_err(fifo->dt_device, "missing xlnx,axi-str-txd-tdata-width property\n");
+		goto end;
+	} else if (value != 32) {
+		dev_err(fifo->dt_device, "xlnx,axi-str-txd-tdata-width only supports 32 bits\n");
+		ret = -EIO;
+		goto end;
+	}
+
+	ret = get_dts_property(fifo, "xlnx,rx-fifo-depth",
+			       &fifo->rx_fifo_depth);
+	if (ret) {
+		dev_err(fifo->dt_device, "missing xlnx,rx-fifo-depth property\n");
+		ret = -EIO;
+		goto end;
+	}
+
+	ret = get_dts_property(fifo, "xlnx,tx-fifo-depth",
+			       &fifo->tx_fifo_depth);
+	if (ret) {
+		dev_err(fifo->dt_device, "missing xlnx,tx-fifo-depth property\n");
+		ret = -EIO;
+		goto end;
+	}
+
+	/* IP sets TDFV to fifo depth - 4 so we will do the same */
+	fifo->tx_fifo_depth -= 4;
+
+	ret = get_dts_property(fifo, "xlnx,use-rx-data", &fifo->has_rx_fifo);
+	if (ret) {
+		dev_err(fifo->dt_device, "missing xlnx,use-rx-data property\n");
+		ret = -EIO;
+		goto end;
+	}
+
+	ret = get_dts_property(fifo, "xlnx,use-tx-data", &fifo->has_tx_fifo);
+	if (ret) {
+		dev_err(fifo->dt_device, "missing xlnx,use-tx-data property\n");
+		ret = -EIO;
+		goto end;
+	}
+
+end:
+	return ret;
+}
+
 static int axis_fifo_probe(struct platform_device *pdev)
 {
 	struct resource *r_irq; /* interrupt resources */
@@ -712,34 +774,6 @@ static int axis_fifo_probe(struct platform_device *pdev)
 
 	int rc = 0; /* error return value */
 
-	/* IP properties from device tree */
-	unsigned int rxd_tdata_width;
-	unsigned int txc_tdata_width;
-	unsigned int txd_tdata_width;
-	unsigned int tdest_width;
-	unsigned int tid_width;
-	unsigned int tuser_width;
-	unsigned int data_interface_type;
-	unsigned int has_tdest;
-	unsigned int has_tid;
-	unsigned int has_tkeep;
-	unsigned int has_tstrb;
-	unsigned int has_tuser;
-	unsigned int rx_fifo_depth;
-	unsigned int rx_programmable_empty_threshold;
-	unsigned int rx_programmable_full_threshold;
-	unsigned int axi_id_width;
-	unsigned int axi4_data_width;
-	unsigned int select_xpm;
-	unsigned int tx_fifo_depth;
-	unsigned int tx_programmable_empty_threshold;
-	unsigned int tx_programmable_full_threshold;
-	unsigned int use_rx_cut_through;
-	unsigned int use_rx_data;
-	unsigned int use_tx_control;
-	unsigned int use_tx_cut_through;
-	unsigned int use_tx_data;
-
 	/* ----------------------------
 	 *     init wrapper device
 	 * ----------------------------
@@ -806,164 +840,9 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	 * ----------------------------
 	 */
 
-	/* retrieve device tree properties */
-	rc = get_dts_property(fifo, "xlnx,axi-str-rxd-tdata-width",
-			      &rxd_tdata_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,axi-str-txc-tdata-width",
-			      &txc_tdata_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,axi-str-txd-tdata-width",
-			      &txd_tdata_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,axis-tdest-width", &tdest_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,axis-tid-width", &tid_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,axis-tuser-width", &tuser_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,data-interface-type",
-			      &data_interface_type);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,has-axis-tdest", &has_tdest);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,has-axis-tid", &has_tid);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,has-axis-tkeep", &has_tkeep);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,has-axis-tstrb", &has_tstrb);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,has-axis-tuser", &has_tuser);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,rx-fifo-depth", &rx_fifo_depth);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,rx-fifo-pe-threshold",
-			      &rx_programmable_empty_threshold);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,rx-fifo-pf-threshold",
-			      &rx_programmable_full_threshold);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,s-axi-id-width", &axi_id_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,s-axi4-data-width", &axi4_data_width);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,select-xpm", &select_xpm);
+	rc = axis_fifo_parse_dt(fifo);
 	if (rc)
 		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,tx-fifo-depth", &tx_fifo_depth);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,tx-fifo-pe-threshold",
-			      &tx_programmable_empty_threshold);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,tx-fifo-pf-threshold",
-			      &tx_programmable_full_threshold);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,use-rx-cut-through",
-			      &use_rx_cut_through);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,use-rx-data", &use_rx_data);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,use-tx-ctrl", &use_tx_control);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,use-tx-cut-through",
-			      &use_tx_cut_through);
-	if (rc)
-		goto err_unmap;
-	rc = get_dts_property(fifo, "xlnx,use-tx-data", &use_tx_data);
-	if (rc)
-		goto err_unmap;
-
-	/* check validity of device tree properties */
-	if (rxd_tdata_width != 32) {
-		dev_err(fifo->dt_device,
-			"rxd_tdata_width width [%u] unsupported\n",
-			rxd_tdata_width);
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (txd_tdata_width != 32) {
-		dev_err(fifo->dt_device,
-			"txd_tdata_width width [%u] unsupported\n",
-			txd_tdata_width);
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (has_tdest) {
-		dev_err(fifo->dt_device, "tdest not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (has_tid) {
-		dev_err(fifo->dt_device, "tid not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (has_tkeep) {
-		dev_err(fifo->dt_device, "tkeep not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (has_tstrb) {
-		dev_err(fifo->dt_device, "tstrb not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (has_tuser) {
-		dev_err(fifo->dt_device, "tuser not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (use_rx_cut_through) {
-		dev_err(fifo->dt_device, "rx cut-through not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (use_tx_cut_through) {
-		dev_err(fifo->dt_device, "tx cut-through not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-	if (use_tx_control) {
-		dev_err(fifo->dt_device, "tx control not supported\n");
-		rc = -EIO;
-		goto err_unmap;
-	}
-
-	/* TODO
-	 * these exist in the device tree but it's unclear what they do
-	 * - select-xpm
-	 * - data-interface-type
-	 */
-
-	/* set device wrapper properties based on IP config */
-	fifo->rx_fifo_depth = rx_fifo_depth;
-	/* IP sets TDFV to fifo depth - 4 so we will do the same */
-	fifo->tx_fifo_depth = tx_fifo_depth - 4;
-	fifo->has_rx_fifo = use_rx_data;
-	fifo->has_tx_fifo = use_tx_data;
 
 	reset_ip_core(fifo);
 
diff --git a/drivers/staging/axis-fifo/axis-fifo.txt b/drivers/staging/axis-fifo/axis-fifo.txt
index 85d88c010e72..5828e1b8e822 100644
--- a/drivers/staging/axis-fifo/axis-fifo.txt
+++ b/drivers/staging/axis-fifo/axis-fifo.txt
@@ -25,10 +25,10 @@ Required properties:
 - xlnx,axi-str-txc-tdata-width: Should be <0x20>
 - xlnx,axi-str-txd-protocol: Should be "XIL_AXI_STREAM_ETH_DATA"
 - xlnx,axi-str-txd-tdata-width: Should be <0x20>
-- xlnx,axis-tdest-width: AXI-Stream TDEST width
-- xlnx,axis-tid-width: AXI-Stream TID width
-- xlnx,axis-tuser-width: AXI-Stream TUSER width
-- xlnx,data-interface-type: Should be <0x0>
+- xlnx,axis-tdest-width: AXI-Stream TDEST width (ignored by the driver)
+- xlnx,axis-tid-width: AXI-Stream TID width (ignored by the driver)
+- xlnx,axis-tuser-width: AXI-Stream TUSER width (ignored by the driver)
+- xlnx,data-interface-type: Should be <0x0> (ignored by the driver)
 - xlnx,has-axis-tdest: Should be <0x0> (this feature isn't supported)
 - xlnx,has-axis-tid: Should be <0x0> (this feature isn't supported)
 - xlnx,has-axis-tkeep: Should be <0x0> (this feature isn't supported)
@@ -36,13 +36,17 @@ Required properties:
 - xlnx,has-axis-tuser: Should be <0x0> (this feature isn't supported)
 - xlnx,rx-fifo-depth: Depth of RX FIFO in words
 - xlnx,rx-fifo-pe-threshold: RX programmable empty interrupt threshold
+	(ignored by the driver)
 - xlnx,rx-fifo-pf-threshold: RX programmable full interrupt threshold
-- xlnx,s-axi-id-width: Should be <0x4>
-- xlnx,s-axi4-data-width: Should be <0x20>
-- xlnx,select-xpm: Should be <0x0>
+	(ignored by the driver)
+- xlnx,s-axi-id-width: Should be <0x4> (ignored by the driver)
+- xlnx,s-axi4-data-width: Should be <0x20> (ignored by the driver)
+- xlnx,select-xpm: Should be <0x0> (ignored by the driver)
 - xlnx,tx-fifo-depth: Depth of TX FIFO in words
 - xlnx,tx-fifo-pe-threshold: TX programmable empty interrupt threshold
+	(ignored by the driver)
 - xlnx,tx-fifo-pf-threshold: TX programmable full interrupt threshold
+	(ignored by the driver)
 - xlnx,use-rx-cut-through: Should be <0x0> (this feature isn't supported)
 - xlnx,use-rx-data: <0x1> if RX FIFO is enabled, <0x0> otherwise
 - xlnx,use-tx-ctrl: Should be <0x0> (this feature isn't supported)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
