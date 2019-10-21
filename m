Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B39DED35
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 15:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8C7F85B4A;
	Mon, 21 Oct 2019 13:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rLn8w_EXzuCG; Mon, 21 Oct 2019 13:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3101885C00;
	Mon, 21 Oct 2019 13:14:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31AB71BF2FE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 13:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B60881420
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 13:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RPK5kY4zkHJ2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 13:14:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr730081.outbound.protection.outlook.com [40.107.73.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF7E4813E5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 13:14:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTEjsqCLWY63hNSu7xx6uGyJFkbW0M0tI+hV002IgwcBc9bH7IaTeHkTDguj7GIBRX0fvZWBMln1Fg+spRmuWtXbMt8+S97KpJUc8mXGxF2hL26PBAUT7UnU5gMNEktGiN+vngGtlyl8UA4p9Je5dhokDUcK3o/k7cMqivl8ud7TH73z4OqQkytesyX3WVeuelkjOtbIL+dqWBqLjzUa/5HQtZpa5LoPO4XfktJWNT1IjKqnwCt2VivJBHdHmuqdVHnEtcolKLYCcU+AObJxxnaXB3TK7ne4ZuYxfzMOKYy5WEXjyWCMTxnm6CUMWYIXTFK1VCJmH8kpYY6xQZjeUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nNG51pn6lVefN68Uc9Nyk9e1fldE5cs+VAa1rGXrjc=;
 b=SEVNGkm+GaO8zrLb3x1NL7h/8M5bdqOTsegEtPeCMilpy1Hahv+cOzEl1NrP94HhEl2McRCP0IpV+cFa92kmnxEfHYIAT59nDUfVvN2FYcs/jfNMHz5SqxF29V9ntRsl54B4Fb7SsBjnTzpUd8RjqnkTMQcwftwZBrioUF9O6Or8R71xZWA3ij2Laz9ONLNFbWBO9V2cbe6f76W2v59Wedr9Ucog2Id9q7dkjJiE/XCnkQdD3BWJuEjS5oeqk7+Ke1D/keFiXmgCY29FIwSTHTtYB5EJs249h4l+EBw2MHAmNmjrthUUI/A/fmkBdlqLWKc+WaoW8RRWjXYin5yQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nNG51pn6lVefN68Uc9Nyk9e1fldE5cs+VAa1rGXrjc=;
 b=h2Z67/WftlnqLvWWxBZ6I7qtTCnddq7k+Wq7dDhYTaqDA5jiU2NsmJFC04cUlFccF6iMiQHekmIr0KbXSsCa83dG5JBvNP+q72F7X95gC5tdGr0PIHF1PPfDQjlhoK6WhTj/rjfxhbwVSdgHO2yCd+/xv4qPlq8fLqKt60R0rBo=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4366.namprd11.prod.outlook.com (52.135.38.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Mon, 21 Oct 2019 13:00:05 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 13:00:05 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Subject: Re: [PATCH] staging: wfx: remove unnecessary void pointer
Thread-Topic: [PATCH] staging: wfx: remove unnecessary void pointer
Thread-Index: AQHViAqYClnli9Z4MEecbMS0wOWUF6dlDtQA
Date: Mon, 21 Oct 2019 13:00:05 +0000
Message-ID: <1631480.SfG2rUoJ8t@pc-42>
References: <20191021122449.19343-1-jbi.octave@gmail.com>
In-Reply-To: <20191021122449.19343-1-jbi.octave@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 989f3913-ed49-4d6c-6de6-08d756269815
x-ms-traffictypediagnostic: MN2PR11MB4366:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4366C41E16E5F25DD04DA02893690@MN2PR11MB4366.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(346002)(136003)(396003)(39850400004)(366004)(189003)(199004)(2501003)(8936002)(256004)(14454004)(71190400001)(71200400001)(76176011)(8676002)(14444005)(26005)(81156014)(81166006)(25786009)(5660300002)(486006)(4326008)(476003)(6916009)(11346002)(478600001)(446003)(99286004)(9686003)(6512007)(6436002)(229853002)(54906003)(2351001)(6246003)(6486002)(316002)(2906002)(66446008)(305945005)(76116006)(66946007)(33716001)(186003)(91956017)(7736002)(64756008)(5640700003)(3846002)(6116002)(66574012)(6506007)(102836004)(66476007)(66556008)(66066001)(86362001)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4366;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pgfe7aUuEBash2ZpEGAxAReOFgx3FAEDqZ966+JMAymj/OW3IVIkyiaAXizaHE4XMtN0ZCrOFT+xj/C11MwVA7wPXOPRKMXCrgLwQ0TFSS+/sdyz24cQXg7E1QUW6xLCOguvoscYIY2/3lkQOUBxxOHju1JeiBRF2+HtuX2ReXRTiTvknmLsE+XqRLQktziguUA/c+4qvrYVuaQh+T+sf+7EDoJZijWl9X28XRw2YD4OI8kyfoo3BVcDamKwf270JTHvKMaQCH2wRSwZQ4JHGJvy5VydRN+N9LAZZxRKg7DFuxnxvM1PdK9787RagQUHgLJVtyb5zb7rUGm/8sLUuiLSvhfYAnCrUZoKLlSN0l3Aoj+ptSm/La4tkiu5zY/ZnqA43SsHnT/usz4RwlhUYZq1EA0HKlfvq4RFXk+94/pPsTuZevFAYmthBX80sE3H
Content-ID: <93963DF73126944489852C98FE1F2D0C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 989f3913-ed49-4d6c-6de6-08d756269815
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 13:00:05.4612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EWyrOpwkX/WANyiq9uer7iHjp6bltG1FDrS7kBqFSj6JpRHRLiq0ilH47BkwGf+fr4vypzkaQEwv5LPbQcjy+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4366
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
 Jules Irenge <jbi.octave@gmail.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Monday 21 October 2019 14:24:49 CEST Jules Irenge wrote:
> Remove unnecessary void pointers.
> Issue detected and solved by coccinelle tool.
> semantic use
> @@expression e ;@@
> -(void*)(e)
> +e
> =

> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/bh.c       | 2 +-
>  drivers/staging/wfx/bus_sdio.c | 2 +-
>  drivers/staging/wfx/bus_spi.c  | 2 +-
>  drivers/staging/wfx/sta.c      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index 955ed3a1dd73..d7ad9227c9c4 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -76,7 +76,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_=
len, int *is_cnf)
>         hif =3D (struct hif_msg *)skb->data;
>         WARN(hif->encrypted & 0x1, "unsupported encryption type");
>         if (hif->encrypted =3D=3D 0x2) {
> -               if (wfx_sl_decode(wdev, (void *)hif)) {
> +               if (wfx_sl_decode(wdev, hif)) {
>                         dev_kfree_skb(skb);
>                         // If frame was a confirmation, expect trouble in=
 next
>                         // exchange. However, it is harmless to fail to d=
ecode
> diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdi=
o.c
> index 375e07d6d9ae..237a19b5fd16 100644
> --- a/drivers/staging/wfx/bus_sdio.c
> +++ b/drivers/staging/wfx/bus_sdio.c
> @@ -66,7 +66,7 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int=
 reg_id,
>         if (reg_id =3D=3D WFX_REG_IN_OUT_QUEUE)
>                 sdio_addr |=3D bus->buf_id_tx << 7;
>         // FIXME: discards 'const' qualifier for src
> -       ret =3D sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count=
);
> +       ret =3D sdio_memcpy_toio(bus->func, sdio_addr, src, count);
>         if (!ret && reg_id =3D=3D WFX_REG_IN_OUT_QUEUE)
>                 bus->buf_id_tx =3D (bus->buf_id_tx + 1) % 32;
> =

> diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> index ab0cda1e124f..bd74801e7461 100644
> --- a/drivers/staging/wfx/bus_spi.c
> +++ b/drivers/staging/wfx/bus_spi.c
> @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int =
addr,
>         struct wfx_spi_priv *bus =3D priv;
>         u16 regaddr =3D (addr << 12) | (count / 2);
>         // FIXME: use a bounce buffer
> -       u16 *src16 =3D (void *)src;
> +       u16 *src16 =3D src;
>         int ret, i;
>         struct spi_message      m;
>         struct spi_transfer     t_addr =3D {
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 688586e823c0..842158b7e805 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -896,7 +896,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
>         /* TODO: Distill probe resp; remove TIM and any other beacon-spec=
ific
>          * IEs
>          */
> -       mgmt =3D (void *)skb->data;
> +       mgmt =3D skb->data;
>         mgmt->frame_control =3D
>                 cpu_to_le16(IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_=
RESP);
> =

Hello Jules,

Thank you for your work.

Did you check that the code continue to compile without warnings after
applying this patch?

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
