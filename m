Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AF27E3CA
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 22:15:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E11C38461B;
	Thu,  1 Aug 2019 20:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lw75PC7P+g7M; Thu,  1 Aug 2019 20:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5862B8471C;
	Thu,  1 Aug 2019 20:15:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 246751BF3D6
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 20:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2174B86362
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 20:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rN4cWq9tbt4V for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 20:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6514786360
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 20:15:12 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: vewUfr0g6SBvMxW3Cvan7urgWeoLX1oIL/6Lm3Y3yQJ0KQP2RSGK7oMsgJdrWTIX7kE/D14rfY
 JkkWjItn1kAXYwvHzh5vKADDJ6AayvG8t9iWF/T7DI39vqkC/5HXBTkRKGqaG1XntS2xLwGYpn
 EG/TarlsrvsoEU3Syffxeh3niAywFIDMx14gubOFsvDXpxlTo0lPuOkTKDmwzuMmTZWLud+OVC
 9hS7NRrlmhoOKwQhcxLAzS3y/CgJJL5FCrNZo8iyQg9OriA0V2zBcIg9zK+Ka1cVx/de0qqrob
 E34=
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="42103501"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Aug 2019 13:15:12 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 13:15:11 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 13:15:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfwXZxv+PMkcZbf0PESF5r4Qq4dEpwwPm786NeColM/qf2mXELY1CJ4b10AInzY6pWcfZbtvyqxNydURWMWFapwdpyNooS2TGttgNdvuVmGRdUYptD/nKZu+3O+OKtmHl9Q3c8uo9GXDtwuQQptduijsbfIRoEHtD71RBwoMF1hEUaJkZFVFCvWk6N6l5KcKlqKw627B7W9AtqZYrE+GToAIsK0bs+HgXdoTkTmL2C40Zmuiup+H4W66/ArRxOSS4EJmkhq1jw2iAgzMkTZYJFsQHa3dVvXIDJ0Rw9BjXtAt0Y/fXtJ5o/6ATNishjEOSybDqH7L8rYGS8lm3EdehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LjQgZq+RFFueaFHcBmUcYCUPSStRpEWd56T+Kc17f0A=;
 b=EqWvvlfg1reE0HvM5EfVCNn7kx20jUp22J7Td7B/s4YuNC6Mi+4K64BSoLmz8gPczx2+qEEu97xPjUJ7RVf4XaFxFEWa01Wr1/LGcPp5C+HOWknjlxJl6dpYmbO8tVwP4d0jG+nDLMDK7TCW/yJciUN97OoBOxLyHwLEDMyYJ3ru0wZm5HVOKlYCExQ1NHFi15HFsAnLSUbdmlBq/2ooYocjSFZN6mA8xBGEXBHr1WxKUWUMgW9cPFEp3dAjlqLkthN/i4iCKwWmFHtsivJVgjLG9U7KYwcyYckrQ0R2cLMf2UUG7LyHzusiD/GAPbP0IaXoL1JFgsi9PSqztm7K9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LjQgZq+RFFueaFHcBmUcYCUPSStRpEWd56T+Kc17f0A=;
 b=3q3Y5y/lP6orMEVb6dVmGC/TsWJk1LloEfk2o1BKU7XRWC6izyhTvo6oqlwVSQ5aQ4vi8nQn8dLFDicwHQFNAGOSXYNm2ZtEjhkWcyO71bPSX6AnScCApLun0dZ4+J9NC/+D/8cDBnzUYq/0McEI2xJ15EVQBo7TLN+0JIQa+1o=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1486.namprd11.prod.outlook.com (10.172.55.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Thu, 1 Aug 2019 20:15:10 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336%2]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 20:15:10 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 0/2] staging: wilc1000: merge drv_handle and operation_mode
 wids
Thread-Topic: [PATCH v2 0/2] staging: wilc1000: merge drv_handle and
 operation_mode wids
Thread-Index: AQHVSKXRR7Etgb7nW0qPDfASn1blyw==
Date: Thu, 1 Aug 2019 20:15:10 +0000
Message-ID: <20190801200909.12605-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: BYAPR06CA0038.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::15) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17956522-9edc-402a-eee0-08d716bcf401
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1486; 
x-ms-traffictypediagnostic: MWHPR11MB1486:
x-microsoft-antispam-prvs: <MWHPR11MB1486DF0343CD15E480CAE2D28DDE0@MWHPR11MB1486.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(346002)(136003)(39860400002)(376002)(189003)(199004)(8936002)(81166006)(8676002)(50226002)(54906003)(25786009)(6486002)(107886003)(6436002)(486006)(256004)(6916009)(476003)(68736007)(4326008)(66446008)(66476007)(102836004)(64756008)(2616005)(5640700003)(52116002)(66946007)(2501003)(14454004)(386003)(66556008)(81156014)(86362001)(66066001)(2351001)(99286004)(6506007)(7736002)(4744005)(305945005)(36756003)(316002)(5660300002)(6116002)(3846002)(478600001)(6512007)(26005)(71190400001)(186003)(1076003)(2906002)(71200400001)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1486;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LCbB80BEALwt9muc34yZpXIEIbnaqVkzCX0Y7JrFX957/OLJFn96xudFpVuWqGYsllAMUnvhdNpzaEZrT+1ava8onioB79htfbZsjXScc35RWYaKlmlM14pYl4PALBbGbTMHy+eRBcsrL1X6809iuWrrQd13W/GRBpxIasz9GcSRw6hXaRvR4untOw801aW6Di9kh+n1pXBJGpEtBi4R4ZKYpeGoKTYCBfu2xOlxJAo6oWw4QgbZNGf3sXfa6IRM7CLLoQZ6BbfL4ELlV0SfoOpzGLJXMxUPc3H+ncH/lHmrrjs3NG1jVKqwnVsk4L30KlSamfe0N8VE2N1lz+07YemHAaQ+xfO91GB0JW6We3KZ5VckY50jyixFl8+hFmhW1iafzv5OpJo/DjWMOs3oOlHR7ogCGOG1QkNmgOFQNbM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 17956522-9edc-402a-eee0-08d716bcf401
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:15:10.2763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adham.abozaeid@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1486
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

From: Adham Abozaeid <adham.abozaeid@microchip.com>

This patch series merges drv_handle and operation_mode wids since they
provide duplicate information to WILC.
Also it removes function wilc_resolve_disconnect_aberration that's not
referenced

Changes since v1:
- Removed missed reference for wilc_set_wfi_drv_handler from wilc_hif.c
- Fixed check_patch errors
- Clubbed both patches in patch series

Adham Abozaeid (2):
  staging: wilc1000: merge drv_handle and operation_mode wids
  staging: wilc1000: remove unused function

 drivers/staging/wilc1000/wilc_hif.c           | 41 ++-----------------
 drivers/staging/wilc1000/wilc_hif.h           |  6 +--
 drivers/staging/wilc1000/wilc_netdev.c        |  6 +--
 .../staging/wilc1000/wilc_wfi_cfgoperations.c | 26 ++++++------
 drivers/staging/wilc1000/wilc_wlan_if.h       |  3 +-
 5 files changed, 21 insertions(+), 61 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
