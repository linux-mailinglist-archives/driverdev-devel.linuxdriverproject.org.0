Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B69801079A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Nov 2019 21:52:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0541E883E5;
	Fri, 22 Nov 2019 20:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ADc+WiXX8bWk; Fri, 22 Nov 2019 20:52:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F0C78837C;
	Fri, 22 Nov 2019 20:52:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A3631BF354
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 20:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6184789230
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 20:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vbRxGX3eEJDe for <devel@linuxdriverproject.org>;
 Fri, 22 Nov 2019 20:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C33E78922D
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 20:52:06 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: F7mSMRb62Rq3eUjw7T5HQkEOL/RT1rpoIKeWxDbF29tHkvb/Tfd+jl79VAfbWjyUrjV2cF2KFd
 QXurxTfLscefQe91agjYzsDjPesd/RnI1pCrlL6rbbbEb3GZYKbqsCjdyrMz+SYfKTTTjoUCKw
 uMtUcGqLtXT1X8xc+sVYCa4Jc2OOs4tZnnmZmJEDX/XREb4DKzOgLKPDegiYyanux2M9lSvK6e
 GWZtG7C/+/lBYCyF+BHlpNNAu9HOoDpqhDqeQKn/LX9a3HXNDl+7kQWLrNd5bul81I30vWIYg8
 Gio=
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600"; d="scan'208";a="57656081"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Nov 2019 13:52:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Nov 2019 13:52:05 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 Nov 2019 13:52:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cyaBF41HQRdX9Qip+ZCECGNR8OSwRKXDVEKgNBVbI4tMTTseLhPzaPgYR3dLzyzBV8cqz3SywDtjZS3FAoxyE2Ve/LdgPe/QpqWZKpJPLx/8pHMzXf09zCMkcajqFe/mSKa0XlrifUdckcqv5IRCNOpRTgWvMwZHiZEAVp+MhUscDu5AEfbSCOuV/92ET+cIWV8G8fdUuOOq1JVxfZzcJd6UKYvt1HSEbysbKgXzT+bUcZ2i8U2704eapl5FPAnyHlxTyT9n4WSy6Up2CvcLqw7DYPXuDEKbHLkr90nDtDF3OdP3eQ6gGcQfwnE49SwLUVsSZLeUbnjINGIzSyiuaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M8l9OOnlkaNKKKbZaHBKEbZ+g4S73lTXxxpFOJ7dkA8=;
 b=L4+xhCJFap9fmwVrEOlppCq8uuJC5i2NcFOIxrDH0haP/bn4UWGUHPEX9fLZBh0cBvShVKqVMNrKeAFHzjH93T2H/Qi69GpyQyR+fHEkYsYYMVyldWJ+0mEpA5qDkN0veE99QNWqoKiYWymLF5BicDWFthcB7hAYvOZKQZXSyVI00oOsvQl7E1VUygK8qN59DKO5rJ+ds8dE0UsgSlScwaqQvKgnvPgG4DCfJfuanYs0FK8RfNrGb8VHtHhDWtOyKkue+RHL2w83LOTMCSRxto3j5sV+bm9SYboxM6YcSLGbza647zdIufw94g+uYCzjv1X33UqRTsXTpVjcsswNhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M8l9OOnlkaNKKKbZaHBKEbZ+g4S73lTXxxpFOJ7dkA8=;
 b=XJtsaUO0lTHKZ/ycYdjkIzTila7Dw3isow8SRbhvQKhNAnvSh2T/nzDLUgPu9S7NEoztQsolHcHhWUcg2faJ4L1lcVH04QOAO94mld1dKJ55zWD6dFreodPwnjCDrwYV8epxNE5i4wBylFzXz1Uq8jg4xZC7qmCeJ4/sHXh8xM0=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1472.namprd11.prod.outlook.com (10.172.54.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Fri, 22 Nov 2019 20:52:03 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::fc6d:2ed:d470:fb56]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::fc6d:2ed:d470:fb56%8]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 20:52:03 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 2/4] staging: wilc1000: remove unused compile time
 featurization
Thread-Topic: [PATCH 2/4] staging: wilc1000: remove unused compile time
 featurization
Thread-Index: AQHVoXaxgl+u+j+wVUmgsItc7XtH1w==
Date: Fri, 22 Nov 2019 20:52:03 +0000
Message-ID: <20191122205153.30723-2-adham.abozaeid@microchip.com>
References: <20191122205153.30723-1-adham.abozaeid@microchip.com>
In-Reply-To: <20191122205153.30723-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: BYAPR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::41) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80091b0c-16a9-43f5-69f5-08d76f8dd3d8
x-ms-traffictypediagnostic: MWHPR11MB1472:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1472D68269210DC03A93C5198D490@MWHPR11MB1472.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(346002)(366004)(376002)(189003)(199004)(316002)(66946007)(7736002)(8936002)(107886003)(81156014)(81166006)(186003)(66556008)(6486002)(26005)(66066001)(99286004)(6506007)(76176011)(5640700003)(4326008)(6436002)(52116002)(71190400001)(71200400001)(1076003)(5660300002)(14454004)(6916009)(11346002)(2501003)(102836004)(2906002)(386003)(6512007)(446003)(25786009)(54906003)(66446008)(50226002)(3846002)(36756003)(66476007)(256004)(64756008)(2351001)(2616005)(8676002)(6116002)(86362001)(478600001)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1472;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?q6VMaHa0xt0gZ7+cJvPQLu1v7BR9g2Hh0kiMgE2+DSx3vKIypx77n2G7Y3?=
 =?iso-8859-1?Q?7+bRV1BD0AJS5kUzU8sbiO5lM3Rhwg6zEqNqnlV1tOWQGkZfAykNkauK/C?=
 =?iso-8859-1?Q?YlnLahB7j5MGJYcUHze9b/MT3yVuMYD7jZCdWcBbslaPCmDbb/XCQlB9WK?=
 =?iso-8859-1?Q?wMIB5EqZe0lzoQzg5AUyN/M/EJgq7PRC7UXTr7TTGKmjf8uhr9M1JPYzjn?=
 =?iso-8859-1?Q?6piJFJrq5Hsa/hYBHUH5pRDvD8n2ftnJGlg9vMeAYjetDGromzfKRZcZOA?=
 =?iso-8859-1?Q?sOOz8YCRjJBgLTcZiOnyBe7CsCzedopKKh9IAGVbArGtD/DbM0nPNN/wqo?=
 =?iso-8859-1?Q?FghmggYc3ufJ86xwXITmgn67AdxD9Za6H/qESF+6vYDg9juyEHzBGhVHH7?=
 =?iso-8859-1?Q?JPxKOLY13PwLAGAEfSHvH+ZYy4db8dHMnz+ExYFPO57JgxsN9mHrVhCeuA?=
 =?iso-8859-1?Q?8kGVb3aSfpVh4bTLExI9YQ2YAXMhE9rH+kt8IgPi4i9I9c/p95ay/UhLjR?=
 =?iso-8859-1?Q?LMnGSNRD5KhCUk4nDo0iPUUBIC6fQ7F++xOYn4oxhjJ5Ta3ISJ6Cp6/Gjv?=
 =?iso-8859-1?Q?0i+PZ9C530gQnxjwMssV2Xh+XgZrirU05jGjzvVJBO1op62Dt9lWqwGUOB?=
 =?iso-8859-1?Q?sJ0RLOaOpjqgqoQzNgf3paT6zIwInkJvfaKDl6vNnOZ5OWJnD3tW9n+KDY?=
 =?iso-8859-1?Q?aZUglWQ4ptl7hG1w7TUuqEI4tc/ucYz84ti63IP8hemdGZXW9cepcB/sAx?=
 =?iso-8859-1?Q?0oQCNgq4uHS1focVxhHoiWaoYb5Db3/TLfjzYPlCmmi7EZQn2KQU5qDDwg?=
 =?iso-8859-1?Q?jMIZARF/uvKJRnqLLu6V8wV6Th7rZ/GW7xGLkFbRzJTaL1SNPILu+Dpp+1?=
 =?iso-8859-1?Q?kEOgEklo5DTFv36MR9Fl/PLZ1eomUFMIGKvCSD+uTBBLTu3AAl2O5Z8sVI?=
 =?iso-8859-1?Q?yxzCuX4uJFZPXMG0AgKFB7R/pLogHdBmYiSQNUvAbREQ//pOwcVQdIfnG/?=
 =?iso-8859-1?Q?kqIJ78+C24LlZm6QqZi5IsqCkqfzCqU+1j5DcalZ5pRBEZ2SlSa2uofW+f?=
 =?iso-8859-1?Q?BcGlIuozQVKr6g9F7sgu8+6p+dsdZIEJHuM6HZ7iTrakZ4MF9889JCAYN7?=
 =?iso-8859-1?Q?+WWMsT6G1XpBq1E7mrFrAd6KpRCw7ab2LxOmip6eojgccoAl6fK7xqPooZ?=
 =?iso-8859-1?Q?wN9WYAP2ZnMNBquD0gQyS2K8klpQPNthR+sku+59sKzdqMTNeCiAwc+qsz?=
 =?iso-8859-1?Q?3LOUmkIDH0PL5ATgS9PkYpZVPCT1lLl7V2orhtcG6az2F52Czpe85/BqSx?=
 =?iso-8859-1?Q?5DD3cSu9dIK6rwduBqoP12qprO9xGy5KyhpoEMgLnN+kztzko/kH0zT2Va?=
 =?iso-8859-1?Q?+eap4K1eeT9vaymmU2ZQ1v892Q3s5mTojLwpZ2gcR8hzSJtihI/E7kwe5k?=
 =?iso-8859-1?Q?oxTN7Ax8Mx6JPQm7+/51Kbc3V0Kx0TA7G1CN/pCZadep024RELlSLmd39s?=
 =?iso-8859-1?Q?vXOVbCACSkeuh+5nzDXuGyv/PWgYSkRVTRj/cAmdqI+2XakPYfI5DlvSwu?=
 =?iso-8859-1?Q?97GlvYAfMW9v27mAb6wpvFkaCHsT//MHTlENRHd+QjS5lrSoMTnqNfrWgb?=
 =?iso-8859-1?Q?PI6qaOAjqJrBwyk5RQ1s/1wYnd8TYTm2B3xYmWyn7BgPQx9+Nda8ps11Bf?=
 =?iso-8859-1?Q?yNRijHC+pIenX6cjPa7Vc81oW3hL0yAf5baPPBBoPSVF8UHf13bBEldxga?=
 =?iso-8859-1?Q?0ozJBW/UU3DlqY/QWzYngkZWeFBRDvWVBp1S/QRwNNXfkquUzJki5KZkxJ?=
 =?iso-8859-1?Q?3pc9LhNwFg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 80091b0c-16a9-43f5-69f5-08d76f8dd3d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 20:52:03.4230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ut1Ju4pyCIzvXcSLGjeQBKCgSFsGrouKZaM/vt4/T4jSFhaHMEIIbRvunjzT/BTqpvm9+dWfiyIYKofNhQT5pnOzGBVTrHKCe7X5X1bkJrw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1472
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
 johannes@sipsolutions.net, Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Removed the unused compile type featurization. It's not recommended to
have compile type feature. Currently removing these defines as they are
not used. If any of these parameters are needed later should be added
using run time feature.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/wlan.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/staging/wilc1000/wlan.c b/drivers/staging/wilc1000/wlan.c
index d3de76126b78..ba5446724c93 100644
--- a/drivers/staging/wilc1000/wlan.c
+++ b/drivers/staging/wilc1000/wlan.c
@@ -890,29 +890,6 @@ int wilc_wlan_start(struct wilc *wilc)
 	if (wilc->io_type == WILC_HIF_SDIO && wilc->dev_irq_num)
 		reg |= WILC_HAVE_SDIO_IRQ_GPIO;
 
-#ifdef WILC_DISABLE_PMU
-#else
-	reg |= WILC_HAVE_USE_PMU;
-#endif
-
-#ifdef WILC_SLEEP_CLK_SRC_XO
-	reg |= WILC_HAVE_SLEEP_CLK_SRC_XO;
-#elif defined WILC_SLEEP_CLK_SRC_RTC
-	reg |= WILC_HAVE_SLEEP_CLK_SRC_RTC;
-#endif
-
-#ifdef WILC_EXT_PA_INV_TX_RX
-	reg |= WILC_HAVE_EXT_PA_INV_TX_RX;
-#endif
-	reg |= WILC_HAVE_USE_IRQ_AS_HOST_WAKE;
-	reg |= WILC_HAVE_LEGACY_RF_SETTINGS;
-#ifdef XTAL_24
-	reg |= WILC_HAVE_XTAL_24;
-#endif
-#ifdef DISABLE_WILC_UART
-	reg |= WILC_HAVE_DISABLE_WILC_UART;
-#endif
-
 	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_1, reg);
 	if (!ret) {
 		release_bus(wilc, WILC_BUS_RELEASE_ONLY);
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
