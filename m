Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08921592D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 16:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03B1F8778F;
	Tue, 11 Feb 2020 15:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id giTiNgjWACT2; Tue, 11 Feb 2020 15:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00A83876F2;
	Tue, 11 Feb 2020 15:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 679101BF86D
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 15:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63E3B85535
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 15:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvEd6xB_rrX7 for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 15:20:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2077.outbound.protection.outlook.com [40.107.92.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 032ED8330E
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 15:20:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhunTLOuqCW0ZjU9c4sA0NsdywaHD61NMruwwv/z2UIsDchOK6n5ijFzO98vJktJ6lA/egday4ZBmJXPkMHwBG31xjJfKtiCstQPmAECee3Tcab2QTcJdkeLF5eW0LDRby8b6gJZD73qCXSkZa7ULVU0mdSlsN3YU5q3MdTBrzJsXpUmGgjTCKaUzDC/DOsHBGb4GvkHMr/sjvl7WWASjSWUSM4T/dBEJdkELAUHr+7SozOm/Z0cZLjFFN+gS+YkqSrY0EMdFD3d/j26oDfRXRZUWCKQnqGQLTJSD731zQcZV4ADuSZL/A3cgW0MBJU0dFnIYapNvKw/SW4+4hYOjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V79ceJjrJpYj8MImsf0xQl0Xok+l7CPq2Bwi3fvXjRs=;
 b=HWR+e1XxD2T0yVwXoJklg13GFk5tH6ctSQ9zj7EWoqv2ihxQjxtA3nuNcD0z4LHCeZ+qBmsEDiEQK5i+LPqmpfNwH5y0urK9pTecUTfw7yThFaHkEI5LERuCQ63Ku/mE7lP1llxfkYExfiwMcWwP/hyIQPnHxZtvNejRS/qvILQys6MoX3P68tIs5uy8ogimFK/9Loe3c3Zy1zunlJ4T6lpaIT/ctxb6975X8h7hYqCxJlqT1eU1aEYn7236cDkHaZ1BQB2RbdNv8yvcSeHdKOJ1vxculX7EwRmxxlBGnEK38RKolEwtNO/MMbV3luZVB+JoKqCM1N9w+/u99Ugn4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V79ceJjrJpYj8MImsf0xQl0Xok+l7CPq2Bwi3fvXjRs=;
 b=ZhOBsDrIw5WK9uHBwd/R2AJjydaGJm2S7J2Io1+UDB1q3MO0cXPTQ/apyIwiz170CvtaKC4JP5yDUCxORJtUKVyhdVt4HpQVxSBz5J4q0TZcv5QUQQt4Xj++Dk8hIyc2/T1hvwHacsxQr0IC1ChFDcmhdtXh41y/BdONlrASNMI=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3566.namprd11.prod.outlook.com (20.178.251.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 11 Feb 2020 15:20:49 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 15:20:49 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v2 1/6] staging: wfx: fix init/remove vs IRQ race
Thread-Topic: [PATCH v2 1/6] staging: wfx: fix init/remove vs IRQ race
Thread-Index: AQHV4MbuiHaVMiOfW0mOoioEnJv8s6gV2KSAgAAZKwCAACpOgA==
Date: Tue, 11 Feb 2020 15:20:49 +0000
Message-ID: <2044571.OlaXUWzjsk@pc-42>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
 <4119656.HTyy427nan@pc-42> <20200211124922.GA23464@qmqm.qmqm.pl>
In-Reply-To: <20200211124922.GA23464@qmqm.qmqm.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6164dc23-ee60-48e0-a7f2-08d7af05f9b8
x-ms-traffictypediagnostic: MN2PR11MB3566:
x-microsoft-antispam-prvs: <MN2PR11MB3566B4A8A2156C7D5354369D93180@MN2PR11MB3566.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(376002)(366004)(136003)(39850400004)(396003)(189003)(199004)(6916009)(2906002)(8936002)(186003)(6506007)(81166006)(81156014)(8676002)(6486002)(26005)(6512007)(9686003)(64756008)(66446008)(478600001)(66946007)(66556008)(91956017)(76116006)(316002)(4326008)(54906003)(66476007)(33716001)(71200400001)(86362001)(85202003)(85182001)(5660300002)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3566;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DBjUefUszAkLO6HfiZ4q/ox0AiIlO4iixxRoRZWQwlQOsJbosE5dtZJeZHsV/++CUxWJ+bGom9M6aYfALBZTDmeDxOHM7F8XzYfjiWGXzZYf88UNv/QCqjh8HKpV7vOrD0PKLF7xT9HIDIX272/XLfzfhAOzPcF+oN/utkuPfyqB19rfoVvnioN62fnUsDN6j9j3BieV/FDYfDrVYqASk23w73JwCffGoXm3XtvcmGSuU56QzbgSCEKzC2pniVTp8f0XCEeG93iNpMgYdm+F2AlydhsxUBx6SjiA0tuJop1CjDtc4vAa+lYmtcZzUFwg3Av4JXp2mcmpycqu6jJHCpr+g68GzFV4EUrQZpEZEbJcoYL3kDJI1Aj+1uaH4dy52VvXMeJ8untuc4kcXwQ9/DwdOtQQ5B7plfjOOPk0mshD5W9WSLJlzAIY5a5CkVPG
x-ms-exchange-antispam-messagedata: rT5E/13p9ETXbS2LRh+p6wc/PCHwlg14f2phLuJXPHl7kobG9I7RZ4PWYj4fbQpcuNmcxvaRa+ImTQtmB1o0jpuIwo7DRT+ESUQqzThz11g4Xlzhprc2c0m91PA1aWNvr3I0LjFXIXSgOzk/sHrjCg==
x-ms-exchange-transport-forked: True
Content-ID: <2F78F9F07BF00B4B97C17F3867065A8F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6164dc23-ee60-48e0-a7f2-08d7af05f9b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 15:20:49.3751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vMKsxutt6XV/IRYRvG9Orh1OObxMWLadJOs+KKU3U4i+CeL8rvzAXo8dn/0Xpead+XOoCLLlaistl3YvmPcqbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3566
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlc2RheSAxMSBGZWJydWFyeSAyMDIwIDEzOjQ5OjIyIENFVCBNaWNoYcWCIE1pcm9zxYJh
dyB3cm90ZToNCj4gQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBv
ZiB0aGUgb3JnYW5pemF0aW9uLiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50
cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlz
IHNhZmUuDQo+IA0KPiANCj4gT24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMTE6MTk6MThBTSArMDAw
MCwgSsOpcsO0bWUgUG91aWxsZXIgd3JvdGU6DQo+ID4gT24gVHVlc2RheSAxMSBGZWJydWFyeSAy
MDIwIDExOjM1OjAxIENFVCBNaWNoYcWCIE1pcm9zxYJhdyB3cm90ZToNCj4gPiA+IEN1cnJlbnQg
Y29kZSByYWNlcyBpbiBpbml0L2V4aXQgd2l0aCBpbnRlcnJ1cHQgaGFuZGxlcnMuIFRoaXMgaXMg
bm90aWNlZA0KPiA+ID4gYnkgdGhlIHdhcm5pbmcgYmVsb3cuIEZpeCBpdCBieSB1c2luZyBkZXZy
ZXMgZm9yIG9yZGVyaW5nIGFsbG9jYXRpb25zIGFuZA0KPiA+ID4gSVJRIGRlL3JlZ2lzdHJhdGlv
bi4NCj4gPiA+DQo+ID4gPiBXQVJOSU5HOiBDUFU6IDAgUElEOiA4MjcgYXQgZHJpdmVycy9zdGFn
aW5nL3dmeC9idXNfc3BpLmM6MTQyIHdmeF9zcGlfaXJxX2hhbmRsZXIrMHg1Yy8weDY0IFt3Znhd
DQo+ID4gPiByYWNlIGNvbmRpdGlvbiBpbiBkcml2ZXIgaW5pdC9kZWluaXQNCj4gWy4uLl0NCj4g
PiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jDQo+ID4gPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYw0KPiA+ID4gQEAgLTE1NCw2ICsxNTQsMTEgQEAgc3Rh
dGljIHZvaWQgd2Z4X3NwaV9yZXF1ZXN0X3J4KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4g
PiA+ICAgICAgICAgd2Z4X2JoX3JlcXVlc3RfcngoYnVzLT5jb3JlKTsNCj4gPiA+ICB9DQo+ID4g
Pg0KPiA+ID4gK3N0YXRpYyB2b2lkIHdmeF9mbHVzaF9pcnFfd29yayh2b2lkICp3KQ0KPiA+ID4g
K3sNCj4gPiA+ICsgICAgICAgZmx1c2hfd29yayh3KTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4g
PiAgc3RhdGljIHNpemVfdCB3Znhfc3BpX2FsaWduX3NpemUodm9pZCAqcHJpdiwgc2l6ZV90IHNp
emUpDQo+ID4gPiAgew0KPiA+ID4gICAgICAgICAvLyBNb3N0IG9mIFNQSSBjb250cm9sbGVycyBh
dm9pZCBETUEgaWYgYnVmZmVyIHNpemUgaXMgbm90IDMyYml0IGFsaWduZWQNCj4gPiA+IEBAIC0y
MDcsMjIgKzIxMiwyMyBAQCBzdGF0aWMgaW50IHdmeF9zcGlfcHJvYmUoc3RydWN0IHNwaV9kZXZp
Y2UgKmZ1bmMpDQo+ID4gPiAgICAgICAgICAgICAgICAgdWRlbGF5KDIwMDApOw0KPiA+ID4gICAg
ICAgICB9DQo+ID4gPg0KPiA+ID4gLSAgICAgICByZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZmdW5j
LT5kZXYsIGZ1bmMtPmlycSwgd2Z4X3NwaV9pcnFfaGFuZGxlciwNCj4gPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBJUlFGX1RSSUdHRVJfUklTSU5HLCAid2Z4IiwgYnVzKTsNCj4g
PiA+IC0gICAgICAgaWYgKHJldCkNCj4gPiA+IC0gICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0K
PiA+ID4gLQ0KPiA+ID4gICAgICAgICBJTklUX1dPUksoJmJ1cy0+cmVxdWVzdF9yeCwgd2Z4X3Nw
aV9yZXF1ZXN0X3J4KTsNCj4gPiA+ICAgICAgICAgYnVzLT5jb3JlID0gd2Z4X2luaXRfY29tbW9u
KCZmdW5jLT5kZXYsICZ3Znhfc3BpX3BkYXRhLA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJndmeF9zcGlfaHdidXNfb3BzLCBidXMpOw0KPiA+ID4gICAgICAgICBp
ZiAoIWJ1cy0+Y29yZSkNCj4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTzsNCj4gPiA+
DQo+ID4gPiAtICAgICAgIHJldCA9IHdmeF9wcm9iZShidXMtPmNvcmUpOw0KPiA+ID4gKyAgICAg
ICByZXQgPSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoJmZ1bmMtPmRldiwgd2Z4X2ZsdXNoX2ly
cV93b3JrLA0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmJ1
cy0+cmVxdWVzdF9yeCk7DQo+ID4gPiAgICAgICAgIGlmIChyZXQpDQo+ID4gPiAtICAgICAgICAg
ICAgICAgd2Z4X2ZyZWVfY29tbW9uKGJ1cy0+Y29yZSk7DQo+ID4gPiArICAgICAgICAgICAgICAg
cmV0dXJuIHJldDsNCj4gPiA+DQo+ID4gPiAtICAgICAgIHJldHVybiByZXQ7DQo+ID4gPiArICAg
ICAgIHJldCA9IGRldm1fcmVxdWVzdF9pcnEoJmZ1bmMtPmRldiwgZnVuYy0+aXJxLCB3Znhfc3Bp
X2lycV9oYW5kbGVyLA0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElSUUZf
VFJJR0dFUl9SSVNJTkcsICJ3ZngiLCBidXMpOw0KPiA+ID4gKyAgICAgICBpZiAocmV0KQ0KPiA+
ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIHJl
dHVybiB3ZnhfcHJvYmUoYnVzLT5jb3JlKTsNCj4gPiA+ICB9DQo+ID4gPg0KPiA+ID4gIHN0YXRp
YyBpbnQgd2Z4X3NwaV9yZW1vdmUoc3RydWN0IHNwaV9kZXZpY2UgKmZ1bmMpDQo+ID4gPiBAQCAt
MjMwLDExICsyMzYsNiBAQCBzdGF0aWMgaW50IHdmeF9zcGlfcmVtb3ZlKHN0cnVjdCBzcGlfZGV2
aWNlICpmdW5jKQ0KPiA+ID4gICAgICAgICBzdHJ1Y3Qgd2Z4X3NwaV9wcml2ICpidXMgPSBzcGlf
Z2V0X2RydmRhdGEoZnVuYyk7DQo+ID4gPg0KPiA+ID4gICAgICAgICB3ZnhfcmVsZWFzZShidXMt
PmNvcmUpOw0KPiA+ID4gLSAgICAgICB3ZnhfZnJlZV9jb21tb24oYnVzLT5jb3JlKTsNCj4gPiA+
IC0gICAgICAgLy8gQSBmZXcgSVJRIHdpbGwgYmUgc2VudCBkdXJpbmcgZGV2aWNlIHJlbGVhc2Uu
IEhvcGVmdWxseSwgbm8gSVJRDQo+ID4gPiAtICAgICAgIC8vIHNob3VsZCBoYXBwZW4gYWZ0ZXIg
d2Rldi93dmlmIGFyZSByZWxlYXNlZC4NCj4gPiA+IC0gICAgICAgZGV2bV9mcmVlX2lycSgmZnVu
Yy0+ZGV2LCBmdW5jLT5pcnEsIGJ1cyk7DQo+ID4gPiAtICAgICAgIGZsdXNoX3dvcmsoJmJ1cy0+
cmVxdWVzdF9yeCk7DQo+ID4gPiAgICAgICAgIHJldHVybiAwOw0KPiA+ID4gIH0NCj4gPiA+DQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L21haW4uYw0KPiA+ID4gaW5kZXggODRhZGFkNjRmYzMwLi43NmIyZmY3ZmM3ZmUg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMNCj4gPiA+IEBAIC0yNjIsNiArMjYyLDE2IEBA
IHN0YXRpYyBpbnQgd2Z4X3NlbmRfcGRhdGFfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQ0KPiA+
ID4gICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ID4gIH0NCj4gPiA+DQo+ID4gPiArc3RhdGljIHZv
aWQgd2Z4X2ZyZWVfY29tbW9uKHZvaWQgKmRhdGEpDQo+ID4gPiArew0KPiA+ID4gKyAgICAgICBz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiA9IGRhdGE7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIG11dGV4
X2Rlc3Ryb3koJndkZXYtPnJ4X3N0YXRzX2xvY2spOw0KPiA+ID4gKyAgICAgICBtdXRleF9kZXN0
cm95KCZ3ZGV2LT5jb25mX211dGV4KTsNCj4gPiA+ICsgICAgICAgd2Z4X3R4X3F1ZXVlc19kZWlu
aXQod2Rldik7DQo+ID4gPiArICAgICAgIGllZWU4MDIxMV9mcmVlX2h3KHdkZXYtPmh3KTsNCj4g
PiA+ICt9DQo+ID4gPiArDQo+ID4gPiAgc3RydWN0IHdmeF9kZXYgKndmeF9pbml0X2NvbW1vbihz
dHJ1Y3QgZGV2aWNlICpkZXYsDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNvbnN0IHN0cnVjdCB3ZnhfcGxhdGZvcm1fZGF0YSAqcGRhdGEsDQo+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBod2J1c19vcHMgKmh3YnVzX29wcywN
Cj4gPiA+IEBAIC0zMzIsMTcgKzM0MiwxMiBAQCBzdHJ1Y3Qgd2Z4X2RldiAqd2Z4X2luaXRfY29t
bW9uKHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gPiA+ICAgICAgICAgd2Z4X2luaXRfaGlmX2NtZCgm
d2Rldi0+aGlmX2NtZCk7DQo+ID4gPiAgICAgICAgIHdmeF90eF9xdWV1ZXNfaW5pdCh3ZGV2KTsN
Cj4gPiA+DQo+ID4gPiArICAgICAgIGlmIChkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCB3
ZnhfZnJlZV9jb21tb24sIHdkZXYpKQ0KPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBOVUxM
Ow0KPiA+ID4gKw0KPiA+ID4gICAgICAgICByZXR1cm4gd2RldjsNCj4gPiA+ICB9DQo+ID4gPg0K
PiA+ID4gLXZvaWQgd2Z4X2ZyZWVfY29tbW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQ0KPiA+ID4g
LXsNCj4gPiA+IC0gICAgICAgbXV0ZXhfZGVzdHJveSgmd2Rldi0+cnhfc3RhdHNfbG9jayk7DQo+
ID4gPiAtICAgICAgIG11dGV4X2Rlc3Ryb3koJndkZXYtPmNvbmZfbXV0ZXgpOw0KPiA+ID4gLSAg
ICAgICB3ZnhfdHhfcXVldWVzX2RlaW5pdCh3ZGV2KTsNCj4gPiA+IC0gICAgICAgaWVlZTgwMjEx
X2ZyZWVfaHcod2Rldi0+aHcpOw0KPiA+ID4gLX0NCj4gPiA+IC0NCj4gPiA+ICBpbnQgd2Z4X3By
b2JlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQ0KPiA+ID4gIHsNCj4gPiA+ICAgICAgICAgaW50IGk7
DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmggYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L21haW4uaA0KPiA+ID4gaW5kZXggODc1ZjhjMjI3ODAzLi45Yzk0MTAwNzJk
ZWYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uaA0KPiA+ID4g
KysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmgNCj4gPiA+IEBAIC0zNCw3ICszNCw2IEBA
IHN0cnVjdCB3ZnhfZGV2ICp3ZnhfaW5pdF9jb21tb24oc3RydWN0IGRldmljZSAqZGV2LA0KPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3Qgd2Z4X3BsYXRm
b3JtX2RhdGEgKnBkYXRhLA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
b25zdCBzdHJ1Y3QgaHdidXNfb3BzICpod2J1c19vcHMsDQo+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHZvaWQgKmh3YnVzX3ByaXYpOw0KPiA+ID4gLXZvaWQgd2Z4X2ZyZWVf
Y29tbW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KTsNCj4gPiA+DQo+ID4gPiAgaW50IHdmeF9wcm9i
ZShzdHJ1Y3Qgd2Z4X2RldiAqd2Rldik7DQo+ID4gPiAgdm9pZCB3ZnhfcmVsZWFzZShzdHJ1Y3Qg
d2Z4X2RldiAqd2Rldik7DQo+ID4gPiAtLQ0KPiA+ID4gMi4yMC4xDQo+ID4gPg0KPiA+DQo+ID4g
QXJlIHlvdSBzdXJlIHlvdSBjYW4gY29tcGxldGVseSBkcm9wIHdmeF9mcmVlX2NvbW1vbigpPyBJ
ZiB5b3Ugd2FudCB0bw0KPiA+IHVzZSBkZXZyZXMsIEkgdGhpbmsgdGhhdCB3ZnhfZmx1c2hfaXJx
X3dvcmsoKSBzaG91bGQgY2FsbA0KPiA+IHdmeF9mcmVlX2NvbW1vbigpLCBubz8NCj4gDQo+IHdm
eF9mcmVlX2NvbW1vbigpIHdpbGwgYmUgY2FsbGVkIGJ5IGRldnJlcyBpbiB0aGUgcmlnaHQgb3Jk
ZXIuIFRoYXQncyBlbnN1cmVkDQo+IGJ5IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpIGF0IHRo
ZSBlbmQgb2Ygd2Z4X2luaXRfY29tbW9uKCkuDQpJbmRlZWQuDQoNClJldmlld2VkLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQoNCi0tIA0KSsOpcsO0
bWUgUG91aWxsZXINCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
