Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA505140801
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 11:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C05A688158;
	Fri, 17 Jan 2020 10:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnKHP2fn8dEe; Fri, 17 Jan 2020 10:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91C0F8806D;
	Fri, 17 Jan 2020 10:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 081C11BF2BB
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 10:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01A6186DE2
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 10:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N++esmvfCCXe for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 10:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B425D86DAE
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 10:31:28 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xGEV0in1bqOPoRSFb+lx6Pkc+iyD0l+UoozPbCo7UYmrHW8uY/3PX/K1ueVEOwR7OGFwXNg2lo
 MKX/wzSK/+AA87g6YW163xz7m0kNwsActy7BxeD51Kk1iiMDlF9D5dmayPWrd6FisfHiYXRk4g
 h3OWaXz4HRsoNrHrspJ2fMMXGFBOEy/eRTJlbRrAHczSGdVGecSn6FR49BOnYwC2jvbby2Mt9a
 tYW8tgk66zhh+ROXL1oqL3n2gzpeUEr8l/6FOlXDl1gKms3GKAYDdZX4KqDzlGLefFqjmFy/Y1
 izI=
X-IronPort-AV: E=Sophos;i="5.70,329,1574146800"; d="scan'208";a="61369406"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 03:31:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 03:31:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 17 Jan 2020 03:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XCaLBT483kcx4KCBDapeZUZTvbIzcSQCo91EfmauFXaTfzaKrKXLJbYdbINkrpotgZjR+KynH01wDUrwZGrsarrZr+SyL+BKbYrQTAe4tuNWrstXUl7UG7VgFJi1EsMdwIFoQod9EjOSO7MO5A9AF2l/zfkbS6uv5wqkESnFnVnE6VsQiVntRAAc+uJRep0sPxSSTq8+Gli1ZX5oO6gxU9mMm7dai7pvcrx4YHzM02Qkz+2Q9ml/aSHa697XSb3lJyAoKR5vTyA6pO6edcTVI7j3s5sQO99B3RjyOl8cKU+XXLqeNdcbUQScgZPvUoSwKdnkg/OGq8gqKlVY57SqFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/Iop/xxspo1QhZeajF9rHmSJmYOM+ZOsLimDiHKJu4=;
 b=Bvx0xcVYdVm90132HsgSZtKjIURyvCYmH9RaAm2+2xkPIyxiQ9jMbgDyqJe89r93UTWB/8kVyAYlOok0wB0XU1hi0UbbeRX1S9PsyHA7cKS4a6W3LJ84UZT7OL3i/CRsd8cmOTxMVBAG/+KwsYBFhFaksFE32hkILqM4sPi+awhV5e5r8u1kZ+R64Ed6J3U9cekF01RbV8muhS67O1qvEVosgdrTqF0ztym61T52skw1M/WDEoEZcI97fMjJ4yb4ypFhp7QuTE1Lcv2NWegP/IxsZkc2Gn8g9B8+nuDNCm88ZF7d2quGYhizdBAOMjRMb13rnAedwAfGxeuqH7ksKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/Iop/xxspo1QhZeajF9rHmSJmYOM+ZOsLimDiHKJu4=;
 b=KB7riHqCeOt3ue/WX3zt74fuyQXxgqCfvPk+VwAa8LR24fUT0UUP4nRyRAkeT3RHmxoM/CtmLH5v6SB72kOlCqRaZom6Z8K2/gLA4qrUFxOZiJuZraHUwnOGXJxidsYKTHcoqBCo1TdREQ4oLdBNBY42DcHBH+Uzj+DS//LTVVM=
Received: from DM6PR11MB3996.namprd11.prod.outlook.com (20.176.125.206) by
 DM6PR11MB2907.namprd11.prod.outlook.com (20.177.217.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 10:31:22 +0000
Received: from DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392]) by DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392%5]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 10:31:22 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 0/4] staging: wilc1000: handle few full driver review comments
Thread-Topic: [PATCH 0/4] staging: wilc1000: handle few full driver review
 comments
Thread-Index: AQHVzSFD4w3i7j1Q7USvtOou1UL1dA==
Date: Fri, 17 Jan 2020 10:31:22 +0000
Message-ID: <20200117160157.8706-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf1a7109-c5dd-40f9-54c9-08d79b3865b5
x-ms-traffictypediagnostic: DM6PR11MB2907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB29072ECC0061390755E9E4E3E3310@DM6PR11MB2907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(376002)(346002)(189003)(199004)(8936002)(6916009)(5660300002)(6486002)(81166006)(478600001)(26005)(76116006)(91956017)(8676002)(81156014)(66946007)(66476007)(66446008)(64756008)(66556008)(36756003)(4326008)(2906002)(86362001)(316002)(6506007)(2616005)(107886003)(71200400001)(1076003)(6512007)(186003)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2907;
 H:DM6PR11MB3996.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DaaGLE3maKDkQLuK346UVWhbIx2X3WrjMFey5GaLLtW8xW5a0Fm0K2upI5+4+EOOuF8gmcYWfQObMMZU/kU7fhKdKW/5cIWmOEpzyu5nEnhtOQcg4K4TIkdWdO1x6PRR3jOlE6ySHUr7ZIHfZYOlsBNkUgSFUnHHVDWAN6ZydtfHOJzKGbX0HTEbkhlovGYz5HT5PMpmt2n7cvHWV6SXYHA/WyT/p6JJGjicZZdft/jexOxW1G2Xh095diAa7yja6RoR+botD67BMxriYs1wq07FH409HwiDJ/gRFCCEsb6YIjjOVxjRskrGcAxp269kiTjBbDORLBDsrK7XNlRm4RZZIQVxdcu9nYmzM6YI1WB6PKpFTPunlUnN2DQVozWtEY8/IhdpQlw8E4W/9CFWOi7vAVApKSU9MSNHPXLFMHk77f0BhpLbub3DrOyEnYIE
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bf1a7109-c5dd-40f9-54c9-08d79b3865b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 10:31:22.2051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zjxq7Yczqt6nC8kFpUh5qRuPmi1/+wIrZfKNvkYWZ/8oP7R+3NCPUGM/9uekmzfDOf1GWwk+8nO8O6GnlA6KhHCcKVmmaGmpt2hnZXFzPrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2907
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

The patch series contains changes to address the below code review
comments -

 1/ Avoid use of infinite loops.
 2/ Use separate header file to keep firmware related 'struct'.
 3/ Remove unused code.

Ajay Singh (4):
  staging: wilc1000: remove use of infinite loop conditions
  staging: wilc1000: move firmware API struct's to separate header file
  staging: wilc1000: added 'wilc_' prefix for 'struct assoc_resp' name
  staging: wilc1000: remove unused code prior to throughput enhancement
    in SPI

 drivers/staging/wilc1000/fw.h       | 119 +++++++++++++++++++++++
 drivers/staging/wilc1000/hif.c      |  90 +----------------
 drivers/staging/wilc1000/hif.h      |  19 ----
 drivers/staging/wilc1000/netdev.c   |   7 +-
 drivers/staging/wilc1000/netdev.h   |   1 -
 drivers/staging/wilc1000/spi.c      | 143 +--------------------------
 drivers/staging/wilc1000/wlan.c     |  79 ++++++---------
 drivers/staging/wilc1000/wlan_cfg.c | 144 ++++++++++------------------
 drivers/staging/wilc1000/wlan_if.h  |   1 +
 9 files changed, 209 insertions(+), 394 deletions(-)
 create mode 100644 drivers/staging/wilc1000/fw.h

-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
