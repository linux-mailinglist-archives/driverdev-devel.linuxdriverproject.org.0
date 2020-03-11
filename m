Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7B5180D7E
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 02:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F3F388148;
	Wed, 11 Mar 2020 01:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qi2PFlnSL4ey; Wed, 11 Mar 2020 01:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB6CA880B2;
	Wed, 11 Mar 2020 01:27:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 832941BF5A4
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FBFF86360
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IYDVLYzTVHcP for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 01:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12olkn2103.outbound.protection.outlook.com [40.92.21.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6194A86355
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 01:27:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/fw2s0GJ/NICA4vwP5pIvi03xHOYRqJWe0YG0zc5krHICB+OPg9nBvqj6vvW5Mc1qJ+q6XgeIvxZ9HlSgvXz/iyuv2xFfaLDhWOqLAartHkVc9elsq8byGeLuoM1o9ikodrm0NeJmB/v+/F2bUxdx0ch/pciTie+iAc6cnMFK9qqPJVXVRIN4mIfBWfer+JcHrPv/R6aRbP1+GDFAii/vAkpYLHFgSKtoQVxXoBLIuX+alp4xqxA/JKfWc1EWrXsWhAaCcVbGNPsvXg3YIxdZsSYpQtEI75ujAao9Y3C4wv6AgtWGLjkhRW61cMZChMgIJVMupRiVKViXRuyH8rBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3r5WO65Do6pHMBXM7obcDUj++e45ybAfeetIwduDVo=;
 b=bkOQv3cg0jFzINV18xbGVGNGSuNWPLzy+ZwpFT6DbAoDttCiZbloCIxoyf3Wsf/p9+xiYh/xj8lHO34/hMXVCQLTVPzBqiwfSxYRXm+J7PTGB5WBWtnj4igVWQ/GgjOUDJHxEPwlb0I2tLZK9z5Qp3wf1aI4ATugUhUhXzqcR1gCk50XQC3ueR+KISGl6YAZ7R9Ouo80FaRmp5X+fGnb8skJnWRSk6gsfD7VViMKZQs5CVpH7MMf2vIjjnkbXu6B//i2JoHIXySARYZvPXd82l/RxmL6I+xFlQ707lmKucFRx68t6edD6fVse8ClilnCgEUXahSIOpLVXiuyZ/7vkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3r5WO65Do6pHMBXM7obcDUj++e45ybAfeetIwduDVo=;
 b=kdW/kI+xPTbQ2RobRrMMm5mo3jvhEBnlE1bltNh0YKk8PcVpa1CXZsxCeNMFjomzZAcPH8QxUfJESPRkB0SBSTvO7ZLmx2HfOf2D267CwbzKmdGwjfcAqMQR1gR4JKIols8LaTF+xAA+oM1bsPzs5m41irfTtNbLVRRs3dCSSIaacAH8LaOMVy1lyiBGpYeWo7B6oZLSBRGHF5Po7Sw1dVk7mwbWq1+ah/C4PGH3dI0USAaJiQDlt0UEGMmDbhWrGY7XAZ6pP55Z7XbuXqCNlrxRhcxSdng7Go5gCn+1FhFJASWn23BDaq900PSRPr5KkdCvKTjoRpc1OIuWrZJUiw==
Received: from BN8NAM12FT037.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::3a) by
 BN8NAM12HT209.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.6; Wed, 11 Mar
 2020 01:27:20 +0000
Received: from CP2PR80MB4340.lamprd80.prod.outlook.com (10.13.182.60) by
 BN8NAM12FT037.mail.protection.outlook.com (10.13.182.128) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.6 via Frontend Transport; Wed, 11 Mar 2020 01:27:20 +0000
Received: from CP2PR80MB4340.lamprd80.prod.outlook.com
 ([fe80::2888:63e8:d9:21e9]) by CP2PR80MB4340.lamprd80.prod.outlook.com
 ([fe80::2888:63e8:d9:21e9%7]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 01:27:20 +0000
Received: from localhost.localdomain (200.185.232.91) by
 CP2PR80CA0031.lamprd80.prod.outlook.com (2603:10d6:102::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16 via Frontend Transport; Wed, 11 Mar 2020 01:27:20 +0000
From: Carlos Henrique Lima Melara <charlesmelara@outlook.com>
To: "manishc@marvell.com" <manishc@marvell.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: qlge: Fix WARNING: Missing a blank line after
 declarations
Thread-Topic: [PATCH] staging: qlge: Fix WARNING: Missing a blank line after
 declarations
Thread-Index: AQHV90Q1G/7ghXKnXUuwwsOKjmLYNw==
Date: Wed, 11 Mar 2020 01:27:20 +0000
Message-ID: <CP2PR80MB434086A44A1ED5BB662B9D70A8FC0@CP2PR80MB4340.lamprd80.prod.outlook.com>
Accept-Language: pt-BR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CP2PR80CA0031.lamprd80.prod.outlook.com (2603:10d6:102::17)
 To CP2PR80MB4340.lamprd80.prod.outlook.com
 (2603:10d6:102:45::10)
x-incomingtopheadermarker: OriginalChecksum:DB24EF231B5116470709F8752BE31E0CCFD23A334A23927EB99665ABF51A4B0D;
 UpperCasedChecksum:461437856E7E0CD34DD6B9FBDB7B2B6E25982041CCAB352491FDBDF2F34B3F93;
 SizeAsReceived:7773; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-tmn: [hVG0eee4NHuT1wtTpBqo0JxUvvwcv3lg]
x-microsoft-original-message-id: <20200311012713.57951-1-charlesmelara@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c09d385c-037a-4214-3d52-08d7c55b57e9
x-ms-traffictypediagnostic: BN8NAM12HT209:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TxNn+Hh/r0x+Cs0CHQ004Yf02bfgcNcwnoL5ZIG9ZnvtabDA7F2dRCbiT7VG03nLw4POTwrUW1mwO3LS8WSy7QlMZ9YhMfON2CfZBQapdLibu88EkmEEezFd3+CydYzKNib2ybVs/ANmzpNH8EWSF4zNe5LWp9YFGaboKRdWUuZQ2qm0FaQhTA/iOIS1MB7D
x-ms-exchange-antispam-messagedata: A6inDHhvHkCLsK/c7mdDXK/C7m1l56F28RqROQWupC4ZuT/HUj3+SwRvPclyK4TDKG61yPEYRRizONNuXY43pW8N6mS3NHAQ3Ns0RjmjuZumIlndPH5TNn0LrA0Z2nP6T13Hfpjm/+2KlDNVZ4NHKg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c09d385c-037a-4214-3d52-08d7c55b57e9
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 01:27:20.6901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT209
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed WARNING: Missing a blank line after declarations in qlge_mpi.c to
the following lines:

WARNING: Missing a blank line after declarations
FILE: drivers/staging/qlge/qlge_mpi.c:94:

WARNING: Missing a blank line after declarations
FILE: drivers/staging/qlge/qlge_mpi.c:240:

WARNING: Missing a blank line after declarations
FILE: drivers/staging/qlge/qlge_mpi.c:258:

WARNING: Missing a blank line after declarations
FILE: drivers/staging/qlge/qlge_mpi.c:356:

WARNING: Missing a blank line after declarations
FILE: drivers/staging/qlge/qlge_mpi.c:915:

WARNING: Missing a blank line after declarations
FILE: drivers/staging/qlge/qlge_mpi.c:1099:

Signed-off-by: Carlos Henrique Lima Melara <charlesmelara@outlook.com>
---
 drivers/staging/qlge/qlge_mpi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index bb03b2fa7..22ebd6cb8 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -91,6 +91,7 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
 int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
 {
 	int status;
+
 	status = ql_write_mpi_reg(qdev, 0x00001010, 1);
 	return status;
 }
@@ -237,6 +238,7 @@ static int ql_idc_cmplt_aen(struct ql_adapter *qdev)
 {
 	int status;
 	struct mbox_params *mbcp = &qdev->idc_mbc;
+
 	mbcp->out_count = 4;
 	status = ql_get_mb_sts(qdev, mbcp);
 	if (status) {
@@ -255,6 +257,7 @@ static int ql_idc_cmplt_aen(struct ql_adapter *qdev)
 static void ql_link_up(struct ql_adapter *qdev, struct mbox_params *mbcp)
 {
 	int status;
+
 	mbcp->out_count = 2;
 
 	status = ql_get_mb_sts(qdev, mbcp);
@@ -353,6 +356,7 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
 	else {
 		int i;
+
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN detected.\n");
 		for (i = 0; i < mbcp->out_count; i++)
 			netif_err(qdev, drv, qdev->ndev, "mbox_out[%d] = 0x%.08x.\n",
@@ -912,6 +916,7 @@ static int ql_idc_wait(struct ql_adapter *qdev)
 	int status = -ETIMEDOUT;
 	long wait_time = 1 * HZ;
 	struct mbox_params *mbcp = &qdev->idc_mbc;
+
 	do {
 		/* Wait here for the command to complete
 		 * via the IDC process.
@@ -1096,6 +1101,7 @@ int ql_wait_fifo_empty(struct ql_adapter *qdev)
 static int ql_set_port_cfg(struct ql_adapter *qdev)
 {
 	int status;
+
 	status = ql_mb_set_port_cfg(qdev);
 	if (status)
 		return status;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
