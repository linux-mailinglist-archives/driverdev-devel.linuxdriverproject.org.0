Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1106F12118C
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:17:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A18E881C8;
	Mon, 16 Dec 2019 17:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXYOaItJ02z4; Mon, 16 Dec 2019 17:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E39048818E;
	Mon, 16 Dec 2019 17:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5B71BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8983822049
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TXaHddyhlKe for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:17:45 +0000 (UTC)
X-Greylist: delayed 00:11:40 by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2081.outbound.protection.outlook.com [40.107.223.81])
 by silver.osuosl.org (Postfix) with ESMTPS id D795B22011
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:17:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A27zLjkrDy41zlPtBLx/CUtlre64tRZ6Zsuv1/1sfxQd6UQ8VgHJC4HWzYu9ARhv5runBJbFri5XJzZ+pQzQhnEM6sbzxNRhvFvH5QMdVt+ZhsnN75zRfIyoivEHGAYmGHYr+Crlhc+wGx6uavD+LR0OFt/pDcg4UwO65JRc5+k3aQtrigBsm5PCnI6P5MR24Z6nWPwubd/geU785+IEkRa9cvM+tk3pHh/SsDJNnVLgA9FAgO/1qhCFuMCrXocGmOehdcvy0nVJstSK/HLfUn+qpNNiG/N0Pzfp5kfD2tEzFHst5pjtycHD+q/yIYd0Hd00be6+LETOIOpBP+c8MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HrhJNLV26dwYY9hsU5laaqgoVc1C4ZbdwdDOzXxA/CQ=;
 b=mvyiwv0rgEr2TlI/9xi6J+PMWJfJ6ytbrvKEor/SKu/tT7migQK23+BsBC0lK+PK5AX26APREYuItB/DeAa2tJUs/uUrR+XBs5KjlGLwCysMUxiNATlyLEPQ96VHLkzHB7YeroSweOEq6vzndgjXsgeztUdV62NrtdrKstPoIn/KLgk+yHJE/ck9WtU8An8Lnet/IHn2DVZcyqhGWAPtdnOY0VNzW0bm11W/6+SaRoD2y9XQQqPn7cYhVch62uF+4SenJXAC2Xa+8k2nWrYSxLemTaBfNjIIDqCF00tJWIh0+H23S6MJNM3Nibnr99yqLdsd7qXVNy8i830sAflSQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HrhJNLV26dwYY9hsU5laaqgoVc1C4ZbdwdDOzXxA/CQ=;
 b=hexRjsA/H6MZm3s84l4rldCh5zcTWr276eNJRXifoyVtyGFnBSjjzajYJRkGzfBFY5b+5ZNxLYHzlBG7EH6nNBOjC/fiU3yLreLVOpatkFWiBKm7uMaP4TD8sA3ZUhN/7Qq/d6ogoYDyT014qqt82MdCCIl9unmeUkn9S6tkFSI=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:33 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:33 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 00/55] Improve wfx driver
Thread-Topic: [PATCH 00/55] Improve wfx driver
Thread-Index: AQHVtDK/Pw1odw7dKEKAJDpO2fyI2w==
Date: Mon, 16 Dec 2019 17:03:32 +0000
Message-ID: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aee7b519-53fe-4005-f5e0-08d78249e1e0
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3838F696C1DA40EB36BBD95893510@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(53754006)(85202003)(8936002)(81166006)(8676002)(54906003)(110136005)(316002)(85182001)(6506007)(186003)(2906002)(5660300002)(6512007)(26005)(107886003)(81156014)(36756003)(4326008)(2616005)(76116006)(91956017)(64756008)(66556008)(66476007)(66946007)(71200400001)(86362001)(66446008)(6486002)(478600001)(1076003)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kMz5rhXAf3zavAhumnHjeKNduYUJ79uVm8jtYPth0fJNcS5yUJtpoS7Yh5YDPTxwmuug4UNqL0vxtMw1uRsC49bXyhRWblNhIcq2qH8mcKs1UHnZkhz9CZXbRTrRnJmsHsje3s/+aJr/xCHQNLCCucS1TAz9r/M1NV/tmNfP2Uwi8a9E9x3qq5j0mhHw3FDnTgNBxYLGZAbsGkYMVuzFKXHmq8WyXuAk7Bgh9zV0OF7qT2Wbc1ZFzbD0ni58lI4RooHdgUlleXhK4XEBeUF3T757VOhhTWkwMpCM/5S6OMagOvNssRMiulNsXoad42oJCfasQK6X1r8IVmaOm3LtdvfdLAEgWVSNpPMFXAsGqveqlyQGXwk7jXpZPg9HYAJdd0RwoEh57cNpLD5GKuQYGHqFBN4xHPt2WIGmmJhdLQZJy7zbENMCn/Qny4d/S4X4i/OSSk0NmyCUAb8yppG+cS8nj2jml2cRlq6XjFBfFtGx3/p1KnswTPPeP5Ip87s4
Content-ID: <DCACBA1035270E459AB8C1C36F3CA68C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aee7b519-53fe-4005-f5e0-08d78249e1e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:32.9105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KiEzFqL7w90S8OTe68mtgJEKsW00cqaU/XP8u3uvhWjeXxPMP5YGaeX72Vh1o75j3evUCD9F4yzE6W6bcnPz5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3838
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpI
ZWxsbyBhbGwsDQoNClRoaXMgcHVsbCByZXF1ZXN0IGNvbnRpbnVlIHRvIGNsZWFuIHVwIHRoZSB3
ZnggZHJpdmVyLiBJdCBjYW4gYmUgbW9yZSBvcg0KbGVzcyBkaXZpZGVkIGluIGZvdXIgcGFydHM6
DQogIC0gMDAwMSB0byAwMDA5IGZpeCBzb21lIGlzc3VlcyAoc2hvdWxkIGJlIGluY2x1ZGVkIGlu
IDUuNT8pDQogIC0gMDAxMCB0byAwMDI4IG1vc3RseSBjb250YWlucyBjb3NtZXRpY3MgY2hhbmdl
cw0KICAtIDAwMjkgdG8gMDA0MyByZS13b3JrIHBvd2VyIHNhdmUgKGluIHN0YXRpb24gbW9kZSkg
YW5kIFFvUw0KICAtIDAwNDQgdG8gMDA1NCByZS13b3JrIHRoZSBzY2FuIHByb2Nlc3MNCg0KVGhl
IGxhc3QgcGF0Y2ggdXBkYXRlcyB0aGUgVE9ETyB3aXRoIGEgbW9yZSBwcmVjaXNlIGxpc3QuIEkg
aW5jbHVkZWQNCnJlZmVyZW5jZXMgdG8gZGlzY3Vzc2lvbnMgSSBoYXZlIGhhZCBvbiBtYWlsaW5n
IGxpc3RzLCBpbiBvcmRlciB0byBub3QNCmZvcmdldCB0aGVtLiBJIHN0YXJ0ZWQgdGhlIGZpcnN0
IGl0ZW1zIG9mIHRoZSBsaXN0IGFuZCBJIGhvcGUgdG8gYmUgYWJsZQ0KdG8gc2VuZCBhbm90aGVy
IChzbWFsbGVyKSBwdWxsIHJlcXVlc3QgaW4gMi0zIHdlZWtzLg0KDQpKw6lyw7RtZSBQb3VpbGxl
ciAoNTUpOg0KICBzdGFnaW5nOiB3Zng6IGZpeCB0aGUgY2FjaGUgb2YgcmF0ZSBwb2xpY2llcyBv
biBpbnRlcmZhY2UgcmVzZXQNCiAgc3RhZ2luZzogd2Z4OiBmaXggY2FzZSBvZiBsYWNrIG9mIHR4
X3JldHJ5X3BvbGljaWVzDQogIHN0YWdpbmc6IHdmeDogZml4IGNvdW50ZXIgb3ZlcmZsb3cNCiAg
c3RhZ2luZzogd2Z4OiB1c2UgYm9vbGVhbiBhcHByb3ByaWF0ZWx5DQogIHN0YWdpbmc6IHdmeDog
ZmlybXdhcmUgZG9lcyBub3Qgc3VwcG9ydCBtb3JlIHRoYW4gMzIgdG90YWwgcmV0cmllcw0KICBz
dGFnaW5nOiB3Zng6IGZpeCByYXRlIGNvbnRyb2wgaGFuZGxpbmcNCiAgc3RhZ2luZzogd2Z4OiBl
bnN1cmUgdGhhdCByZXRyeSBwb2xpY3kgYWx3YXlzIGZhbGxiYWNrcyB0byBNQ1MwIC8NCiAgICAx
TWJwcw0KICBzdGFnaW5nOiB3Zng6IGRldGVjdCByYWNlIGNvbmRpdGlvbiBpbiBXRVAgYXV0aGVu
dGljYXRpb24NCiAgc3RhZ2luZzogd2Z4OiBmaXggaGlmX3NldF9tZnAoKSB3aXRoIGJpZyBlbmRp
YW4gaG9zdHMNCiAgc3RhZ2luZzogd2Z4OiBmaXggd3JvbmcgZXJyb3IgbWVzc2FnZQ0KICBzdGFn
aW5nOiB3Zng6IGluY3JlYXNlIFNQSSBidXMgZnJlcXVlbmN5IGxpbWl0DQogIHN0YWdpbmc6IHdm
eDogZG9uJ3QgcHJpbnQgdXNlbGVzcyBlcnJvciBtZXNzYWdlcw0KICBzdGFnaW5nOiB3Zng6IGF2
b2lkIGRvdWJsZSB3YXJuaW5nIHdoZW4gbm8gbW9yZSB0eCBwb2xpY3kgYXJlDQogICAgYXZhaWxh
YmxlDQogIHN0YWdpbmc6IHdmeDogaW1wcm92ZSBlcnJvciBtZXNzYWdlIG9uIHVuZXhwZWN0ZWQg
Y29uZmlybWF0aW9uDQogIHN0YWdpbmc6IHdmeDogdGFrZSBhZHZhbnRhZ2Ugb2YgSVNfRVJSX09S
X05VTEwoKQ0KICBzdGFnaW5nOiB3Zng6IHVuaWZvcm1pemUgbmFtaW5nIHJ1bGUNCiAgc3RhZ2lu
Zzogd2Z4OiB1c2UgbWVhbmluZ2Z1bCBuYW1lcyBmb3IgQ0ZHX0JZVEVfT1JERVJfKg0KICBzdGFn
aW5nOiB3Zng6IHJlbW92ZSB1c2VsZXNzIGluY2x1ZGUNCiAgc3RhZ2luZzogd2Z4OiBzaW1wbGlm
eSB2YXJpYWJsZSBhc3NpZ25tZW50DQogIHN0YWdpbmc6IHdmeDogbWFrZSBjb25kaXRpb25zIGVh
c2llciB0byByZWFkDQogIHN0YWdpbmc6IHdmeDogZW5zdXJlIHRoYXQgdHJhY2VzIG5ldmVyIG1v
ZGlmeSBhcmd1bWVudHMNCiAgc3RhZ2luZzogd2Z4OiBlbnN1cmUgdGhhdCByZWNlaXZlZCBoaWYg
bWVzc2FnZXMgYXJlIG5ldmVyIG1vZGlmaWVkDQogIHN0YWdpbmc6IHdmeDogZml4IHR5cG8gaW4g
Im51bV9vZl9zc2lfZHMiDQogIHN0YWdpbmc6IHdmeDogZml4IHR5cG8gaW4gIm51bV9pX2VzIg0K
ICBzdGFnaW5nOiB3Zng6IGZpeCBuYW1lIG9mIHN0cnVjdCBoaWZfcmVxX3N0YXJ0X3NjYW5fYWx0
DQogIHN0YWdpbmc6IHdmeDogaW1wcm92ZSBBUEkgb2YgaGlmX3JlcV9qb2luLT5pbmZyYXN0cnVj
dHVyZV9ic3NfbW9kZQ0KICBzdGFnaW5nOiB3Zng6IGJldHRlciBuYW1pbmcgZm9yIGhpZl9yZXFf
am9pbi0+c2hvcnRfcHJlYW1ibGUNCiAgc3RhZ2luZzogd2Z4OiBiZXR0ZXIgbmFtaW5nIGZvcg0K
ICAgIGhpZl9taWJfc2V0X2Fzc29jaWF0aW9uX21vZGUtPmdyZWVuZmllbGQNCiAgc3RhZ2luZzog
d2Z4OiBzaW1wbGlmeSBoYW5kbGluZyBvZiB0eF9sb2NrIGluIHdmeF9kb19qb2luKCkNCiAgc3Rh
Z2luZzogd2Z4OiBmaXJtd2FyZSBhbHJlYWR5IGhhbmRsZSBwb3dlcnNhdmUgbW9kZSBkdXJpbmcg
c2Nhbg0KICBzdGFnaW5nOiB3Zng6IGRlY2xhcmUgd2Z4X3NldF9wbSgpIHN0YXRpYw0KICBzdGFn
aW5nOiB3Zng6IGRyb3AgdXNlbGVzcyBhcmd1bWVudCBmcm9tIHdmeF9zZXRfcG0oKQ0KICBzdGFn
aW5nOiB3Zng6IHJlbW92ZSByZWR1bmRhbnQgdGVzdCB3aGlsZSBjYWxsaW5nIHdmeF91cGRhdGVf
cG0oKQ0KICBzdGFnaW5nOiB3Zng6IGRyb3AgdW5uZWNlc3Nhcnkgd3ZpZi0+cG93ZXJzYXZlX21v
ZGUNCiAgc3RhZ2luZzogd2Z4OiBkbyBub3QgdHJ5IHRvIHNhdmUgY2FsbCB0byBoaWZfc2V0X3Bt
KCkNCiAgc3RhZ2luZzogd2Z4OiBmaXggcG1fbW9kZSB0aW1lb3V0DQogIHN0YWdpbmc6IHdmeDog
c2ltcGxpZnkgd2Z4X2NvbmZfdHgoKQ0KICBzdGFnaW5nOiB3Zng6IHByZWZlciBhIGJpdG1hc2sg
aW5zdGVhZCBvZiBhbiBhcnJheSBvZiBib29sZWFuDQogIHN0YWdpbmc6IHdmeDogc2ltcGxpZnkg
aGlmX3NldF91YXBzZF9pbmZvKCkgdXNhZ2UNCiAgc3RhZ2luZzogd2Z4OiBzaW1wbGlmeSBoaWZf
c2V0X3BtKCkgdXNhZ2UNCiAgc3RhZ2luZzogd2Z4OiBkcm9wIHN0cnVjdCB3ZnhfZWRjYV9wYXJh
bXMNCiAgc3RhZ2luZzogd2Z4OiByZW1vdmUgdW5uZWNlc3NhcnkgRURDQSBpbml0aWFsaXNhdGlv
bg0KICBzdGFnaW5nOiB3Zng6IHNpbXBsaWZ5IGhpZl9zZXRfZWRjYV9xdWV1ZV9wYXJhbXMoKSB1
c2FnZQ0KICBzdGFnaW5nOiB3Zng6IGhpZl9zY2FuKCkgbmV2ZXIgZmFpbHMNCiAgc3RhZ2luZzog
d2Z4OiBkZXZpY2UgYWxyZWFkeSBoYW5kbGUgc2xlZXAgbW9kZSBkdXJpbmcgc2Nhbg0KICBzdGFn
aW5nOiB3Zng6IGRyb3AgdXNlbGVzcyB3Znhfc2Nhbl9jb21wbGV0ZSgpDQogIHN0YWdpbmc6IHdm
eDogc2ltcGxpZnkgaGlmX3NjYW4oKSB1c2FnZQ0KICBzdGFnaW5nOiB3Zng6IGludHJvZHVjZSB1
cGRhdGVfcHJvYmVfdG1wbCgpDQogIHN0YWdpbmc6IHdmeDogc2ltcGxpZnkgaGlmX3NldF90ZW1w
bGF0ZV9mcmFtZSgpIHVzYWdlDQogIHN0YWdpbmc6IHdmeDogcmV3cml0ZSB3ZnhfaHdfc2Nhbigp
DQogIHN0YWdpbmc6IHdmeDogd29ya2Fyb3VuZCBidWcgd2l0aCAiaXcgc2NhbiINCiAgc3RhZ2lu
Zzogd2Z4OiBkZWxheWVkX3Vuam9pbiBjYW5ub3QgaGFwcGVuDQogIHN0YWdpbmc6IHdmeDogZGVs
YXllZF9saW5rX2xvc3MgY2Fubm90IGhhcHBlbg0KICBzdGFnaW5nOiB3Zng6IGltcGxlbWVudCBj
YW5jZWxfaHdfc2NhbigpDQogIHN0YWdpbmc6IHdmeDogdXBkYXRlIFRPRE8NCg0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvVE9ETyAgICAgICAgICB8ICA3OCArKysrKy0tDQogZHJpdmVycy9zdGFnaW5n
L3dmeC9iaC5jICAgICAgICAgIHwgICAzICstDQogZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3Bp
LmMgICAgIHwgICA5ICstDQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4LmMgICAgIHwgICA4
ICstDQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4LmggICAgIHwgICA0ICstDQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgICAgIHwgIDQwICsrKy0NCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2RhdGFfdHguaCAgICAgfCAgIDcgKy0NCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYyAg
ICAgICAgfCAgMjggKy0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oIHwgIDMy
ICstLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9taWIuaCB8ICAxMyArLQ0KIGRyaXZl
cnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgICAgICB8IDEwMyArKysrKy0tLS0NCiBkcml2ZXJzL3N0
YWdpbmcvd2Z4L2hpZl90eC5jICAgICAgfCAxMDUgKysrKystLS0tDQogZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfdHguaCAgICAgIHwgIDE3ICstDQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhf
bWliLmggIHwgIDI3ICsrLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5oICAgICAgICB8ICAx
NSArLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jICAgICAgICB8ICAgNSArLQ0KIGRyaXZl
cnMvc3RhZ2luZy93ZngvcXVldWUuYyAgICAgICB8ICAgOSArLQ0KIGRyaXZlcnMvc3RhZ2luZy93
Zngvc2Nhbi5jICAgICAgICB8IDMyNSArKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiBkcml2
ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uaCAgICAgICAgfCAgMjUgKy0tDQogZHJpdmVycy9zdGFnaW5n
L3dmeC9zZWN1cmVfbGluay5oIHwgICA4ICstDQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyAg
ICAgICAgIHwgMzUzICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIGRyaXZlcnMvc3Rh
Z2luZy93Zngvc3RhLmggICAgICAgICB8ICAgOSArLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvdHJh
Y2VzLmggICAgICB8ICAxNCArLQ0KIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggICAgICAgICB8
ICAxOCArLQ0KIDI0IGZpbGVzIGNoYW5nZWQsIDUwNSBpbnNlcnRpb25zKCspLCA3NTAgZGVsZXRp
b25zKC0pDQoNCi0tIA0KMi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
