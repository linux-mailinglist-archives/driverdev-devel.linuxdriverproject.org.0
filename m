Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E1820CF39
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 16:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30BCF875FB;
	Mon, 29 Jun 2020 14:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ac8yIXazYru2; Mon, 29 Jun 2020 14:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0974486E51;
	Mon, 29 Jun 2020 14:43:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD051BF375
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 14:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D0D88724A
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 14:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNjEs971AetW for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 14:43:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60E3986E51
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 14:43:43 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id i4so8125215pjd.0
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 07:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jLORGp6VfrDrQA8PpUsXn5+mhrmQSe4/xK3Vs+cmlnA=;
 b=CN262X2BWpTSqbB1xZLnzt3P6PXjtlLIfYiIegWD8/RQLngh8QXv28Rke8t+T7ErjV
 0xoehil5YqUKWFNf9122vK/5Bl/5hRrynVReUB3J5JnMTxyoit84XWPf/TXz1ioFztsx
 AHVRLwqLna0A2h1BfWLa6SpiqcFSvanAVPhajVV+GYLDx6Q8/BDHlmGdGmlSXzWQ/ZTX
 IFWxdidVNy4yIbMMgL2eFDLZh1gon3kWRo1AzuR3WxbQGW5UDDAdyMMFy5F/qo91WYm7
 qo+N+qOh3A/N7rL4UKaOo4Xf7ki/gntOiUCTeRRDcT02wPU4+AzS2xOjl9YaWxHfl1JS
 T3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jLORGp6VfrDrQA8PpUsXn5+mhrmQSe4/xK3Vs+cmlnA=;
 b=WhWSppSio/Ia6Tzg6zF08Ez57kiqk9zdJVFjGA5+/124jqefAhUbfcMuiKIt5N8vDp
 5f0cMpkUWpv1LtKHXpS5B76yxoksbPk16i3Z5HN3TOznedT+NWTBYvkKHfCwhsgwwsd6
 DxqHzkU+Seds45e3fnLeWG6HKsKExlZVkp7UsPQTALErOTv/ocV3AHY7b2CbFIqGHy8X
 /XQNqNb70nxS73mwAIDSWJXhsejkajSRvI84wr01cdNyknqHts9rHIkiSLifUYtpkaFi
 IKUnKYyIWDhMtHJ77kjTA5VGJXXvvf4iuAiaFCS3tAkXTqM/GkcW8siI+a3BjbIN3zu1
 60Kg==
X-Gm-Message-State: AOAM532rN3zZTzAqf31N+kv7ikqlTU62qi3keFFOvVG0kQl4Pbvnlg+N
 eL8OUh17snff9m2AEGzRtYEn9Q==
X-Google-Smtp-Source: ABdhPJyirQnsQiQuhswSo/uIYV1ui5LyLyvg/sRt0KpvA9WEl1ByzdHprHAFfNPsV1N0i2xDWfS+Eg==
X-Received: by 2002:a17:90a:a413:: with SMTP id
 y19mr4591589pjp.59.1593441822678; 
 Mon, 29 Jun 2020 07:43:42 -0700 (PDT)
Received: from localhost ([2406:7400:73:703c:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id s9sm101062pgo.22.2020.06.29.07.43.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 07:43:41 -0700 (PDT)
Date: Mon, 29 Jun 2020 10:43:36 -0400
From: B K Karthik <bkkarthik@pesu.pes.edu>
To: B K Karthik <karthik.bk2000@live.com>
Subject: Re: [PATCH] staging: media: atomisp: i2c: atomisp-ov2680.c: fixed a
 brace coding style issue.
Message-ID: <20200629144336.fhykjoqrhfhifmes@pesu-pes-edu>
References: <20200628043833.3dodctrmkec6aoe5@pesu-pes-edu>
MIME-Version: 1.0
In-Reply-To: <20200628043833.3dodctrmkec6aoe5@pesu-pes-edu>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0379332551794073242=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0379332551794073242==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i3ho2sv5roir6t7m"
Content-Disposition: inline


--i3ho2sv5roir6t7m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Did this get burried in along with a bunch of other patches? I am sending t=
his email only because I did not recieve a negetive acknowledgement on the =
patch.

I apologize if this message was hurtful / disrespectfull in any manner,
thank you for reading this message.

karthik

On 20/06/28 12:38AM, B K Karthik wrote:
> Fixed a coding style issue.
>=20
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/media/atomisp/i2c/atomisp-ov2680.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c b/drivers=
/staging/media/atomisp/i2c/atomisp-ov2680.c
> index 90d125ba080f..c90730513438 100644
> --- a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
> +++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
> @@ -495,11 +495,11 @@ static int ov2680_h_flip(struct v4l2_subdev *sd, s3=
2 value)
>  	ret =3D ov2680_read_reg(client, 1, OV2680_MIRROR_REG, &val);
>  	if (ret)
>  		return ret;
> -	if (value) {
> +	if (value)
>  		val |=3D OV2680_FLIP_MIRROR_BIT_ENABLE;
> -	} else {
> +	else
>  		val &=3D ~OV2680_FLIP_MIRROR_BIT_ENABLE;
> -	}
> +
>  	ret =3D ov2680_write_reg(client, 1,
>  			       OV2680_MIRROR_REG, val);
>  	if (ret)
> --
> 2.20.1



--i3ho2sv5roir6t7m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl75/hgACgkQ471Q5AHe
Z2o9Zwv/W+4Q3b66dFYLTKnXoigYHIbecsuAc0LMW5V2VSXQJ8dq+DsCFvawZMh3
UmbKaZsk033rYkKxbc1rubekPkm1eQ0kAY2iG6j+sIPnYtlUpkLRT6fU6vclZkAO
gliHVAn1j0aB483pR6TJY0ek+ieMra9a7cetHsDHwzjdFQsheKDmEvtwjSYo5CCY
0gImXtqo0md5TaiCmATWZ8GA6iOFcgOA+AHxhHN/s/SJ+CmZ2Ep4JGbPiaOCZcvq
YjwBI15IiHVfJ8DDiYbemJvZRkZdKmgh8oIFDKS0jyFcGBn6fBkhWregLs9tqhyu
PaSgKyS4nCIXL0mSDv87nPH8pq8DTfmFb6LEA09slsKzwMBUgESCywCLX0jiWTSn
q0Y+CaE5mdKQBkOkizun3BuHbu43YDHKTy4qHNBDnTrLdltAKFjvxfvh6Sixfsvj
1tEo886KYQETUjkIdmdCkjs5FT5uRDF+XGjCH2MxY/uxmq/LkxMOLY/IMGjMPf9U
TkhSrXDs
=Ikkk
-----END PGP SIGNATURE-----

--i3ho2sv5roir6t7m--

--===============0379332551794073242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0379332551794073242==--
