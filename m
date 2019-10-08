Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3964CD01F5
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 22:15:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10D64867C5;
	Tue,  8 Oct 2019 20:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5TSrdfo8jAl; Tue,  8 Oct 2019 20:15:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 104BA8648E;
	Tue,  8 Oct 2019 20:15:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF70B1BF429
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 20:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CAAFE81419
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 20:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SDGno-U3JQea for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 20:15:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790084.outbound.protection.outlook.com [40.107.79.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5E7F875B6
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 20:15:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/refwxS4YmPJrdgT9cE6E3KKXji+htPx/DtQHFg40jaqDZo76cp3vWFQxezb2Nr956vIOJA5wD1H7Ed71ZdITH/hO6lq8Ds3OUGWH/1aToOm/WMWKEO+NGTFwJOvAmQN7tghDTMgP5D/pAFXkpUgp8jbsJuoN017RJWWRN0I+Nx+Ic6cK7sHTkQ+zt3a+zN4CBDAlm+dThjMX9AAPbCBYoHwpYa3WVRaHBgQEJTihO8G2+cvH0iRAnd1hvZJiPCzrYNKSsNwL5qXua29zRDVVdhW7o6w977M4toUoBreTpz/HVUtda61t16h4v/0pokXU0tcj+2mpgZKuKlIqJiPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Da1uRaGpRlmD90PzlN4IHUnhIZRtYhz7Ge90kOaFyT4=;
 b=NkTPckjhZ1gaCrjYCEC1tVn1G0ogFM6tJxsj3DjIAcno9m0iOwpeKLlLpY5XU6Zn5Xcl+EHmwQMIwqfWB7PojJjC7Q3vZ/CgtFORRBc227Y1Z0+51P9xTZhy2CtR+bKAfqvrLwWMw0cJ3B47wfhT6RgE7gwZXoOV1JIBPPt1qZOTCLUr3whHNte8/wCV6eeVyD2fpD1VYEhRbVISlF2poFHlM7isdWdv7aDThZ/encKOHZjYQtyLab4S40Vi+VTx1kJCeeLZB4qHeHNtOqFHTIrIH3AMui4enDzP2HEp6zyxGsbo3Kmk7mc2QaHXdI4UDhulZvNp4qi4pAxHIZBgWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Da1uRaGpRlmD90PzlN4IHUnhIZRtYhz7Ge90kOaFyT4=;
 b=WDxsQuMeADjImgajNTrUXQxniMGh4PKzVBAxyEPLDbZQxt8GZl9HxT8FhBklDe8pICnAbmF2wAi4/J+3EUHJGMXwR5X7wcV7H1xXTD6vSG9TO1OHfaW64YR3JMhygLsA+IsPm2LM/S10XJbvYVaeA9kPflTcF4aZacOKptfSbMc=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3966.namprd11.prod.outlook.com (10.255.180.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 20:14:54 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 20:14:54 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] staging: wfx: fix spelling mistake "hexdecimal" ->
 "hexadecimal"
Thread-Topic: [PATCH][next] staging: wfx: fix spelling mistake "hexdecimal" ->
 "hexadecimal"
Thread-Index: AQHVfbF7tlMEUCQYGUGsoNSNkuDlradRLrIA
Date: Tue, 8 Oct 2019 20:14:53 +0000
Message-ID: <5156069.1LFZ7Sz98S@pc-42>
References: <20191008082205.19740-1-colin.king@canonical.com>
In-Reply-To: <20191008082205.19740-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [88.191.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea10c52f-2334-4852-a185-08d74c2c2eba
x-ms-traffictypediagnostic: MN2PR11MB3966:
x-microsoft-antispam-prvs: <MN2PR11MB39665FD25EE76394364BA20F939A0@MN2PR11MB3966.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(366004)(376002)(396003)(346002)(39850400004)(136003)(199004)(189003)(6116002)(99286004)(76176011)(478600001)(102836004)(476003)(446003)(316002)(11346002)(66066001)(33716001)(6506007)(66946007)(26005)(91956017)(186003)(3846002)(76116006)(66446008)(64756008)(66476007)(66556008)(14454004)(256004)(54906003)(71200400001)(71190400001)(4326008)(25786009)(7736002)(486006)(2906002)(9686003)(8936002)(6512007)(6916009)(6486002)(305945005)(81166006)(81156014)(229853002)(6246003)(5660300002)(86362001)(8676002)(6436002)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3966;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UzQ9pcKgU3FwMaQnj9bjRB7RE+VTS771kIPFw0qM4XLonJOXrHLGm2GKYtaqB2wX4xpttdrErcI//W+3+DhFoA7Bf/oVovjRbZRKR1UXfKoyYkZ6B6M3v4LS+hp6QHDIy6ROcB0P60O5XjPEcAtLHzz3pQpsyWXSeWSH5C0EF8KDD3xPCAPsqpb98is0ncNCF4brIWIMF+WVSSTVsYvQVkXtr06VTAOSmVD4BBtpioxnYJXQ7KaurLFOAkge1xpia8ecgVNMEKua4FCcv+VULK+pZwLtODEjAZYV+eEgFEr85mnunr9y7DXCVtcMbusR8Z4VF9MipY0bf3Jg7+JhDkf5bkEJN1IkCXQ3XW4wDGLPdS7i3k2SmpUpTlWsYWlHj5XurEYqfB27YlL5LIEd+Tgh/4lkZTYk1PDuhS+NC4o=
x-ms-exchange-transport-forked: True
Content-ID: <BE44F4135B32A7449C258128A9C2FF1A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea10c52f-2334-4852-a185-08d74c2c2eba
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 20:14:54.0130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3pofBwV1XRbrbzt5y/ZqhF2TGp0HE8o530H/He87yfBqpHzwFrDuD7eWqknBG2SLqlG/UE4gPxks3PgBn2/4Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3966
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 8 October 2019 10:22:05 CEST Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> =

> There is a spelling mistake in the documentation and a module parameter
> description. Fix these.
> =

> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  .../devicetree/bindings/net/wireless/siliabs,wfx.txt            | 2 +-
>  drivers/staging/wfx/main.c                                      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/staging/wfx/Documentation/devicetree/bindings/net/wi=
reless/siliabs,wfx.txt b/drivers/staging/wfx/Documentation/devicetree/bindi=
ngs/net/wireless/siliabs,wfx.txt
> index 15965c9b4180..26de6762b942 100644
> --- a/drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/=
siliabs,wfx.txt
> +++ b/drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/=
siliabs,wfx.txt
> @@ -89,7 +89,7 @@ Some properties are recognized either by SPI and SDIO v=
ersions:
>     this property, driver will disable most of power saving features.
>   - config-file: Use an alternative file as PDS. Default is `wf200.pds`. =
Only
>     necessary for development/debug purpose.
> - - slk_key: String representing hexdecimal value of secure link key to u=
se.
> + - slk_key: String representing hexadecimal value of secure link key to =
use.
>     Must contains 64 hexadecimal digits. Not supported in current version.
> =

>  WFx driver also supports `mac-address` and `local-mac-address` as descri=
bed in
> diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> index fe9a89703897..d2508bc950fa 100644
> --- a/drivers/staging/wfx/main.c
> +++ b/drivers/staging/wfx/main.c
> @@ -48,7 +48,7 @@ MODULE_PARM_DESC(gpio_wakeup, "gpio number for wakeup. =
-1 for none.");
> =

>  static char *slk_key;
>  module_param(slk_key, charp, 0600);
> -MODULE_PARM_DESC(slk_key, "secret key for secure link (expect 64 hexdeci=
mal digits).");
> +MODULE_PARM_DESC(slk_key, "secret key for secure link (expect 64 hexadec=
imal digits).");
> =

>  #define RATETAB_ENT(_rate, _rateid, _flags) { \
>         .bitrate  =3D (_rate),   \
> --
> 2.20.1
> =


Thank you!

Acked-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
