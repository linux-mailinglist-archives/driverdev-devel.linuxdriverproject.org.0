Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEFE1BE34B
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 18:04:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A39DD23120;
	Wed, 29 Apr 2020 16:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CA15KEeONk8S; Wed, 29 Apr 2020 16:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E4524203D4;
	Wed, 29 Apr 2020 16:04:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB451BF36C
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 16:04:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 372FC85621
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 16:04:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PmBtDor2Y_Tt for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 16:04:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2055.outbound.protection.outlook.com [40.107.93.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D83CC8452E
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 16:04:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b7zSrXN5cgVrw1zmLKE4R/R0ks4qXjXV6r3CntICsIDVBZhBsu2LAkVleg3hFpZM1t0XLeFqb4icUZD3lvIF3ftuQVfprS2tylED2pTWgWLuYVK+jzu+YC8h8iYQulngqj6LFiMINIgT0J+F/QRAps0SxXtpdO1BmuzGWrPC/0d7QRcErXBdycJpZmyIqYtOsvSU4sImtrV1IxFp6eBwN0xGsWypSJA/Jkxom23nrNiFx31Q3CIbzQaGe5+FVq6QfWAXLVfN7jgVG1ri3AwIu65+5qFRKpeBosQSM4ThKhRCCe+hzSCA1FZEN6TYdDwVueUraKwjHxYFBe1HHPFkLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awVt15CK6307gmzu2M1d49T5JfWnzkVqPpxTjk0lgDc=;
 b=jjUpv0y27txVPnUg50Q94JI4BN2K+4cMBdYkhSG7nQshyE45OQPe6ptrPENSKtnS7ArCTnAc2/hdSWOBnsVJxf4ay8u1C/mGnDafOJ1DDqazeQjSbADjB/8um4yCzn9lCa+Sm85jNvXjmbTJ3WiRfHRF1cWY0HDEJMEwP53pr/ELo9tqB+CuYRUSjGhLSlNgQhSYwdBjv2ot+lItO9KYhEUJlbyKAyTG/1jk3PXoEbDFTUQEgmNoNP+oingqcg2Z+TR9riJ9DSB/1PrAVb/qmZGfCRrg78TExtBSvOQMO8AxgYBADZpsk4d6hLFohDinvoF/qWHOOv4MukQwP+zabg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awVt15CK6307gmzu2M1d49T5JfWnzkVqPpxTjk0lgDc=;
 b=eEKrRJryfRhsKozOhb5LgeqMeIi4V9RGx8CMy6QexcMrBBZ5AMF7wttLUHsTwaXs+oek/5USNuICSg/TifqrZbxPP9rMy01HgRIfjK37tVuE/hroyox/hF+DIJHu9bOrRH7PZiO9vbP3SXVJGFu6xM1ER7Q3Jy+NrP4LOKJQJnI=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB0014.namprd11.prod.outlook.com (2603:10b6:301:64::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Wed, 29 Apr
 2020 16:04:17 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.028; Wed, 29 Apr
 2020 16:04:17 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] staging: wfx: avoid compiler warning on empty array
Thread-Topic: [PATCH] staging: wfx: avoid compiler warning on empty array
Thread-Index: AQHWHjF5vlfoO7puXUWgUhn1WHjUDaiQQ0QA
Date: Wed, 29 Apr 2020 16:04:16 +0000
Message-ID: <3943343.tW1xmJHsB6@pc-42>
References: <20200429142119.1735196-1-arnd@arndb.de>
In-Reply-To: <20200429142119.1735196-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=none action=none header.from=silabs.com;
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e3ab641-8e68-44f3-c678-08d7ec56f822
x-ms-traffictypediagnostic: MWHPR11MB0014:
x-microsoft-antispam-prvs: <MWHPR11MB00146E7F0EC6E63A80D35A5193AD0@MWHPR11MB0014.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 03883BD916
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(376002)(366004)(39850400004)(136003)(346002)(396003)(316002)(186003)(54906003)(2906002)(66574012)(66556008)(66946007)(66446008)(64756008)(76116006)(91956017)(5660300002)(66476007)(71200400001)(26005)(33716001)(478600001)(6506007)(8676002)(4326008)(86362001)(6486002)(9686003)(6512007)(8936002)(6916009)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I8ldv3mmdYEzDyyvyuog+jebCxNqBEnTu8WhJnzlldX6uqItMRcgM0GPCM5F15dd5PaK3XS97icO5QcnD+ePh8qHRYN6AaCiuLGIKtZhXlsyZHFo6grYBmEqlO5DPHRc5xyCD2YqivYVAzqGzldTdFzuX4quR8IBMIbqFeg5kjCbSaAixsvMfGyhKTg6Tv3JHE+m+Iku4cVtzjwHquROxjecRXY0/0FhNgznTSOLJtNSbdKfngcrjOFcgHVTKAkcZGeyzMvxvLR6KglfY2Fz5o3ByJronA9kcP0JRxcvX9eIVsjt/hwD93IPbZE8F+4pFx4OCOIP/b4/Ezj3kbx2V0CeT4LUL32Gq8lROZfai1jYOEzZEf9KUhk1uzxtcV8INfKOLU+YzEaYJ716RpVAuoFooH2Z9wa9RFlWhA6Siw+6qyS0R/XkeYDYHj9e1GyyfmriR3QC7arWZvSbAL2hCoxFk8iXPGnCjxRJFleN5CE9w4ieDHW58JzSBJwX5zmd
x-ms-exchange-antispam-messagedata: I+lN+zVGK7cPYWT22qsqP1aKdyz0y0gdX8gubpNx+iTNba/vbOKmVr+lsPWjTueiHtHIyLDTYzHHZVq9ltgG1P3oPBmAGEBwbRtT9/4dLTcoEPN1PPvGd5EBkqgRlItBuuW+J309oEKnUd7gG3j8m7z/iiug5ismFQ7xOxC1HNf+6KCl97s3BX8UX6M3+0bJMUjn1O6pzGYKtVxWr9NAuHw5WVazE/nz+8IhyxD+IuU4ZmXXiDYpB+ziARmRbhITJCdN9Ep+a1fFwFl+5NAFiogu8dmaUYXAxCRZGV/RSZ1Qko49sbWXgSI45Nzm3G1Y5zeDaPF9JfcgsiVkmsnLu6Y1KvQ2FQ0O6mjLLS7JC3yRRpQFsH+0J6/nz4jGm+jsQFzQOdctUEDzC8wosqwyXTrx5DhjPLl1VKfcLL6lB6DVJti6tQ8VSHLq2bqsgHiH249d/0MllVM1Anej+WXR2ABOt6nyQ5yZ0sQJz7HPN1zWv3UULBDbTLbSqPDb7Goqh7YpD/Kr2UQ7H2D03lxv38ti1LnksKz4btklmuRHLoCIYG7iE+Sb0TRCpUmO+iwKEDAkV24ShhdMyLZoLwUN1bL1lu0GbmXMFFDezKRJfKPEtWH7In+Jh1fw8qH7Uvwguf55rGChJD7vKWqlJ7bbZKaEoZhiFDtuASbDOPF0H4ikTUExSBW+OCD78PUf7zhMXQNDRgykMQdYX2mETnyd8KFJRwDo3paKaNKlRKBnmklZw8HJGvDgCEs9ddwmoS/Amyt9C2fDUe+8RnrsYxrMYS9WlmJ1zMJL+YGZRLTNdlA=
x-ms-exchange-transport-forked: True
Content-ID: <8DC2BB2508D84F49A627E80CC3308FE3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3ab641-8e68-44f3-c678-08d7ec56f822
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 16:04:16.9266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tmrOUnZcz9gUkT5BfcotSOJvCF4P8IuSbdA8qO11BWemkK9y2uoL5ObdqqlQZiBai+/RTjmgdKauMxp+zzOoyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0014
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
 Jules Irenge <jbi.octave@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 29 April 2020 16:21:09 CEST Arnd Bergmann wrote:
> =

> When CONFIG_OF is disabled, gcc-9 produces a warning about the
> wfx_sdio_of_match[] array having a declaration without a dimension:
> =

> drivers/staging/wfx/bus_sdio.c:159:34: error: array 'wfx_sdio_of_match' a=
ssumed to have one element [-Werror]
>   159 | static const struct of_device_id wfx_sdio_of_match[];
>       |                                  ^~~~~~~~~~~~~~~~~
> =

> Move the proper declaration up and out of the #ifdef instead.
> =

> Fixes: a7a91ca5a23d ("staging: wfx: add infrastructure for new driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/wfx/bus_sdio.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdi=
o.c
> index dedc3ff58d3e..c2e4bd1e3b0a 100644
> --- a/drivers/staging/wfx/bus_sdio.c
> +++ b/drivers/staging/wfx/bus_sdio.c
> @@ -156,7 +156,13 @@ static const struct hwbus_ops wfx_sdio_hwbus_ops =3D=
 {
>         .align_size             =3D wfx_sdio_align_size,
>  };
> =

> -static const struct of_device_id wfx_sdio_of_match[];
> +static const struct of_device_id wfx_sdio_of_match[] =3D {
> +       { .compatible =3D "silabs,wfx-sdio" },
> +       { .compatible =3D "silabs,wf200" },
> +       { },
> +};
> +MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
I suggest to keep the '#ifdef CONFIG_OF' around this definition. If
CONFIG_OF is undefined, of_match_ptr() and of_match_node() will be NULL
and it should compile.


> +
>  static int wfx_sdio_probe(struct sdio_func *func,
>                           const struct sdio_device_id *id)
>  {
> @@ -248,15 +254,6 @@ static const struct sdio_device_id wfx_sdio_ids[] =
=3D {
>  };
>  MODULE_DEVICE_TABLE(sdio, wfx_sdio_ids);
> =

> -#ifdef CONFIG_OF
> -static const struct of_device_id wfx_sdio_of_match[] =3D {
> -       { .compatible =3D "silabs,wfx-sdio" },
> -       { .compatible =3D "silabs,wf200" },
> -       { },
> -};
> -MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
> -#endif
> -
>  struct sdio_driver wfx_sdio_driver =3D {
>         .name =3D "wfx-sdio",
>         .id_table =3D wfx_sdio_ids,
> @@ -264,6 +261,6 @@ struct sdio_driver wfx_sdio_driver =3D {
>         .remove =3D wfx_sdio_remove,
>         .drv =3D {
>                 .owner =3D THIS_MODULE,
> -               .of_match_table =3D of_match_ptr(wfx_sdio_of_match),
> +               .of_match_table =3D wfx_sdio_of_match,

... and obviously keep of_match_ptr() here.

>         }
>  };


-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
