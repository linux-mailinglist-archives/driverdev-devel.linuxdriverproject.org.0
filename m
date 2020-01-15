Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE7113C3FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:55:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF38D87A30;
	Wed, 15 Jan 2020 13:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RlmTuF5raD+T; Wed, 15 Jan 2020 13:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D73F87A00;
	Wed, 15 Jan 2020 13:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2B8A1BF983
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A748020010
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vEAc3RZJNkvd for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:55:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2050.outbound.protection.outlook.com [40.107.223.50])
 by silver.osuosl.org (Postfix) with ESMTPS id A964E204B0
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:55:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBS5sJXdtYbMhe8DG4SMudQ2ZPhoWXGyNRkOtiNofFwiHQqLKh/PBpJxhbxZ1MuH7Hy3yCH3U/YYWc+9U78zLDN8Y3UBSsRAKYnPNWoNGbO/bvCEU5LP46ddkK3LlHw10lanu+u2BwOkWJRYURaZ4qUX20RFBpdb7uxTZXzoeKnfhT4UY6wJYFMRFrJLpEmTNmxad6ViLacXylevHOzPCHbt2s2sjmGG5QaGmVBfbEo5dilNA/tkSX2obkQavIhz4vye9hd2TAQ7JXI/sSDrsGDqH1I522H7Lu1G8kBt2zdzjqeFtMfdzSCVn1zdPGG030HCjQRnCkew0t16KG47Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=deqXYivdmrIQ1V4pRuNVzQroye4fOZlmczykJ4IKe6k=;
 b=XeyJrrkqOzHB0Q1TAPh+ouEYGDJaC1RQHYhiyXrQIq6rGhZvuMn6yOxUDvcrHXLOYjmQFnIYlvrmryHPIbRp8EEb3Tost1NavTc8ntUcMvczAO/W5RVW4i3oBJ/OAsDvrc4quhaCOo2qvjBTkMFvbJzn8ceG1g2lvV16a5/nuON6Nd2tVQKtC+8ITwh16ePTYU1B2pX09tWeKkd3X+maYJ5zoBqbUahBpxezRI3qtfcIDokEZqal0unxZNbY1fkeFj/Ctxvg+kkK8LXu5yyJxqr2EC12hQHPeTRvP0X3/3K9uU7Oxr8gQYJ+N96YFAgdTr+AGI5W0dGzNFVl+lemIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=deqXYivdmrIQ1V4pRuNVzQroye4fOZlmczykJ4IKe6k=;
 b=TCFgAZF2vMAbEuMBrOGOoSjHAmAbWAGfkl/4iiWI5X8UkijV/UN9ehg9vFWBTFShC9qNKMdNO5lo3uL9p6dDZw7D0wR5uqAud5ofK3zd9BGSlHqccI26M/+UgB55S1E7FDFw/VXMyDMyWpv7uamA3ZYeCCSO3RpHo6Ljl4jCYl4=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4094.namprd11.prod.outlook.com (10.255.180.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 13:55:23 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:55:23 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:55:04 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 43/65] staging: wfx: fix case where RTS threshold is 0
Thread-Topic: [PATCH v2 43/65] staging: wfx: fix case where RTS threshold is 0
Thread-Index: AQHVy6tjapVyAR1lZEqEvR3HteKqjA==
Date: Wed, 15 Jan 2020 13:55:05 +0000
Message-ID: <20200115135338.14374-44-Jerome.Pouiller@silabs.com>
References: <20200115135338.14374-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20200115135338.14374-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20)
 To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.25.0
x-originating-ip: [2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a73a1364-83b5-4a39-abb5-08d799c2862e
x-ms-traffictypediagnostic: MN2PR11MB4094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4094EEAC61FBA8AF9382C8D293370@MN2PR11MB4094.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(316002)(110136005)(54906003)(85202003)(81156014)(5660300002)(8676002)(4744005)(71200400001)(8936002)(81166006)(186003)(6506007)(86362001)(66946007)(66446008)(66476007)(66556008)(2906002)(64756008)(478600001)(6512007)(52116002)(66574012)(6486002)(1076003)(16526019)(4326008)(85182001)(107886003)(36756003)(8886007)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4094;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dGsbf82TO6lbYqpFvoSaNnvMae9ETBlWhcavfCxp4VX2SNtDct0eDYDbD3oV/ZsMA4lmKSSYv0Q/TuqWMvOmLfNy1hdiMmeUMRZZSi+itaWi/TY5/V1pYfbXGCM4JrlU7r2m+qZIjQZ9/2jcJVfohyw7zSg+7DEAwI5xSRz+WlYCfqYO0cKAavi/C7xwpl9aRZbNreIK54EMp5xP2XrFJA4GwmGBdzgyd5Z0A2KXQTT0MBl4INj8ntqvtP+ewCBbU/uQGWBLeYJgJU/3Hrj9iwhfs66ssiY8C8yIJZZX1isDFuGa2YZfjyLeeoC7cG4SECD19QeKb1Qvodpj9klCvSevU+nPRK5qzIKlJc9r5cs19VjRglOTGbrgrsSNty+htk9vGVYWiMqfFWlws/FfOADOkCVHBjEJlpaHqwwb2NEbZ1n8xbvVtLXBlOhIdVWo
Content-ID: <EA9D50ACA0672540AFACA32FCBF50B48@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a73a1364-83b5-4a39-abb5-08d799c2862e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:55:05.3063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yQLgIj2YILjqoXXJK6l6upiWrdy9TZOjjnf3PMdSxN6kH8c0kYW2aBK4y3n3Fya/4DRxN6Qf/K3L8Bgcw5tdPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4094
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSWYg
UlRTIHRocmVzaG9sZCBpcyAwLCBpdCBjdXJyZW50bHkgZGlzYWJsZXMgUlRTLiBJdCBzaG91bGQg
bWVhbgoiZW5hYmxlZCBmb3IgZXZlcnkgZnJhbWVzIi4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1l
IFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eF9taWIuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4
X21pYi5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmgKaW5kZXggY2NlYTNmMTVh
MzRkLi5iZjM3NjljMmE5YjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4
X21pYi5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oCkBAIC0zOTEsNyAr
MzkxLDcgQEAgc3RhdGljIGlubGluZSBpbnQgaGlmX3dlcF9kZWZhdWx0X2tleV9pZChzdHJ1Y3Qg
d2Z4X3ZpZiAqd3ZpZiwgaW50IHZhbCkKIHN0YXRpYyBpbmxpbmUgaW50IGhpZl9ydHNfdGhyZXNo
b2xkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgdmFsKQogewogCXN0cnVjdCBoaWZfbWliX2Rv
dDExX3J0c190aHJlc2hvbGQgYXJnID0gewotCQkudGhyZXNob2xkID0gY3B1X3RvX2xlMzIodmFs
ID4gMCA/IHZhbCA6IDB4RkZGRiksCisJCS50aHJlc2hvbGQgPSBjcHVfdG9fbGUzMih2YWwgPj0g
MCA/IHZhbCA6IDB4RkZGRiksCiAJfTsKIAogCXJldHVybiBoaWZfd3JpdGVfbWliKHd2aWYtPndk
ZXYsIHd2aWYtPmlkLAotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
