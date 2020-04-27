Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4223A1BA30D
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 13:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA79621546;
	Mon, 27 Apr 2020 11:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJ0Be1x9-rHB; Mon, 27 Apr 2020 11:58:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6194D2107D;
	Mon, 27 Apr 2020 11:58:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C01621BF3C4
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 11:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B880E85F33
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 11:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yKxBbhbG7Huy for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 11:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 39C6685DF7
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 11:58:51 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t7so992070plr.0
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 04:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zxZ+N+WEssbmNvYM0Ih4yXgwxlPsTEXMjiSj67uczQI=;
 b=kzQ6UXfWXmPDhjr5Kr6e6I7CGAQl72AJrdi96DXZAcYemHOlOt6l5MeYZlLhIziP1H
 dhQxttBUGYvW8YYFkJ8bL3wSfDmAE9hiwsLeD4dNBVP8y6HfMb7zK7sBIFi+co6zQtvi
 XotJpwYJcrN9E6eoM9+JG8Kf0irrHTosM/JqsGbVMvJW+fxLU189DOM68kmPMS7va4V1
 o5hA/mIYrcrzB2iyQVP4w420myfpLxTmZLHpOqgoRia/r32o036ck201A6OqdrTkHsaY
 av1d10Jd+KQPpNlfXdAVJxv4C2FHqmnO4jxll+R6wC7XD/T/82UMt5hMLGHJkr8znuoH
 rtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zxZ+N+WEssbmNvYM0Ih4yXgwxlPsTEXMjiSj67uczQI=;
 b=rjA/VXCTR/lLV06DGtB4C2DJRYwBYoOsbBFxAivZjdBsguC49cddrC8KPHzmDtpYDW
 74ojjM95e+H3DLHu/czpK3JKVJ3bMFFLpqhF+fgliOKWecjnboT9zxM5T4/ciV6e1JBC
 bYoByl49l4NhF/lwgnm+E/0CP0DcXd7bVpaSBoWIPcJMfOuTmJSt9i9kRaSrJtQapsZN
 8+ClR/7c6Wy3zkien4Dp2ofc2EkrFRT+g63pqY+jp2rYctBypvOuWt5gyGCR/511qdv+
 PxLObS+GYBlzjwAs2AwklCMANyo/lMFSFwOWyrUpo5LLSzStT+1qKKfljePhMNfV7Lpg
 quwA==
X-Gm-Message-State: AGi0Pubj/722YhQ+feRc//Qj9+2cSrfw54b0ymTL0hQMwbJ551J6szn6
 xwioYD4WSX4aCbqCM+zyQ7k=
X-Google-Smtp-Source: APiQypLhTM7RPmcqJ6FJZYoAq3I/OsjlHZfp2aDYHvVekpSby3Pmy6nro0GePcz2aOfAuBy7Qx2q5g==
X-Received: by 2002:a17:902:c282:: with SMTP id
 i2mr22629215pld.20.1587988730802; 
 Mon, 27 Apr 2020 04:58:50 -0700 (PDT)
Received: from blackclown ([171.61.45.154])
 by smtp.gmail.com with ESMTPSA id x132sm4992788pfc.57.2020.04.27.04.58.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 27 Apr 2020 04:58:50 -0700 (PDT)
Date: Mon, 27 Apr 2020 17:28:27 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v4] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200427115827.GA3214@blackclown>
References: <20200425113234.GA14492@blackclown>
 <8518467.FNpd3NTrYF@pc-42>
MIME-Version: 1.0
In-Reply-To: <8518467.FNpd3NTrYF@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6612445175071193561=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6612445175071193561==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 27, 2020 at 11:50:23AM +0000, Jerome Pouiller wrote:
> On Saturday 25 April 2020 13:32:34 CEST Suraj Upadhyay wrote:
> > Break lines with length over 80 characters to
> > conform to the linux coding style and refactor
> > wherever necessary.
> >=20
> > Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> > ---
> >=20
> > Changes in v4:
> > 	- Added a space after declaration in wfx_get_hw_rate().
> > 	- A checkpatch warning for this commit is retained at line 75,
> > 	  to maintain uniformity in function declarations. (Reviewer
> > 	  jerome suggested).
> >=20
> > Changes in v3:
> >         - Changed the temporary variable name for the memzcmp statement
> >           to is_used. (as suggested).
> >         - Added a temporary ieee80211_supported_band variable to address
> >           the problem in wfx_get_hw_rate() more efficiently. (not
> >           suggested, but still).
> >=20
> > Changes in v2:
> >         - Introduced a temporary variable for the memzcmp statement.
> >         - Addressed the checkpatch problem with wfx_get_hw_rate().
> >         - Restored the function definition of wfx_tx_get_tx_parms
> >           as suggested by the reviewer.
> >         - Added suggested changes for req->packet_id statement.
> >=20
> >  drivers/staging/wfx/data_tx.c | 40 +++++++++++++++++++++++------------
> >  1 file changed, 26 insertions(+), 14 deletions(-)
>=20
> This patch does not contain the suggestions from Dan. However, it is
> sufficient from my personal point of view.

Yes, I considered them but thought it would be bad to introduce a new
variable at every iteration of the for-loop.

> Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

Thanks Jerome, This was my first patch to the linux kernel.

>=20
> --=20
> J=E9r=F4me Pouiller
>=20

Regards,

Suraj Upadhyay.

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl6myNsACgkQ+gRsbIfe
746u7w/+PohUp9jD+xMXnW5e8Q49hUyz1vbxWWtc0XF6GlWb8Ki/KOY1kcU6+/Um
ipSXRDD0hcN8sKalisIVY0PWOAnRerg1GUa7mQWZYw58EGNSDEK4oiiKBXBOtEd+
P+p4xXjq5tdNXN767/fK7Qy59tWDvT3Wz5yIudvV5EEq68ZTcCFwt15Q65yhQSCU
vpsqwTTz5ztnYPNLb0aBKOgnvM4W5QHNhOhtBh9QRYeh1EDHPTAMuel38EFCE3tr
B74zOcqgLCGj8nE6pDdXfHx2remYfO7AKfeDk9w9T3Uxo31wwlUEGS8JzX2VaArp
xPJfmcPdx0GIjwvSha9XzUpThD4beXGtETTk+Qmfc9mdC9Vsy9ORA6TVSMglvtCW
VZPT+sQo7M0m7PNU/DdAZiGd9z+/lonv5uP7YgmohkSUiRM/c2e8D3qXcd68tlxJ
LGSm0kHRPdib6QjzsUdmIyGgm12dV1PO1Sc4Vgfa9G/Mlpg9x0Z1Pjf1FZbZEMra
6rrftGxAiOnr7U3gjGhdBruNqfrxvHGIy3712YFqKoT7Yi5haRGg0J8SFTzb+bEy
iEqNsqaxTLn2UDMg54W9qcuXu/U/zDl5pniYoELjANVrB4JuCRUaLpb2f1vp4Gy2
dFBjsbrCAJ3r808r6AzAOSiJCTJhdg6wIsj9E4c6RVUfPY7JbMI=
=eJ/o
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--

--===============6612445175071193561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6612445175071193561==--
