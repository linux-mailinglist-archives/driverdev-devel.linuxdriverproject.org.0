Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6849956986
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10E2286084;
	Wed, 26 Jun 2019 12:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bTBIgYg67QR; Wed, 26 Jun 2019 12:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD94F85FE4;
	Wed, 26 Jun 2019 12:41:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFD661BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC71C86773
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KRpCjY7yTs-1 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A5D3683883
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:41:49 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="39093108"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:40:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:40:31 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:40:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6TEyjXAe11M6QTznQZcw9zAHOP5ycGBCD+4DtzCpkw=;
 b=R4slYfyY88FABGzG1x5qDn0PSeuWu179LJXGF7aBp+pQOM88zbNYzc91VBCjsS5j+U4IlGmC6KO/GL8092Mw7rwCLXAEGPASVz2XKjXjHsePiob7WLSac9La7lutremardbwJxiqaS/4vLtAcgSuRPOsvMkiA8j4C7q22fnwdnM=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3987.namprd11.prod.outlook.com (10.255.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:40:31 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:40:31 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 0/8] staging: wilc1000: dynamically add/delete interfaces &
 cleanup fixes
Thread-Topic: [PATCH 0/8] staging: wilc1000: dynamically add/delete interfaces
 & cleanup fixes
Thread-Index: AQHVLBxXkxhpZkFBX0af1rGv2CzVXg==
Date: Wed, 26 Jun 2019 12:40:31 +0000
Message-ID: <1561552810-8933-1-git-send-email-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR0101CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::28) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [183.82.16.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f0113a8-ed83-4f01-69d1-08d6fa337960
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3987; 
x-ms-traffictypediagnostic: BN6PR11MB3987:
x-microsoft-antispam-prvs: <BN6PR11MB3987F280A9CABB89949A6815E3E20@BN6PR11MB3987.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(346002)(39860400002)(366004)(376002)(136003)(396003)(189003)(199004)(3846002)(305945005)(476003)(2616005)(5660300002)(99286004)(54906003)(25786009)(8676002)(486006)(81156014)(81166006)(8936002)(66066001)(7736002)(66476007)(66556008)(64756008)(66446008)(6116002)(66946007)(6486002)(50226002)(107886003)(68736007)(52116002)(73956011)(14444005)(256004)(4326008)(6436002)(316002)(478600001)(386003)(72206003)(53936002)(2906002)(102836004)(6512007)(2501003)(6916009)(86362001)(186003)(6506007)(36756003)(71190400001)(78486014)(14454004)(26005)(2351001)(71200400001)(5640700003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3987;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +34mowvPaiZUdIzOTM4sIIfL1TGeTEbaAs9TRSJHCvPBTrLvmGnZdGz5IrNAcEaGhqQqkDrJu/KP7vazicoMCRvIITl7p0tKSRNcaYCNWCp7x8w33pFkYrE0PbS6WdF/DQeACpIEfzAXh2QkXPsKW1IXAhn7lfXPBwJ8mTDsn0Nfuq85+JkLrtAhM16M+OGBv5Wn5NpCHC6N7YijLwyeuHwQW56YoR92O1tS8DMpq3+J8EpePwxQdYBZWkjsosp0pTNJR++ARrUJSh3yYN4zUlcFSC40bLht0/dDi7iI4L2M8KoaGJzPN+7guBFacf7awDf9RymKz3qRMyD+w2j7AF+EycYOmDe6iNpolvyOhNVVqy3vDr9aFz9deNnS8owlLj/R0oXFi3nLz9XP6wdGfIkIadjqDgf+qY9c0uxk4Kc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f0113a8-ed83-4f01-69d1-08d6fa337960
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:40:31.0259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajay.kathat@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3987
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

This patch series mainly contains the changes to support the
add/delete of wlan0/p2p0 network interfaces dynamically. The driver
will be loaded with a single default interface and later new interfaces
can be added or removed.
Also included few cleanup patches in this series.

Ajay Singh (8):
  staging: wilc1000: handle p2p operations in caller context
  staging: wilc1000: fix error path cleanup in wilc_wlan_initialize()
  staging: wilc1000: added support to dynamically add/remove interfaces
  staging: wilc1000: remove use of driver_handler_id & ifc_id
  staging: wilc1000: remove unnecessary loop to traverse vif interfaces
  staging: wilc1000: remove use of 'src_addr' element in 'wilc_vif'
    struct
  staging: wilc1000: remove extra argument passing to
    wilc_send_config_pkt()
  staging: wilc1000: rename 'host_interface' source and header

 drivers/staging/wilc1000/Makefile                  |   2 +-
 .../wilc1000/{host_interface.c => wilc_hif.c}      | 170 +++----
 .../wilc1000/{host_interface.h => wilc_hif.h}      |   1 -
 drivers/staging/wilc1000/wilc_mon.c                |   9 +-
 drivers/staging/wilc1000/wilc_netdev.c             | 293 ++++-------
 drivers/staging/wilc1000/wilc_sdio.c               |   7 +-
 drivers/staging/wilc1000/wilc_spi.c                |   3 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c  | 536 +++++++++++++--------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h  |  13 +-
 drivers/staging/wilc1000/wilc_wfi_netdevice.h      |  24 +-
 drivers/staging/wilc1000/wilc_wlan.c               |  23 +-
 drivers/staging/wilc1000/wilc_wlan.h               |   8 +-
 12 files changed, 560 insertions(+), 529 deletions(-)
 rename drivers/staging/wilc1000/{host_interface.c => wilc_hif.c} (91%)
 rename drivers/staging/wilc1000/{host_interface.h => wilc_hif.h} (99%)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
