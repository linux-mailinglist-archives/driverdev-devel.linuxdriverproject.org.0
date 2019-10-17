Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D3BDA87B
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:40:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2FBA88626;
	Thu, 17 Oct 2019 09:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4bVpDGB-fJ2; Thu, 17 Oct 2019 09:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B9B188602;
	Thu, 17 Oct 2019 09:40:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04E361BF9C8
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 87F9A2046F
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MEtJv3xxyBP3 for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770071.outbound.protection.outlook.com [40.107.77.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 06E7E2043A
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCkSzrlMtKh3Qlr3dwfDyPd/2vkj+x6114YJMWkW7aqLQLYfTGBgYx5ICs6jt4WPzgJSXfsiLbe9Sx4V+YN34Sa3qHDEZnNqM2aGJ64hGsgJZBqZnI9+6zvuOR2cZyjR2GhOIyAizo90d3pIDUE1q824JmKOtNsevGDtDzh+PE3sfkzuZbEK0h5Y4zGGFSr1GO+2FvOeThaLSYh9YIuLA5AMsw9I1p55eWBu7J6Ou4DQKuTuqkqNbWJrOOdeijqLU3biuxfOIklicb3fChfC3Gm46km62PNweP0kfiRuJodSitycZiflsasjhU5OsQi+i303faiBKfFWBVSpx4wt4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbWN6rnoyNKK9Zl2A4ekkbWMzH7SsoW8lvR9fz9T7QU=;
 b=mycnB9szWkrblVB8ldhfjHhGq406S0Epy1pP3+GH6AIIVP1OIrWcf/pMTljYesfMhANgUIErlGB6s3PZ+NaDaMCZKQAysljnBtKE6s8r5aFWhA9VFgNLYp/C55aie/DA002+d3M0QM2FN/BjD/oadsJ2c8vZM2YHEFlH0GqaWwh5ngPeHPE+SzuhPtsDCLUiTUprpE3Oopfm0xeG56VzUbjqL9BefUo19hPnngmw5LFr7eUtPtgInWtkRBTqSRylD01qdgUzyDAFdhV/pSIAJxQvpYnHXrYXc8x2w35Hn2c3mxip44l6ItSAysI9R74gWdRsc/c8YNOPePjGUE5Cag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbWN6rnoyNKK9Zl2A4ekkbWMzH7SsoW8lvR9fz9T7QU=;
 b=qOg6FdK4h4IAfoIlbR24rRPU8D7LNqGwwjpFIQrPJqjIWP7UV+PMknFqLfHx/pbsJcSyaAApSKbsWZLkzRYq+hxEn2XYOsAAoyHff95rmur/vdhurfVpeBGN9qw6I9o3qUM3oZwVraVXZdGFSK8nKVm6yGGa8Lky8uxE2XvxHCM=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4254.namprd11.prod.outlook.com (52.135.38.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Thu, 17 Oct 2019 09:40:06 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:40:06 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 2/6] staging: wfx: relocate wfx_fill_sl_key() in secure_link.h
Thread-Topic: [PATCH 2/6] staging: wfx: relocate wfx_fill_sl_key() in
 secure_link.h
Thread-Index: AQHVhM7bzj3S2/hcxk64CrUwMR70Ng==
Date: Thu, 17 Oct 2019 09:40:05 +0000
Message-ID: <20191017093954.657-2-Jerome.Pouiller@silabs.com>
References: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 881463ac-ef7f-48d1-2644-08d752e5fe1e
x-ms-traffictypediagnostic: MN2PR11MB4254:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4254CD2491592CC036432BD8936D0@MN2PR11MB4254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(91956017)(76116006)(54906003)(71190400001)(66946007)(26005)(86362001)(186003)(305945005)(99286004)(66476007)(5660300002)(2501003)(64756008)(36756003)(14454004)(66574012)(66556008)(1076003)(7736002)(71200400001)(66066001)(66446008)(2906002)(2351001)(478600001)(6512007)(76176011)(6116002)(3846002)(6506007)(14444005)(6916009)(256004)(316002)(446003)(11346002)(2616005)(6486002)(25786009)(476003)(486006)(81156014)(1730700003)(107886003)(102836004)(81166006)(5640700003)(4326008)(6436002)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4254;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tvZnN7tE7y0YpIDFD1eDnOQG4MPlGc6HozD5hJNCNFoja79i0nLP6wDX/VfrvH5TfQ3p/LAsebbPwHwnRJB1PScrqM/wzVv4J3s53maYBxB6jSsjfYj9W+k8tknUhbX+vCE+9WNvy9NcuGveog+6ONPgrNiOpfV6PIW1QvmSBYgjckxQ+QOdamzfAMVzrFMndAyRVg/0OJxvIbZ01jG6IwEC0pWXWEFPVQtDL1HFeu30I9IOexZAJ5USXHLeEf0u2to9TJQRnzeoX6chDD2Lgu3VnICikItOBQiWCv8Vn4GtW9n+bGc/tET6A9FYo8mr1uHmEawdWOER27RBI8oK6SHJLbgg/lCtrzY1SCa06tNxeua+oIw0DozHN0S1oajMsdTk4OaMqMGc25WF7hzlpU0uv82MUvsGn2cA25BgeqM=
Content-ID: <E06D92B2A2ECCC4DA131122556BAD7CC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 881463ac-ef7f-48d1-2644-08d752e5fe1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:40:05.4904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F140XUOwigghPhvAkyc4Wrn324puVy+NzfxLz31Bft9s/jw3zmtuEuE+zRsqv6en/u2jnmN/QQ2S4Y78Cjbfaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4254
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQoi
U2VjdXJlIGxpbmsiIGZlYXR1cmUgaXMgbm90IGF2YWlsYWJsZSBpbiBpbi10cmVlIGRyaXZlciAo
YmVjYXVzZSBpdA0KZGVwZW5kcyBvbiBtYmVkdGxzKS4gVGh1cywgc2VjdXJlX2xpbmsuaCBvbmx5
IGVtcHR5IGZ1bmN0aW9ucy4NCg0KTW9kdWxlIHBhcmFtZXRlciAic2xrX2tleSIgYW5kIGFzc29j
aWF0ZWQgZnVuY3Rpb24gd2Z4X2ZpbGxfc2xfa2V5KCkgaGFkDQphbiB1bmp1c3RpZmlhYmxlIHBs
YWNlIGluIG1haW4uYy4gVGhpcyBwYXRjaCByZWxvY2F0ZSB0aGVtIHRvDQpzZWN1cmVfbGluay5o
Lg0KDQpCVFcsIGNvbnRlbnQgb2Ygd2Z4X2ZpbGxfc2xfa2V5KCkgaXMgbm93IHVzZWxlc3MuIEp1
c3Qga2VlcCBhIHdhcm5pbmcgaWYNCnVzZXIgdHJ5IHRvIHVzZSAic2xrX2tleSIgYXR0cmlidXRl
ICh1bnN1cHBvcnRlZCBieSB0aGlzIGRyaXZlcikuDQoNClNpZ25lZC1vZmYtYnk6IErDqXLDtG1l
IFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4NCi0tLQ0KIGRyaXZlcnMvc3Rh
Z2luZy93ZngvbWFpbi5jICAgICAgICB8IDI5ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmggICAgICAgIHwgIDEgLQ0KIGRyaXZlcnMvc3Rh
Z2luZy93Zngvc2VjdXJlX2xpbmsuaCB8ICA5ICsrKysrKysrKw0KIDMgZmlsZXMgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L21haW4uYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jDQppbmRleCAx
NTdlMGZjMDEwN2UuLjNhNDNmMTkwZDk2YSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvbWFpbi5jDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYw0KQEAgLTQ0LDEwICs0
NCw2IEBAIHN0YXRpYyBpbnQgZ3Bpb193YWtldXAgPSAtMjsNCiBtb2R1bGVfcGFyYW0oZ3Bpb193
YWtldXAsIGludCwgMDY0NCk7DQogTU9EVUxFX1BBUk1fREVTQyhncGlvX3dha2V1cCwgImdwaW8g
bnVtYmVyIGZvciB3YWtldXAuIC0xIGZvciBub25lLiIpOw0KIA0KLXN0YXRpYyBjaGFyICpzbGtf
a2V5Ow0KLW1vZHVsZV9wYXJhbShzbGtfa2V5LCBjaGFycCwgMDYwMCk7DQotTU9EVUxFX1BBUk1f
REVTQyhzbGtfa2V5LCAic2VjcmV0IGtleSBmb3Igc2VjdXJlIGxpbmsgKGV4cGVjdCA2NCBoZXhh
ZGVjaW1hbCBkaWdpdHMpLiIpOw0KLQ0KICNkZWZpbmUgUkFURVRBQl9FTlQoX3JhdGUsIF9yYXRl
aWQsIF9mbGFncykgeyBcDQogCS5iaXRyYXRlICA9IChfcmF0ZSksICAgXA0KIAkuaHdfdmFsdWUg
PSAoX3JhdGVpZCksIFwNCkBAIC0xOTQsMjkgKzE5MCw2IEBAIHN0cnVjdCBncGlvX2Rlc2MgKndm
eF9nZXRfZ3BpbyhzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBvdmVycmlkZSwgY29uc3QgY2hhciAq
bGFiDQogCXJldHVybiByZXQ7DQogfQ0KIA0KLXN0YXRpYyB2b2lkIHdmeF9maWxsX3NsX2tleShz
dHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCB3ZnhfcGxhdGZvcm1fZGF0YSAqcGRhdGEpDQotew0K
LQljb25zdCBjaGFyICphc2NpaV9rZXkgPSBOVUxMOw0KLQlpbnQgcmV0ID0gMDsNCi0NCi0JaWYg
KHNsa19rZXkpDQotCQlhc2NpaV9rZXkgPSBzbGtfa2V5Ow0KLQlpZiAoIWFzY2lpX2tleSkNCi0J
CXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfc3RyaW5nKGRldi0+b2Zfbm9kZSwgInNsa19rZXkiLCAm
YXNjaWlfa2V5KTsNCi0JaWYgKHJldCA9PSAtRUlMU0VRIHx8IHJldCA9PSAtRU5PREFUQSkNCi0J
CWRldl9lcnIoZGV2LCAiaWdub3JpbmcgbWFsZm9ybWF0dGVkIGtleSBmcm9tIERUXG4iKTsNCi0J
aWYgKCFhc2NpaV9rZXkpDQotCQlyZXR1cm47DQotDQotCXJldCA9IGhleDJiaW4ocGRhdGEtPnNs
a19rZXksIGFzY2lpX2tleSwgc2l6ZW9mKHBkYXRhLT5zbGtfa2V5KSk7DQotCWlmIChyZXQpIHsN
Ci0JCWRldl9lcnIoZGV2LCAiaWdub3JpbmcgbWFsZm9ybWF0dGVkIGtleTogJXNcbiIsIGFzY2lp
X2tleSk7DQotCQltZW1zZXQocGRhdGEtPnNsa19rZXksIDAsIHNpemVvZihwZGF0YS0+c2xrX2tl
eSkpOw0KLQkJcmV0dXJuOw0KLQl9DQotCWRldl9lcnIoZGV2LCAic2VjdXJlIGxpbmsgaXMgbm90
IHN1cHBvcnRlZCBieSB0aGlzIGRyaXZlciwgaWdub3JpbmcgcHJvdmlkZWQga2V5XG4iKTsNCi19
DQotDQogLyogTk9URTogd2Z4X3NlbmRfcGRzKCkgZGVzdHJveSBidWYgKi8NCiBpbnQgd2Z4X3Nl
bmRfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1bnNpZ25lZCBjaGFyICpidWYsIHNpemVfdCBs
ZW4pDQogew0KQEAgLTMzNCw3ICszMDcsNyBAQCBzdHJ1Y3Qgd2Z4X2RldiAqd2Z4X2luaXRfY29t
bW9uKHN0cnVjdCBkZXZpY2UgKmRldiwNCiAJbWVtY3B5KCZ3ZGV2LT5wZGF0YSwgcGRhdGEsIHNp
emVvZigqcGRhdGEpKTsNCiAJb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmcoZGV2LT5vZl9ub2RlLCAi
Y29uZmlnLWZpbGUiLCAmd2Rldi0+cGRhdGEuZmlsZV9wZHMpOw0KIAl3ZGV2LT5wZGF0YS5ncGlv
X3dha2V1cCA9IHdmeF9nZXRfZ3BpbyhkZXYsIGdwaW9fd2FrZXVwLCAid2FrZXVwIik7DQotCXdm
eF9maWxsX3NsX2tleShkZXYsICZ3ZGV2LT5wZGF0YSk7DQorCXdmeF9zbF9maWxsX3BkYXRhKGRl
diwgJndkZXYtPnBkYXRhKTsNCiANCiAJbXV0ZXhfaW5pdCgmd2Rldi0+Y29uZl9tdXRleCk7DQog
CW11dGV4X2luaXQoJndkZXYtPnJ4X3N0YXRzX2xvY2spOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvbWFpbi5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmgNCmluZGV4IGYy
YjA3ZWQxNjI3Yy4uODc1ZjhjMjI3ODAzIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9tYWluLmgNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5oDQpAQCAtMjIsNyArMjIs
NiBAQCBzdHJ1Y3Qgd2Z4X3BsYXRmb3JtX2RhdGEgew0KIAkvKiBLZXlzZXQgYW5kICIuc2VjIiBl
eHRlbnRpb24gd2lsbCBhcHBlbmRlZCB0byB0aGlzIHN0cmluZyAqLw0KIAljb25zdCBjaGFyICpm
aWxlX2Z3Ow0KIAljb25zdCBjaGFyICpmaWxlX3BkczsNCi0JdW5zaWduZWQgY2hhciBzbGtfa2V5
W0FQSV9LRVlfVkFMVUVfU0laRV07DQogCXN0cnVjdCBncGlvX2Rlc2MgKmdwaW9fd2FrZXVwOw0K
IAkvKg0KIAkgKiBpZiB0cnVlIEhJRiBEX291dCBpcyBzYW1wbGVkIG9uIHRoZSByaXNpbmcgZWRn
ZSBvZiB0aGUgY2xvY2sNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NlY3VyZV9s
aW5rLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NlY3VyZV9saW5rLmgNCmluZGV4IGUyZGExYzcz
Yzc2MC4uMzc2ZDdiYzRjMGM0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zZWN1
cmVfbGluay5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NlY3VyZV9saW5rLmgNCkBAIC01
LDYgKzUsOCBAQA0KICNpZm5kZWYgV0ZYX1NFQ1VSRV9MSU5LX0gNCiAjZGVmaW5lIFdGWF9TRUNV
UkVfTElOS19IDQogDQorI2luY2x1ZGUgPGxpbnV4L29mLmg+DQorDQogI2luY2x1ZGUgImhpZl9h
cGlfZ2VuZXJhbC5oIg0KIA0KIHN0cnVjdCB3ZnhfZGV2Ow0KQEAgLTMzLDYgKzM1LDEzIEBAIHN0
YXRpYyBpbmxpbmUgaW50IHdmeF9zbF9jaGVja19wdWJrZXkoc3RydWN0IHdmeF9kZXYgKndkZXYs
IHVpbnQ4X3QgKm5jcF9wdWJrZXksDQogCXJldHVybiAtRUlPOw0KIH0NCiANCitzdGF0aWMgaW5s
aW5lIHZvaWQgd2Z4X3NsX2ZpbGxfcGRhdGEoc3RydWN0IGRldmljZSAqZGV2LA0KKwkJCQkgICAg
IHN0cnVjdCB3ZnhfcGxhdGZvcm1fZGF0YSAqcGRhdGEpDQorew0KKwlpZiAob2ZfZmluZF9wcm9w
ZXJ0eShkZXYtPm9mX25vZGUsICJzbGtfa2V5IiwgTlVMTCkpDQorCQlkZXZfZXJyKGRldiwgInNl
Y3VyZSBsaW5rIGlzIG5vdCBzdXBwb3J0ZWQgYnkgdGhpcyBkcml2ZXIsIGlnbm9yaW5nIHByb3Zp
ZGVkIGtleVxuIik7DQorfQ0KKw0KIHN0YXRpYyBpbmxpbmUgaW50IHdmeF9zbF9pbml0KHN0cnVj
dCB3ZnhfZGV2ICp3ZGV2KQ0KIHsNCiAJcmV0dXJuIC1FSU87DQotLSANCjIuMjAuMQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
