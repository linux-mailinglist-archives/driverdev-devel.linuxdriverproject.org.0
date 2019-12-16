Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1995E12105A
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4034E868AB;
	Mon, 16 Dec 2019 17:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgxP3YUefh1h; Mon, 16 Dec 2019 17:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53EC3868CC;
	Mon, 16 Dec 2019 17:03:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7361A1BF958
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FE5E88158
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eOv4xHXkRrAC for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:03:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690072.outbound.protection.outlook.com [40.107.69.72])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 265A1880C3
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:03:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mGD/DoHMBiBjox5V+7xRg6TCA7LFVetRtb7NkQT0+P/c9VKY5A2gkfGboLUsx0zUfLwhzR7DXhNhZ6KQg0AWVQKT10itX5pKflUbUcUNpA4JD0vpSDy8/6BNAmLlLggSZKaWkQb1BEkmJDHgudjxK2yXj85d4dUMbw85rvsopcC5DdKPTkDkCbSUje/8Z28bo9H9MJsggfELbf7HYfXUHiXwGHpd5VIsAUmT08NqtHjHgBHwWA/dT76XK/aqVyce8XQR3o6yz9SXD2jx3lA4n8JBaOBVxN5rh7HA8dxrJxFmERT9Ah/jrY1QitPviNWlsSSt/UiWoWWwtOHH7DExRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ovBKd4gEC39IOTeYb+qv9zDzbVc7voT+Jrfe24zaZyY=;
 b=I8uwsyZfPodQlC9zhe6TejmzX0Y9X0fzlxJe2LoerCiwBVmh/vPEG8pFlFMhoOK5X0yCLc2HsT4n11T/dZllwAkkdS+NNzoMRfvwGSfKUgroB1th8XE7s8ZWXbG3om1LW53EbTCQpbGSi4QB7tdU4L96y5WBLRKX12p1MrLeckoyG1tjnE6h0S44H29Exb+UWfoMRoHXOfF0uYwBdm+aAKrSqIqVhGN+IITHYTC+b1vNQTt3Pg83AA8As+bRb0ROjoNg2KQJWNSoPnAXod03CGZniV6UUkySNEj1LZM6OMzKKy4tbASHHcNh23zed6Ea98aXa5UjI7xgGTJLx/kjEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ovBKd4gEC39IOTeYb+qv9zDzbVc7voT+Jrfe24zaZyY=;
 b=LrqOePFcSCnphRZdmIWJU5pKMnX+fo/W85zOT3emKoDhPJNjAl6HzQcs6ooP09VPcbpyUnCvd7QXaF4HUTJU5Lz5Lj8exbUXfFRJsgrNxiuUaTpzMSKCtv12OWJLoaiejfT8pHoVnmAdX7xtEP5q5sTcg/Y6rx9flHfMBxuyn+Q=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4351.namprd11.prod.outlook.com (52.135.39.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:48 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:48 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 13/55] staging: wfx: avoid double warning when no more tx
 policy are available
Thread-Topic: [PATCH 13/55] staging: wfx: avoid double warning when no more tx
 policy are available
Thread-Index: AQHVtDLD8xTkZNX3aEu0AqQlv1La1w==
Date: Mon, 16 Dec 2019 17:03:40 +0000
Message-ID: <20191216170302.29543-14-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: caa39a18-205a-4889-c27b-08d78249eafd
x-ms-traffictypediagnostic: MN2PR11MB4351:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB43512E2A6ECDBA32CF374FC893510@MN2PR11MB4351.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:475;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(66556008)(66446008)(64756008)(66476007)(76116006)(85202003)(91956017)(66946007)(4744005)(54906003)(107886003)(4326008)(478600001)(110136005)(71200400001)(6512007)(81156014)(8676002)(81166006)(186003)(36756003)(2906002)(85182001)(6666004)(66574012)(1076003)(316002)(6506007)(5660300002)(86362001)(26005)(2616005)(6486002)(8936002)(29513003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4351;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2TrXeFPAZacsTDld8IOUAVkOfgQyq6QFO0ouCx+VH7MMVPkraHE+DLMtj6JClWFlW53P9SNzO3xZbSj+zzr4Zkho0E3vzjI0PVj8TqzsUYWDWuSDwXHHfDw/1w6C88aV1AZCU6fiufTSnsr2i/X6E0IIrqEW8gwPzzWpdg6a+A70+XxT1UI5OgSvqGczeCyb26XWmPc938cc9k52a2ZtY2uscim72YD1d6/e+cy2xv8e57JwH1HsexaoRx6k70nFwTG9j2O2ygWNVlxuq23TwIV+pAjUgEqF896Wg/dLfbAvsPo4lE+cSQEG5YFIOmGPoGAz21hDb1UuoZgzHh7MfZaGcFi3CvAdpcdbQj/t3e07P6G8b/iJFWicKV3Y19lx32yxGIc1EHnUZYoOtkem7UEO8iNEqxMdhoMJntVD3/k0f3txZnxUU3Rz4HEM2dyJoMDa8gW3U3glZiqGqSnRkqIgOk2ZxCglfyAd1LfnddgV1TokS0DjIKaJkHPoEa1y
Content-ID: <A11C44D6CB53E2428E524F6A8E629680@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caa39a18-205a-4889-c27b-08d78249eafd
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:40.4711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a4bbsuBOr3lGUSrCWxDFNmlNaej+vrvU+qdr/QoatQ6sprxxJY/cyV6nHPTmNeiQPIgURNs41lwPOIEqLyDKEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4351
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpD
dXJyZW50bHksIG51bWJlciBvZiBhdmFpbGFibGUgdHggcmV0cnkgcG9saWNpZXMgaXMgY2hlY2tl
ZCB0d28gdGltZXMuDQpPbmx5IG9uZSBpcyBzdWZmaWNpZW50Lg0KDQpTaWduZWQtb2ZmLWJ5OiBK
w6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2
ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyB8IDMgKystDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9kYXRhX3R4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYw0KaW5kZXggMzJl
MjY5YmVjZDc1Li5jOWRlYTYyNzY2MWYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2RhdGFfdHguYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMNCkBAIC0xNjks
NyArMTY5LDggQEAgc3RhdGljIGludCB3ZnhfdHhfcG9saWN5X2dldChzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZiwNCiAJd2Z4X3R4X3BvbGljeV9idWlsZCh3dmlmLCAmd2FudGVkLCByYXRlcyk7DQogDQog
CXNwaW5fbG9ja19iaCgmY2FjaGUtPmxvY2spOw0KLQlpZiAoV0FSTl9PTihsaXN0X2VtcHR5KCZj
YWNoZS0+ZnJlZSkpKSB7DQorCWlmIChsaXN0X2VtcHR5KCZjYWNoZS0+ZnJlZSkpIHsNCisJCVdB
Uk4oMSwgInVuYWJsZSB0byBnZXQgYSB2YWxpZCBUeCBwb2xpY3kiKTsNCiAJCXNwaW5fdW5sb2Nr
X2JoKCZjYWNoZS0+bG9jayk7DQogCQlyZXR1cm4gV0ZYX0lOVkFMSURfUkFURV9JRDsNCiAJfQ0K
LS0gDQoyLjIwLjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
