Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A064223DAA
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB83781E46;
	Mon, 20 May 2019 16:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llvsneuyGDlF; Mon, 20 May 2019 16:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22EA481435;
	Mon, 20 May 2019 16:39:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4B1E1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B218587824
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKJ+IyDvFCf6 for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8002E87818
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=og0PnaNza6onIJhiXro6yK7zsL9PED1HTB/PMaWfCFk=;
 b=ikQNp1Fj0CsLAAUxS/aKJmSsLWqc/BuKAG38dEDISXQc/8ZdpFeXb2i97SbasS262WPGyYbnQe8TBt9DYECSEWljqQcc9EY0s5cqiXEaIXPQxdprspPo2MHLxyZFwMscOr3q8hAozhjq5BaJ3EIDWSt8kDZ+QQjic0Pp8kX4dM4=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3662.eurprd08.prod.outlook.com (20.177.61.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 16:39:00 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 16:39:00 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 0/7] staging: vt6656: clean-up error path on init
Thread-Topic: [PATCH 0/7] staging: vt6656: clean-up error path on init
Thread-Index: AQHVDyqGUbtNfkS200GqmtMAdXIo5Q==
Date: Mon, 20 May 2019 16:39:00 +0000
Message-ID: <20190520163844.1225-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR08CA0002.eurprd08.prod.outlook.com
 (2603:10a6:20b:b2::14) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4453e1a5-9621-41b2-aaa5-08d6dd41a925
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB36623642FBB39527EF5B173AB3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(316002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(6512007)(14444005)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NN+hMD3SiF4gYP0avxWbs7azNF0sH9XX6GrPHjAejSnFt5dhtTTabq87o7qyu8a7lylbyccP48TI0sTJeP86Li+AErE2qKMfRRG/Ui7YeLD7+3nv5PqKTxt1ZrWcWLqQaKVnCnXmpYVEZpT6C4KYpSj/UHYEvcpYlB7AeY+0TBw5K+WUEwlfhi3F5pyB+kO5LWBmWqUcExM6mWrJAaKlnQCkJ7iUbplbS4JiKZRL49CPASbDkyi0LiWmTcjgfvbFxR0N8vm2XIKvu+TaoRUQqQRtVHXyc7YhmXjxlIsT3AU4MjeltW8JIcpKff1/ncjm/mLz2vqdgdF3hlAm2AJZXFj23Ar0GPQziUe2kDgqTonmIDpFH5xZj6Mhhxd41AjfxNcHalpIgihg+2/NQJYsiy2hvO5NstLp0u9VIGPSbnY=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 4453e1a5-9621-41b2-aaa5-08d6dd41a925
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:00.2703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3662
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
Cc: Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukesh Ojha <mojha@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset aims to cleanup vt6656 driver's error path during the
initialization process.

During a call to vnt_start(), none of the functions called would return
a meaningful error code nor handle the one returned from the functions
they call themselves.

The first patch of the series fixes a potential NULL pointer dereferencing.
All the other patches update function's error management workflow and prototype
when needed.

More functions would need to be updated, but focusing on initialization
process force to change only a reasonable amount of code.

Thank you,
Quentin

Quentin Deslandes (7):
  staging: vt6656: fix potential NULL pointer dereference
  staging: vt6656: clean function's error path in usbpipe.c
  staging: vt6656: avoid discarding called function's return code
  staging: vt6656: clean error path for firmware management
  staging: vt6656: use meaningful error code during buffer allocation
  staging: vt6656: clean-up registers initialization error path
  staging: vt6656: manage error path during device initialization

 drivers/staging/vt6656/baseband.c | 130 +++++++++++------
 drivers/staging/vt6656/baseband.h |   8 +-
 drivers/staging/vt6656/card.c     |  20 ++-
 drivers/staging/vt6656/firmware.c |  91 ++++++------
 drivers/staging/vt6656/int.c      |   8 +-
 drivers/staging/vt6656/int.h      |   2 +-
 drivers/staging/vt6656/mac.c      |  19 ++-
 drivers/staging/vt6656/mac.h      |   6 +-
 drivers/staging/vt6656/main_usb.c | 230 ++++++++++++++++++------------
 drivers/staging/vt6656/rf.c       |  38 +++--
 drivers/staging/vt6656/rf.h       |   2 +-
 drivers/staging/vt6656/usbpipe.c  | 115 ++++++++-------
 drivers/staging/vt6656/usbpipe.h  |   4 +-
 13 files changed, 400 insertions(+), 273 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
