Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F45DE6A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 10:36:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CB75220486;
	Mon, 21 Oct 2019 08:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CF1S7EE1pGl2; Mon, 21 Oct 2019 08:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E345E2043C;
	Mon, 21 Oct 2019 08:36:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE2E61BF355
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 08:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3EE8862BC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 08:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWyyCxTHsaK5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 08:36:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr730080.outbound.protection.outlook.com [40.107.73.80])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3019F8632F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 08:36:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2wMGhoFGwN4lRqbVvjfFQp3GEsTzf3tSOca2D3Xdh5UTY8Uy/qPddqoGASPfJDgH6KHkUc9ru54NyWxsdpV0FnEfhxx2XhmxmgfYX0DSfQ7gp1ooYkdbnEyqgAxC4lzXzbWAFdwdKzcKaPJFZ3n4CcQsBAOgYh+xadiLvObFFEDgF6xHrzCefk+jWvxsbKh5I7EoEi+FuQnsOlLcErhUoCLJgFWiGqSjmp4iryu0bY+HMGOFeXIG+/L2W1KulvwvXWSNABbp7q5zrYyHhVVOas+BhhjIvfWe3LgJJo/C00LJ3oGQboC/SFW5TIl40alqA6OTaMTKlfV0NejDq+EyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iy8jLzROzCX9GJqVkVZTjAOMSMUpi+0GYak3vKUJAMQ=;
 b=HOnVyqHBNYZguutamFqWtz8hmthhJ2jCyI+ezho+70Yr63iejfIxpT+iTUqxKT95gwgE5XUM7VMtHwbFEhsPoTFDb4LNiL5lCOE5jjEQGUXsgpJbvUtMoVnqqJQNcOzN3IrppoqAc0zpP92ad/VefNmXkpYUuuWo4kPSUazPwBTmnJPoXQrRl29sN0IyciXDn0Gn0QePG02IYh8kgpDx9y4RFIluG3SFKXuCQwYQeyHNd1fGbMp3mAjgDFBIIQEhzBpoDmkBVqTtGitb+atmgSEUmJtP/0tCiVprIHOcAJWzF3ncTJ6S3DITvcd1FWrlHVmWsjSFYLZow95b3OkUbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iy8jLzROzCX9GJqVkVZTjAOMSMUpi+0GYak3vKUJAMQ=;
 b=lcqCvTk2y3+YCpKLvgC85rYvDYa3FWKY+8ZdpnO2n55M1m5QUkEmxd3y4z6ZaFNbntvUHcWQRCX/iUcX4TdVi/L4xKpRQ9YxjV2RdTVW0g9fZbNyP+HuvbO5lUsh3wXJQEsIAIaEfWizWL6O0FM6o1wC/JyVwAv84r5SZYGzv4s=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3949.namprd11.prod.outlook.com (10.255.181.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Mon, 21 Oct 2019 08:21:46 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 08:21:46 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
Thread-Topic: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Thread-Index: AQHVhoaXW9ETEAkC20KZ2rlidgS3oadiBNmAgAK/PwA=
Date: Mon, 21 Oct 2019 08:21:45 +0000
Message-ID: <4583183.OhVBZdlllx@pc-42>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
In-Reply-To: <20191019142443.GH24678@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: caceab67-1e54-409d-398a-08d755ffb667
x-ms-traffictypediagnostic: MN2PR11MB3949:
x-microsoft-antispam-prvs: <MN2PR11MB3949630B814E417EC0143D8293690@MN2PR11MB3949.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39850400004)(366004)(396003)(136003)(376002)(346002)(189003)(199004)(446003)(478600001)(6436002)(66574012)(476003)(486006)(6486002)(11346002)(71200400001)(71190400001)(5660300002)(229853002)(99286004)(256004)(6916009)(14454004)(5640700003)(8676002)(6246003)(7736002)(81156014)(305945005)(25786009)(4326008)(81166006)(9686003)(6512007)(76176011)(2351001)(8936002)(66946007)(66476007)(66556008)(76116006)(6506007)(91956017)(102836004)(3846002)(6116002)(66066001)(64756008)(2906002)(66446008)(186003)(26005)(316002)(54906003)(86362001)(33716001)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3949;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U7KeoZ22FeGnlf63/GfCZroUI6JjjhdqSWhYdJ23QchbvdUFqOKBJBJqgUpZErvMs6ALd0+bd4U/RdMgcaxnKb143K8Z6YLYw1NPM/gflMhXV4uIYhHxEjt6kiNUhxOd9Z3GdsimjDX369Zm1SiZrmRUfmukEDeeWZIel2Diu4Nq90t4LzxodzX4ftu/dvynW8AkRx4XILXvDWXyc+nFdLrn2bfAWqd65Ta2o97PIyDYvYmdtJayDrVaNxmd/UgvgAQo4x+RyxdQlbuqJWqlOS/D8IiIwqZiloTN5+3icte8CSVl5it8vRSdKEnBDKyFGy5QWLFnDeMtbos1Un4/SaS+c/8xndB6Jd7hOOuNUfWFQCQBAD3ZaRqaoMNUar0oE6ygcgpBTJxgn0fxTZiZjipRxW0zZ1fKDWtaiHHPAww=
x-ms-exchange-transport-forked: True
Content-ID: <736FEC0722E0284582AD517F5E17B446@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caceab67-1e54-409d-398a-08d755ffb667
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 08:21:45.9635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGdwcgt4LSB67Z1uH0rqZcJcKwm3nkZGgwU7SJc9jJuLj25pRfsihzCULTMXvG5t9MyPU/TZSjWvRPxhb2YxKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3949
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Saturday 19 October 2019 16:24:43 CEST Dan Carpenter wrote:
> On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 3355183fc86c..573216b08042 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t r=
ead_len, int *is_cnf)
> >       if (wfx_data_read(wdev, skb->data, alloc_len))
> >               goto err;
> >
> > -     piggyback =3D le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> > +     piggyback =3D le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
> >       _trace_piggyback(piggyback, false);
> >
> > -     hif =3D (struct hif_msg *) skb->data;
> > +     hif =3D (struct hif_msg *)skb->data;
> >       WARN(hif->encrypted & 0x1, "unsupported encryption type");
> >       if (hif->encrypted =3D=3D 0x2) {
> > -             if (wfx_sl_decode(wdev, (void *) hif)) {
> > +             if (wfx_sl_decode(wdev, (void *)hif)) {
> =

> In the future you may want to go through and remove the (void *) casts.
> It's not required here.
> =

> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_sp=
i.c
> > index f65f7d75e731..effd07957753 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned in=
t addr,
> >       struct wfx_spi_priv *bus =3D priv;
> >       u16 regaddr =3D (addr << 12) | (count / 2);
> >       // FIXME: use a bounce buffer
> > -     u16 *src16 =3D (void *) src;
> > +     u16 *src16 =3D (void *)src;
> =

> Here we are just getting rid of the constness.  Apparently we are doing
> that so we can modify it without GCC pointing out the bug!!  I don't
> know the code but this seems very wrong.

Hello Dan, Jules,

Indeed, this code should be improved.

Each u16 from src is byte-swapped before to be sent to SPI and restored
before to return from the function:

	for (i =3D 0; i < count / 2; i++)
		swab16s(&src16[i]);
	[...]
	spi_sync(bus->func, &m);
   [...]
	for (i =3D 0; i < count / 2; i++)
		swab16s(&src16[i]);

So, src is same than original, but it is not const.

This is exactly the purpose of the FIXME just before the cast: "use a
bounce buffer". However, I did not yet make this change because I worry
about a possible performance penalty.

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
