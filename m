Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B01371ACF33
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Apr 2020 19:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F8AC875B1;
	Thu, 16 Apr 2020 17:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xg4SFXc-zCpp; Thu, 16 Apr 2020 17:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98B1286E59;
	Thu, 16 Apr 2020 17:58:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3FB81BF33B
 for <devel@linuxdriverproject.org>; Thu, 16 Apr 2020 17:58:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F00BC85566
 for <devel@linuxdriverproject.org>; Thu, 16 Apr 2020 17:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZRrZOqOpiKyy for <devel@linuxdriverproject.org>;
 Thu, 16 Apr 2020 17:58:23 +0000 (UTC)
X-Greylist: delayed 01:32:14 by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2078.outbound.protection.outlook.com [40.107.20.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2CF5585540
 for <devel@driverdev.osuosl.org>; Thu, 16 Apr 2020 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3BdR1s27uZzmOVlrwwjDDfw72acBDdM/TH3EcGetR4=;
 b=sG4vSqV+5BmngQU1CAW1eQUyt3KJ4XIhW8CQ0Vgb1UuYyVD7D8Jv5EWYh6exGWCeaXzWOa+ymype1U3+jnsNpyj7yFDxD8xWd/Hpb3wszCJBSR9MP5jFLbRZCkzMEQ1yd5DwqNM3Bcaeiq/MRYeOYrJsLDUvb6wSiRJql+6Ck9s=
Received: from DB6PR0501CA0041.eurprd05.prod.outlook.com (2603:10a6:4:67::27)
 by DB8PR08MB5452.eurprd08.prod.outlook.com (2603:10a6:10:111::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Thu, 16 Apr
 2020 16:26:06 +0000
Received: from DB5EUR03FT064.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:67:cafe::b9) by DB6PR0501CA0041.outlook.office365.com
 (2603:10a6:4:67::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27 via Frontend
 Transport; Thu, 16 Apr 2020 16:26:06 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; driverdev.osuosl.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;driverdev.osuosl.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT064.mail.protection.outlook.com (10.152.21.199) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Thu, 16 Apr 2020 16:26:06 +0000
Received: ("Tessian outbound a45624f5910b:v50");
 Thu, 16 Apr 2020 16:26:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fa3ba1870b24abd5
X-CR-MTA-TID: 64aa7808
Received: from 5aae0455c5e3.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 21E994C9-E8E4-41D2-8AC2-F7CDD84DA639.1; 
 Thu, 16 Apr 2020 16:26:00 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5aae0455c5e3.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 16 Apr 2020 16:26:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lGs5soOMZg1HYdXl2Iu3khPYqyWpeh3JDNAKZdJBt80epV1OwSeJ/ZC5PkJAJ/Y1dCrA+chauJ5ZlZLUjXts6DqO52eCICaeyrn2va22CXABVvx7SpdrS9df84hQKO6mDlJY6Fy4kz7X6FG/DcAobfU1N9pmIwkho0jl0gtOCI2kopyzQ8bh02ZJ6qVqrFvbIJOJxQ7lzSaY8HHe1qxTijOOGtom5L3kaVDgs5Iep6QEqbYmrTxLSJrR/8ixvx2UrednqQJUa197hqEOeU62lduAy5E3gxyEYfaPtLXBcDZ945opte3z+uW9Vtn/hiznDjJ53EHmU7P+RxppMCdyCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3BdR1s27uZzmOVlrwwjDDfw72acBDdM/TH3EcGetR4=;
 b=IAxii/XU/sU/GeIBenOpPoVRU3gr/Qq8ZgyulYkJfcMNU0gBSzmXyWn/4mHDi2QOVwWAgiCwGGeYUf/PLaPQsOEl8UVLZS3Y5elgjPs+Jlk1SaTSVDQHOgVuow+FP/11FoeI5NC3dkingD3cnPu/w1u0RJjNJBhe6RQ+IZjMATtKUg5dl8TJvHfLQ19mhGyiFhGLeoUduIXFgZ1hpRjD/sb9kjhvWSLNIZM/ggIGbod4OCNfNyinLNecBH9BqHnouWA6qB+8ri4OHlSZ5PHxCrbXLaj1PdJQLaZONAFu0+WitmdIlwa9pdLAZMJcFLAg54Dwt6aR/6JGYN4sPSSEww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3BdR1s27uZzmOVlrwwjDDfw72acBDdM/TH3EcGetR4=;
 b=sG4vSqV+5BmngQU1CAW1eQUyt3KJ4XIhW8CQ0Vgb1UuYyVD7D8Jv5EWYh6exGWCeaXzWOa+ymype1U3+jnsNpyj7yFDxD8xWd/Hpb3wszCJBSR9MP5jFLbRZCkzMEQ1yd5DwqNM3Bcaeiq/MRYeOYrJsLDUvb6wSiRJql+6Ck9s=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Orjan.Eide@arm.com; 
Received: from VI1PR08MB3885.eurprd08.prod.outlook.com (2603:10a6:803:c1::32)
 by VI1PR08MB3821.eurprd08.prod.outlook.com (2603:10a6:803:b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Thu, 16 Apr
 2020 16:25:58 +0000
Received: from VI1PR08MB3885.eurprd08.prod.outlook.com
 ([fe80::c198:5f6d:b7d5:d80a]) by VI1PR08MB3885.eurprd08.prod.outlook.com
 ([fe80::c198:5f6d:b7d5:d80a%7]) with mapi id 15.20.2921.027; Thu, 16 Apr 2020
 16:25:58 +0000
Date: Thu, 16 Apr 2020 18:25:54 +0200
From: =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: android: ion: Skip sync if not mapped
Message-ID: <20200416162554.GA34684@e123356-lin.trondheim.arm.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200416094955.GM1163@kadam>
Content-Disposition: inline
In-Reply-To: <20200416094955.GM1163@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1::31) To VI1PR08MB3885.eurprd08.prod.outlook.com
 (2603:10a6:803:c1::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from e123356-lin.trondheim.arm.com (217.140.106.39) by
 LO2P123CA0067.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 16:25:56 +0000
X-Originating-IP: [217.140.106.39]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 70ff6c2e-cd8a-4a81-f1a5-08d7e222dd18
X-MS-TrafficTypeDiagnostic: VI1PR08MB3821:|VI1PR08MB3821:|DB8PR08MB5452:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB54522BD5BF1C34CC4F0D4AE990D80@DB8PR08MB5452.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;OLM:7691;
X-Forefront-PRVS: 0375972289
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:VI1PR08MB3885.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(4326008)(16526019)(186003)(33656002)(2906002)(956004)(1076003)(66946007)(81156014)(8676002)(316002)(7416002)(66476007)(5660300002)(66556008)(86362001)(54906003)(7696005)(52116002)(478600001)(6916009)(8936002)(55016002)(26005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Zv8Nc5HFYTPJ9KYPU0GGQdfTY7ArLUJ8Sqej2v7WL/m1fnegNmK0S2LNPeMGb7fPX9QO5paJy2q3eH22jafSoGQvP5Trv+RJ6RkinYBYbYKj0XLrkIfNfIKF0VqYNEBgOm2301/eGKlFeYSu2pj68BqI9aOMfot7cORvma7FxUYN9q8SCw5PvgrBBVNY7IOihDlZVQ3+yzThPL6eHI2+if9esGlm+9mOLmqw7T8Q7cQxUox/ZPaAwLOOWDPpCGxzDGHsVA+VB2U2JWF3TjBVz3xSOe4Fu2siX0948Zk9Jkv6UvAhuu1EPkRx6KYA36zHIBYwxWpr7HbHnQ88oUJqnFi6Bt9dK1OfsOrrxEhMgEmCLsfgWMhI0wLpm80mK2U4cuRjc1X/Afcycz9Ca+o4YW6SwZla8igjrCLlE6c6kzewaevuA6dMYQwXjL6Nb1eb
X-MS-Exchange-AntiSpam-MessageData: 4jV8i4ahR/9jmwAtTANWLh4TicU8nrLMmeJUs2AH7NjrYsxyUf+CYAEdJMTGe1mm4/nd18rvBFZF4SgScsQ1GalUOd/sm35gmCZ2WpNuv8v9Krze370ARXYqX+mM3WcWSphRc1mPo+KeiW8HAZ2XCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3821
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Orjan.Eide@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT064.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(46966005)(356005)(86362001)(107886003)(47076004)(33656002)(54906003)(1076003)(478600001)(26826003)(55016002)(186003)(26005)(4326008)(81156014)(16526019)(8936002)(82740400003)(2906002)(70206006)(6862004)(956004)(81166007)(336012)(316002)(7696005)(5660300002)(70586007)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 06983a84-bf67-482f-f2ff-08d7e222d837
X-Forefront-PRVS: 0375972289
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H7m9gnleq2sDMG+wUl4QdbLdBL2IPaYgvAqK/eddxf3WxWRGBcfHp/gVrA5NVetPF37TzOzOxxpBkbY/+MZe1DTQM1RPhVdm0732PKXr1oSjyEqk8OmWdJAilegfpy8bNDloHkMdeFmzZ/Notyk8dQMEgTz5SjPKCYP0Hvdj6OCUYoy46b7wCm/sNl0jauipArJw5RHFoSewvhVaMm+Z9M3vgSH+ShkbfwBcgNWOiErEkiltIeqaOZTBWsYOPHR7xCDfIYaS+hewWhT1Cbw9WB+0vJlqrKk+BM78cieW/JIEy+Z7Cd6ZaCI3WZORMau/ZXY5GnqtJath+BfTUZAVXjNHFzHhkT4X1H6nHWH+Vr+h61mk4jwz6nOIDyZywk2TLjcCWtwxeQV4WYrIx0rmxXe9hNI4NeNl8XK/qiN1yi8sx35yKbKNr+2FAXLkkkcosYq2MQ4l8lcv1sITLPb9zdh1pbk3HLz0GxmdAP6ZM8AW4OXp7ikeg3Kzmwd26fGDTdGFpqs1zkNZdGwSLXT/iw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 16:26:06.2309 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ff6c2e-cd8a-4a81-f1a5-08d7e222dd18
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5452
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
Cc: devel@driverdev.osuosl.org, Laura Abbott <labbott@redhat.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
 anders.pedersen@arm.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>, nd@arm.com,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBBcHIgMTYsIDIwMjAgYXQgMTI6NDk6NTZQTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBUdWUsIEFwciAxNCwgMjAyMCBhdCAwNDoxODo0N1BNICswMjAwLCDDmHJqYW4g
RWlkZSB3cm90ZToKPiA+IEBAIC0yMzgsNiArMjQyLDEwIEBAIHN0YXRpYyB2b2lkIGlvbl91bm1h
cF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCj4gPiAgCQkJ
ICAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSwKPiA+ICAJCQkgICAgICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gPiAgewo+ID4gKwlzdHJ1Y3QgaW9uX2RtYV9idWZfYXR0
YWNobWVudCAqYSA9IGF0dGFjaG1lbnQtPnByaXY7Cj4gPiArCj4gPiArCWEtPm1hcHBlZCA9IGZh
bHNlOwo+IAo+IFBvc3NpYmx5IGEgc3R1cGlkIHF1ZXN0aW9uIGJ1dCBoZXJlIHdlJ3JlIG5vdCBo
b2xkaW5nIGEgbG9jay4gIElzCj4gY29uY3VycmVuY3kgYW4gaXNzdWU/CgpUaGFua3MgZm9yIHRh
a2luZyBhIGxvb2suCgpIZXJlIGFuZCBpbiBpb25fbWFwX2RtYV9idWYoKSwgd2hlcmUgbWFwcGVk
IGlzIHNldCwgdGhpcyBzaG91bGQgYmUgc2FmZS4KVGhlIGNhbGxlcnMgbXVzdCBzeW5jaHJvbml6
ZSBjYWxscyB0byBtYXAvdW5tYXAsIGFuZCBlbnN1cmUgdGhhdCB0aGV5CmFyZSBjYWxsZWQgaW4g
cGFpcnMuCgpJIHRoaW5rIHRoZXJlIG1heSBiZSBhIHBvdGVudGlhbCBpc3N1ZSBiZXR3ZWVuIHdo
ZXJlIG1hcHBlZCBpcyBzZXQgaGVyZSwKYW5kIHdoZXJlIGl0J3MgcmVhZCBpbiBpb25fZG1hX2J1
Zl97YmVnaW4sZW5kfV9jcHVfYWNjZXNzKCkuIENvaGVyZW5jeQppc3N1ZXMgdGhlIG1hcHBlZCBi
b29sIHdvbid0IGJsb3cgdXAsIGF0IHdvcnN0IHRoZSBjb250ZW50cyBvZiB0aGUKYnVmZmVyIG1h
eSBiZSBpbnZhbGlkIGFzIGNhY2hlIHN5bmNocm9uaXphdGlvbiBtYXkgaGF2ZSBiZWVuIHNraXBw
ZWQuClRoaXMgaXMgc3RpbGwgYW4gaW1wcm92ZW1lbnQgYXMgYmVmb3JlIGl0IHdvdWxkIGVpdGhl
ciBjcmFzaCBvciBzeW5jIHRoZQp3cm9uZyBwYWdlIHJlcGVhdGVkbHkuCgpUaGUgbWFwcGVkIHN0
YXRlIGlzIHRpZWQgdG8gdGhlIGRtYV9tYXBfc2coKSBjYWxsLCBzbyB3ZSB3b3VsZCBuZWVkIHRh
a2UKdGhlIGJ1ZmZlci0+bG9jayBhcm91bmQgYm90aCBkbWFfbWFwX3NnIGFuZCBzZXR0aW5nIG1h
cHBlZCB0byBiZSBzdXJlCnRoYXQgdGhlIGJ1ZmZlciB3aWxsIGFsd2F5cyBoYXZlIGJlZW4gc3lu
Y2VkLgoKPiA+ICsKPiA+ICAJZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNn
bCwgdGFibGUtPm5lbnRzLCBkaXJlY3Rpb24pOwo+ID4gIH0KPiA+ICAKPiA+IEBAIC0yOTcsNiAr
MzA1LDggQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsCj4gPiAgCj4gPiAgCW11dGV4X2xvY2soJmJ1ZmZlci0+bG9jayk7Cj4g
PiAgCWxpc3RfZm9yX2VhY2hfZW50cnkoYSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsK
PiA+ICsJCWlmICghYS0+bWFwcGVkKQo+ID4gKwkJCWNvbnRpbnVlOwo+ID4gIAkJZG1hX3N5bmNf
c2dfZm9yX2NwdShhLT5kZXYsIGEtPnRhYmxlLT5zZ2wsIGEtPnRhYmxlLT5uZW50cywKPiA+ICAJ
CQkJICAgIGRpcmVjdGlvbik7Cj4gPiAgCX0KCi0tIArDmHJqYW4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
