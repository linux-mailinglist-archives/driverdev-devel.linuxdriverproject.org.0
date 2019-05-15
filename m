Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 129DA1F579
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 15:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF6222FC48;
	Wed, 15 May 2019 13:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZGJj5jQZyZYl; Wed, 15 May 2019 13:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 622FA27408;
	Wed, 15 May 2019 13:19:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0D81BF2C0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09B3B861F6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHqxWsTAvxl7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:19:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 767E3861EE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4NzXO7WQDo5tGkxnhYjLrTOI/MfkuT89qzlzaQU61Fo=; b=bnWqQmOdPT6gdiswwaUKr4p/xC
 g7Do/nV9uOssvDu0Eep3ZCj2/sUfyHO2K1/EGzINHN9H0Yr90eK/pE9DkQG9hLhQO2iYhJPI5ZE7S
 8Vi9DkJAHD6WTs2YPayhoxI2Hadpuaw218HZ1CdLdD6aFhy9I+DQmhvWgTLdniRt7nTJbd+qr5+UI
 RZ9AclhnK30z1KEynE2Uu6C4Nuf8RIiZ13gEbowW10rtw+Y6T2yhWzDFTi3m5k5xENypP+k2m5gwQ
 /WHXfxbXLowmDl+0gY4OtZKzyn7y/WZvcDlbIWoYjpufrCJWxICz/a9zsqGvxphBfGIpMqoNNIR2m
 Kpt70+Cw==;
Received: from kadath.azazel.net ([2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608]
 helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hQtou-0000tG-7n; Wed, 15 May 2019 14:19:44 +0100
Date: Wed, 15 May 2019 14:19:43 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/5] staging: kpc2000: inverted conditional in order
 to reduce indentation.
Message-ID: <20190515131942.ylskmjapzbfwvznu@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515111437.18828-1-jeremy@azazel.net>
 <20190515111437.18828-2-jeremy@azazel.net>
 <20190515131451.GA18438@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190515131451.GA18438@kroah.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============0985246378253597127=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0985246378253597127==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w37q7gzpkfzewvzi"
Content-Disposition: inline


--w37q7gzpkfzewvzi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-15, at 15:14:51 +0200, Greg KH wrote:
> On Wed, May 15, 2019 at 12:14:33PM +0100, Jeremy Sowden wrote:
> > Changed:
> >
> >   for (...) {
> >     ...
> >     if (expr) {
> >       ...
> >     }
> >   }
> >
> > into:
> >
> >   for (...) {
> >     ...
> >     if (!expr)
> >       continue;
> >     ...
> >   }
> >
> > in order to reduce indentation of conditional block.  Fixed
> > indentation of cases blocks at the same time.
> >
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/staging/kpc2000/kpc2000/cell_probe.c | 43 +++++++++++---------
> >  1 file changed, 24 insertions(+), 19 deletions(-)
>
> Always be sure to cc: the proper maintainer and developers for your
> patches.  Otherwise they might get lost in the noise of a mailing
> list...

Understood.

Thanks,

J.

--w37q7gzpkfzewvzi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzcEe4ACgkQ0Z7UzfnX
9sNHORAAtQ89e67OdDifpYEh/ORbp3YkXbF9mlBTde23aD5Ap/Ei4wh0/jRcy3X/
ikATNNuXFGL27BaP+NvIIWcnk2frHVvEywk1+KtBBA3rR138rVWPahR4NV67Lj0p
Cktpv8rfXuE/maGUjwginRaWRdWlE4mrrDIwsU+VsSHhgwNVRHPuiIUZ46LlIygr
wrGhnG9mjJXaj6iKdliPtZTbY/WngqfVVQfEL5+TmihL4K4OGTucpM95JoqNXYjV
YIHLg3jUxg/UH3qensE89AppBuBbeUM6zC7Cvu/0uR9GluprCXxstqiuXzV9l5e3
oI1Lbx/7KpHyUndGVdfASTKVn8gso2Hzm6juQtl2xulWJ5WAHr/XQBLP8qqIbCkt
t9/1b054VsQIh3vdBXPKDSYPJm8e/eHhGGMMKSURj7UnG9c4fF6duHl1aBSYsKiG
oGIrlNpOZsSvuvm45r5EaZOGG6g4MBywmMM4W6cmqWHE5/bCPMzD+3PTmAf8wKHN
+ypp2EprEi0DfhC3II00n7IL2h9EzyIt8IPS7G/DiQkE0GO3dlKfCjgOQnXEP5j2
JMtiLKBHDzqqS0Q5pAGt1p96qW4/qxLRWHRdfKMr57ga5gA5n9xtbHX/hWci9r76
IThdJ7GgXDMJ7JwXK3TB0fV7CtDqPyAaLujDobgNOyKDCSMvdb0=
=PEDM
-----END PGP SIGNATURE-----

--w37q7gzpkfzewvzi--

--===============0985246378253597127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0985246378253597127==--
