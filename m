Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD321EFA10
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 10:51:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C20FA220DF;
	Tue,  5 Nov 2019 09:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMtDzXekTG8s; Tue,  5 Nov 2019 09:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C5C062046E;
	Tue,  5 Nov 2019 09:51:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6561BF2CC
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 09:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89BA72045F
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 09:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRsbd9Be3vB5 for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 09:51:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E99E20449
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 09:51:24 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: V/G+ZhPsCLma/evJjFMcwJUctx7S5mljyEBA+k9B1li4gafd2qUB5kQwrH03LpIw6LsU5vRyUg
 h7IRH9rjJCjc9Q0de0BxqW8ZSZJLsjqBwTFbiHeeu9A78srD7PJCN5ZfxeaAzjQC7jQDyUSVu5
 qWF7VRWHqhHAXtuNowLBHQPd695MEGsGBFnteYuvWgtaiDFJZEekwO+jtucekvjWdGlNzIY+5g
 xg7qGShCSVkuvW1ZFKQ0Cl7G9KXirxCcLCmL+AyvxRMVdhEZEnlm53UldtuwqubzHRHuoE4fWU
 V4o=
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; d="scan'208";a="54166657"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Nov 2019 02:51:23 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Nov 2019 02:51:22 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 5 Nov 2019 02:51:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxesZhMEiO2s8wAskAjdlx59LPu4CaO7PlVXeO0gwoTXrF4le1xxnfdlefdLGxMAYnxCCWsWMb1CQtOHCAThIQeqNEQTQ9ZmdHD0QHMS5iP6JKgCtiz9eBJGJn7skTM9fPo1buHNtiWUcZmWksWI1hS85k8iBsTMCLNaSf1loApLBMcvh0jZCRhEZ8EfHig+nKvs4N1Ph9IRxQ8p61Fz++auYbxvVIwG0z1HqfWh3+gs4ZdTyC7PprYSbBkDxcs7iTe5yHw/YM9Ua399sFlGXN/1zMWWNwhhXpj6XTkY9+0lA4V4VvnsYxB/6ZbBa8z7rws8IXcdcytMs2oMoJJ4ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHvOxmPVodEN3n2vTS2M7Ddw+Mg6FM+AOYCGqejVIF4=;
 b=X1yXifz/9KyFtphZSzJbRGz5+fEjseHjeWqTsOvJxBRj10sssJ2UOUk6UKkZe/JkbjVzS09Bguq1nXd8vK+owlExDAxkWWxOEHjhbqBo0lCVHboNPshhpRkNtHk/G0VeEyeaJCUpb2Ui57TStLD00JQlXGqfFs7yFSytW8dSm1JEnLRxcICgxKvsKVmcjc0dTyzIJDTGyCtAGFgngsTPjyg0jOsGWz95mEGISAzRNJbTh2SqliTRl15y8FC0z07tfN8Oa93zwQyzbCeCF8pXhCp1qETXogWI2I9h28+LtCNxUfWc779h2+mn8yKZGjKMrW1KQLRCfNPGD9vHYwNHzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHvOxmPVodEN3n2vTS2M7Ddw+Mg6FM+AOYCGqejVIF4=;
 b=GhBPWxNmUoZamfx3Kx81yAub9lgD4B2a4DvHXU0UIan6qYaQyPryC/lsV6pWPwR893NlwgOMzxN44WHZouPXY/biRVLD9v1vBYkruy5v8KNI/tnctTntaW5eLDDu5H0b+g3r9sjaS0lqcxVqoKBgKez0JVNwH7RHfQMuv6sjx+I=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1764.namprd11.prod.outlook.com (10.175.98.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 09:51:20 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5994:7522:979f:5e29]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5994:7522:979f:5e29%7]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 09:51:19 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 0/6] staging: wilc1000: changes to rename files and few other
 review comments
Thread-Topic: [PATCH 0/6] staging: wilc1000: changes to rename files and few
 other review comments
Thread-Index: AQHVk76SMT4Lm/efa02u58/fniJaZA==
Date: Tue, 5 Nov 2019 09:51:19 +0000
Message-ID: <20191105095058.24223-1-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: d6d90b06-8b92-4255-3e94-08d761d5b4f9
x-ms-traffictypediagnostic: BN6PR11MB1764:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB17640E73C21CC0F85AF974B3E37E0@BN6PR11MB1764.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(346002)(396003)(136003)(199004)(189003)(316002)(66066001)(26005)(386003)(5660300002)(6506007)(81156014)(81166006)(8936002)(1076003)(476003)(50226002)(86362001)(99286004)(52116002)(305945005)(2501003)(8676002)(2616005)(7736002)(6916009)(14454004)(25786009)(486006)(102836004)(186003)(2906002)(6512007)(6306002)(36756003)(71200400001)(3846002)(6116002)(478600001)(66946007)(71190400001)(66476007)(256004)(64756008)(66556008)(966005)(54906003)(66446008)(6436002)(6486002)(2351001)(5640700003)(107886003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1764;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TLktvbkkklj6iNxFCQ+Oe2Sh4+M6ZZeujcvFDnb/u5Cqh64/kjH7032DVPjIwq50B9hwa0Glqkoai5ZkT6+5MZqWf1ulnI6jSUDi9aNJkkAT6O5z52Q9W+wZE4oaPOq6ZJ3BtWYsetdq+gMs5khP0Cz5TcWABmFp+OFNBd4aGXiIHsv6eLlF0//VxneKg2ZTBm8NPXqkKyBgDNIpGBrCYYOnjSPO0J60e9CuRkW/ro0uYNqNuaP1cKdlBGUchd/4c3+K8oznlloYn4GYiKL/H5LQYMhrjB3rVJq1qJHoNcWIVb6vsba44LWwfooCFl0gNMKsi6USoJE1lK+yQMyJhJJosFbVfpxwHCGWedsorBcMm4g1vgLRGqozpHi6l/3pKbFxPnQA7AEzdT241WCrXT896MwXUXBUxwT59XrRtKOLknWTFkmf7JHuBoZenTYHxr8sdYIbLj/oBM0d9NZwgMTrYQtqOwb7lQrqq3iVtkE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d6d90b06-8b92-4255-3e94-08d761d5b4f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 09:51:19.6881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: irMCb6w6ONceSrXcbvbXKFVYueCxRjtSumbyznEDkvHaiypBSvNGxdn+RvHiuZH3YWeGUxBxyto8AaTr/iV/Sv2AdwgIIs1EaDtEmC8miMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1764
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

This patch series contains changes to address some of the review
comments received during full driver review [1]. Mainly the changes
are related to files rename and comments formatting.

1. https://www.spinics.net/lists/linux-wireless/msg191489.html

Ajay Singh (6):
  staging: wilc1000: avoid 'bool' datatype in struct sent to firmware
  staging: wilc1000: remove 'wilc_' prefix from filenames
  staging: wilc1000: added 'WILC_' prefix in header guard macro
  staging: wilc1000: avoid use of C++ style comments
  staging: wilc1000: added proper spacing for comments
  staging: wilc1000: use defines for msg types received from firmware

 drivers/staging/wilc1000/Makefile             |  8 ++---
 .../{wilc_wfi_cfgoperations.c => cfg80211.c}  |  2 +-
 .../{wilc_wfi_cfgoperations.h => cfg80211.h}  |  6 ++--
 .../staging/wilc1000/{wilc_hif.c => hif.c}    | 10 ++++---
 .../staging/wilc1000/{wilc_hif.h => hif.h}    |  6 ++--
 .../staging/wilc1000/{wilc_mon.c => mon.c}    |  4 +--
 .../wilc1000/{wilc_netdev.c => netdev.c}      |  4 +--
 .../{wilc_wfi_netdevice.h => netdev.h}        | 29 +++++++++++-------
 .../staging/wilc1000/{wilc_sdio.c => sdio.c}  |  4 +--
 .../staging/wilc1000/{wilc_spi.c => spi.c}    |  4 +--
 .../staging/wilc1000/{wilc_wlan.c => wlan.c}  |  4 +--
 .../staging/wilc1000/{wilc_wlan.h => wlan.h}  |  2 +-
 .../wilc1000/{wilc_wlan_cfg.c => wlan_cfg.c}  | 30 +++++++++----------
 .../wilc1000/{wilc_wlan_cfg.h => wlan_cfg.h}  |  0
 .../wilc1000/{wilc_wlan_if.h => wlan_if.h}    |  8 ++---
 15 files changed, 65 insertions(+), 56 deletions(-)
 rename drivers/staging/wilc1000/{wilc_wfi_cfgoperations.c => cfg80211.c} (99%)
 rename drivers/staging/wilc1000/{wilc_wfi_cfgoperations.h => cfg80211.h} (92%)
 rename drivers/staging/wilc1000/{wilc_hif.c => hif.c} (99%)
 rename drivers/staging/wilc1000/{wilc_hif.h => hif.h} (99%)
 rename drivers/staging/wilc1000/{wilc_mon.c => mon.c} (98%)
 rename drivers/staging/wilc1000/{wilc_netdev.c => netdev.c} (99%)
 rename drivers/staging/wilc1000/{wilc_wfi_netdevice.h => netdev.h} (95%)
 rename drivers/staging/wilc1000/{wilc_sdio.c => sdio.c} (99%)
 rename drivers/staging/wilc1000/{wilc_spi.c => spi.c} (99%)
 rename drivers/staging/wilc1000/{wilc_wlan.c => wlan.c} (99%)
 rename drivers/staging/wilc1000/{wilc_wlan.h => wlan.h} (99%)
 rename drivers/staging/wilc1000/{wilc_wlan_cfg.c => wlan_cfg.c} (94%)
 rename drivers/staging/wilc1000/{wilc_wlan_cfg.h => wlan_cfg.h} (100%)
 rename drivers/staging/wilc1000/{wilc_wlan_if.h => wlan_if.h} (99%)

-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
