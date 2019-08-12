Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F129897EE
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 09:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA91587B21;
	Mon, 12 Aug 2019 07:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8Woso9oQsRb; Mon, 12 Aug 2019 07:37:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39A40875C7;
	Mon, 12 Aug 2019 07:37:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4BD31BF359
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 07:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7AAA875C7
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 07:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d6AK+KQuoeo9 for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 07:37:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-oln040092064024.outbound.protection.outlook.com [40.92.64.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 657FF875C2
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 07:37:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7z5dfCYQU7j1skmgl/LX+t/lKum7ggeYI74+oy+vppKJMP4upW5OKA4UWTWHDKto7PwPtJZoruMnqJq/gYuYosRGiOOcmnlTa71CocmqNjMY9Z27v1nxIMeW5wQ3eQ/A449OgG7L+e70u1rwqpyqJG/7Q+wqoGD7A/O1EVZeaJlqwDuR/9xj0sJlps86cDHbz4CVeYnMlkfVz28OwRO1LOR8+dcc1W2iF/VuDXQJeTkIGJPnAt6NtJYaBgDggX2M1FSHYtlA/Uhb9vD85uTP7sojw8vz3jy5u87mUilC/vTwe2ePXpGes/z7Kiyi+TGO2YcDQ67So4CB3a0nOA7Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PO1SlIy5+lhv9CzqrpNs5jaFl7DFGGDbPlMYFlGBJkw=;
 b=daU4NFwiiEJt7Wr+4N0C/etYwhuA1ERZTCvQ0A+6YWkDGR0XORBqLxm0ALhl9TZ4hQ3K1WEc+JU4Yt3CKFLktiycaGV5/oBNtRaTYJac6mwJzEoSNEFrx/ugr8JDFz4yooLY/vfFMNi6vTwHje7Y1PGzN/Qr0fX29GwrpZF/mC+m/nj9afd9eOIxABMVHcHFN+xqad6axrxz1vxiIw6CaBVgLsAfhd6IMGmNe69kKAur6wYbQgmfPNfiPqDj/JIzzrJ4+XgPorDWRSj0x15QtjZt0FzXi2lsi13KXv0V9m24fmeTL1tjEbCY+LTZaGtJKwdZBNfwirwadVRUjRvUPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PO1SlIy5+lhv9CzqrpNs5jaFl7DFGGDbPlMYFlGBJkw=;
 b=c+GfiQCXlAt6goF0bjtm5C7AB9J9ANkP3sugIMy7WxaqEIWpf5iuOs/jj+upEjUZoTY9Ubj1s2at5b3kgAct45bs9v1DrkgZca0op9RXbp9ZkiEJqX2UBqG4i+Jp6WPsTX36iOcKayn83QTbI7PxD53g7Pmg3DKEwZpIAEDBRRjrpAhWAmNKgTskRipOxZFMEd7FnJiQtoYf+7BlArg8AqTYlEKOu4wPLMDdBjGNb9G1gtlhwflkAG6s6D09jg7FiHUhJrBrpkBQDZ4NHS9VWQH2QwWayjwOBEwfhTNKERFCwVP6ZKl7kMH6vDhE71dbs3g/gATGO4vfxXeLCcXKDg==
Received: from HE1EUR01FT042.eop-EUR01.prod.protection.outlook.com
 (10.152.0.54) by HE1EUR01HT047.eop-EUR01.prod.protection.outlook.com
 (10.152.1.43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15; Mon, 12 Aug
 2019 07:37:00 +0000
Received: from DB7PR08MB3801.eurprd08.prod.outlook.com (10.152.0.59) by
 HE1EUR01FT042.mail.protection.outlook.com (10.152.0.228) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2157.15 via Frontend Transport; Mon, 12 Aug 2019 07:37:00 +0000
Received: from DB7PR08MB3801.eurprd08.prod.outlook.com
 ([fe80::b8b5:365b:15a4:6e83]) by DB7PR08MB3801.eurprd08.prod.outlook.com
 ([fe80::b8b5:365b:15a4:6e83%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 07:37:00 +0000
From: David Binderman <dcb314@hotmail.com>
To: "abbotti@mev.co.uk" <abbotti@mev.co.uk>, "hsweeten@visionengravers.com"
 <hsweeten@visionengravers.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: linux-5.3-rc4/drivers/staging/comedi/drivers/dt3000.c:373: (error)
 Signed integer overflow for expression 'divider*base'
Thread-Topic: linux-5.3-rc4/drivers/staging/comedi/drivers/dt3000.c:373:
 (error) Signed integer overflow for expression 'divider*base'
Thread-Index: AQHVUOAls4UOgTcrz0GoNXXEGVUiLA==
Date: Mon, 12 Aug 2019 07:37:00 +0000
Message-ID: <DB7PR08MB3801C29431C1A737AE60F0C99CD30@DB7PR08MB3801.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:853E928B15DC3B49D5673ED35173AFC02192440BB93F7C845DDF964F61421666;
 UpperCasedChecksum:0659F5DB919996C851E38A856490AC8F3007239FFD5D2B9DA302B10231B4E33F;
 SizeAsReceived:7000; Count:41
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1Vi09pCwz5csJnKq8wbFnfdvoy6sps49]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT047; 
x-ms-traffictypediagnostic: HE1EUR01HT047:
x-microsoft-antispam-message-info: m1KULnO2MB6OQHq8r8n4UW9pjh95O0ntxftNcJkWsg6+Yv5c1UKwwqmv+c0SvHI9rDJ4Na0WxKo0BJ/ciDKE7sY0TKFvbMzPqkpyhsm+hirSO5ahbqgtEMaGb9t6WtpQGVjT+8gii/oztRVY0Y0GIf2++P9OYJ2Fnp8ihHJ5QLKABQ5xMQuY/o5A4Xyi+fN/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f281b4-9627-4293-fb36-08d71ef7dc9d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 07:37:00.1691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT047
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

Hello there,

Source code is

    prescale = 15;
    base = timer_base * (1 << prescale);
    divider = 65535;
    *nanosec = divider * base;

timer_base seems to be 500 or 100. 
nanosec is a pointer to int, so it can only hold about 2,000,000,000 nanoseconds, or about 2 seconds.

Suggest rework code to use longs. 

Regards

David Binderman


time-_Base seems to be 50 or 100.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
