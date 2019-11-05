Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C08DEFA13
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 10:51:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C6A78A867;
	Tue,  5 Nov 2019 09:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5AHWWz4wwdau; Tue,  5 Nov 2019 09:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FE6A8A870;
	Tue,  5 Nov 2019 09:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1494B1BF2CC
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 09:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11B8E89191
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 09:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jjfmoQUHR2U for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 09:51:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17C2389186
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 09:51:29 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: WzMyZalH4CBeXPyVresdxG8bx9JSe59/pLbSSbSO9xfGKSH8Ow/K3EBRfMsAYU+WvpPa7+du+C
 Wv6F4vIiIJsVmeZlE4NTCsUbWTGHI9vHd8tgyVq61migdwgieSNzLsoWWFCPwcPNyNhtMU1dhB
 J1k0lqzPfGoumv0cZ4/sussMZDjJFlZwTe+uPV28wTRhd9NGlvXgjtGQkiy9CsQTsn6tSSUDJC
 +hXAPiCLmdQfFrb07/2aEg3J7pZGw5QDCJeRpiW+eU/9nOp0fMODnVgFL6X3MBuzwz4lu9efE8
 VO8=
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; d="scan'208";a="55347240"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Nov 2019 02:51:28 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Nov 2019 02:51:26 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 5 Nov 2019 02:51:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3lbJVZeL7Ki+oA5VnzDlTt5Jxb/lj8F2AjX5T1Xbhk11nNKkfpZDXan9fW6s6dXTIRzKFuJK0DTi6+xNCMHuLOUpgOBOJThqAhIYrt4kgEgY38gvgEULhX46EScLmZ2zTpqEKPDXwdxZygIDGbraHbLuqvXe9XkorZjYhRgWSbsQftkyE8GrN+Wv2E+YVPBaQl+Y7T/nV/h7WWQaOB1mqKnh+X8yAGSvoSMtD4qSrsFKOuBKQdy0RJLWAfxbFwsUsqD0cSsL3q8lwmF4pElFsHA/e7QJjmTxwSWmsN1hR6Fy+5x8iz5rvEmKYpuyRyxi5pgPJXVSoe2TZKyEiyBzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nr1QZ5VLqprKCCjAYCo1DIiq/yoqDPG/msRjnY6+6gg=;
 b=SFAvIbMnqzp3VjsnLcW8ZXQodEI5SgZCXKglgXEe+phFvEHtmRY2qwPvXziYiMQ8n5Hjhk1Q8uhFwc3r7P68dq2zHEtASVmM6nQLVUBWG4M8gWvUf5AoKikag8F443Pupl5fsuxYF/zOZFL+KLeX/VG9mWOph4BeIopFzblUmk5WRw7dV5DLVxy1MrVj97TpB2XcvtKCs7OAa2um4ZzIruN5F0Sfv7h7LWPidF8QQgIf4M3vzHW7juZU+0zI7OswI7sSfsn65tWWLdYGg3enfoRqpzSQqPK4R7Vtw5ZY9xKN96PgbRz8M1HAO6MQbk9MLeoC6s/q6Py0m3mslXY89Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nr1QZ5VLqprKCCjAYCo1DIiq/yoqDPG/msRjnY6+6gg=;
 b=WSvwGc81d89q1D1v4oxeGgvgEJznjbAM5FsgfxpFxeffTUcNJYTyMJjKtbBtoNAJL0p78hQW2zJwPNqi4Gf/YLqby+GApkBN/DqAQjlbQgElGP9AMucflSoV0wHDKlyqKcw/ebrKoEnFYcdtU3kUvzEzrSSGqY5+y20VryOWKB0=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1972.namprd11.prod.outlook.com (10.175.100.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 09:51:22 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5994:7522:979f:5e29]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5994:7522:979f:5e29%7]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 09:51:22 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 1/6] staging: wilc1000: avoid 'bool' datatype in struct sent
 to firmware
Thread-Topic: [PATCH 1/6] staging: wilc1000: avoid 'bool' datatype in struct
 sent to firmware
Thread-Index: AQHVk76UV3bXW7Fx8UqiayEtu48wlA==
Date: Tue, 5 Nov 2019 09:51:22 +0000
Message-ID: <20191105095058.24223-2-ajay.kathat@microchip.com>
References: <20191105095058.24223-1-ajay.kathat@microchip.com>
In-Reply-To: <20191105095058.24223-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.22.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ed86c14-b9c7-4920-37f2-08d761d5b6ec
x-ms-traffictypediagnostic: BN6PR11MB1972:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1972311E799E2CAA0055AA90E37E0@BN6PR11MB1972.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(136003)(346002)(39860400002)(199004)(189003)(6486002)(6436002)(2616005)(36756003)(71190400001)(486006)(186003)(86362001)(76176011)(386003)(14454004)(5640700003)(52116002)(2501003)(6512007)(64756008)(99286004)(6916009)(66446008)(66476007)(66946007)(66556008)(71200400001)(2351001)(26005)(316002)(8936002)(8676002)(50226002)(81166006)(81156014)(102836004)(6506007)(4744005)(5660300002)(11346002)(1076003)(476003)(107886003)(54906003)(446003)(478600001)(25786009)(2906002)(7736002)(305945005)(4326008)(6116002)(3846002)(256004)(14444005)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1972;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U3PgRQSyURsXmV5bTc41vX325cz9xfluVpbNUBDwtZNPoT0hlJCsC2tPglMblNfeLSCER2dHmxvV/Nbcctaer0PzQtHqVhnC+DpHJRhGJPyXWdAgzSZl+OW6LBvWR5H3lVWd50jSGhpQgwYUoyIrh943BmPZoHZ6poNDA3ak37LsTiOiBXvOgJD5RIuJtDu5em83VZix2MwmdHcEq5A4SnGkfWnEoO2L+osw/RsieFYV9d4aBFlIImjWmPUqZ2YNKPB4S4f9s2+xPoTr4Ri3czCqKDMN27ihzrS0pM6oyNhyj9AcANBLX5bctmn34R3AvDArDdnaGEFQBvkHatD1OQW+wJGrhq5gfhqBqDQ9r/Z+g2RJ4wbfsTIiK8FqsXbG2PkFEJWMH0njzpyqveytNy1/4HMY0cWaAgyQJN8N9eGzlbJVIjKepoq67JfpYrJi
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ed86c14-b9c7-4920-37f2-08d761d5b6ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 09:51:22.5664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nx0i9b9bgNRqdnawj0IHHBUvbN6saFdjbhG+x+o1f0neYnC+iOmWDc9O3ZbGUPjhH00Zd0Bls0hUeYXdZmRfEurDlJYGY0A/2DWdi+pGURY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1972
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

Use 'u8' instead of 'bool' datatype for struct element sent to firmware
because storage of bool datatype is not guaranteed.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/wilc_hif.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_hif.c b/drivers/staging/wilc1000/wilc_hif.c
index e0a95c5cc0d5..59eb7600619b 100644
--- a/drivers/staging/wilc1000/wilc_hif.c
+++ b/drivers/staging/wilc1000/wilc_hif.c
@@ -32,7 +32,7 @@ struct wilc_op_mode {
 };
 
 struct wilc_reg_frame {
-	bool reg;
+	u8 reg;
 	u8 reg_id;
 	__le16 frame_type;
 } __packed;
@@ -1784,7 +1784,9 @@ void wilc_frame_register(struct wilc_vif *vif, u16 frame_type, bool reg)
 	wid.val = (u8 *)&reg_frame;
 
 	memset(&reg_frame, 0x0, sizeof(reg_frame));
-	reg_frame.reg = reg;
+
+	if (reg)
+		reg_frame.reg = 1;
 
 	switch (frame_type) {
 	case IEEE80211_STYPE_ACTION:
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
