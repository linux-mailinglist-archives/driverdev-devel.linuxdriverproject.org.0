Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AF31530CD
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 13:31:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0810A85D56;
	Wed,  5 Feb 2020 12:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hjZ14oDCkGdI; Wed,  5 Feb 2020 12:31:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D8AF85D4C;
	Wed,  5 Feb 2020 12:31:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 358AC1BF23F
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 12:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FD208741F
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 12:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpFBL7+mvOIU for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 12:31:42 +0000 (UTC)
X-Greylist: delayed 00:05:58 by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 072558733C
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 12:31:41 +0000 (UTC)
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 015CEpco016658; Wed, 5 Feb 2020 07:25:43 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-00128a01.pphosted.com with ESMTP id 2xyhmk1kf4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 05 Feb 2020 07:25:43 -0500
Received: from m0167090.ppops.net (m0167090.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 015CPg6j028048;
 Wed, 5 Feb 2020 07:25:42 -0500
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
 by mx0b-00128a01.pphosted.com with ESMTP id 2xyhmk1kf2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 05 Feb 2020 07:25:42 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikZV7sZH8S9jyh9j4U44lAlL1XRwUEpNo9UFrB4nsfwZKTfA9589y0DUZ/Rs9gpPEauZKwrnesHELcpnFxLm5/e9Sr0IKL5Hee+cJ9cyl/wzg1fJNo6ecj+JLtrfcMUCabKc0y2iSH3tLWanLZ0Y7qgqGhTHkpQCkTLBsAMuW6Ssi55m1sba179crDIYbLIq1n2Fvi7NWy8sPdWyt6MkuGOXiduHuIvrxPmBR5FAmwb3yD7pt+kbsf3Z/JI5knNwOM9tcJyM2cXMlWZdFv68L/MFzSKhoJS05z5GO9ilW1ogCgVyxizSgQyx3l/Tq+00+76EOvWeJbJoaBx/ubQ2Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mBsnIV7QFZmZHeKEi6AoDYTsXI8rb1PF6S8FNx/ot+U=;
 b=Wpi7N66rMUocC0WDxT5Pl8DR9o3xqkf93f0fAAmbWvPQib/qg6eHSeEllb+E8cleSzhukIlGUaiAnS5O5BF7YxcFbjTeHT+DIbVoU6jgyrSJ4YZN+ee4k2W9z71AYfB5F9As/a/UhBxDvz6eS2LzrIre7ECg2qGJa09JSCnJeaUP+ZMyYZ3b1jqfiQ8sjElpgas476nvK111akRtZa1DlHVdWIyfov3d3o7kdk7xrulzjz9o1XM48rEigDZ8SjMZxSAyuyhLgecp0pz3PVy4QcSMa1DnaIdCjzjkBZFPCk6eXZ+S+X3cJSXxWMwtBNXEBs+tBnNEEmK/PmccoFabaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mBsnIV7QFZmZHeKEi6AoDYTsXI8rb1PF6S8FNx/ot+U=;
 b=uYy7g5UVdIrR8Y+VToVuc7lZrmRZZmquLjQrqkbuFuXvjtFDTYSfmrPDjnRWExwLsCANA0Gkya/rlZwq66i3F9c3dgTSzgFgaBRlqdLwn99E/61YOKttsqImN0wcQsVmkZ+88ZygULd22HJKJ1/8JlIFJTIqLUoRooPY41FUBv0=
Received: from BN6PR03MB3347.namprd03.prod.outlook.com (10.174.94.163) by
 BN6PR03MB2497.namprd03.prod.outlook.com (10.168.223.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Wed, 5 Feb 2020 12:25:40 +0000
Received: from BN6PR03MB3347.namprd03.prod.outlook.com
 ([fe80::80b6:bfbd:9b6d:710a]) by BN6PR03MB3347.namprd03.prod.outlook.com
 ([fe80::80b6:bfbd:9b6d:710a%4]) with mapi id 15.20.2707.020; Wed, 5 Feb 2020
 12:25:40 +0000
From: "Sa, Nuno" <Nuno.Sa@analog.com>
To: "Jonathan.Cameron@Huawei.com" <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH 2/4] iio: imu: adis: Refactor adis_initial_startup
Thread-Topic: [PATCH 2/4] iio: imu: adis: Refactor adis_initial_startup
Thread-Index: AQHVz5zhi5MQxf7Rb0ibWVMdXw5B+KgGpUSAgAKk8ACAACqBAIADKw4A
Date: Wed, 5 Feb 2020 12:25:40 +0000
Message-ID: <182c1f94c7311580aea1b4cabe0ab2ae26bed3a6.camel@analog.com>
References: <20200120142051.28533-1-alexandru.ardelean@analog.com>
 <20200120142051.28533-2-alexandru.ardelean@analog.com>
 <20200201170839.4ab98d8e@archlinux>
 <da82db5f81e116c7ecc36f5d9833b90b4f7cd15d.camel@gmail.com>
 <20200203120338.000044c1@Huawei.com>
In-Reply-To: <20200203120338.000044c1@Huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9ec1c26a-9b9f-4716-7d4d-08d7aa368382
x-ms-traffictypediagnostic: BN6PR03MB2497:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR03MB2497C7F398F277BBDC18954799020@BN6PR03MB2497.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(346002)(376002)(366004)(189003)(199004)(26005)(186003)(2906002)(76116006)(6506007)(2616005)(54906003)(36756003)(4326008)(71200400001)(316002)(5660300002)(66946007)(478600001)(107886003)(81166006)(81156014)(64756008)(66556008)(6512007)(6486002)(86362001)(8676002)(6916009)(66476007)(66446008)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR03MB2497;
 H:BN6PR03MB3347.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mXg98WC1kTV37E5lZTaaiwyxGkCSXpR+GpLpiKBdawv0p3ck0bbQDwKjxnKdEBdjtH6IlHCrQfN/l/YkB2FyxbKCK9YWdYpGJJgofxcNe/jaJXyeCBZm6vol0G3hTv8AOT7K/XpQOmKRJS/2M0eCyL7qvR2JdOxtYDukt8fTgxTBzO+YJMZOl2xSwg4pwWqaaHNRFV9zkkfg2njzHCErhInuWI59mtN6ziUPWgtaHWGPacFqGpQUQhnXNIH//dIWu+D4tmXP5WS/fHEzNL9fxSQafJitSrx+rGVpjr7alV9wDzlcD3QxCWVuASHQ/YIYcjO0JCiiz4AWc7i5tkFycT1EzZoJnrqE13vpSo38Cje0KzXEdN4ZEiwx3v6ZmexFYS5scan8N0a6r3u+hzNDqx/A54v2FWb8wm5TcDDKkZ8Pbg4ZPuPV3kXaxMnmhMkt
x-ms-exchange-antispam-messagedata: Fe5ysgpgnqAS/qHGiJOAPRtGgOLBjezhY/JqSSaIlxoxWd1zDPy8/n2xaavhd8fEZyxgumejoZw66UopmdS55sR7jqKK0aKDiMT7OAltIf1HlsTyYOLrPtpOBuKx44v5Y+Ty74E5v4kq8NVlHb1hcA==
Content-ID: <4782D7BB70949F42A7468B0B317FA773@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec1c26a-9b9f-4716-7d4d-08d7aa368382
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 12:25:40.6917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: efHFtb316QNwiqoNR4AYNbBRoMWUfiFCMnx75fPBlEHavNzqy75iKNGQiC4w4/2y9NDYvPuaGYnY99OfH5XYtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR03MB2497
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-05_03:2020-02-04,
 2020-02-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 adultscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002050100
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
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bogdan,
 Dragos" <Dragos.Bogdan@analog.com>, "Ardelean,
 Alexandru" <alexandru.Ardelean@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAyMDIwLTAyLTAzIGF0IDEyOjAzICswMDAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Og0KPiANCj4gT24gTW9uLCAzIEZlYiAyMDIwIDEwOjMxOjMwICswMTAwDQo+IE51bm8gU8OhIDxu
b25hbWUubnVub0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4gPiBIaSBKb25hdGhhbiwNCj4gPiAN
Cj4gPiANCj4gPiBPbiBTYXQsIDIwMjAtMDItMDEgYXQgMTc6MDggKzAwMDAsIEpvbmF0aGFuIENh
bWVyb24gd3JvdGU6DQo+ID4gPiBPbiBNb24sIDIwIEphbiAyMDIwIDE2OjIwOjQ5ICswMjAwDQo+
ID4gPiBBbGV4YW5kcnUgQXJkZWxlYW4gPGFsZXhhbmRydS5hcmRlbGVhbkBhbmFsb2cuY29tPiB3
cm90ZToNCj4gPiA+ICAgDQo+ID4gPiA+IEZyb206IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5j
b20+DQo+ID4gPiA+IA0KPiA+ID4gPiBBbGwgdGhlIEFESVMgZGV2aWNlcyBwZXJmb3JtLCBhdCB0
aGUgYmVnaW5uaW5nLCBhIHNlbGYgdGVzdCB0bw0KPiA+ID4gPiBtYWtlDQo+ID4gPiA+IHN1cmUN
Cj4gPiA+ID4gdGhlIGRldmljZSBpcyBpbiBhIHNhbmUgc3RhdGUuIEZ1cnRoZXJtb3JlLCBzb21l
IGRyaXZlcnMgYWxzbw0KPiA+ID4gPiBkbyBhDQo+ID4gPiA+IGNhbGwNCj4gPiA+ID4gdG8gYGFk
aXNfcmVzZXQoKWAgYmVmb3JlIHRoZSB0ZXN0IHdoaWNoIGlzIGFsc28gYSBnb29kDQo+ID4gPiA+
IHByYWN0aWNlLg0KPiA+ID4gPiBUaGlzDQo+ID4gPiA+IHBhdGNoIHVuaWZpZXMgYWxsIHRob3Nl
IG9wZXJhdGlvbiBzbyB0aGF0LCB0aGVyZSdzIG5vIG5lZWQgZm9yDQo+ID4gPiA+IGNvZGUNCj4g
PiA+ID4gZHVwbGljYXRpb24uIEZ1cnRoZXJtb3JlLCB0aGUgcnN0IHBpbiBpcyBhbHNvIGNoZWNr
ZWQgdG8gbWFrZQ0KPiA+ID4gPiBzdXJlDQo+ID4gPiA+IHRoZQ0KPiA+ID4gPiBkZXZpY2UgaXMg
bm90IGluIEhXIHJlc2V0LiBPbiB0b3Agb2YgdGhpcywgc29tZSBkcml2ZXJzIGFsc28NCj4gPiA+
ID4gcmVhZA0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gZGV2aWNlIHByb2R1Y3QgaWQgYW5kIGNvbXBh
cmUgaXQgd2l0aCB0aGUgZGV2aWNlIGJlaW5nIHByb2JlZA0KPiA+ID4gPiB0bw0KPiA+ID4gPiBt
YWtlDQo+ID4gPiA+IHN1cmUgdGhlIGNvcnJlY3QgZGV2aWNlIGlzIGJlaW5nIGhhbmRsZWQuIFRo
aXMgY2FuIGFsc28gYmUNCj4gPiA+ID4gcGFzc2VkDQo+ID4gPiA+IHRvIHRoZQ0KPiA+ID4gPiBs
aWJyYXJ5IGJ5IGludHJvZHVjaW5nIGEgdmFyaWFibGUgaG9sZGluZyB0aGUgUFJPRF9JRCByZWdp
c3Rlcg0KPiA+ID4gPiBvZg0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gZGV2aWNlLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4NCj4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZHJ1IEFyZGVsZWFuIDwNCj4gPiA+ID4gYWxleGFu
ZHJ1LmFyZGVsZWFuQGFuYWxvZy5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9p
aW8vaW11L0tjb25maWcgICAgICB8ICAxICsNCj4gPiA+ID4gIGRyaXZlcnMvaWlvL2ltdS9hZGlz
LmMgICAgICAgfCA2MyArKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiAtLS0tDQo+
ID4gPiA+IC0tLS0tLQ0KPiA+ID4gPiAgaW5jbHVkZS9saW51eC9paW8vaW11L2FkaXMuaCB8IDE1
ICsrKysrKysrLQ0KPiA+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspLCAx
OCBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lp
by9pbXUvS2NvbmZpZyBiL2RyaXZlcnMvaWlvL2ltdS9LY29uZmlnDQo+ID4gPiA+IGluZGV4IDYw
YmIxMDI5ZTc1OS4uNjMwMzZjZjQ3M2M3IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2lp
by9pbXUvS2NvbmZpZw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2lpby9pbXUvS2NvbmZpZw0KPiA+
ID4gPiBAQCAtODUsNiArODUsNyBAQCBlbmRtZW51DQo+ID4gPiA+ICANCj4gPiA+ID4gIGNvbmZp
ZyBJSU9fQURJU19MSUINCj4gPiA+ID4gIAl0cmlzdGF0ZQ0KPiA+ID4gPiArCWRlcGVuZHMgb24g
R1BJT0xJQg0KPiA+ID4gPiAgCWhlbHANCj4gPiA+ID4gIAkgIEEgc2V0IG9mIElPIGhlbHBlciBm
dW5jdGlvbnMgZm9yIHRoZSBBbmFsb2cgRGV2aWNlcw0KPiA+ID4gPiBBRElTKg0KPiA+ID4gPiBk
ZXZpY2UgZmFtaWx5Lg0KPiA+ID4gPiAgDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lp
by9pbXUvYWRpcy5jIGIvZHJpdmVycy9paW8vaW11L2FkaXMuYw0KPiA+ID4gPiBpbmRleCBkMDJi
MTkxMWIwZjIuLjFlY2E1MjcxMzgwZSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9paW8v
aW11L2FkaXMuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2lpby9pbXUvYWRpcy5jDQo+ID4gPiA+
IEBAIC03LDYgKzcsNyBAQA0KPiA+ID4gPiAgICovDQo+ID4gPiA+ICANCj4gPiA+ID4gICNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPg0KPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3Vt
ZXIuaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9tdXRleC5oPg0KPiA+ID4gPiAgI2luY2x1
ZGUgPGxpbnV4L2RldmljZS5oPg0KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0K
PiA+ID4gPiBAQCAtMzY1LDM2ICszNjYsNjQgQEAgc3RhdGljIGludCBhZGlzX3NlbGZfdGVzdChz
dHJ1Y3QgYWRpcw0KPiA+ID4gPiAqYWRpcykNCj4gPiA+ID4gIH0NCj4gPiA+ID4gIA0KPiA+ID4g
PiAgLyoqDQo+ID4gPiA+IC0gKiBhZGlzX2luaXRhbF9zdGFydHVwKCkgLSBQZXJmb3JtcyBkZXZp
Y2Ugc2VsZi10ZXN0DQo+ID4gPiA+ICsgKiBfX2FkaXNfaW5pdGlhbF9zdGFydHVwKCkgLSBEZXZp
Y2UgaW5pdGlhbCBzZXR1cA0KPiA+ID4gPiAgICogQGFkaXM6IFRoZSBhZGlzIGRldmljZQ0KPiA+
ID4gPiAgICoNCj4gPiA+ID4gKyAqIFRoaXMgZnVuY3Rpb25zIG1ha2VzIHN1cmUgdGhlIGRldmlj
ZSBpcyBub3QgaW4gcmVzZXQsIHZpYQ0KPiA+ID4gPiByc3QNCj4gPiA+ID4gcGluLg0KPiA+ID4g
PiArICogRnVydGhlcm1vcmUgaXQgcGVyZm9ybXMgYSBTVyByZXNldCAob25seSBpbiB0aGUgY2Fz
ZSB3ZSBhcmUNCj4gPiA+ID4gbm90DQo+ID4gPiA+IGNvbWluZyBmcm9tDQo+ID4gPiA+ICsgKiBy
ZXNldCBhbHJlYWR5KSBhbmQgYSBzZWxmIHRlc3QuIEl0IGFsc28gY29tcGFyZXMgdGhlDQo+ID4g
PiA+IHByb2R1Y3QgaWQNCj4gPiA+ID4gd2l0aCB0aGUNCj4gPiA+ID4gKyAqIGRldmljZSBpZCBp
ZiB0aGUgcHJvZF9pZF9yZWcgdmFyaWFibGUgaXMgc2V0Lg0KPiA+ID4gPiArICoNCj4gPiA+ID4g
ICAqIFJldHVybnMgMCBpZiB0aGUgZGV2aWNlIGlzIG9wZXJhdGlvbmFsLCBhIG5lZ2F0aXZlIGVy
cm9yDQo+ID4gPiA+IGNvZGUNCj4gPiA+ID4gb3RoZXJ3aXNlLg0KPiA+ID4gPiAgICoNCj4gPiA+
ID4gICAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIGJlIGNhbGxlZCBlYXJseSBvbiBpbiB0aGUgZGV2
aWNlDQo+ID4gPiA+IGluaXRpYWxpemF0aW9uIHNlcXVlbmNlDQo+ID4gPiA+ICAgKiB0byBlbnN1
cmUgdGhhdCB0aGUgZGV2aWNlIGlzIGluIGEgc2FuZSBhbmQga25vd24gc3RhdGUgYW5kDQo+ID4g
PiA+IHRoYXQNCj4gPiA+ID4gaXQgaXMgdXNhYmxlLg0KPiA+ID4gPiAgICovDQo+ID4gPiA+IC1p
bnQgYWRpc19pbml0aWFsX3N0YXJ0dXAoc3RydWN0IGFkaXMgKmFkaXMpDQo+ID4gPiA+ICtpbnQg
X19hZGlzX2luaXRpYWxfc3RhcnR1cChzdHJ1Y3QgYWRpcyAqYWRpcykNCj4gPiA+ID4gIHsNCj4g
PiA+ID4gIAlpbnQgcmV0Ow0KPiA+ID4gPiAtDQo+ID4gPiA+IC0JbXV0ZXhfbG9jaygmYWRpcy0+
c3RhdGVfbG9jayk7DQo+ID4gPiA+ICsJc3RydWN0IGdwaW9fZGVzYyAqZ3BpbzsNCj4gPiA+ID4g
Kwljb25zdCBzdHJ1Y3QgYWRpc190aW1lb3V0ICp0aW1lb3V0cyA9IGFkaXMtPmRhdGEtDQo+ID4g
PiA+ID50aW1lb3V0czsNCj4gPiA+ID4gKwljb25zdCBjaGFyICppaW9fbmFtZSA9IHNwaV9nZXRf
ZGV2aWNlX2lkKGFkaXMtPnNwaSktDQo+ID4gPiA+ID5uYW1lOw0KPiA+ID4gPiArCXUxNiBwcm9k
X2lkLCBkZXZfaWQ7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkvKiBjaGVjayBpZiB0aGUgZGV2aWNl
IGhhcyByc3QgcGluIGxvdyAqLw0KPiA+ID4gPiArCWdwaW8gPSBkZXZtX2dwaW9kX2dldF9vcHRp
b25hbCgmYWRpcy0+c3BpLT5kZXYsDQo+ID4gPiA+ICJyZXNldCIsDQo+ID4gPiA+IEdQSU9EX0FT
SVMpOw0KPiA+ID4gPiArCWlmIChJU19FUlIoZ3BpbykpIHsNCj4gPiA+ID4gKwkJcmV0dXJuIFBU
Ul9FUlIoZ3Bpbyk7ICANCj4gPiA+IA0KPiA+ID4gR2l2ZW4geW91IGFyZSByZXR1cm5pbmcgaGVy
ZSwgbm8gbmVlZCBmb3IgZWxzZSB0byBmb2xsb3cNCj4gPiA+IA0KPiA+ID4gaWYgKGdwaW8uLi4N
Cj4gPiA+ICAgDQo+ID4gDQo+ID4gRGVmaW5pdGVseS4uLg0KPiA+IA0KPiA+ID4gPiArCX0gZWxz
ZSBpZiAoZ3BpbyAmJiBncGlvZF9nZXRfdmFsdWVfY2Fuc2xlZXAoZ3BpbykpIHsNCj4gPiA+ID4g
KwkJLyogYnJpbmcgZGV2aWNlIG91dCBvZiByZXNldCAqLw0KPiA+ID4gPiArCQlncGlvZF9zZXRf
dmFsdWVfY2Fuc2xlZXAoZ3BpbywgMCk7ICANCj4gPiA+IA0KPiA+ID4gSG1tLiBTbyBpcyBhIHNv
ZnR3YXJlIHJlc2V0IHRoZSBiZXN0IG9wdGlvbiBpZiB3ZSBoYXZlIGEgaGFyZHdhcmUNCj4gPiA+
IHJlc2V0DQo+ID4gPiBsaW5lIGJ1dCBpdCdzIG5vdCBjdXJyZW50bHkgaW4gdGhlIHJlc2V0IG1v
ZGU/DQo+ID4gPiAgIA0KPiA+IA0KPiA+IEhtbSwgdGhhdCdzIGEgZmFpciBxdWVzdGlvbi4gTm93
IHRoYXQgSSB0aGluayBhYm91dCBpdCwgaWYgd2UgZG8NCj4gPiBoYXZlIGENCj4gPiBncGlvIHdl
IHNob3VsZCBqdXN0IGFzc3VtZSBpdCdzIGluIHJlc2V0IGFuZCBjYWxsDQo+ID4gYGdwaW9kX3Nl
dF92YWx1ZV9jYW5zbGVlcGAuIFNvLCBJIGd1ZXNzIHdlIGNvdWxkIGp1c3QgZGl0Y2ggdGhlDQo+
ID4gYGdwaW9kX2dldF92YWx1ZV9jYW5zbGVlcChncGlvKWAgcGFydC4NCj4gDQo+IE5vdCBzdXJl
IEkgYWdyZWUuICAgRm9yIGV4YW1wbGUgdGhlIGRyaXZlciBtYXkgd2VsbCBoYXZlIGJlZW4gdW5i
b3VuZA0KPiBhbmQgcmVib3VuZCBmb3Igc29tZSByZWFzb24uDQoNClllcywgdGhhdCBpcyB0cnVl
Li4NCg0KPiBJIHdvdWxkIGFyZ3VlIHlvdSBzaG91bGQganVzdCBkbyBhIHNldCAvIHJlc2V0IGN5
Y2xlIHdpdGggYXBwcm9wcmlhdGUNCj4gc2xlZXANCj4gaW4gYmV0d2Vlbi4gIElmIGl0J3MgYWxy
ZWFkeSBzZXQgdGhlbiBubyBoYXJtIGRvbmUsIGlmIGl0IGlzbid0IHlvdQ0KPiBmb3JjZQ0KPiBh
IGhhcmR3YXJlIHJlc2V0Lg0KDQpTbywgQXMgSW0gdW5kZXJzdGFuZGluZywgaXQgY29tZXMgZG93
biB0byB3aGF0IHNob3VsZCB3ZSBjb25zaWRlciBhcw0KZGVmYXVsdC4gWW91IHN1Z2dlc3QgdG8g
Zmlyc3QgZG8gdGhlIHN3IHJlc2V0IGFuZCB0aGUgY2hlY2sgdGhlIGdwaW8NCnN0YXRlIGFuZCBp
ZiBuZWVkZWQsIGJyaW5nIHRoZSBkZXZpY2Ugb3V0IG9mIHJlc2V0LCByaWdodD8gTm93IHRoYXQg
SQ0KdGhpbmsgYWJvdXQgaXQsIEkgdGhpbmsgdGhlIG9ubHkgcmVhc29uIEkgaGF2ZW4ndCBkb25l
IGxpa2UgdGhhdCBpcw0KYmVjYXVzZSB5b3UgbWlnaHQgZW5kIHVwIHNsZWVwaW5nIHF1aXRlIHNv
bWUgdGltZSAoc3cgcmVzZXQgKyBodw0KcmVzZXQpLiBFaXRoZXIgd2F5LCBJJ20gZmluZSB3aXRo
IGJvdGggb3B0aW9ucy4gTm90IHN1cmUgaWYgQWxleCBoYXMNCnNvbWV0aGluZyB0byBhZGQuLi4N
Cg0KDQpOdW5vIFPDoSANCj4gPiA+ID4gKwkJbXNsZWVwKHRpbWVvdXRzLT5yZXNldF9tcyk7DQo+
ID4gPiA+ICsJfSBlbHNlIHsNCj4gPiA+ID4gKwkJcmV0ID0gX19hZGlzX3Jlc2V0KGFkaXMpOw0K
PiA+ID4gPiArCQlpZiAocmV0KQ0KPiA+ID4gPiArCQkJcmV0dXJuIHJldDsNCj4gPiA+ID4gKwl9
DQo+ID4gPiA+ICANCj4gPiA+ID4gIAlyZXQgPSBhZGlzX3NlbGZfdGVzdChhZGlzKTsNCj4gPiA+
ID4gLQlpZiAocmV0KSB7DQo+ID4gPiA+IC0JCWRldl9lcnIoJmFkaXMtPnNwaS0+ZGV2LCAiU2Vs
Zi10ZXN0IGZhaWxlZCwNCj4gPiA+ID4gdHJ5aW5nDQo+ID4gPiA+IHJlc2V0LlxuIik7DQo+ID4g
PiA+IC0JCV9fYWRpc19yZXNldChhZGlzKTsNCj4gPiA+ID4gLQkJcmV0ID0gYWRpc19zZWxmX3Rl
c3QoYWRpcyk7DQo+ID4gPiA+IC0JCWlmIChyZXQpIHsNCj4gPiA+ID4gLQkJCWRldl9lcnIoJmFk
aXMtPnNwaS0+ZGV2LCAiU2Vjb25kIHNlbGYtDQo+ID4gPiA+IHRlc3QNCj4gPiA+ID4gZmFpbGVk
LCBnaXZpbmcgdXAuXG4iKTsNCj4gPiA+ID4gLQkJCWdvdG8gb3V0X3VubG9jazsNCj4gPiA+ID4g
LQkJfQ0KPiA+ID4gPiAtCX0NCj4gPiA+ID4gKwlpZiAocmV0KQ0KPiA+ID4gPiArCQlyZXR1cm4g
cmV0Ow0KPiA+ID4gPiAgDQo+ID4gPiA+IC1vdXRfdW5sb2NrOg0KPiA+ID4gPiAtCW11dGV4X3Vu
bG9jaygmYWRpcy0+c3RhdGVfbG9jayk7DQo+ID4gPiA+IC0JcmV0dXJuIHJldDsNCj4gPiA+ID4g
KwlpZiAoIWFkaXMtPmRhdGEtPnByb2RfaWRfcmVnKQ0KPiA+ID4gPiArCQlyZXR1cm4gMDsNCj4g
PiA+ID4gKw0KPiA+ID4gPiArCXJldCA9IGFkaXNfcmVhZF9yZWdfMTYoYWRpcywgYWRpcy0+ZGF0
YS0+cHJvZF9pZF9yZWcsDQo+ID4gPiA+ICZwcm9kX2lkKTsNCj4gPiA+ID4gKwlpZiAocmV0KQ0K
PiA+ID4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICsJcmV0ID0gc3NjYW5m
KGlpb19uYW1lLCAiYWRpcyVodVxuIiwgJmRldl9pZCk7ICANCj4gPiA+IA0KPiA+ID4gSG1tLiBJ
IGhhdmUgYSBnZW5lcmFsIGRpc2xpa2Ugb2YgcHVsbGluZyBwYXJ0IG5hbWUgc3RyaW5ncyBhcGFy
dA0KPiA+ID4gdG8NCj4gPiA+IGdldA0KPiA+ID4gSURzLiAgSXQgdGVuZHMgdG8gYnJlYWsgd2hl
biBzb21lb25lIGNvbWVzIGFsb25nIGFuZCBhZGRzIGEgcGFydA0KPiA+ID4gd2l0aA0KPiA+ID4g
bmV3DQo+ID4gPiBicmFuZGluZy4gIFBlcmhhcHMganVzdCBwdXQgaXQgaW4gdGhlIHJlbGV2YW50
IGRldmljZSBwYXJ0DQo+ID4gPiBzcGVjaWZpYw0KPiA+ID4gc3RydWN0dXJlcw0KPiA+ID4gZGly
ZWN0bHk/DQo+ID4gPiAgIA0KPiA+IA0KPiA+IEknbGwgYWRtaXQgdGhhdCB0aGlzIHRvIG9yaWVu
dGF0ZWQgdG8gQURJIGRldmljZXMgYW5kIEkgYmFzaWNhbGx5DQo+ID4ganVzdA0KPiA+IHRvb2sg
d2hhdCBhbGwgdGhlIGRyaXZlcnMgd2VyZSBkb2luZyBhbmQgcGxhY2VkIGl0IGluc2lkZSB0aGUN
Cj4gPiBsaWJyYXJ5Li4uDQo+ID4gDQo+ID4gU28sIHlvdSBtZWFuIHBhc3NpbmcgdGhpcyB0byBl
YWNoIGBjaGlwX2luZm9gIGFuZCB0aGVuIHBhc3NpbmcgaXQNCj4gPiB0bw0KPiA+IHRoZSBsaWJy
YXJ5IHRocm91Z2ggYGFkaXNfZGF0YWA/DQo+IA0KPiBZZXMuICBQZW9wbGUgZG9uJ3QgdGVuZCB0
byBleHBlY3Qgc3RyaW5ncyB0byBuZWVkIHRvIHRha2UgYQ0KPiBwYXJ0aWN1bGFyIGZvcm0sDQo+
IHNvIHB1bGxpbmcgdGhlbSBhcGFydCBpbiBhIGxpYnJhcnkgY2FuIGdpdmUgdW5leHBlY3RlZCBy
ZXN1bHRzLi4uDQo+IA0KPiA+ID4gPiArCWlmIChyZXQgIT0gMSkNCj4gPiA+ID4gKwkJcmV0dXJu
IC1FSU5WQUw7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlpZiAocHJvZF9pZCAhPSBkZXZfaWQpDQo+
ID4gPiA+ICsJCWRldl93YXJuKCZhZGlzLT5zcGktPmRldiwNCj4gPiA+ID4gKwkJCSAiRGV2aWNl
IElEKCV1KSBhbmQgcHJvZHVjdCBJRCgldSkgZG8NCj4gPiA+ID4gbm90DQo+ID4gPiA+IG1hdGNo
LiIsDQo+ID4gPiA+ICsJCQkgZGV2X2lkLCBwcm9kX2lkKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAr
CXJldHVybiAwOw0KPiA+ID4gPiAgfQ0KPiA+ID4gPiAtRVhQT1JUX1NZTUJPTF9HUEwoYWRpc19p
bml0aWFsX3N0YXJ0dXApOw0KPiA+ID4gPiArRVhQT1JUX1NZTUJPTF9HUEwoX19hZGlzX2luaXRp
YWxfc3RhcnR1cCk7DQo+ID4gPiA+ICANCj4gPiA+ID4gIC8qKg0KPiA+ID4gPiAgICogYWRpc19z
aW5nbGVfY29udmVyc2lvbigpIC0gUGVyZm9ybXMgYSBzaW5nbGUgc2FtcGxlDQo+ID4gPiA+IGNv
bnZlcnNpb24NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaWlvL2ltdS9hZGlz
LmgNCj4gPiA+ID4gYi9pbmNsdWRlL2xpbnV4L2lpby9pbXUvYWRpcy5oDQo+ID4gPiA+IGluZGV4
IGQyMWEwMTNkMTEyMi4uYzQzZTc5MjJhYjMyIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9pbmNsdWRl
L2xpbnV4L2lpby9pbXUvYWRpcy5oDQo+ID4gPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvaWlvL2lt
dS9hZGlzLmgNCj4gPiA+ID4gQEAgLTQxLDYgKzQxLDcgQEAgc3RydWN0IGFkaXNfdGltZW91dCB7
DQo+ID4gPiA+ICAgKiBAZ2xvYl9jbWRfcmVnOiBSZWdpc3RlciBhZGRyZXNzIG9mIHRoZSBHTE9C
X0NNRCByZWdpc3Rlcg0KPiA+ID4gPiAgICogQG1zY19jdHJsX3JlZzogUmVnaXN0ZXIgYWRkcmVz
cyBvZiB0aGUgTVNDX0NUUkwgcmVnaXN0ZXINCj4gPiA+ID4gICAqIEBkaWFnX3N0YXRfcmVnOiBS
ZWdpc3RlciBhZGRyZXNzIG9mIHRoZSBESUFHX1NUQVQgcmVnaXN0ZXINCj4gPiA+ID4gKyAqIEBw
cm9kX2lkX3JlZzogUmVnaXN0ZXIgYWRkcmVzcyBvZiB0aGUgUFJPRF9JRCByZWdpc3Rlcg0KPiA+
ID4gPiAgICogQHNlbGZfdGVzdF9yZWc6IFJlZ2lzdGVyIGFkZHJlc3MgdG8gcmVxdWVzdCBzZWxm
IHRlc3QNCj4gPiA+ID4gY29tbWFuZA0KPiA+ID4gPiAgICogQHN0YXR1c19lcnJvcl9tc2dzOiBB
cnJheSBvZiBlcnJvciBtZXNzZ2Flcw0KPiA+ID4gPiAgICogQHN0YXR1c19lcnJvcl9tYXNrOg0K
PiA+ID4gPiBAQCAtNTQsNiArNTUsNyBAQCBzdHJ1Y3QgYWRpc19kYXRhIHsNCj4gPiA+ID4gIAl1
bnNpZ25lZCBpbnQgZ2xvYl9jbWRfcmVnOw0KPiA+ID4gPiAgCXVuc2lnbmVkIGludCBtc2NfY3Ry
bF9yZWc7DQo+ID4gPiA+ICAJdW5zaWduZWQgaW50IGRpYWdfc3RhdF9yZWc7DQo+ID4gPiA+ICsJ
dW5zaWduZWQgaW50IHByb2RfaWRfcmVnOw0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJdW5zaWduZWQg
aW50IHNlbGZfdGVzdF9tYXNrOw0KPiA+ID4gPiAgCXVuc2lnbmVkIGludCBzZWxmX3Rlc3RfcmVn
Ow0KPiA+ID4gPiBAQCAtMjk5LDYgKzMwMSw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGFkaXNfcmVh
ZF9yZWdfMzIoc3RydWN0DQo+ID4gPiA+IGFkaXMNCj4gPiA+ID4gKmFkaXMsIHVuc2lnbmVkIGlu
dCByZWcsDQo+ID4gPiA+ICANCj4gPiA+ID4gIGludCBhZGlzX2VuYWJsZV9pcnEoc3RydWN0IGFk
aXMgKmFkaXMsIGJvb2wgZW5hYmxlKTsNCj4gPiA+ID4gIGludCBfX2FkaXNfY2hlY2tfc3RhdHVz
KHN0cnVjdCBhZGlzICphZGlzKTsNCj4gPiA+ID4gK2ludCBfX2FkaXNfaW5pdGlhbF9zdGFydHVw
KHN0cnVjdCBhZGlzICphZGlzKTsNCj4gPiA+ID4gIA0KPiA+ID4gPiAgc3RhdGljIGlubGluZSBp
bnQgYWRpc19jaGVja19zdGF0dXMoc3RydWN0IGFkaXMgKmFkaXMpDQo+ID4gPiA+ICB7DQo+ID4g
PiA+IEBAIC0zMTEsNyArMzE0LDE3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGFkaXNfY2hlY2tfc3Rh
dHVzKHN0cnVjdA0KPiA+ID4gPiBhZGlzICphZGlzKQ0KPiA+ID4gPiAgCXJldHVybiByZXQ7DQo+
ID4gPiA+ICB9DQo+ID4gPiA+ICANCj4gPiA+ID4gLWludCBhZGlzX2luaXRpYWxfc3RhcnR1cChz
dHJ1Y3QgYWRpcyAqYWRpcyk7DQo+ID4gPiA+ICsvKiBsb2NrZWQgdmVyc2lvbiBvZiBfX2FkaXNf
aW5pdGlhbF9zdGFydHVwKCkgKi8NCj4gPiA+ID4gK3N0YXRpYyBpbmxpbmUgaW50IGFkaXNfaW5p
dGlhbF9zdGFydHVwKHN0cnVjdCBhZGlzICphZGlzKQ0KPiA+ID4gPiArew0KPiA+ID4gPiArCWlu
dCByZXQ7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwltdXRleF9sb2NrKCZhZGlzLT5zdGF0ZV9sb2Nr
KTsNCj4gPiA+ID4gKwlyZXQgPSBfX2FkaXNfaW5pdGlhbF9zdGFydHVwKGFkaXMpOw0KPiA+ID4g
PiArCW11dGV4X3VubG9jaygmYWRpcy0+c3RhdGVfbG9jayk7DQo+ID4gPiA+ICsNCj4gPiA+ID4g
KwlyZXR1cm4gcmV0Ow0KPiA+ID4gPiArfQ0KPiA+ID4gPiAgDQo+ID4gPiA+ICBpbnQgYWRpc19z
aW5nbGVfY29udmVyc2lvbihzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LA0KPiA+ID4gPiAgCWNv
bnN0IHN0cnVjdCBpaW9fY2hhbl9zcGVjICpjaGFuLCB1bnNpZ25lZCBpbnQNCj4gPiA+ID4gZXJy
b3JfbWFzaywgIA0KPiA+ID4gDQo+ID4gPiAgIA0KPiANCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
