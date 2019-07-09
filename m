Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01D863A9A
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6199487B8E;
	Tue,  9 Jul 2019 18:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOkayV2JoSv4; Tue,  9 Jul 2019 18:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B667087B65;
	Tue,  9 Jul 2019 18:11:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52A711BF4D8
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F25B87B5D
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZDfMGdlgLpL for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:11:39 +0000 (UTC)
X-Greylist: delayed 00:14:48 by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690129.outbound.protection.outlook.com [40.107.69.129])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 06D1787B5B
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 18:11:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acKShBbhxk0J5CGZDYxuRts+54UtF5ttCC2yVXYOJW+ZMD2G7dGELlgR/WpQ0X+xtzzX1RgaQQbirRvFY2dAyptNA+WJP+1KmtygHtUFeWt57Bmmvtv/z7+YBg3HMcW//nQAqZdZRtwpXWs7lXXwASN6cf7GbAVYr5xy/F9PE9hpAxKCUIbBeq5qx6zYer4nmGcYHP/RJrMRrYWpaumICeRflc1pefXI6K+tLXDqgB9601cAAPTKmz/5D73rTNG2tdzJa55mqReIN122PLztGzQ69fgsV08rNhGwwhtbjygLCc/c3gdjFBX0ApMAsE/p67ZFJIEP5uxkDv0rq0YFhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QZz5U4EYZGIEsslrLZ50Alrf3+pxAojYiMuhvEQpAHM=;
 b=APaYc5ltvVNx4RRKdWIKmWL4RQ6T88kAUiCOyPUypGpo96D/mkX9TLlGQBZxcDmgfL64e9WoYITj3zT73D8ts/pdbGjslCt39czovgSA12UtDuL2eQqCWCIc8nfSa5+OYJYlWIYO+AmF7kDbo5QmMscCmLcqh1g3RNm4bZsRmT2igRX4qtUGfNtIgXGzf5VqUChQXcNdNAd5MtRR/d03Zz9r4E/uPnsFpZGwk9nyob7fR18D5Osw+dGkHQd1W5XuqQjbSibaucLvVgIeWNfqTOjdNcihNrM8DIFBHVQIHxz4v5ftlK66schTid/YBKa9aKthHOFtAlJRsttBxWEkPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QZz5U4EYZGIEsslrLZ50Alrf3+pxAojYiMuhvEQpAHM=;
 b=LTsuo5odeN9C6bVkznvUdyWTO6L6nQ6AAxvCgr633THGipNgdSpOYws9C2uRAsnVV/3LwBwloA2LmTGT+RQ2Vx3W3ByZsTOA2WP39N3ZfQZwQjkXiedglph0Wx38zLcaPqhhgi8fmXnB9wh5SCygq9jlhsBMtIgILbhNvaOQ4sU=
Received: from SN6PR2101MB1072.namprd21.prod.outlook.com (52.132.115.21) by
 SN6PR2101MB1039.namprd21.prod.outlook.com (52.132.115.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.2; Tue, 9 Jul 2019 16:39:31 +0000
Received: from SN6PR2101MB1072.namprd21.prod.outlook.com
 ([fe80::f9cc:1b2a:1b20:808b]) by SN6PR2101MB1072.namprd21.prod.outlook.com
 ([fe80::f9cc:1b2a:1b20:808b%8]) with mapi id 15.20.2094.001; Tue, 9 Jul 2019
 16:39:31 +0000
From: KY Srinivasan <kys@microsoft.com>
To: Matthew Wilcox <willy@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
 =?windows-1257?Q?Valdis_Kl=E7tnieks?= <valdis.kletnieks@vt.edu>, Alexander
 Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "linux-fsdevel@vger.kernel.org"
 <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Subject: RE: exfat filesystem
Thread-Topic: exfat filesystem
Thread-Index: AQHVNm3O4cwoiVd1wUyFaPLSrlI8N6bCfKmw
Date: Tue, 9 Jul 2019 16:39:31 +0000
Message-ID: <SN6PR2101MB10726033399AEA1D0BD22067A0F10@SN6PR2101MB1072.namprd21.prod.outlook.com>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
In-Reply-To: <20190709154834.GJ32320@bombadil.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=kys@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-09T16:39:29.1424552Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=a1d36c8d-2089-45f6-8656-02491b3ad9c5;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kys@microsoft.com; 
x-originating-ip: [131.107.147.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8cffe00-255e-4b2d-3a6a-08d7048c0490
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR2101MB1039; 
x-ms-traffictypediagnostic: SN6PR2101MB1039:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <SN6PR2101MB10396D77BF582592C9C20A9FA0F10@SN6PR2101MB1039.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(199004)(189003)(13464003)(66556008)(64756008)(66476007)(6436002)(966005)(73956011)(110136005)(8936002)(10090500001)(5660300002)(66946007)(229853002)(3480700005)(6306002)(55016002)(66446008)(4326008)(9686003)(33656002)(305945005)(25786009)(446003)(76116006)(11346002)(76176011)(476003)(8676002)(316002)(68736007)(81156014)(81166006)(7696005)(2201001)(71200400001)(22452003)(71190400001)(7736002)(99286004)(2501003)(186003)(66574012)(52536014)(86362001)(2906002)(2171002)(26005)(6246003)(6506007)(53546011)(478600001)(8990500004)(74316002)(7116003)(6116002)(66066001)(53936002)(10290500003)(102836004)(486006)(256004)(14454004)(221733001)(3846002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1039;
 H:SN6PR2101MB1072.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kGwTgC4VWgywyfifpQ1uwFyFk3Yolegvns+xQNinZ+t2gaJd0/HIVAcearqCLX28wpUm+yAZMckyUwVgILo2NQ+J/6GfVRGoYEYDDNvLwgQtiGxQig12Q5vsFSxIYBlOfbZFUH9pEF7V3AST3tjDo200keXJqw55ZiZTCK5QmmHz1y95pFZtgsP25Ol9s94+7B50Omt2t91bL4c12JnQW2xSbpsB8+pSppTgbw7P9q8W4Tg8rGtlI3BS8uaBAvAr8hPguLwQ9BILEVIL46cEZnLclt0ANs7vKEQuS8bgiTOuCJSLn11oiTVmmk7KyYAyIEMy7k8gPV5R3GLhWc8ASFLkLTUbSimLfhytX1PtzmKmJSMSs9qxYKG2d8VzdbskCwK4UVl8zEy6mt298r85qAltLndvcNdd9MkeFnbMSXU=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8cffe00-255e-4b2d-3a6a-08d7048c0490
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 16:39:31.3049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kys@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1039
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
Cc: Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="cp1257"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQpGcm9tOiBNYXR0aGV3IFdpbGNveCA8d2lsbHlA
aW5mcmFkZWFkLm9yZz4gClNlbnQ6IFR1ZXNkYXksIEp1bHkgOSwgMjAxOSA4OjQ5IEFNClRvOiBU
aGVvZG9yZSBUcydvIDx0eXRzb0BtaXQuZWR1PjsgVmFsZGlzIEts53RuaWVrcyA8dmFsZGlzLmts
ZXRuaWVrc0B2dC5lZHU+OyBBbGV4YW5kZXIgVmlybyA8dmlyb0B6ZW5pdi5saW51eC5vcmcudWs+
OyBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgbGludXgt
ZnNkZXZlbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGRl
dmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnOyBLWSBTcmluaXZhc2FuIDxreXNAbWljcm9zb2Z0LmNv
bT4KQ2M6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KU3ViamVjdDogZXhmYXQgZmls
ZXN5c3RlbQoKT24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMTE6MzA6MzlBTSAtMDQwMCwgVGhlb2Rv
cmUgVHMnbyB3cm90ZToKPiBPbiBUdWUsIEp1bCAwOSwgMjAxOSBhdCAwNDoyMTozNkFNIC0wNzAw
LCBNYXR0aGV3IFdpbGNveCB3cm90ZToKPiA+IEhvdyBkb2VzCj4gPiBodHRwczovL25hbTA2LnNh
ZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZ3dwo+ID4g
dy56ZG5ldC5jb20lMkZhcnRpY2xlJTJGbWljcm9zb2Z0LW9wZW4tc291cmNlcy1pdHMtZW50aXJl
LXBhdGVudC1wb3IKPiA+IHRmb2xpbyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDa3lzJTQwbWljcm9z
b2Z0LmNvbSU3Q2Q3MzE4M2ZmMjhjOTRiYmJmCj4gPiA2ZGQwOGQ3MDQ4NGYwMDklN0M3MmY5ODhi
Zjg2ZjE0MWFmOTFhYjJkN2NkMDExZGI0NyU3QzElN0MwJTdDNjM2OTgyOAo+ID4gNDEzMjI3ODA3
OTgmYW1wO3NkYXRhPVRDU2dxZTBoNEZZYUE1QkJHVkpsOThXRkJxYkVIU284QjBGaGxmVFlWVkEl
M0QKPiA+ICZhbXA7cmVzZXJ2ZWQ9MAo+ID4gY2hhbmdlIHlvdXIgcGVyc29uYWwgb3Bpbmlvbj8K
PiAKPiBBY2NvcmRpbmcgdG8gU0ZDJ3MgbGVnYWwgYW5hbHlzaXMsIE1pY3Jvc29mdCBqb2luaW5n
IHRoZSBPSU4gZG9lc24ndCAKPiBtZWFuIHRoYXQgdGhlIGVYRkFUIHBhdGVudHMgYXJlIGNvdmVy
ZWQsIHVubGVzcyAqTWljcm9zb2Z0KiAKPiBjb250cmlidXRlcyB0aGUgY29kZSB0byB0aGUgTGlu
dXggdXNwdHJlYW0ga2VybmVsLiAgVGhhdCdzIGJlY2F1c2UgdGhlIAo+IE9JTiBpcyBnb3Zlcm5l
ZCBieSB0aGUgTGludXggU3lzdGVtIERlZmluaXRpb24sIGFuZCB1bnRpbCBNUyAKPiBjb250cmli
dXRlcyBjb2RlIHdoaWNoIGNvdmVyZWQgYnkgdGhlIGV4RkFUIHBhdGVudHMsIGl0IGRvZXNuJ3Qg
Y291bnQuCj4gCj4gRm9yIG1vcmUgZGV0YWlsczoKPiAKPiBodHRwczovL25hbTA2LnNhZmVsaW5r
cy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZzZmNvCj4gbnNlcnZh
bmN5Lm9yZyUyRmJsb2clMkYyMDE4JTJGb2N0JTJGMTAlMkZtaWNyb3NvZnQtb2luLWV4ZmF0JTJG
JmFtcDtkYQo+IHRhPTAyJTdDMDElN0NreXMlNDBtaWNyb3NvZnQuY29tJTdDZDczMTgzZmYyOGM5
NGJiYmY2ZGQwOGQ3MDQ4NGYwMDklN0MKPiA3MmY5ODhiZjg2ZjE0MWFmOTFhYjJkN2NkMDExZGI0
NyU3QzElN0MwJTdDNjM2OTgyODQxMzIyNzgwNzk4JmFtcDtzZGF0Cj4gYT15JTJCaFpGaGpJWFVy
RlZuNSUyRk4lMkJSVnhSUVd6WXMyUUk1VjFqTThTRFBOMmRnJTNEJmFtcDtyZXNlcnZlZD0wCj4g
Cj4gKFRoaXMgaXMgbm90IGxlZ2FsIGFkdmljZSwgYW5kIEkgYW0gbm90IGEgbGF3eWVyLikKCj5J
bnRlcmVzdGluZyBhbmFseXNpcy4gIEl0IHNlZW1zIHRvIG1lIHRoYXQgdGhlIGNvcnJlY3QgZm9y
bXMgd291bGQgYmUgb2JzZXJ2ZWQgaWYgc29tZW9uZSBzdWl0YWJseSBzZW5pb3IgYXQgTWljcm9z
b2Z0IGFjY2VwdGVkIHRoZSB3b3JrIGZyb20gPlZhbGRpcyBhbmQgc3VibWl0dGVkIGl0IHdpdGgg
dGhlaXIgc2lnbi1vZmYuICBLWSwgaG93IGFib3V0IGl0PwoKTWF0dGhldywKCkxldCBtZSBkaWcg
dXAgdGhlIGRldGFpbHMgaGVyZS4KCksuIFkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
