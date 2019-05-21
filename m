Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BCA24A7B
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:34:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACBC387834;
	Tue, 21 May 2019 08:34:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24zdQnaH31wM; Tue, 21 May 2019 08:34:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2769F86CE0;
	Tue, 21 May 2019 08:34:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BFD01BF2C5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 38F8823077
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnEpo6W88Nfr
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:34:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id A539621F65
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kiM5ZtttLgp2aeuS6nMSQTEpaK8+G+tidagR08f/how=; b=oE/DN73Ww8+G+qLqnlxSLNiOTG
 W9qj6CjqTCU3HOkKWOKU8IsaBToOUbhnKKIlqXYBu1Euh3KFR9pH3L2T75PilmH6l1fsES21VVxt5
 kU8R11qRKnzwQ7PUUPcul8HfiQJhUiEOvn0gCaXO7DTiFTg2WER4eKFveaAGbOBm5XaryXRPSuMRa
 6Pygxrf7qo2LHBPQ6BNcAoRPDnKOGTm3FBUFBxLtZEe8xmIb3K0tRW30t+9YBl/BaJX5bsISIUAKM
 CI/NN+jCjGdQTCTXUVRWU1SKqF2U0HhOhwwZPMrmJNDTCWhTBQ+ph7zm+oTvkqG+l8kLBbnJIbkgS
 9tcmagew==;
Received: from kadath.azazel.net ([2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608]
 helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hT0Dr-0004nm-Fy; Tue, 21 May 2019 09:34:11 +0100
Date: Tue, 21 May 2019 09:34:10 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 3/8] staging: kpc2000: improved formatting of core.c.
Message-ID: <20190521083409.bejw4iaoksybnwsk@azazel.net>
References: <20190521075635.30458-1-jeremy@azazel.net>
 <20190521075635.30458-4-jeremy@azazel.net>
 <20190521083213.GA2460@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190521083213.GA2460@kroah.com>
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
Content-Type: multipart/mixed; boundary="===============2713775169945744732=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2713775169945744732==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tzvlfsbwj3ljgrxs"
Content-Disposition: inline


--tzvlfsbwj3ljgrxs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-21, at 10:32:13 +0200, Greg KH wrote:
> On Tue, May 21, 2019 at 08:56:30AM +0100, Jeremy Sowden wrote:
> >   * Indented with tabs.
> >   * Broke lines over 80 columns where possible.
> >   * Removed braces from one-statement blocks.
> >   * Tidied up some comments.
> >   * Removed multiple blank lines.
> >
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > ---
> >  drivers/staging/kpc2000/kpc2000/core.c | 788 ++++++++++++++-----------
> >  1 file changed, 434 insertions(+), 354 deletions(-)
>
> This patch fails to apply to my tree.  Can you rebase your series on
> my staging-testing branch and resend?

Will do.

> I've applied the first two already.

Thanks.

J.

--tzvlfsbwj3ljgrxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzjt/oACgkQ0Z7UzfnX
9sP96hAAnuRVOA8C8WB+mm0GfZT3t9SJVt1jTixAlsmS5vqRL6bU+qaLar/UghHL
L0V+zp5tMS+MVRhoVRtwj+mtng8Z+yi97+wtJUfGi/Sqo8VeuOJK26V9aBhzfL/r
xUW5/FKBpnVAcP+vNe8U2dWwkk+xrdnWpTocnKb4j33CKJaAC5DYKQnZkcLUtXu5
HPpxvx0xk/c/O9QT1+Y5K++JXnQFRozQfvzwEuF96rArKhrLztD6DW+/Kvwb+gkH
5IMKveQ7IAfZua/KiTwyR0Mu1gL7jFpT9hdr3t/W37cni2iUSCKt9gc/zHSVP5wq
XqtG+zYmOg6oVPckw0/RukTJrf4ZcLtKY8OvAOMfK++MLY17v49UQ5INoUpSLA6i
B3rqOJqCDO1ZWz5WYHm3PkZwKqn45gYR6r3HLLU1kXrt5F7+2AZgA0y+c92WzuhB
PJB7mQb/k8lhkAUbCM2vu1BCEdzNgvE8UWVbZ8WVfOjgs/orHwjrfsIqRkwpUDTt
VHGBrCJAfw4AdE96HoGjHByaUWqVV8aSs5Tf0WsSKdzWWH8aWYTcojyvej7HzBiW
Lf+pHaBwTGIlqHnEV2amQpo+K0C/GVJBcMVnBVqEupZXbwkcxNk1G4hhlAIOuXOy
d5J1AgXVrVQKZJ1ejOm6GEaxe3NFHRMmTFkzLbYtwGdcdtkw4/w=
=eW5o
-----END PGP SIGNATURE-----

--tzvlfsbwj3ljgrxs--

--===============2713775169945744732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2713775169945744732==--
