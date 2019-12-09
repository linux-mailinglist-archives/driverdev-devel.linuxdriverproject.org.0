Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E45116DE0
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 14:25:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C61C21539;
	Mon,  9 Dec 2019 13:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGBIuW9xHIds; Mon,  9 Dec 2019 13:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EABCB20008;
	Mon,  9 Dec 2019 13:25:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 801181BF35F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 13:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A0872039C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 13:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vLaO7WfErO3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 13:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 70AAA20008
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 13:25:20 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: N8QdVyST/4HIHAKNyvoe42OojkNEb3teJLSv74brNHMllCYIQawLpcoHzf6QWARyojpfuW7RUm
 UB5z8QUBYmVVNjSPCgYG7/JwQU3krgmSWxC2nur3fVt2GOPkWv2L8PggxHNS9HJTM8qytOBdxL
 ho8gM5eCpmn6qNz75INnO6xewgFTuFc6Lv/vAMGu5EHAIY+2/kPlDxxl+ZOFxnKylK1ycr0+xA
 zj4fMvPZ6SFjJu/eXOtd71DL78erTa1vY5noSeyqs4S0U4ELiljmLwy2XR4eyAF4g1PafL6NBh
 Xbo=
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="57878471"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Dec 2019 06:25:19 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Dec 2019 06:25:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 9 Dec 2019 06:25:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLA+SQFb0qVYEUl/aiD6a15sy5YAALV+lsY8JiPDxKrc/TWEiPzOux+k6UE9ei/B8V+2OvXcc6XQdIsyDrdL2tgc74VnLgXsjagoeCxHCo7mqr9UpSm6nLjhMpu3CAn5FHG1FIgDnMOpf7SqIdjVFQrun0eh9yCGotNgCL1UgpUDf43TwMjjw1MMupghf50mP+howT1r0cWySZgwU6jr9yVpHEqF/tFyi0HV+GSPXE49N/iRwgou7YtbUeWve0W7AxilxAe76fDKrHBRR5pdnGc3rJr+9SxbIQdenC1uN6IF9CySxRXg6uDyOYUdX7zaKXXYz/PE0ThlZ8RZjhVemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pHxwIhD3BTJA4RuZu4S8zyz0SKOF5AHSSzaiMm5P6wU=;
 b=Jdaqclu8BoSSSa2KVkm9QwpNFKAdaUthIplHdSP9nn3PzuryVS+DbawqM1rnRPGFKIpyYjLJP2LI2HXV7pq3eVZGKzX0SG+EWS5qT3yspDp7vdDDMj3pUt6Sgg2WsS9ZXso8/UA+jwTlBOQC7D6amm60+XpFUtT3vK0XGH27m2h3j6hsxMMByaCuMrqCGgivCqHiqx9muBt2g3+jM7qzVsG8ckMy0lvwaIyK7KjhFjfvOMuJlRKfToiFlKJ9Q3fJ0y33dQaME0ocTb2NzaSo58coeM53smIpqAxCKVkYUUY4d6+WKlxhsspwNdCi6f169h0PaW/07bTG9hzOTTN9Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pHxwIhD3BTJA4RuZu4S8zyz0SKOF5AHSSzaiMm5P6wU=;
 b=GPVEGGTHwhHoVIllWxvm/me55IQ3+aor4Ozf2I4j2oqtFntX0VKQknXC8SxB5oPjvFzojSW5yIB5qEssaGa7tm95vZi7PJHJRC/vLb5JIizFUIt76+kQg03SgMBpR/fDh/HneykG/t/+1UH16w7OOA3sBwXM1O5FyGyDRABlfrk=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Mon, 9 Dec 2019 13:25:17 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd%3]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 13:25:17 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC 2/6] staging: most: rename core.h to most.h
Thread-Topic: [PATCH RFC 2/6] staging: most: rename core.h to most.h
Thread-Index: AQHVrEKAxMcUAPT4l0GPekvFxSaAU6exz+kA
Date: Mon, 9 Dec 2019 13:25:17 +0000
Message-ID: <1575897968.2957.4.camel@microchip.com>
References: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
 <1574697096-2942-3-git-send-email-christian.gromm@microchip.com>
 <20191206143528.GA32126@kroah.com>
In-Reply-To: <20191206143528.GA32126@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eaccb919-f237-4ca0-ea4f-08d77cab3b7b
x-ms-traffictypediagnostic: MN2PR11MB4448:
x-microsoft-antispam-prvs: <MN2PR11MB4448678FEE30E9EFEC44DFE0F8580@MN2PR11MB4448.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39860400002)(189003)(199004)(305945005)(36756003)(64756008)(66556008)(76116006)(6916009)(8936002)(66446008)(229853002)(478600001)(66476007)(6506007)(91956017)(1730700003)(81156014)(71190400001)(71200400001)(81166006)(8676002)(2906002)(2616005)(316002)(6512007)(26005)(5660300002)(103116003)(186003)(5640700003)(66946007)(6486002)(86362001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4448;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j+3Vllr2hkNoUxahUjFRlbIlFwrh7K645THZSnM7n84u9Ol0B4hPuQPhfumseKgCSOSaSy8asEXbRl4ACkiFt+sv5pCnWWaRHcgjztmeTLWT/tF3k1L5nKQ7xJknTwBTd+jiRTSZfYJhpPnalEiqsKGc5lPCMZ3knLr9+PVxcz4NEmVJoSZzUMo4n8hGbe02lp3a+Q6LJXST7KLzSt4cFNHb7GC9iDotk0AvkguqjjTtnqXEsXB7PsCyBlcylhq8ZWMBF44SrEwHGdDOTu7THr2OaeZSAtezGPR5qLHfBT/s+JPCa7DrWH3upoktqxnFrFqkS5fj+cwlBe0QehtkmaLI2km59jtxO6MWft2HYQ2KB0iK8p7iBm3hQayloEecW9ykd+M4wrHYR0vjuhgMzGOWRhkf6lfQ0WVNcqQl0tCWmg+RYnhTHSzuPgx4T9oX
x-ms-exchange-transport-forked: True
Content-ID: <77F6E6590447E149AAA6F2571468FD6F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eaccb919-f237-4ca0-ea4f-08d77cab3b7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 13:25:17.4023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lxgklKhrgOXHaKUPtZdw4RgkbIgyp56tE15kMMkrKLzLs58Zc8U3XA3YEIBiwCXYaIG6m0VrN7Q02lC0QsOScc+TDx5vX59kxT6PAW2cN2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4448
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fr, 2019-12-06 at 15:35 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, Nov 25, 2019 at 04:51:32PM +0100, Christian Gromm wrote:
> > 
> > This patch renames the core header file core.h to most.h. The
> > intention
> > behind this is to have a meaningful name once this file is moved to
> > the
> > /include/linux directory.
> Does everything in this .h file have to be exposed to the whole
> kernel?
> Are there any things in here that are local only to the most "core"
> code?
> 
> If this whole thing is public, you might want to clean up your naming
> of
> some structures:

Yes, those structs are needed by modules registering with the core.

Do you want me to reroll v2 of this set with these changes or to wait
for more comments to come?

thanks,
Chris

> 
> > 
> > +enum mbo_status_flags {
> enum most_buffer_status_flags?
> 
> 
> > 
> > +struct mbo {
> struct most_buffer_object?
> 
> > 
> > +struct core_component {
> struct most_core_component?
> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
