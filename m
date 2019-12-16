Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC581217DA
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 19:40:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91EF022225;
	Mon, 16 Dec 2019 18:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iUrYYoh1KrfM; Mon, 16 Dec 2019 18:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 529E6204D7;
	Mon, 16 Dec 2019 18:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8B0A1BF308
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A049A864EF
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spWL1hftqFmx for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 18:40:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690055.outbound.protection.outlook.com [40.107.69.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F3278356F
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 18:40:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q7Jkk8fOac6emFW9UsrxRyKxlK+tw2aO46quI+GMrEFpBztov1HGXAlEnYDEh6zzU9Wf+WW+zz6hs1m/mfGB02U1k2zkrhnvmD4IeBW3sgWimUeNbo0K6zyAyp39snCW2mtG8PKAnUt2UUwkmpuQmh9/PEmZYFJjhPxsVcfzR3vyam9Xg5ohbVtDsqZRP7Tbv8La0P0bGrSjLr5yBV8LiFz+DRkqGT0mzgj2HBYNyaVGfiH0GRL7ZqKvcUTt6dbKxERAoO0CfOdrzIld0oM9FPvzvLdGNBFjebgoLQvpDF1ptpt8y2xQb7atpZ1/FoATQazNwu6Aps6bbnMFPl2RzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1ljpM1unF8pSnWFQGxia0iPUr2iLGMrzAbRzsCu2sY=;
 b=aHzBD3KhyRfkgxYbm7qu1N01erM/QOuJbKwh0wdJ2zIxD03GfIEZlCs//fw9L2aJSKsVJv8VzlxVWjFQvaEGwA7dknvYzhIBD+BsLc0DgAxyegfJKL71aRGenFd8HoSZv7+9m5kbVpKVNTAnHDC16FM45z49s2Fis+GvGJawQrqt4KKBhYpqzeVhnVICYnS4jeoo4iIM1MFuMf+CO5PqKBJxAGcXbJFU7bL80BljUCeSDWYf1lF1fd9303/7loM87TIVAcnO23utUWahcj/FdUnyIPuSsZyHE7rXaiQ5inEkglq/nTE2zKumnkfB3s8w/X7Xuv+ZpgITt0n/gY82AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1ljpM1unF8pSnWFQGxia0iPUr2iLGMrzAbRzsCu2sY=;
 b=nzECACEEHRKKX3BKENjFo215CKf/CCMzQ1og9Zm4gIUdmstDrQdkOU14JPCdtnYHBPlCqlqWYwrKwtTypiPuCovRfPz7KxRhsJJRJdUgHxL/tDhRAjzXLAMh6Eym245bhXuVlQnw9Fz3JpZWlgm405BmWIBZ7EcZPSf68Q8fgZ0=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4445.namprd11.prod.outlook.com (52.135.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 17:06:38 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:06:38 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 33/55] staging: wfx: remove redundant test while calling
 wfx_update_pm()
Thread-Topic: [PATCH 33/55] staging: wfx: remove redundant test while calling
 wfx_update_pm()
Thread-Index: AQHVtDLKeTmrGzcKVku43BbSIkPl/A==
Date: Mon, 16 Dec 2019 17:03:50 +0000
Message-ID: <20191216170302.29543-34-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: ca11c705-3617-4e3e-64c2-08d7824a506f
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB44450B05DC2623428E205AEC93510@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(39850400004)(396003)(136003)(189003)(199004)(110136005)(6486002)(107886003)(4744005)(36756003)(186003)(316002)(66946007)(54906003)(5660300002)(66574012)(66446008)(66556008)(85182001)(66476007)(76116006)(91956017)(64756008)(2616005)(6506007)(85202003)(2906002)(26005)(71200400001)(6512007)(4326008)(8936002)(81166006)(1076003)(478600001)(86362001)(81156014)(6666004)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4445;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OrdWclfDfqw4u3rbUmdLMPP3VgYTWLB1e5SmnYo3knnCUcrlDRM3Ddc393XV0KDad08hGUGdmdEpVO4VLaRMBomJbUSwCSCFzLXzZ4X9G0yxP0uSBzjzHILGGdOzjbV25ii43XwCp5h748BdUR6zJkuzAFO0ek8ykVZYu+OpWbgtG5pkZE4+Kl7nt1fN0DCkzDOY24JapiGuoJu4XoLxmW31px55eoSnyeGM5snK/BRZYjOvw6vUR3/tMFiWKmbsM5MXh/GXEDtHg1LVVE6sioNbGSoIqKHeWxlBAdNNuzu22tKI4tQV6kKHO3emOdbDLaeYM8ILxIcHrHRTS1k8G6Olsrf50veG5EdYI9o3DWXOk3XyvR04sFeoF1ubcSGoos9+vkSwOh9X4wlK4ERdFNRVrYYP2Tj/39d6q3ua1AKvdUimyoxfndZVeOtqZao9
Content-ID: <813A3A13B00BF342BC66A1233D7BA452@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca11c705-3617-4e3e-64c2-08d7824a506f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:50.8152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cuDryLZEwlPKIgSIrq7LPxYz1wiUm7Po4R3ajeY2Jo2iROlWZbEgz5uM6MlQT3waTkYIyePzWcJ4mrXyIcF2VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4445
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
b25kaXRpb24gYWJvdXQgd3ZpZi0+c3RhdGUgYW5kIHd2aWYtPmJzc19wYXJhbXMuYWlkIGlzIGFs
cmVhZHkgY2hlY2tlZA0KYXQgYmVnaW5uaW5nIG9mIHdmeF91cGRhdGVfcG0oKS4NCg0KU2lnbmVk
LW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0K
LS0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyB8IDMgKy0tDQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMNCmluZGV4IGVlMWIx
NTk1MDM4OS4uOTFmYTRkOGFhMzdkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9z
dGEuYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYw0KQEAgLTE0NDgsOCArMTQ0OCw3
IEBAIGludCB3ZnhfY29uZmlnKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCB1MzIgY2hhbmdlZCkN
CiAJCQkJCQkgICAgMiwgMjU1KTsNCiAJCQkJfQ0KIAkJCX0NCi0JCQlpZiAod3ZpZi0+c3RhdGUg
PT0gV0ZYX1NUQVRFX1NUQSAmJiB3dmlmLT5ic3NfcGFyYW1zLmFpZCkNCi0JCQkJd2Z4X3VwZGF0
ZV9wbSh3dmlmKTsNCisJCQl3ZnhfdXBkYXRlX3BtKHd2aWYpOw0KIAkJfQ0KIAkJd3ZpZiA9IHdk
ZXZfdG9fd3ZpZih3ZGV2LCAwKTsNCiAJfQ0KLS0gDQoyLjIwLjENCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
