Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E7DF33FE
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 16:59:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE01485582;
	Thu,  7 Nov 2019 15:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thQAMKVV3JAL; Thu,  7 Nov 2019 15:59:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27EC685462;
	Thu,  7 Nov 2019 15:59:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5AC1BF484
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8889785567
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpGv1uNjMA38 for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 15:58:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 10825821DD
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 15:58:58 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: iDqErHCYxDgVjGsSHKGOVcXMBuZZMkufeqIKkI3AuEl2xBsEZbR/yd0zaXjsmakQNAApSV6Ne9
 /iqg5OYUHdly/5p/aLTb6peyf+fMOcorKN4wlv3IyT+DX6NQapt9VfG1dHcwlIi82KcXD6INiI
 jPH+Ku8jqCdLoLsZyaQCrnNUGBYKzLbAxWQpBdD7R3XeMhoKmhaxrLPaMMLgDzzuYp9/oWh0GT
 JlV4f0ML5KF4jiD2prVHspTrq1XqJ+hYKm+tFDlWseM3hJGf98lvDKdTdR0SWMif9aQxe5xr03
 Pj0=
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="57421992"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Nov 2019 08:58:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 08:58:57 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 7 Nov 2019 08:58:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z62EsLjQQwWmyHCIQWQbHn+YS8mVcfmkWu3w+jF9NhIxFADdh0yMFx7P02iNbQc77uFyTlDr0GmHIsHHXLIl/ZbEMqy+BPo8msrW6vTahRetwmQuhXWNmeWLh42VNyBWRL1OWVHbjyTy4C1V+tL0+pyH8CUYNAfPqHZhhPZYzvPO3M49Ec6lwwnROeaINDUfsFw1FUPZ4YEOa2ceUC1Nd18NIUbCM+0Pu3iMHzu17HaTFaaTxU3IkJNpXEb9+0Pn5B082ZSq6fMnH8oGGjI9GblLl46BBHITubK27h4cdSZ5ck4Dz7NPqTj3RkyqSR1buNCNKZ23Ato2EFGXkr/r1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I83/5dTDtpC7K2/pL9W4A67isONxm8Y4Le/jrKOiwvY=;
 b=i7ExFuXwocBMlMlQqHEH+A3E2Gm85db4dM6dh6m6VX8kYBbY29Axx8R+G1kt49lUl47/NIyp5rUjeWCqH2Ka8M+yymPZ2EFQWApXESXxOCI+492FAnrQPm4wxVkBpI/JRbG5/84lUaznRU2pdafLEBdPozXjZubDjKn+p1VpmTnpfo9GbKlVM2z72X4ySsKrhSQ8Kx7gmwbnPFzl3JQBYG+dPlbIcjv+kp3jMvRdGU62tBEnfPyCTcHvyM46MXnzZa7LHNi3xTNC0Uv7UfskCA5HtWcqNKvtPOksTG4NdjUUrfm8UymwqoWKZhn/fAZxmSPiE0O3fW+Bo53o+WBjiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I83/5dTDtpC7K2/pL9W4A67isONxm8Y4Le/jrKOiwvY=;
 b=jAk8wKJ0jEoy5e6SLL8stKl8lRIyBr2Mhk+hGyCZXRJilEO99ghuLr2OodSYX0p3/kEg3pn955Rzx/jBP2gQGlXXtfFHy67T1DEmfVa91temWQULt9mX03yM2heUUFHQd2n9MUZavdQZ6HLBOvEsj+bWejnhgjJI4sjXRiNSlbc=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1633.namprd11.prod.outlook.com (10.172.23.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 7 Nov 2019 15:58:54 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::b4df:e09b:f8cc:c433]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::b4df:e09b:f8cc:c433%7]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 15:58:54 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH] staging: wilc1000: fix illegal memory access in
 wilc_parse_join_bss_param()
Thread-Topic: [PATCH] staging: wilc1000: fix illegal memory access in
 wilc_parse_join_bss_param()
Thread-Index: AQHVlYRBZn0zvrMBv0qGwCKphmJx7g==
Date: Thu, 7 Nov 2019 15:58:54 +0000
Message-ID: <20191106062127.3165-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::29) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.22.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6c5303e-2c6e-4f68-f842-08d7639b63f8
x-ms-traffictypediagnostic: BN6PR11MB1633:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1633979F4FC7CAAD6C36FA62E3780@BN6PR11MB1633.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(376002)(346002)(39850400004)(199004)(189003)(476003)(7736002)(102836004)(99286004)(64756008)(66476007)(66556008)(26005)(71200400001)(71190400001)(186003)(66946007)(2616005)(3846002)(6116002)(2351001)(6916009)(66446008)(81166006)(2906002)(6506007)(486006)(14444005)(6512007)(386003)(256004)(50226002)(5640700003)(6436002)(1076003)(8936002)(316002)(81156014)(25786009)(478600001)(6306002)(54906003)(966005)(66066001)(6486002)(36756003)(52116002)(86362001)(4326008)(5660300002)(2501003)(14454004)(8676002)(305945005)(6606295002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1633;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EgkkMYDoga+0HkiSJBdVD9Gq4eHrwIXD3GAcTmoWDAHeYq8hfZzTD9nKQBV3D5T0vBROxDHg5j66nOvHE74EcO1ayFlrgHb6QtAZAR0z4+PbDHY2hxgPx50xn0KjssI/SqOALQ5HgjSTWu8gFKUg/WDdcI5WkdNLKQcMWiS6jfiq/k4sAhjzWs4Xmq/VRbN/Z0oM6muL2xkRFV09aeDvNm7SescbbOUkSaY0tu4xMIDMGQZT5q8XMyfDz+DbeBgrG+aL2ACbJrn7Ia7J8/N7Hse9ufleoyteRtGEFQ6Rwt65V3GALu4Z25ox75nf3amBxdzUOT3gXAq6vOa1TOoa5VH330QvqEGPWDR+zKLOv1rb0wGXxPeaaaYu3LUFV1L+DABB5ZDeb8eCCQTUrTwR3/XlrrVerkVGs5HLG9czr6wh3UDtrrGfzgGDUJ1b2TQWW10wTCxS8DP55OTtI70VZYlqlbtGPPN9tBKHZgZHKSI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c5303e-2c6e-4f68-f842-08d7639b63f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 15:58:54.6584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FCLW25wbHpJi8HZdiqzwIsuWSK8zcM8ZGyO0TJ+z4iahUG8ZZ+uZP8vBbms52ZBgBotYmxwx6mI7oaazLWzEw6mOeRyppsf3kXuV9XPz2Ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1633
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, keescook+coverity-bot@chromium.org,
 stable@vger.kernel.org, Adham.Abozaeid@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Do not copy the extended supported rates in 'param->supp_rates' if the
array is already full with basic rates values. The array size check
helped to avoid possible illegal memory access [1] while copying to
'param->supp_rates' array.

1. https://marc.info/?l=linux-next&m=157301720517456&w=2

Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
Addresses-Coverity-ID: 1487400 ("Memory - illegal accesses")
Fixes: 4e0b0f42c9c7 ("staging: wilc1000: use struct to pack join parameters for FW")
Cc: stable@vger.kernel.org
Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/hif.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
index 5f6706bcedf6..349e45d58ec9 100644
--- a/drivers/staging/wilc1000/hif.c
+++ b/drivers/staging/wilc1000/hif.c
@@ -485,16 +485,21 @@ void *wilc_parse_join_bss_param(struct cfg80211_bss *bss,
 		memcpy(&param->supp_rates[1], rates_ie + 2, rates_len);
 	}
 
-	supp_rates_ie = cfg80211_find_ie(WLAN_EID_EXT_SUPP_RATES, ies->data,
-					 ies->len);
-	if (supp_rates_ie) {
-		if (supp_rates_ie[1] > (WILC_MAX_RATES_SUPPORTED - rates_len))
-			param->supp_rates[0] = WILC_MAX_RATES_SUPPORTED;
-		else
-			param->supp_rates[0] += supp_rates_ie[1];
-
-		memcpy(&param->supp_rates[rates_len + 1], supp_rates_ie + 2,
-		       (param->supp_rates[0] - rates_len));
+	if (rates_len < WILC_MAX_RATES_SUPPORTED) {
+		supp_rates_ie = cfg80211_find_ie(WLAN_EID_EXT_SUPP_RATES,
+						 ies->data, ies->len);
+		if (supp_rates_ie) {
+			u8 ext_rates = supp_rates_ie[1];
+
+			if (ext_rates > (WILC_MAX_RATES_SUPPORTED - rates_len))
+				param->supp_rates[0] = WILC_MAX_RATES_SUPPORTED;
+			else
+				param->supp_rates[0] += ext_rates;
+
+			memcpy(&param->supp_rates[rates_len + 1],
+			       supp_rates_ie + 2,
+			       (param->supp_rates[0] - rates_len));
+		}
 	}
 
 	ht_ie = cfg80211_find_ie(WLAN_EID_HT_CAPABILITY, ies->data, ies->len);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
