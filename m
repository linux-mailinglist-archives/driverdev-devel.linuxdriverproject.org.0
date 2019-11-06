Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2964F1ECE
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 20:31:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83623891F2;
	Wed,  6 Nov 2019 19:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rwWY2-MB8hUe; Wed,  6 Nov 2019 19:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D5F3891B8;
	Wed,  6 Nov 2019 19:31:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DEF231BF3C3
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 19:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DBA02891BC
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 19:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 16inwYv0wdP7 for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 19:31:35 +0000 (UTC)
X-Greylist: delayed 01:17:36 by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800125.outbound.protection.outlook.com [40.107.80.125])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E8BD891B8
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 19:31:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jt0jM4ikrHPfQexJYG7C4Kwc/biujYhETTmaaq6U3mmF2hfvFJWpDIUwmA9+C75qR07sbArxorypsnasbX3z7/Ra/+djMTGa9n2CoE7t4KmvVkuO41iS6uwll4v2ZwDk2KmTChq180st7YJeRgazoq8kA221ojMuNdBvakeQaviSbIwpjiCr+V1EHReBgG5uin7o3SDLDC0g+RuJOEnyj1FZP8jq/yWCsb2Hh2yjyrkliQbasNqUhtZks6bmLJtQawAX97TjAxVDFQtXifF/pVKFa8kwMJRFw4yGy6jvVMKLKaoHfXLDtd1HIn9JVAW/pQuBEERKOULp4W6swC+a3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jyxzDweRQO11hgtDzyq44VWbKQe/y3Y8EhZtzqC+464=;
 b=Xa8TbBlSsiSIcRNYzwvLSllKj51BK/5BdMfVy7RArQO401c7YXHVyy+wkedtmo5cQF+JU4ZrmOrdhnnwq9WeEx+Y4U1agzhnwtfKroGh/gfVFniR4dgsaaLZgWVwQejCOaSFi2QfotN4UU+6MwSt/D4bTlEJiyk7t+4ELMmr1tNYEmQzGSedTr4B7KU/eVVSk5AdGngRdJf1TEwdoCsb9Gg/ndRtTJfUFy6USf+mxEmzCj4lS0/IaqaHt8dzxs5pYFBmSGwc52mDxzX7sZsPYnkQGK5iUrsBUVCZf3b8JVLviqkE5jE5wfn1PAYe/T1s0l/8HNys/znBL84kmarfsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jyxzDweRQO11hgtDzyq44VWbKQe/y3Y8EhZtzqC+464=;
 b=jkZBEe+5Zz6xWW/6eVLHyG+vcbS6BJDaquSdGSR/A6NHczcfd8sRgcFen2Pa/Arb5anXNvz9iQJNWf9GlafhX1Dc4w/0jHTiezRkA7zc7PAXvA8EcsthLi8QhhxYjhgx0bKjutMu5bcMZUDHblqp58IPQpEPbdR+S0tcDBkBNcM=
Received: from DM5PR21MB0137.namprd21.prod.outlook.com (10.173.173.12) by
 DM5PR21MB0140.namprd21.prod.outlook.com (10.173.173.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.9; Wed, 6 Nov 2019 17:59:11 +0000
Received: from DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::9cc3:f167:bb63:799]) by DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::9cc3:f167:bb63:799%5]) with mapi id 15.20.2451.013; Wed, 6 Nov 2019
 17:59:11 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Topic: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Index: AQHVlIunJ+Hzurh+rUem3N3TxZQeRKd+ayBw
Date: Wed, 6 Nov 2019 17:59:10 +0000
Message-ID: <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
 <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
In-Reply-To: <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-11-06T17:59:08.9751666Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=1a5259d0-6f61-4c4e-9b97-52eb3d9574c6;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [167.220.2.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1aaaaaf5-8516-4521-456c-08d762e306fc
x-ms-traffictypediagnostic: DM5PR21MB0140:|DM5PR21MB0140:|DM5PR21MB0140:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR21MB0140FA2A2CF943ED850E419ED7790@DM5PR21MB0140.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(476003)(55016002)(4326008)(25786009)(71190400001)(71200400001)(66066001)(6246003)(2906002)(81156014)(8676002)(81166006)(6916009)(14444005)(7416002)(256004)(6436002)(8936002)(7736002)(6116002)(3846002)(305945005)(10090500001)(52536014)(229853002)(9686003)(5660300002)(74316002)(486006)(102836004)(53546011)(446003)(6506007)(11346002)(33656002)(86362001)(316002)(186003)(54906003)(26005)(66946007)(7696005)(66476007)(76176011)(64756008)(22452003)(10290500003)(76116006)(66556008)(8990500004)(66446008)(478600001)(99286004)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR21MB0140;
 H:DM5PR21MB0137.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N4bdsSK1vh8U5CUJ6fSD8lodY1PY0l0m08GQgBnK+544DjAk17lv1EPG7KaIflBK9x1cyh1M3PlFtvU/rOBFojVWmbu1Ya+ukjeN2h8TuErUp7KO5qUJR57FIaNnXNOGPyXhAtgV9UAbQvW/pzpd73b4FImGGQeOw1SnpR77ujvFP3HXFR7Wym6IFU08vdicMJFkcaihJ5Vak/ulcvJlrpXXe06xzZZ7PKs0S95hbbKma8wwKW0uEjHKE2EsZXJCd/qj/3k5d4lwVAik/Pb3jA5HTsGG/JtFBFMnhsKoArDQj4NTP3434AvCO9+FyVysMKzdp8sqqzW+t/Kb0KpgMiXLnRttCCanutDMP2/0qIdXPdjHDtPmFrB9zkP3NF0n+2U2GuY7qYF7ZU1ymXQ4dH6L+qHpPSVyAImtDR13G6FTgXiy3479rKSHBSVkjCGx
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aaaaaf5-8516-4521-456c-08d762e306fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 17:59:10.9759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M69MtHxTCc2w8fuRftAyDjswJyj3e+eaiTxwmApNLNtNLiPn8ye9j6XFFb4CIkAKrKKoTmKuTliunpzQQCLugFglBF58FZCOJvqrLCISqsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR21MB0140
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

From: Marc Zyngier <maz@kernel.org>  Sent: Wednesday, November 6, 2019 2:20 AM
> 
> On 2019-10-03 20:12, Michael Kelley wrote:
> > Add ARM64-specific code to make Hyper-V hypercalls and to
> > access virtual processor synthetic registers via hypercalls.
> > Hypercalls use a Hyper-V specific calling sequence with a non-zero
> > immediate value per Section 2.9 of the SMC Calling Convention
> > spec.
> 
> I find this "following the spec by actively sidestepping it" counter
> productive. You (or rather the Hyper-V people) are reinventing the
> wheel (of the slightly square variety) instead of using the standard
> that the whole of the ARM ecosystem seems happy to take advantage
> of.
> 
> I wonder what is the rational for this. If something doesn't quite
> work for Hyper-V, I think we'd all like to know.
> 

I'll go another round internally with the Hyper-V people on this
topic and impress upon them the desire of the Linux community to
have Hyper-V adopt the true spirit of the spec.  But I know they are
fairly set in their approach at this point, regardless of the technical
merits or lack thereof.  Hyper-V is shipping and in use as a commercial
product on ARM64 hardware, which makes it harder to change.  I
hope we can find a way to avoid a complete impasse ....

Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
