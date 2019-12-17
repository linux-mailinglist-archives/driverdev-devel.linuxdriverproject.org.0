Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB65123152
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C2B287D39;
	Tue, 17 Dec 2019 16:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BorovoJOvo7D; Tue, 17 Dec 2019 16:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC92187D33;
	Tue, 17 Dec 2019 16:14:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E26111BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DEE3185F9B
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7kgZYoEQFDM for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680044.outbound.protection.outlook.com [40.107.68.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F24F85F43
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:14:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3oqunfIclm+xARzAlyeSAsN1pAYQedsK9UmDfZ9OYl/4rKWn5ESpbRMGqfev1g04HRSzMpQ5P2OPC2CHowt9q9A7xjej/u32w5e5soLsT+OGEJgTvw76mHUajJ3FOMGZ82VqpPLZmGvVYe/NwYDL365/SdzDURNxVaui/1UawgB317eIzbYB9HPtSmuxVvu2xJCkZDB7zdYqAXWUjnl7XANRLk0IWIWYhPPo3scrbRbKSPAGJwpvJYsIll5D52XyjFGGdmPQVEXXzzzVciI4kbh/oWTkRXrVNpuL7tbPCvQXPDycWPGMK/Cfm7kCVIcBgjkvhK5a20IpRjy0YTFHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIKJQXDnYidfodu1jSnFXBCBXQv95KLU5XA6Fdku/Ig=;
 b=blU5NoCVFbyaj18RKFZU4C9/iD07BHP07rGIPsuAdiskUXy9aZxGETGYMUm9BJ5w1YsQRMuf9Q7vwakU3D+HmkttpL3s+NgFRH1kYlW016qFCDMLWSXPDb6odmZ6NajFQ0jffz8w0RhReqJb8Oa4T4Butg7KH7QgFSL5/6OxV1ye2xvcv2UX3M5U67nM0UoG1IYxzpPXLzCPcyNflisEJKlan4/L23bv/Azs8RrqhkfRBgyxJG6NUzo2mW8Tt1J24JelvbW1+gykKb2zMbGNCLjGjnfFv/ae9GURbklSO/WJrLpR1lr30pW8RFMAGUyUHGc/q66NWhF7L7G/J6Copg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIKJQXDnYidfodu1jSnFXBCBXQv95KLU5XA6Fdku/Ig=;
 b=iJxVszA1bpF/2+xw7CGs3Teus3UW9kWq+CDu0qys1ri7Y2E7SWxKAPttXTBnn5j3GrISsOePO2MQXa5i0eY95RD5hctIYVx7wLgqhjWOV8gSlb9e6kpGRd9AsvPlq7WUc2X87/IEpPTbOh36P4t9/mNJnX0P3nxp4OzYcBhc0Qc=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3791.namprd11.prod.outlook.com (20.178.254.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 16:14:38 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:14:38 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 09/55] staging: wfx: fix hif_set_mfp() with big endian hosts
Thread-Topic: [PATCH v2 09/55] staging: wfx: fix hif_set_mfp() with big endian
 hosts
Thread-Index: AQHVtPUUz7pPz6o2e0y45HuThzLe6Q==
Date: Tue, 17 Dec 2019 16:14:38 +0000
Message-ID: <20191217161318.31402-10-Jerome.Pouiller@silabs.com>
References: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0174.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::18) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.0
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 647b740f-1c45-483a-c9f0-08d7830c3737
x-ms-traffictypediagnostic: MN2PR11MB3791:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB379184AFEE430899E72379C393500@MN2PR11MB3791.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(346002)(136003)(39860400002)(189003)(199004)(2906002)(52116002)(107886003)(2616005)(86362001)(478600001)(6486002)(4326008)(64756008)(66556008)(66476007)(81156014)(66946007)(6506007)(1076003)(316002)(66446008)(8936002)(71200400001)(81166006)(5660300002)(36756003)(26005)(186003)(8676002)(85202003)(4744005)(66574012)(85182001)(110136005)(54906003)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3791;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i5/qYms6Kq37qmKP2O2XL9EjzHMDvVsSTPG15nUJeEqbot/FmTssbfUTpvV0rusb07/CmccQ2HCnwu8GxafX15IhD/axMKjPsUjF2aTFUQfUMduaV9B2XVYB9h0mhyol6U0ez87qGEXCCAFx7OMpuMC1B3zflOayYoMVohC1KoMDRYGMhl9UheOwkMFRxL7GJ9NeUUhn3deWlbxmYps4EkZAlcyE38OGqEvOGwJ9OWnHECjKSSGCXO37cAPfZ0oNEghWi7UCLqqsRZjnG0SIAmC9cMHN2fEC7o4f7R05hAqyr9AaHwQun76PLpZLtHhKjJUHxJJ1bQzMxpEX11dhjcGBIQs3qkyzOXwD0ETlSRJ/skUH4evC/zqYSyE6u/7qPW8yeHVfH5pwYRau15nCMhMUjD3E1u6IPx7KFDbLsTNYsaHh0wzsVF32EVhsF1Ls
Content-ID: <B541778D55CC6B4BBF363DFC69F32C21@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 647b740f-1c45-483a-c9f0-08d7830c3737
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:14:38.8042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9GSrn2mC8R1+LJVzoFaVrVhzgv3+rE7kcI3yhEoqO+EBwNxKixqAlclji4kdBEvEn+esCO9JFOTDhxCg/VYSyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3791
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKc3Ry
dWN0IGhpZl9taWJfcHJvdGVjdGVkX21nbXRfcG9saWN5IGlzIGFuIGFycmF5IG9mIHU4LiBUaGVy
ZSBpcyBubwpyZWFzb24gdG8gc3dhcCBpdHMgYnl0ZXMuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7Rt
ZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfdHhfbWliLmggfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmggYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaAppbmRleCBiYjA5MWUzOTVmZjUuLjliZTc0ODgxYzU2
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmgKKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmgKQEAgLTE0Nyw3ICsxNDcsNiBAQCBzdGF0aWMg
aW5saW5lIGludCBoaWZfc2V0X21mcChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCBjYXBhYmxl
LCBib29sIHJlcXVpcmVkKQogCX0KIAlpZiAoIXJlcXVpcmVkKQogCQl2YWwudW5wbWZfYWxsb3dl
ZCA9IDE7Ci0JY3B1X3RvX2xlMzJzKCh1MzIgKikgJnZhbCk7CiAJcmV0dXJuIGhpZl93cml0ZV9t
aWIod3ZpZi0+d2Rldiwgd3ZpZi0+aWQsCiAJCQkgICAgIEhJRl9NSUJfSURfUFJPVEVDVEVEX01H
TVRfUE9MSUNZLAogCQkJICAgICAmdmFsLCBzaXplb2YodmFsKSk7Ci0tIAoyLjI0LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
