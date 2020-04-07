Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2831A0A12
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 11:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6915B87F84;
	Tue,  7 Apr 2020 09:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SGQ+YH1DnHxF; Tue,  7 Apr 2020 09:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEE1987D96;
	Tue,  7 Apr 2020 09:28:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA6B51BF33C
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 09:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C00442001E
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 09:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id loGo-cgAsxLR for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 09:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 88FBC2001D
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 09:28:54 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0379RIce016784; Tue, 7 Apr 2020 05:28:53 -0400
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
 by mx0a-00128a01.pphosted.com with ESMTP id 306q55hw36-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Apr 2020 05:28:53 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFQVyWWujxfhqLFGZ68pwxnjiESBagheuIUajMS9LwSZCENFqYW8A0n7silU4UDvgDcMTMlLXLwRw//cI9TyYdpjc41KHeiDBFbH35NrX0wmgMtYXEdqZLZIwpLoY4e2+Hdg9VuiBc5MRWCl+hmjvbWWAts7CgUMH9tN8fVkbyeqvAcxXZ5Oyi1y5DbAMBC/HSzYBxEjEAhRrVBfSeR9au6O69w5xcrz1S0j5rnIloD6eEiGwIF5g6KDSOMMrCWEK5rAkNnnak88zkMyPrGI7MRW9yNqHkhL3Rs0yC1/xI7CeQWflzXtkt39wHYQkWR7MIlin+sKkZSanQWpwdC0xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1b0QhILor/VvDbCtMKGapbCbmZO3e6cMtm61odFRNsQ=;
 b=kOQfxvi3IosX6KTKG8XK0KSsUDv4lRoypwqgzTsse69q8MfUKgH4a3lYiXodIDdD+cxbbtv7O050vLvkxrC3yAYX8uihRQt1Mu+kV0PrcPHLt3fwFwTm0VYHIICWnoDQbsLYAKkB+Bu5AiR3vUVBUTYtPVwxSoSUxCsIAvqIuiQWg2qHSiGSu0NkY/6elXj4mDUF0lUCQZ3mPILqWjp2AxltJRyLS/wgdESJJAy5BIqMs8z1ctActJB16KzGXQ4+XOldPqMSsdoT7amcXVeIxSlLamY6VefPKTDPCWjYEL8uHXUbuEm0sBIJUusK4mJ+UhqujLw4uiUHF97xz/iY0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1b0QhILor/VvDbCtMKGapbCbmZO3e6cMtm61odFRNsQ=;
 b=yxRn/DMyqz9zCVGNTTyTLVkWuGACz1srTZxa2OBGGkfgM/KaUNYPYMVCjw6X7ZXqTBx9a2CpcBJDBTuZHVt1hYD1Ld9qqg61ao6fBPTCV8yeQYAOKh9C2OoRLwZXtGQIDil6a5Z/QJ38i9/LwvbJ6lIHccofuMY+3jscoVpSyzA=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB5051.namprd03.prod.outlook.com (2603:10b6:5:1ea::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Tue, 7 Apr
 2020 09:28:50 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f%3]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 09:28:50 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Markus.Elfring@web.de" <Markus.Elfring@web.de>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Subject: Re: [PATCH 2/3] iio: make use of iio_device_attach_kfifo_buffer()
 where straightforward
Thread-Topic: [PATCH 2/3] iio: make use of iio_device_attach_kfifo_buffer()
 where straightforward
Thread-Index: AQHWDL6X7y9OF2Hsf0WKb3NS9qDxRqhtZGcA
Date: Tue, 7 Apr 2020 09:28:50 +0000
Message-ID: <a8fd15498fc71fb1d6a02e463aeaade44574c06a.camel@analog.com>
References: <36669e0f-c41c-5cc8-7218-be5cad5cf8a5@web.de>
In-Reply-To: <36669e0f-c41c-5cc8-7218-be5cad5cf8a5@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.27.135.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 30e329ea-06fa-4130-8814-08d7dad61535
x-ms-traffictypediagnostic: DM6PR03MB5051:
x-microsoft-antispam-prvs: <DM6PR03MB5051FAF4175AF4F8D051C36CF9C30@DM6PR03MB5051.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:466;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39860400002)(376002)(136003)(396003)(346002)(366004)(478600001)(36756003)(110136005)(4326008)(86362001)(71200400001)(5660300002)(54906003)(2906002)(316002)(6512007)(186003)(26005)(8676002)(81156014)(66556008)(4744005)(66476007)(66946007)(6506007)(91956017)(6486002)(8936002)(81166006)(66446008)(64756008)(2616005)(76116006);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZL/EaOI2Ef6D3oMF3xcK97eWH9uoP/PvZ+tJLx4eg0yJIHuj1mJEtR3bruUNfCjxlh9zN4zzp8n51sEYP3LfahxXtqbuK2nYFTDDQjNsZUTfTbUj6/JxahOb30m0JRdDrNAfwlDrHHN4uILoW2OSMGnogZ/raZrpOsH8rIywaku+NuhAhMm41gulb9RdhadyX3hVjyQdAZT/AOyCg6W9tQGzseBySFJf3xn4TRxOwEs5ncmZGePTxZ5B26wMDJsPfYhbUanB+0/KVD0JFdEhx5lxxBK5cf972ZXEwzBgYcA9uGFdcgdk6SJ2r0Zg5rilANZdcMjfUGXbD1T3IBhaM5MJPrr0MZ9M8kHERFZjAfiTaZCg4HP8hOzcOAqxS9lpjtgBY6JOxQk4qMS20J6cSjkCAxIriuZ9cJuzvCpzmoctNfKRgb3Tq5CyXftiMa+H
x-ms-exchange-antispam-messagedata: Cohff/hpX2iCD+9aRgq+3XHCn4E8DK+vbyJ4+SV11ANfDcr/TItKtwHVf920YxroY+itOS+/cUHtvw8giFepm9rvDYzR+/4kSGEFtULr6/+Xdc+riUmCeuErIfYA50LDavbFfrop+7zUuJrHlA02Fg==
x-ms-exchange-transport-forked: True
Content-ID: <666B5620265F2C43AB29A5B29BE79C67@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e329ea-06fa-4130-8814-08d7dad61535
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 09:28:50.8431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s8SR21q65W9lrBAhNGfKlhlDXQTyqrhk8kaqtxiAx+bE6krtdtL2cshz/OOh6Ed0TNkEwvgM76O80BA5bJcCE3NyuLeYrIRFr7nndqCYTpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5051
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-07_01:2020-04-07,
 2020-04-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 mlxlogscore=589 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004070080
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
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAyMDIwLTA0LTA3IGF0IDExOjI2ICswMjAwLCBNYXJrdXMgRWxmcmluZyB3cm90ZToN
Cj4gW0V4dGVybmFsXQ0KPiANCj4gSG93IGRvIHlvdSB0aGluayBhYm91dCBhIHBhdGNoIHN1Ympl
Y3QgbGlrZSDigJxpaW86IEluY3JlYXNlIHVzZSBvZg0KPiBpaW9fZGV2aWNlX2F0dGFjaF9rZmlm
b19idWZmZXIoKeKAnT8NCj4gDQo+IA0KPiA+IFRoaXMgY2hhbmdlIGRvZXMgdGhhdC4NCj4gDQo+
IEkgc3VnZ2VzdCB0byBpbXByb3ZlIGFsc28gdGhpcyBjb21taXQgbWVzc2FnZS4NCj4gDQo+ICog
V291bGQgeW91IGxpa2UgdG8gY29uc2lkZXIgYSB3b3JkaW5nIGxpa2Ug4oCcQ29udmVydCBhIHNw
ZWNpZmljIGZ1bmN0aW9uIGNhbGwNCj4gICBjb21iaW5hdGlvbiB0byBhIGJldHRlciBwcm9ncmFt
bWluZyBpbnRlcmZhY2Uu4oCdPw0KPiANCj4gKiBEbyB5b3UgaW1hZ2luZSBhbnkgbW9yZSBzb2Z0
d2FyZSBmaW5lLXR1bmluZyBiZWNhdXNlIG9mIHJlbGF0ZWQNCj4gICBjb2xsYXRlcmFsIGV2b2x1
dGlvbj8NCj4gDQoNCkknbGwgc2VlLg0KVGhpcyBwYXRjaHNldCBpcyBraW5kIG9mIHN0b3BwZWQu
DQpXaWxsIG5lZWQgYSByZXdvcmsgZm9yIGl0Lg0KDQo+IFJlZ2FyZHMsDQo+IE1hcmt1cw0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
