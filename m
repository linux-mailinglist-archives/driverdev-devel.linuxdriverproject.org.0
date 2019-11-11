Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DA1F7A04
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 18:32:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9E4087595;
	Mon, 11 Nov 2019 17:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DC68T4DgSWPI; Mon, 11 Nov 2019 17:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40DED861A3;
	Mon, 11 Nov 2019 17:32:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 056AD1BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF8DD85D4B
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RxyWRYL7-QgG for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 17:32:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690118.outbound.protection.outlook.com [40.107.69.118])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BF998584F
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:32:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hj1r+HN+M7TgAhZ0rexbd1fQiL7oB1o0o3Gr+mNgOfLSO1PBgBouwxfOA46QnLEkVWsy9eyxT9BrOiCXm8h1ZO/oJGlXWEwhB5k1WLX8JpuTzC+YioW5T0wGa/RDjAh2jzTHtf98nCzzmbsmMY5LqEdZ/fg8df/04d+/sCCV/6RVPZm8lNnXChC666Q+HF+tvsbgV/DAZDYSTUx+tcJ1RUvs8mbU1Y/4SSB5J+O3hKCcDciNzFb7UyH+EdR5wxNYGSZXTLYA9Aa/fAoLuHHY6hkUuHh2yQYOKRxzs1SxVB3qDGqyT6GopLK6JC6X+u2ReIG+kNA9OxZhPCilJbbm0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+sIRL9NOYytO6M61mmShLBPhRj1Gxjc5VLX5ELANU8=;
 b=aTuqECc82LGdDW6zeL44XHCN49oudYLo8wIlJZazPy1gj2ljiftQd5E/u7mtuqaVzF6+E1PTqGns5Mv2bKV6fibTot2ZCuHPjvv2wApw8qcVo+VvzQwISo0fY+6OPuJpTX5XVpG6u5Oy1+dh4vbCjnPoq5o3qjNQjG1B9GJ5wI1XlATIeJQLtJah3pSr/dm5QJHIwen7wwHz5g3bokXEWSurPvQGdET3MtIp3vkZEip8p7VBjxufAida/f12kIASsyt4A6pWCRvp6dTGopDzGKxnJXXngsIQsNBbq9BznV3GVYGVEizhzbsAjhxjg7nONtX0vhmjEEWVAtniXgGCjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+sIRL9NOYytO6M61mmShLBPhRj1Gxjc5VLX5ELANU8=;
 b=EWbtbZyNCRn+XVSwPy609OGn19hLKbqTYVKh9no2ZeNYbjhWdeYEnKx3EGy9Sb0ig2Xwkmvl98VN7aiYw8BxxejTFBvo667qUdpjp+BLwgZNonUvpfgzXS7FXEu+9gwuKh6p5fHoPc58Ta1fSk4MuOJ3eWXpr0eSlfm0UHouqAc=
Received: from DM5PR21MB0634.namprd21.prod.outlook.com (10.175.111.141) by
 DM5PR21MB0505.namprd21.prod.outlook.com (10.172.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.11; Mon, 11 Nov 2019 17:16:48 +0000
Received: from DM5PR21MB0634.namprd21.prod.outlook.com
 ([fe80::7981:68f6:2a19:fd6c]) by DM5PR21MB0634.namprd21.prod.outlook.com
 ([fe80::7981:68f6:2a19:fd6c%3]) with mapi id 15.20.2451.018; Mon, 11 Nov 2019
 17:16:48 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Topic: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Index: AQHVlIunJ+Hzurh+rUem3N3TxZQeRKd+ayBwgAECTwCAA80TgA==
Date: Mon, 11 Nov 2019 17:16:47 +0000
Message-ID: <DM5PR21MB0634E8F1308B2B8F00AB6145D7740@DM5PR21MB0634.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
 <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
 <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
 <c8403255bf874856c10f07189e27080a@www.loen.fr>
In-Reply-To: <c8403255bf874856c10f07189e27080a@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-11-11T17:16:45.7364888Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=ae6360c5-32eb-45bb-b083-03d539543238;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 362a10dd-094a-4898-e5be-08d766caef5a
x-ms-traffictypediagnostic: DM5PR21MB0505:|DM5PR21MB0505:|DM5PR21MB0505:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR21MB05055468669E992000EBAB74D7740@DM5PR21MB0505.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(366004)(346002)(136003)(396003)(199004)(189003)(54906003)(478600001)(22452003)(74316002)(305945005)(26005)(102836004)(446003)(186003)(8936002)(6436002)(14454004)(99286004)(76176011)(5660300002)(7696005)(25786009)(6916009)(476003)(53546011)(52536014)(4326008)(6506007)(10290500003)(7416002)(7736002)(316002)(229853002)(86362001)(11346002)(9686003)(8990500004)(8676002)(33656002)(10090500001)(71190400001)(71200400001)(486006)(55016002)(66066001)(3846002)(6116002)(256004)(14444005)(2906002)(66946007)(76116006)(64756008)(66556008)(66476007)(81156014)(81166006)(66446008)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR21MB0505;
 H:DM5PR21MB0634.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EIFJvA0EHGPOA9YrfTKxasuP3skcZYx7V9SgX+Au5f0n8pQA0xCf9sBsNXQ5aHr61NajVJFD1SKjezvltCwznuNrFB8BzdkF6rM+IJupc5pjNeQpkIA39gCim04p6w8YlMqn/KB7LTcyAglYbOtv0Zg33G3zE9gRXMFofmmw9fT3Y42DZWMTzHNUgUmIk4XIhoiFqxMvTu0mfZCyEsaakIsTmeTAmVfeiBlNapU59dzA+Tr1Z5b1pmBkyubDjS1MMgpyo6FH/wmra9/87CKnhNfXwlRSsmed25gF/PoLf8vuRR1GaEoOHl+QjQ9XPzn73ynZQIgug7PllyKk5BnXBHzjgH442yjjJyrzYsDIo3D5wBeUJ6dKsxwFBS5yprtbZZG8WVZovIVOx2vwaV0q0UiZHtobZ85zT2xL00RlLUJsfxpmEuMlnpTJhDSO5u16
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 362a10dd-094a-4898-e5be-08d766caef5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 17:16:48.0213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkB9GG7EnKVNgwKbsCtg0489KO5wW8A2E40406BoNcVPj9nQp55BeI2+AU70IGYgB/gvEs9rflNL3NX2Rjl0wBFlkWlgvcVGRWVIyP7iUSA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR21MB0505
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "boqun.feng" <boqun.feng@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 vkuznets <vkuznets@redhat.com>, "will@kernel.org" <will@kernel.org>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Marc Zyngier <maz@kernel.org> Sent: Thursday, November 7, 2019 1:11 AM
> >>
> >> On 2019-10-03 20:12, Michael Kelley wrote:
> >> > Add ARM64-specific code to make Hyper-V hypercalls and to
> >> > access virtual processor synthetic registers via hypercalls.
> >> > Hypercalls use a Hyper-V specific calling sequence with a non-zero
> >> > immediate value per Section 2.9 of the SMC Calling Convention
> >> > spec.
> >>
> >> I find this "following the spec by actively sidestepping it" counter
> >> productive. You (or rather the Hyper-V people) are reinventing the
> >> wheel (of the slightly square variety) instead of using the standard
> >> that the whole of the ARM ecosystem seems happy to take advantage
> >> of.
> >>
> >> I wonder what is the rational for this. If something doesn't quite
> >> work for Hyper-V, I think we'd all like to know.
> >>
> >
> > I'll go another round internally with the Hyper-V people on this
> > topic and impress upon them the desire of the Linux community to
> > have Hyper-V adopt the true spirit of the spec.  But I know they are
> > fairly set in their approach at this point, regardless of the technical
> > merits or lack thereof.  Hyper-V is shipping and in use as a
> > commercial product on ARM64 hardware, which makes it harder to
> > change.  I hope we can find a way to avoid a complete impasse ....
> 
> Hyper-V shipping with their own calling convention is fine by me. Linux
> having to implement multiple calling conventions because the Hyper-V
> folks refuse (for undisclosed reason) to adopt the standard isn't fine at
> all.

The "undisclosed reason" is performance.  Hyper-V implements 100+
different hypercalls, though many are used only by code in the
parent partition (dom0 in Xen terminology).  These hypercalls
often take moderately complex data structures as inputs and outputs.
While the data structures can be passed by reference using the
guest physical address (GPA), Hyper-V also offers a "fast" option
where both input and output data structures are passed entirely in
registers, avoiding two virt_to_phys() calls to get GPAs.  The
Hyper-V calling sequence allows X0-X16 to be used for input and output
data for these "fast" hypercalls, allowing more hypercalls to fit in
registers vs. the SMCCC that is limited to X1-X6.  The "fast" hypercall
approach originated with Hyper-V on x86/x64, where it also uses
most of the available registers.

These initial Linux patches for ARM64 make only a limited number of
hypercalls, all of which fit in X0-X6, even in "fast" mode.  So the
"why" of the Hyper-V calling sequence is certainly not evident.
But future Hyper-V enlightenments in Linux on ARM64 will use
more hypercalls, some of which would not be able to use "fast" mode
with the SMCCC register limits.

> 
> HV can perfectly retain its interface for Windows or other things, but
> please *at least* implement the standard interface on which all
> existing operating systems rely.

The Hyper-V team has agreed to look at the implications of adding a
shim to accept hypercalls through HVC #0 that follow the SMCCC.  I'll
follow up once we have a better sense of what Hyper-V can do, and
the perf implications.

Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
