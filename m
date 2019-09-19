Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B98DB762B
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 11:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36875860C8;
	Thu, 19 Sep 2019 09:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJWVBXYgChZI; Thu, 19 Sep 2019 09:23:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8958F8605E;
	Thu, 19 Sep 2019 09:23:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2182F1BF27E
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E3C62040A
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-kCkNTVqK-b for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 09:23:38 +0000 (UTC)
X-Greylist: delayed 00:50:26 by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710139.outbound.protection.outlook.com [40.107.71.139])
 by silver.osuosl.org (Postfix) with ESMTPS id ED7D820130
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 09:23:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hEBIwwxgTiwU6HuSCRrgRY/mnICp1eWDrzw7xpodAXe6/HDMo6UnL0npfpAZ8ofoVMNzn+IXiFG8RCHc5xz4X8FlEimiwU1oLlwAEH9HZMdJBnoZuiyQTL1ntTO5xPboRCsr05aNpSPIdAMrSXbAwEwRhajK6k4fUxcmcXCtdtfSVQrDG6QfN56rdtejPGWpgAdsF+LpQAqHi9WkAoEEpPhscfZgZJGacVaSqKLlNRc8Trw440tbcpB3gn3AM6PE+Htp9O73RhNnc4HIpyNKH7+PrNZ+2dPWVjzYc3lvjcxKy9M+F9EXM8v2OQEfMRDkBYFTz1C+0cTy0IHHrBymtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvpG01b5uUUfNexLvTcA7V96skH48+f6K2cjRXoDswY=;
 b=nOW+7U/m7b7D0tiDEa5nzKC1drNGbkR/AvdStSIQ1DBDSD3u9PCbqv6ZsD7SvCq9pYeo3wHx+k7Fj0BQAB/pzbQRwKaLXNFY9UZMzgRg0mdAurpuATlW6WVYOkkR4y75dDT29w6S7GNj40xrb3tWCr07Drk7/Cs7FAwYgRCNgil/wBcpkvc06/r20XuacQVpbiTSJXLthFzMy4VufTuZNeOK8RSzWSgtW2GzgT/UZgBRFo4YOROlyPLXybEEcMiIy6YxBc36lxAjkV0cnzMcHcxXK0/xdEAJ1ybeXe1X/yXm8aF99RtCvsf7Lfjuz68Ske9nSNrlrOZ3fUCEd9+dUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvpG01b5uUUfNexLvTcA7V96skH48+f6K2cjRXoDswY=;
 b=vBBJr4NrDiPQZ3/dXeTIoirc04ILlXtQ0uIDUdR8uhIeeV8sUo+GVQLINNo2vE3b27TFSEEmEc9HUlaS3rjrm2THtwcCyR7BJfyXbvrOwPjjtLNfVJSXHCV/4Xus4cH3ilgpV0XCTmrN3tWjD07VBnernTy158R3hOUPhzipNWs=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6207.namprd04.prod.outlook.com (20.178.247.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Thu, 19 Sep 2019 06:51:03 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 06:51:03 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH v1 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v1 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVbraamL8O6Yx7zE+wmPglROjXrw==
Date: Thu, 19 Sep 2019 06:51:03 +0000
Message-ID: <cover.1568858880.git.xji@analogixsemi.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0035.apcprd03.prod.outlook.com
 (2603:1096:203:2f::23) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81cd9dfe-7e5b-469d-8254-08d73ccdbcb9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB6207; 
x-ms-traffictypediagnostic: MN2PR04MB6207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6207FDB95C7DE1B20E0F5F2DC7890@MN2PR04MB6207.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(346002)(396003)(39850400004)(136003)(199004)(53754006)(189003)(8936002)(6436002)(71200400001)(3846002)(4744005)(54906003)(107886003)(26005)(81156014)(102836004)(6506007)(8676002)(6512007)(7736002)(386003)(81166006)(2501003)(52116002)(99286004)(71190400001)(6116002)(186003)(486006)(66446008)(6486002)(36756003)(4326008)(2616005)(316002)(64756008)(66476007)(305945005)(2906002)(476003)(86362001)(14444005)(66946007)(478600001)(66556008)(256004)(25786009)(66066001)(14454004)(5660300002)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6207;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v09CYL4OLIxyOUUxm5zN+LS7SKogoo4clle4mbuWnalrbgla8CeX3zf+oF0LIFDss1dWov8PuOM1gdfIePDn3dwhRnpuYTbAKPWLqkbTkNmRrKjhKzLP7hQ6sCfi1mtPfqGCRu3iEJzNgy8nBEd68QbUJhSy7h9MnyfFKFt7HKvqxUwgFfjWDgc+V7OFXeeSMWThsF/U0l++GWL4SmyfE5HaQ+RUn2YZ+jdG98zDWy3oPs+OZIqkksHK0Pwwdm0RX5gAHa5hroLT23wzNlDOracfHAL4EbRRUHvinpW+g/s4iSk63oJVfI45OGidEsV3NmYgm8qotosLvI150qHU+5tWP58aE2Zmo0BTILmK868ohSa6MdLRXPPwLCDBhfIHKsb7nzRZNmHkfEX4npupWOf6r5lpbu+EqxyJ/dyg6F8=
Content-ID: <CD96B94B9246F6488F14E64BFECE21FE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81cd9dfe-7e5b-469d-8254-08d73ccdbcb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 06:51:03.0669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oW9R/EWnC4n8cIUNf5w1zK9csqTqOyJyPKn0KGQVWQVr2dt+/30nVcwZrCKeImuadpAibaC9y7bcKoDdoX8Mkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6207
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

The following series add initial support for the Slimport ANX7625 transmitter, a
ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.

This is the first version upload, any mistakes, please let me know, I will fix
it in the next series.

Thanks,
Xin


Xin Ji (2):
  dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter binding
  drm/bridge: anx7625: Add anx7625 MIPI to DP bridge driver

 .../devicetree/bindings/display/bridge/anx7625.txt |   42 +
 drivers/gpu/drm/bridge/Makefile                    |    2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 2086 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  397 ++++
 6 files changed, 2533 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.txt
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
