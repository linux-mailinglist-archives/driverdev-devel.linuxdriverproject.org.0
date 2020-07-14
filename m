Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5AF21E7A4
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 07:42:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A67408A77D;
	Tue, 14 Jul 2020 05:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClJEg88KNA9F; Tue, 14 Jul 2020 05:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF2EC892A7;
	Tue, 14 Jul 2020 05:42:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5841BF2CA
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 05:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48CE2891A3
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 05:41:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A8xdLMbgHojA for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 05:41:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 573AF8907F
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 05:41:44 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id t11so7087622pfq.11
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 22:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5vY1n+N/VQ+6xLkxPzwANaxUQVVSv14sE1Bo22nwo+8=;
 b=d4pjqhm9RHROhmxjFHCDV5yLw6T0kj3qhWLPRo406IDG5azkucuSPO3ZDF/L4txM8Y
 GtIq7DDawqq9+eCzdNsDa/KjzDAYKycDf35LtXOnMPPB1Ls5cQM6ggiogc8YoKNmNIex
 0/JT6yFHLvH3wel8MBq0vLV5EONcwVwOPwtipkupNJP08JRB8EzyJrXYIrDexcPUV96N
 anzrTf7FolMbrktBP0qcialz3tze2/h5PZlP5JJ+GmTKfXhzExsTR82txdvJroVdqxD2
 3+JSge3Lrq2+V24h+wfUDIzQihxObwDVBC3ysQJwLwrmTrLCIXSG+zB33mqleLsKhjF7
 ffSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5vY1n+N/VQ+6xLkxPzwANaxUQVVSv14sE1Bo22nwo+8=;
 b=Rok4vuyoG5qavgOCQ/jIcYsgcMma7yPs1dP9NLrb7/0uItuXOzqTYnc0V5AeJctyZT
 GU31Ufbb5SYe2zarCgEiuV1BlYTQmYKWxSz3Ltr9Yyk11JvD01x5q3ARYZewO3bkuT6v
 uUJEKh0TozcaYjpUV0KLmszLK1sqpuavVA3Yy3ENnF+Ufn41bVQF/qjF2yd3Exb+r2as
 MPILxKvaqaEqAIQn+RsiI/Tj3fqYJtctCbINxOOZVVxcGOkLdo4uAcXP6r0VbB97Fte7
 n0Pq9KDFXAhhWlvP24vz1FNw4M52JgLL/k8ATy7it1GXumAaOXR8Hd807fZ+Owqo8zUe
 +SCQ==
X-Gm-Message-State: AOAM533a5oa7MSi58cvMCHnwOflPgCjRegwLiVeJURHeGNC2ILJNywax
 B5ebBGpgB4KPgkQvKLj6LXs=
X-Google-Smtp-Source: ABdhPJzyetHHZwcsu3ySYi6T0RyV+znuILAhavOnyxSfyl5RmIoJptvZEUpziE0tgNLhzIyOorCpqg==
X-Received: by 2002:a62:8608:: with SMTP id x8mr2790289pfd.96.1594705303844;
 Mon, 13 Jul 2020 22:41:43 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id z13sm15469334pfq.220.2020.07.13.22.41.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jul 2020 22:41:42 -0700 (PDT)
Date: Tue, 14 Jul 2020 14:41:37 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH 4/6] staging: qlge: qlge_main: Simplify while statements.
Message-ID: <20200714054137.GA49448@f3>
References: <cover.1594642213.git.usuraj35@gmail.com>
 <1bb472c5595d832221fd142dddb68907feeeecbe.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1bb472c5595d832221fd142dddb68907feeeecbe.1594642213.git.usuraj35@gmail.com>
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
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8398171994323935850=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8398171994323935850==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020-07-13 17:50 +0530, Suraj Upadhyay wrote:
> Simplify while loops into more readable and simple for loops.
>=20
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
[...]
> @@ -1824,7 +1821,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_ad=
apter *qdev,
>  			sbq_desc->p.skb =3D NULL;
>  			skb_reserve(skb, NET_IP_ALIGN);
>  		}
> -		do {
> +		for (; length > 0; length -=3D size, i++) {
>  			lbq_desc =3D ql_get_curr_lchunk(qdev, rx_ring);
>  			size =3D min(length, qdev->lbq_buf_size);
> =20
> @@ -1839,7 +1836,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_ad=
apter *qdev,
>  			skb->truesize +=3D size;
>  			length -=3D size;
>  			i++;
> -		} while (length > 0);
> +		}

Looks like length and i modification should be removed from here. But in
this instance, maybe the original was better anyways.

Agreed with Dan. At least some of those loops can be converted to "count
up" loops for a more familiar appearance.

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEkvpDtefvZykbqQVOaJBbS33YWS0FAl8NRY0ACgkQaJBbS33Y
WS0Z3g//WcVnTN4TKXOSsgeRlWHyX3urQyWEoECrDPEHYUOMJw+KG+lDtZdJOEqa
imuRQ79vr+x5wb806yuriU7kWYoH8AtS/7tEXubU3nHMZtw6IiVQiyMvA/pCFUDr
8Z9lfVyNfIxiJqYSNigLEx0P3Psd8UYvbj09XYa5M6YlL77M2QU97RWgwPSwp7Eb
NottP8d9Y1TYk34o/tDHPqt1UBWxVi438/ulKkbfrGr7vKsBN65F/sE5Xpa4kGaY
eZx/ruVcekeso6UbWEHqk+foSK4RXr2C/ES0AXVvaJwxXnthE8lABye7EbZMDrPi
QAyd3AWdQbWq0ScymyhUHZB0VUtQWD8nEEs/k3XA/M3CDLrsVwv1KDekECDvwcHv
3r/Sj+XCo3jZ1Pc1f5KYSDsHRRUV83QMI0uiovUnEOuf8kGKe4jx0CFVv66bwsxb
eeAhk7aHWS9f95Ij9HHmWxuSsh/KVoH6F8NwQNwhYVRXGv4ytxYqsRNkZEN7DlNW
OGkcAySETR302XjTL/HbLZVVi8hzu/CTmF+YpBbzpc7JHY43cWHID19CS6F3yjS6
tOe4t5JLEVHure0wZy39cew8lGP9urN4/sbQ2qFHZOksmAVXaX0kE/5uwxnPsnEh
8+xHL8sBm3j6jBQI9RiCQHZ8UcvKxEue1ZL2NK/i504aYOjkQG4=
=huGq
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--

--===============8398171994323935850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8398171994323935850==--
