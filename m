Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C35466CA96
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jul 2019 10:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1EBF3227FF;
	Thu, 18 Jul 2019 08:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BkLMOJ+QsIRt; Thu, 18 Jul 2019 08:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07986204ED;
	Thu, 18 Jul 2019 08:04:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B83CD1BF5A1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jul 2019 08:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADE028827E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jul 2019 08:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id reSvJm1PWV3t
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jul 2019 08:04:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-eopbgr1320138.outbound.protection.outlook.com [40.107.132.138])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41320881AB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 18 Jul 2019 08:04:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4limz0iBa++VSBoXdCns5DNhiLfHQsQeicgxVjxqADEg4Pv0Gq8fpa2SwnM7t1uL0jB0dJ7efoapOdWTN8BlXDttXiR/y6cp2b/w/w8dNiaqoyO4Wh7D9htEidRruBB4q+Uc5PEytiW0l0EHcp5m2HGtUhv2uIscrGD1kPHtKsVGfm9yztc0rRyDVSAgRnssxqVJyppgqhQ86vAPQVlkcIBDEBAaI/AEjrAEsJkqVHIf3S5piy3eav9/KM3v+wcNdR0e1IzDMK1y7JWuwGkxTZJEytCieLt3AsUu0ovvGuYwRrMU1B0jaeHtubfylL5UFphhF/T0KbQiCOMkSeOCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkEEzOZ3IOk5E/Cb42Q97OLKv+Vxfx/adDcUM9V/ZG0=;
 b=oQOn3WgdAHBob0kzLHaVsF9/qkCx3xPAfLcnd6Ff20dAjpq/K9pIMkLu8UWc1i5fTslBAYn7aClI5tqRRyR/65wGZODTMq1DixJ+eBhGQrEOIuL+S9issOu1IP14n9YIdufRsRyE3akayc4kjHyNrA4E4NHO2JTx2j0nIaWxqwLmpIiTNevGMLcPU9MZJH/2q1RGaaYa24JialjSGK3D7CY79iO5lCWoqYk8cPOvUDnnnI3ULDJ3eXxt0IdEtkAuXYsJj3GOKXGRJF/njU0umGrr2tyrmVdMD7XLn9JME5+O2DrHE7sTXHsYjwspIp54iL8MOt+8Js14WubkeROqUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkEEzOZ3IOk5E/Cb42Q97OLKv+Vxfx/adDcUM9V/ZG0=;
 b=C9I85veloljQJ6x5aNbE9KJAYItoNxkA1JT4hlaSmP0/nEKCUMG5goNaiKlcVJ4BPeiYuP8bzlvezh0fMJTdMnEmjp6QQF4rLLCHbgzgifZZOvOBhDKFhMsLJMt7xumn4A+pDNXONcjJ89PB3SZrNjAkbX3cIV3YxpNbzBwzovg=
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM (10.170.189.13) by
 PU1P153MB0107.APCP153.PROD.OUTLOOK.COM (10.170.188.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.0; Thu, 18 Jul 2019 08:04:38 +0000
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::383c:3887:faf8:650a]) by PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::383c:3887:faf8:650a%5]) with mapi id 15.20.2115.005; Thu, 18 Jul 2019
 08:04:38 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH] x86/hyper-v: Zero out the VP assist page to fix CPU
 offlining
Thread-Topic: [PATCH] x86/hyper-v: Zero out the VP assist page to fix CPU
 offlining
Thread-Index: AdUyCb6p1/Ch6raqSV2uCwYf/NBGWgK6h7yAAAMgE9AADYqTAAAAYumQAAGMtAAAADPgAA==
Date: Thu, 18 Jul 2019 08:04:38 +0000
Message-ID: <PU1P153MB01690BCF3771C221C3677158BFC80@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
References: <PU1P153MB01697CBE66649B4BA91D8B48BFFA0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
 <alpine.DEB.2.21.1907180058210.1778@nanos.tec.linutronix.de>
 <PU1P153MB01693AB444C4A432FBA2507BBFC80@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
 <alpine.DEB.2.21.1907180846290.1778@nanos.tec.linutronix.de>
 <PU1P153MB0169BE20761D77E7FD9A3D57BFC80@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
 <alpine.DEB.2.21.1907180955130.1778@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907180955130.1778@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-18T08:04:35.1133646Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=78361c5f-caa3-402f-a2c6-c9969352d5e4;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:1760:4518:88f8:ed53:3c89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c33b21f3-19d3-4712-dfbd-08d70b5694e1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:PU1P153MB0107; 
x-ms-traffictypediagnostic: PU1P153MB0107:|PU1P153MB0107:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PU1P153MB01072DD1827810256E966C61BFC80@PU1P153MB0107.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(346002)(376002)(136003)(366004)(199004)(189003)(54534003)(6916009)(10090500001)(7416002)(7696005)(99286004)(4326008)(10290500003)(6436002)(8990500004)(25786009)(53936002)(55016002)(476003)(486006)(68736007)(446003)(11346002)(9686003)(256004)(14454004)(186003)(33656002)(102836004)(76176011)(2906002)(5660300002)(6506007)(46003)(6246003)(229853002)(54906003)(71200400001)(71190400001)(7736002)(478600001)(66446008)(8936002)(86362001)(6116002)(8676002)(316002)(81156014)(81166006)(76116006)(22452003)(4744005)(305945005)(66946007)(74316002)(64756008)(66476007)(66556008)(52536014)(53546011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PU1P153MB0107;
 H:PU1P153MB0169.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RPcGEodoGOpf/88hBHDChMs4fMDP7UZYfNuyL0fHHf+IJJZKFCbpqzeMh1Hveus1GYI2ulwFIq1xsW6mj9NIY+POsEPyF3/cLFqV9JqLYJGpemGaSmu0DfeAzd67GHAU2LNlhKNaWJkIAIV9M1K6Imji29L3mB85H+y1Y6D4dFFaMnCLgjCRSLmwyDa/VFl4TcpQHWUUhpS1Eew9s6esaoutGJR/RjzkIfL/i+j5jTqZN1a/pbM3XpCCJ0t3JIy2KMy0sVDQuaQ3EH+Hw1ZntdwWAjdiwMDatz9BxIA163xf/LThhyfVrJF8/iTUyXj5pbWpps8pzXTCqnj57cdFIs+C6Ke3Pm5u+GyShMO3SV+KzB9DGg8rC56C9dUOO41J8ipDYXtoW1x7voblChsBb4nKEZX+sZyezj/SINH1D7U=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c33b21f3-19d3-4712-dfbd-08d70b5694e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 08:04:38.4900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: decui@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0107
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
Cc: Ingo Molnar <mingo@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "apw@canonical.com" <apw@canonical.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 vkuznets <vkuznets@redhat.com>, "olaf@aepfle.de" <olaf@aepfle.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Thursday, July 18, 2019 12:56 AM
> To: Dexuan Cui <decui@microsoft.com>
> 
> On Thu, 18 Jul 2019, Dexuan Cui wrote:
> >
> > The concept of the "overlay page" seems weird, and frankly speaking,
> > I don't really understand why the Hyper-V guys invented it, but as far
> > as this patch here is concerned, I think the patch is safe and it can
> > indeed fix the CPU offlining issue I described.
> 
> Then this needs some really good explanation and in the change log because
> that's really obscure behaviour.
> 
> 	tglx

Agreed. I'll combine my replies into the changelog and post a v2 of
the one-line patch.

Thanks,
-- Dexuan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
