Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B13F43483
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 11:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BEBC877D4;
	Thu, 13 Jun 2019 09:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmgtXKroYSi6; Thu, 13 Jun 2019 09:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C52A4877D1;
	Thu, 13 Jun 2019 09:13:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98C0D1BF314
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7391F877B4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YFhXbnh-VROs
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:13:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B24A877D1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EFQYCi7HglY1oiuVvKyXS5zdh2hDBe3klgv2qfGJ0aM=; b=cf0eg9hYUfuJzsjlAsYRsQT6hK
 uvBo244wjHKZU1Ot9mtNSKmI1PUR+5pY4XT0HwOKTcFfBrCWK92jU4RaCcbOWLoUzeL12pGueIH+v
 n7Naz8/iJc9emGWKvw1FvHNy6Uh/oWeXt23eKgUzRxyB3fjQr3usqUVzkKUQY7x6j10RmzBJfJi5H
 CiFsm6ARwvjpw+8IodlrMc1oqs88JPxofzvVEm/ANWn39LgeurvoWv2uEvLbRBuXy+T3rz8zlDFZp
 zsxy4tbzNwGNCdR5zyKgA0XnzcLNUFZUjEEmtbrICeKx43WPesMAZ8aroFEGgsbJZdgAnEkRmUMcx
 IQ5EkNhA==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hbLnB-0000nP-Id; Thu, 13 Jun 2019 10:13:09 +0100
Date: Thu, 13 Jun 2019 10:13:06 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/6] staging: kpc2000_dma: added Kconfig to enable
 asynchronous I/O.
Message-ID: <20190613091305.GA4292@azazel.net>
References: <20190611195104.4828-1-jeremy@azazel.net>
 <20190611195104.4828-2-jeremy@azazel.net>
 <20190613084531.GA4630@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190613084531.GA4630@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.3
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
Content-Type: multipart/mixed; boundary="===============3081533560876492060=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3081533560876492060==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-06-13, at 10:45:31 +0200, Greg KH wrote:
> On Tue, Jun 11, 2019 at 08:50:59PM +0100, Jeremy Sowden wrote:
> > The DMA driver has call-backs for doing asynchronous I/O which are
> > protected by a CONFIG_ macro which is not defined.  Added a Kconfig
> > stanza to define it.
> >
> > Cc: Matt Sickler <matt.sickler@daktronics.com>
> > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > ---
> >  drivers/staging/kpc2000/Kconfig           | 8 ++++++++
> >  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
> >  2 files changed, 11 insertions(+), 3 deletions(-)
>
> This patch breaks the build if you enable the new build option.  So it
> probably should go _after_ you have fixed up the code.
>
> Please fix this series up and resend it.
> Also, is aio even wanted/needed for this driver?  If it's been
> disabled for so long, can't we just delete it if no one is using it?

Matt's recommendation was also to delete it, so I have sent a later
patch to do so.

J.

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl0CE5gACgkQ0Z7UzfnX
9sOt9A//UkielkMIMUPgyX4oXAHUwweTXe6t+JJNPnlDKZPzBwKHcwKQzXXrp1ST
hcPrJRRWpRlpQ242b4rncpALl4PGwLleVe0x33InjvERuO5CWGYYFoAm79ohciaU
axL26TSenXVM4SrI0V7ovEeQEh5yvuf5SBFqPaxDGPVv0AfsAPfJZ+nzhd72UGU1
N3DKEd+1LlUbt1D0bbQ+3NBc46aKKccWF7dCf/VWgHUeK3JMiPOmgURZvK1oJKsC
i2kvBg9UfAgYoD2xS0qSwsvUNUGktthN3cef+O4wHF3Wzhn3GBgHJUDSn1W9w6+D
s/O+o6/n+yo+bs47srkr6oP7nNjWcJVpML2z+iBjZegPgHiPe1wjmqsAyyFnQktU
LjDLwj2xRxwJyZSVT8YaO3L8KwuvP4Wp3vDn13Bx2P0UVnCDr8F3QiTFiGRvCgyu
zQH55oYkW3fc3R0WawsDUiIXqRAFJh3NJDFHAcDi3AU98gmx8VYe/8dUFR9+pbhN
tBuvR8oDcBejZcCCIoYzk7KMFFDqE1S5VQA/xYT+J+TeXQjk/49/8tiaILNiS7Sa
aj468Ckwgc8Zh6J9yicExeeejVd5kuLoOPnk/JJMOnIT8d3tq8vhwhJda/Sx6QyA
O6GJ0qTJqQKn1qxCFBxlyTs/+X8uI8OJssefnpYRKt9MEqd+ZDA=
=y993
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--

--===============3081533560876492060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3081533560876492060==--
