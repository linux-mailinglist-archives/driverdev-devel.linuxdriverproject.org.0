Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADECA121790
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 19:37:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 967F98815F;
	Mon, 16 Dec 2019 18:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJPhIY8Ou+Im; Mon, 16 Dec 2019 18:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E04C28817F;
	Mon, 16 Dec 2019 18:37:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F179E1BF308
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE5CB86614
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CL6XCgX5TTGU for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 18:37:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770049.outbound.protection.outlook.com [40.107.77.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48D9F86739
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 18:37:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ei2i/FALxCGPzhzGukdDKABna61vF2x8xhCZ5EjnIchpB311072Xof5lClDUAmIcIAnIa7PIiUf40vmtlC+mTKDhnmtCNLvbBIJOpYJXSS9dJZC7qil2vKI2/DK9Xs4rvvbU2htq/G7AxaHVLeDNTXiUlf6nJlLbROzpjDInJAJshL1yjhi5g5LWJYGjhN+q2Be/v8CoSMBttvm7+xxtd8OYQO5xVz4y4WICGuHXInywu4hANm7iLtQ1/JRp+sJqr4I7rnHUHXAi4uzPxEO7DE7VOatWFzfMzc5BMJMP5PxkxOqcejn+CulDfFTheBo2bzIRSXeIQTm8PjO6phtQIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=32kkhkvCRMNUoCtpHSw6b96yAbKv7LrEtiuaAg0mXZ4=;
 b=fkNFcezhpW/QZ6YuswKTvcW+w8kGYyNN/kIOSUrqgvRSGdj1oR+mSxuEzTpkf9cCFcp1tvNvyw4wJhBbo+7HipHdMK50Ir4pAT9toVQYYCCOYtfGrZZXg1ZClkSm/2UBmAiF1Y0Wjynz9BQyNOgypvLGOtgWwX7CDxi2ieNIwPptdVc9euHZtNWWnrLQhFXfg1BVMFvhYtoY7+BiII9gHnapZY5NWP/7Oi7bjeOS5Sp9+uMs/CAxAwe9EUuMtG1Y8x6D/rnisb++NrLn0pqxg04LO8j03QQam43GTJLfSoXTP2YUyWSqpqwQRXh/rJ3WNfm2td8xoX5XeV/M7Kd/9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=32kkhkvCRMNUoCtpHSw6b96yAbKv7LrEtiuaAg0mXZ4=;
 b=L/vK5DrO424GgP78KF6nMx6v/HtSsT8nTibp7OoM9nyfqTrUtdWJkYBX8po4ukmq4BQUzo663gQLLnJ26cKdE2uT7Hfp7V6XnAFtt/rtLI3s2ktcVUKV1D+w3yVHtHEXsoVKzp5ZRbUp+wYqUzXBrPN72jIL89ujduJimbpwEFQ=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:45 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:45 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 09/55] staging: wfx: fix hif_set_mfp() with big endian hosts
Thread-Topic: [PATCH 09/55] staging: wfx: fix hif_set_mfp() with big endian
 hosts
Thread-Index: AQHVtDLCg4OZV5pG80CM4ZuJNeR8pg==
Date: Mon, 16 Dec 2019 17:03:37 +0000
Message-ID: <20191216170302.29543-10-Jerome.Pouiller@silabs.com>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9f991c0-4377-49cc-eb2b-08d78249e974
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB38381E7A69663F9C8B05112B93510@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(85202003)(8936002)(4744005)(81166006)(8676002)(54906003)(110136005)(316002)(85182001)(6506007)(186003)(2906002)(5660300002)(6512007)(26005)(107886003)(81156014)(36756003)(4326008)(6666004)(2616005)(76116006)(91956017)(64756008)(66556008)(66476007)(66946007)(71200400001)(86362001)(66446008)(6486002)(478600001)(1076003)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g+YnwtlBwgs6qqkfO0QKak3M2YhLiucyqpI0h26kqSALFw/CDlHLhimGEavGUoDksdh0f51sJ72pR+/x463BwhE78SWiKy+DRivbQ6KReeq3IiwIUndwQDvOH/3SOT2Y9vk2nkK9T9jseLRLPnBkG8H+TcRm2PkIQzsrPlkdaijA7t7pJmI1vkousxpvMHST4Lii7sqvHshJKzE1TZa/f9XaxboeWOn0C8KPHsqGMRDShoyWXX153p4N1qq7QmZqzo1G1DclK8bYWHXHSZXetgSfL+oZt9rfjUtXn4l9Gjo1InKpONKeNwQA7Heu6xEKa9dV3VYvDsC1ysGru5740+DTr1FedYUriecwsfxiVX40YWCdcR+IpyWeJUlGd+2u9Of7cRfinicGKQlGwyNKbz6p9U4PvO8DFoyN1aV+kctflU9DB0X3eLmkj0/K+u7e
Content-ID: <4F0AA91A81FD894A8A07D763C121E7B5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f991c0-4377-49cc-eb2b-08d78249e974
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:37.8316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oLEaSCo5R7LudfJa4I9MBK4+kEer8BP2rD8dEIpLjnBtWGi2/WmP2mtBr0SYf+feOaQCp4NK0rXa+evt3SCv1Q==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpz
dHJ1Y3QgaGlmX21pYl9wcm90ZWN0ZWRfbWdtdF9wb2xpY3kgaXMgYW4gYXJyYXkgb2YgdTguIFRo
ZXJlIGlzIG5vDQpyZWFzb24gdG8gc3dhcCBpdHMgYnl0ZXMuDQoNClNpZ25lZC1vZmYtYnk6IErD
qXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4NCi0tLQ0KIGRyaXZl
cnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oIHwgMSAtDQogMSBmaWxlIGNoYW5nZWQsIDEgZGVs
ZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5o
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmgNCmluZGV4IGJiMDkxZTM5NWZmNS4u
OWJlNzQ4ODFjNTZjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWli
LmgNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oDQpAQCAtMTQ3LDcgKzE0
Nyw2IEBAIHN0YXRpYyBpbmxpbmUgaW50IGhpZl9zZXRfbWZwKHN0cnVjdCB3ZnhfdmlmICp3dmlm
LCBib29sIGNhcGFibGUsIGJvb2wgcmVxdWlyZWQpDQogCX0NCiAJaWYgKCFyZXF1aXJlZCkNCiAJ
CXZhbC51bnBtZl9hbGxvd2VkID0gMTsNCi0JY3B1X3RvX2xlMzJzKCh1MzIgKikgJnZhbCk7DQog
CXJldHVybiBoaWZfd3JpdGVfbWliKHd2aWYtPndkZXYsIHd2aWYtPmlkLA0KIAkJCSAgICAgSElG
X01JQl9JRF9QUk9URUNURURfTUdNVF9QT0xJQ1ksDQogCQkJICAgICAmdmFsLCBzaXplb2YodmFs
KSk7DQotLSANCjIuMjAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
