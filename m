Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F20721CE7D
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 07:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26A338874B;
	Mon, 13 Jul 2020 05:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pq853SVYhKWh; Mon, 13 Jul 2020 05:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0334D8870D;
	Mon, 13 Jul 2020 05:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 704001BF86D
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 05:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6AC13221A9
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 05:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uE56JwOQR73F for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 05:00:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 948A321579
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:00:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g67so5512907pgc.8
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 22:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1lLPOLkBFlaZV5JAnqBpeyu6VZ/I+sGZba7MGHvAN6A=;
 b=N5/I3pTYAxvtTzanlIR2Cbqs1jk5fLXdC1cjlNf29HIJjtEs+2VsLlZGwBFC7hZgdn
 oOLHhPNLXAQ/HsH0EaPMrkOg8fzBfqljXBjrQxJ4CYCEmZamriPMNHBlMY/HzWfnbN9R
 0cxbiYzptjJjWceFN8rdIEuLIGbwxzwu9aXVh4a0QHB7nRar7sB/tMBIVmU0k3ygWrfO
 ag3I1mXbl0ZYj79DYW1A4SMXtomgduxpEOv82jmEleKzPvlefsGCOP8c72zWyNZE9Vwm
 Nsbe0dMjPcjEpEjsITiQuGqE8QHgSLoyY4U3XsWzQuCMnzXmzzIh8jgRhNNdw7NBB8rx
 l+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1lLPOLkBFlaZV5JAnqBpeyu6VZ/I+sGZba7MGHvAN6A=;
 b=p69QOQ4W3Uevmb3uQEkEtMYm8wPClm7rU0CPHayJ2Ajzgart66gpx01IrPZG1lIuZU
 mkSNS6NZw71isoBHIQ7gl8WAFZxQ+s/j+738b42hRdKB2Hc1teDvqD+pCPnSMzACyyiG
 QlgxAbzuh9VW3ucz/QqVS7tUvCwhPkVfbYao2weZI+WdvAWdYMc7e/rRr3vRdInB8Oz2
 /tQ3oamnK8aPII+yG13koonWv9cD+1wobWMKv0GubjLZhybaoHKNX4/jxbeKNYXJs5xl
 ek6Jzb75tB/baeRsdiGBG+nGQcTuIILMP1bdBUjmAflWvkDebRsTtKJwzXjmj37sows4
 9Vlw==
X-Gm-Message-State: AOAM532ZAu4O3rIgUPqK7uJbaTUwuWZRDjbzwmJyJNdYjDZnCMEMJIKx
 nYrM7QPaZOugkb1tYFuKI80=
X-Google-Smtp-Source: ABdhPJwngWJbrCL+Ce1UIdpNQiTFU6Wga8WC7uWyBeSsPzEYo4Eyvgcd9b5Tq6dDyVmo9riN2aXtFA==
X-Received: by 2002:a63:720b:: with SMTP id n11mr65406194pgc.137.1594616409123; 
 Sun, 12 Jul 2020 22:00:09 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id f14sm12195717pgj.62.2020.07.12.22.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jul 2020 22:00:07 -0700 (PDT)
Date: Mon, 13 Jul 2020 13:59:59 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH] staging: qlge: Remove pci-dma-compat wrapper APIs.
Message-ID: <20200713045959.GA7563@f3>
References: <20200711124633.GA16459@blackclown>
MIME-Version: 1.0
In-Reply-To: <20200711124633.GA16459@blackclown>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, manishrc@marvell.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8277767177444884755=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8277767177444884755==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-07-11 18:16 +0530, Suraj Upadhyay wrote:
> The legacy API wrappers in include/linux/pci-dma-compat.h
> should go away as it creates unnecessary midlayering
> for include/linux/dma-mapping.h APIs, instead use dma-mapping.h
> APIs directly.
>=20
> The patch has been generated with the coccinelle script below
> and compile-tested.
>=20
[...]
>=20
> @@ expression E1, E2, E3, E4; @@
> - pci_dma_sync_single_for_device(E1, E2, E3, E4)
> + dma_sync_single_for_device(&E1->dev, E2, E3, (enum dma_data_direction)E=
4)

The qlge driver contains more usages of the deprecated pci_dma_* api
than what this diff addresses. In particular, there are some calls to
pci_dma_sync_single_for_cpu() which were not changed despite this
expression being in the semantic patch.

Dunno what happened but it should be reviewed. After converting away
=66rom all of the old api, the TODO file should also be updated.

[...]

>=20
> diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_=
mpi.c
> index fa178fc642a6..16a9bf818346 100644
> --- a/drivers/staging/qlge/qlge_mpi.c
> +++ b/drivers/staging/qlge/qlge_mpi.c
> @@ -788,8 +788,9 @@ int ql_dump_risc_ram_area(struct ql_adapter *qdev, vo=
id *buf,
>  	char *my_buf;
>  	dma_addr_t buf_dma;
> =20
> -	my_buf =3D pci_alloc_consistent(qdev->pdev, word_count * sizeof(u32),
> -				      &buf_dma);
> +	my_buf =3D dma_alloc_coherent(&qdev->pdev->dev,
> +				    word_count * sizeof(u32), &buf_dma,
> +				    GFP_ATOMIC);
>  	if (!my_buf)
>  		return -EIO;
> =20
> @@ -797,8 +798,8 @@ int ql_dump_risc_ram_area(struct ql_adapter *qdev, vo=
id *buf,
>  	if (!status)
>  		memcpy(buf, my_buf, word_count * sizeof(u32));
> =20
> -	pci_free_consistent(qdev->pdev, word_count * sizeof(u32), my_buf,
> -			    buf_dma);
> +	dma_free_coherent(&qdev->pdev->dev, word_count * sizeof(u32), my_buf,
> +			  buf_dma);
>  	return status;
>  }
> =20
> --=20
> 2.17.1
>=20



--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkvpDtefvZykbqQVOaJBbS33YWS0FAl8L6koACgkQaJBbS33Y
WS1JBA/+J9cy/Iz2PMdfWkQxIYA+Et7kUXCQ21Vc1Iaz+TslGD0tYqvp8jcZe8wg
gzVTHeosvCxsTn9BuTjeXnHHPEIsFl6EMRlW7xoXOkvpV0iZ/ZJ1/nK2UT/C8haf
yJo096ohW877MbE227k9wqrZZroC168padc6XGEepMoBhQ0W5Hs+soybKQj3od4J
8WnOC/oF06Feu/KdvkUeqwAHVj0w2Vwlhw+lUyNlsrxY5ZPx6BkjZLm9rNTgplu7
UuLgyhXzeq8RUtN6If06T15+tl4e0lDPFPmBQVM60J3aq+4wzGQg2lvXOzL27urL
DUWywJ79h2diXPjDEfyJow5661c6ubIBRagvvgYd5fHFLmqcevo0Dtw/k3C0cNg+
NmdyoMlU0/Db2Op3btgSjKdidlfMM0ImkuOiUYKR6FHf+rk2rxLQTt2z0/FK8QQi
LdTGR5zHSofGsuWpCvkKVgTXuLMtCCseY9kvOkaIyBl7uv2BW6RbnjGoHpO+G+PF
S20mH3WQojjD8+YwP7Dw0One+Lr+5aiM8tzqIXz7IMk4Q10XFWpKZpCYJCdPDiSg
3H3jTDcBvH4ngEDIHP/6SmNpB8WLSBRpaoC13hUQcpEJKBtzkvpPisElsWgRwkRw
J4IRtz70uN/bW/m4zRxpKDP28NDMZCfzHGbMtdJk10n4w8oFvxc=
=TkyJ
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--

--===============8277767177444884755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8277767177444884755==--
