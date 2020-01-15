Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F83713C3A4
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96A7581411;
	Wed, 15 Jan 2020 13:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n01LkgGBIp05; Wed, 15 Jan 2020 13:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B003B814A3;
	Wed, 15 Jan 2020 13:54:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E71A1BF983
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89FE720384
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 96dP+iJYujim for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:54:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2077.outbound.protection.outlook.com [40.107.223.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 7706120386
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:54:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZHZVg0aOsZIIfy7aU1HnXI8jcrUkGOoY6Eay4sBQ8Inh6NP1r7a4BVv/nslpof5pEK27n7E05nsqSXWD5T5qPc7w0KMJe0d9OnGLN7WkpwUdZLTPICRZiJhAq82ufMwVMZU9jAD7uppLRUuYCmXytRiSO/AA71YQxzvLTLcbqGt8V2kaqEshE/9LTaol5630hzQnxQVkD5amhmP4ZujwgAA4PiNftm8h/zyUqC759ExU08y7Q7RHMmSgtIACuirTryjhJfGewvJlitNKDAcABZnJm4oa6rVJXhGVPx57rwu7EYJcVs5fDk+a+a93BsfCYazeto7c4e+9n6r9RidT4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WJKgaa7pmmCRqtSbENrnVw4XdApYgK6og7UgQlebpmM=;
 b=dbS+S+7cFJ3LbzKr24Y+PBWivM6ewoANz3iOJgmr4RJ8uOUigL54Tg15kndBwVF1crbB1VA6GSpNykSZHyEjA7mUkb+gGoLvrrSdcRCNxdglshE8skAYHIJ9ZkuyApy2EYgJiWtw5kCgaUc8sXECgaMDQ8R5KPCwxUFkGtKlXIPHtXBzV9GhseqWjpVBVt0s0CRzCPa43994xLD+TF3FNl0+GzYKR0Lj327ZlL1mb+MrqOJvp04veXQqKRTI5NloJPI+WOeeIfWMiXzv3rKe/+KTK1KFxVefeMxyuCyGNA+mfmI7OHfBsVT6eL1hMTWL49Ld3/MWiNoLQe+Vy3FADg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WJKgaa7pmmCRqtSbENrnVw4XdApYgK6og7UgQlebpmM=;
 b=JD4yjZpbE2bBZ9u+454lY+KbWz/ZgZXHS6PnM3t9tbliQgGEr8uzyhQzo3fONnoToMSgCC17SHaK5et0ZdowOS6Mc8nf0q0HbPzTSPGcC7AXqrZ2SVuIK5OPyk0HlkQsyMfmdMD57Kyf+yfdHLXilz7KLwt/Onr/Do2zp4cH3zQ=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4094.namprd11.prod.outlook.com (10.255.180.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 13:54:03 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:54:03 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:54:02 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 01/65] staging: wfx: revert unexpected change in debugfs
 output
Thread-Topic: [PATCH v2 01/65] staging: wfx: revert unexpected change in
 debugfs output
Thread-Index: AQHVy6s/YEhg+rUE80CFaDwRY6jjlw==
Date: Wed, 15 Jan 2020 13:54:03 +0000
Message-ID: <20200115135338.14374-2-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: deb7213f-94f0-4c1a-310c-08d799c26163
x-ms-traffictypediagnostic: MN2PR11MB4094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4094F31EF25B2C0264910D0193370@MN2PR11MB4094.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:220;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(316002)(110136005)(54906003)(85202003)(81156014)(5660300002)(8676002)(71200400001)(8936002)(81166006)(186003)(6506007)(86362001)(66946007)(66446008)(66476007)(66556008)(2906002)(64756008)(478600001)(6512007)(52116002)(66574012)(6486002)(1076003)(16526019)(4326008)(85182001)(36756003)(8886007)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4094;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MVuZGiiVaDql32ySGtJVYVDi1qfqLN8TEDY5dqhYpIyMqoGS0VC6YsmAWmrBkWE6Vn9nkw81k9B66VWVT/cZcxVE0OZ2EZ+v96g1tBgONoRAOKSZ9ft8LIkpmYugoc5ACPT9ggX+FlFOQOd2XMQABRZdo3l6k+51dPPPAvgkxJqxczQdfQHnrkodQjWfd9YA2KDLIE5Ezq1LLzZiPRd9H8HkPPazOUpL3OcQgAu+HmlSF2san1lEeHKD+xUvD84rQN7zHVDhyckvgh7TFgApcFIbuCCJD1HwNr4HS4dXilmCJI/8aPnLWMWQyitiOrbUNQjJ5970mACG995cvzv5b6c7XrS3ZoKnsHAwSCGVQTQJw3TmSCgM4hursZMLADWmMFlfCCP2XFSTJUt3K8DxEsaFJvhWkri3Osg2EHnEGBvTdC/NwBXw+dPw7u9vjrbu
Content-ID: <A41B07AA4C0E204AA2689A37D7CCEF8B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deb7213f-94f0-4c1a-310c-08d799c26163
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:54:03.4689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b1Rzs0pt0JBlvwe/9vKHao82eNjTvXlFGKrNpwbbo2DXEQGHOCI0NWN52P34AaNbtTvD59VL0Bcp0tyjkn14cg==
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
Cc: Jules Irenge <jbi.octave@gmail.com>, Pascal Prime <Pascal.Prime@silabs.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSXQg
YXBwZWFycyB0aGF0IGNvbW1pdCA4YzcxMjhjNGNmNGUgKCJzdGFnaW5nOiBhbGlnbiB0byBmaXgg
d2FybmluZ3Mgb2YKbGluZSBvdmVyIDgwIGNoYXJhY3RlcnMiKSBkbyBzbGlnaHRseSBtb3JlIHRo
YW4gd2hhdCBpcyBleHBsYWluZWQgaW4KY29tbWl0IGxvZy4KCkVzcGVjaWFsbHksIGl0IGNoYW5n
ZXMgdGhlIG91dHB1dCBvZiB0aGUgZmlsZSByeF9zdGF0cyBmcm9tIGRlYnVnZnMuCkZyb20gc29t
ZSBwb2ludCBvZiB2aWV3LCB0aGlzIGZpbGUgY2FuIGJlIGNvbnNpZGVyZWQgYXMgYSBwYXJ0IG9m
IHRoZQpBUEkuIEFueSBjaGFuZ2Ugb24gaXQgc2hvdWxkIGJlIGNsZWFybHkgYW5ub3VuY2VkLgoK
U2luY2UgdGhlIGNoYW5nZSBpbnRyb2R1Y2VkIGRvZXMgbm90IHNlZW1zIHRvIGhhdmUgYW55IGp1
c3RpZmljYXRpb24sCnJldmVydCBpdC4KClJlcG9ydGVkLWJ5OiBQYXNjYWwgUHJpbWUgPHBhc2Nh
bC5wcmltZUBzaWxhYnMuY29tPgpDYzogSnVsZXMgSXJlbmdlIDxqYmkub2N0YXZlQGdtYWlsLmNv
bT4KRml4ZXM6IDhjNzEyOGM0Y2Y0ZSAoInN0YWdpbmc6IGFsaWduIHRvIGZpeCB3YXJuaW5ncyBv
ZiBsaW5lIG92ZXIgODAgY2hhcmFjdGVycyIpClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWls
bGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4
L2RlYnVnLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2RlYnVnLmMKaW5kZXggZDE3YTc1MjQyMzY1Li4xMTY0YWJhMTE4YTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcuYworKysgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2RlYnVnLmMKQEAgLTE0NSw3ICsxNDUsNyBAQCBzdGF0aWMgaW50IHdmeF9yeF9zdGF0
c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqc2VxLCB2b2lkICp2KQogCQkgICBzdC0+cHdyX2Nsa19m
cmVxLAogCQkgICBzdC0+aXNfZXh0X3B3cl9jbGsgPyAieWVzIiA6ICJubyIpOwogCXNlcV9wcmlu
dGYoc2VxLAotCQkgICAiTi4gb2YgZnJhbWVzOiAlZCwgUEVSICh4MTBlNCk6ICVkLCBUaHJvdWdo
cHV0OiAlZEticHMvc1xuIiwKKwkJICAgIk51bS4gb2YgZnJhbWVzOiAlZCwgUEVSICh4MTBlNCk6
ICVkLCBUaHJvdWdocHV0OiAlZEticHMvc1xuIiwKIAkJICAgc3QtPm5iX3J4X2ZyYW1lLCBzdC0+
cGVyX3RvdGFsLCBzdC0+dGhyb3VnaHB1dCk7CiAJc2VxX3B1dHMoc2VxLCAiICAgICAgIE51bS4g
b2YgICAgICBQRVIgICAgIFJTU0kgICAgICBTTlIgICAgICBDRk9cbiIpOwogCXNlcV9wdXRzKHNl
cSwgIiAgICAgICAgZnJhbWVzICAoeDEwZTQpICAgIChkQm0pICAgICAoZEIpICAgIChrSHopXG4i
KTsKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
