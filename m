Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5D720711A
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 12:26:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A592E87586;
	Wed, 24 Jun 2020 10:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iei_NArMHp-U; Wed, 24 Jun 2020 10:26:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85517873E9;
	Wed, 24 Jun 2020 10:26:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82B4D1BF57F
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 10:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F2EA873E9
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 10:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FwZoz_01qspG for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 10:26:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C613A873B6
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 10:26:30 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 164E5ADB5;
 Wed, 24 Jun 2020 10:26:28 +0000 (UTC)
Message-ID: <307f381cbe4976c200dbcdf0670f79a6a55bf726.camel@suse.de>
Subject: Re: [PATCH 03/50] staging: mmal-vchiq: Avoid use of bool in structures
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org
Date: Wed, 24 Jun 2020 12:26:21 +0200
In-Reply-To: <25a963df43bfa4a1099b6813bb35d9c5a6184578.camel@perches.com>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
 <20200623164235.29566-4-nsaenzjulienne@suse.de>
 <25a963df43bfa4a1099b6813bb35d9c5a6184578.camel@perches.com>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 kernel-list@raspberrypi.com, linux-kernel@vger.kernel.org,
 laurent.pinchart@ideasonboard.com,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8174082285155521554=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8174082285155521554==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-FOp+GqeSI2bnqbVaozq5"


--=-FOp+GqeSI2bnqbVaozq5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-06-23 at 15:11 -0700, Joe Perches wrote:
> On Tue, 2020-06-23 at 18:41 +0200, Nicolas Saenz Julienne wrote:
> > From: Dave Stevenson <dave.stevenson@raspberrypi.org>
> >=20
> > Fixes up a checkpatch error "Avoid using bool structure members
> > because of possible alignment issues".
> []
> > diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> > b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> []
> > @@ -1754,7 +1754,7 @@ int vchiq_mmal_component_enable(struct
> > vchiq_mmal_instance *instance,
> > =20
> >  	ret =3D enable_component(instance, component);
> >  	if (ret =3D=3D 0)
> > -		component->enabled =3D true;
> > +		component->enabled =3D 1;
>=20
> This change does not match the commit description.
>=20
> Also, checkpatch does not emit a warning here.

Fair enough I'll drop it for v2.

Regards,
Nicolas


--=-FOp+GqeSI2bnqbVaozq5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7zKk0ACgkQlfZmHno8
x/6Zegf/eT/eppMsIFinxWFgrJmWBBu9iC3muOwrgv74O+kaKnIBS5woWnRQcq6O
dDXD3an0w5+W3ii/d+2xvRfk22sX/GPMYzxyeoKpIY8xvt813ZAq+g28Z8zYTmQi
t+7TIcvSVonEdlEE3gY3E7VNlGplzl8SB+mlnPyApt1y0yGf4ZNyY3s8mLfSSkon
740q+B+2IjMpqo9/JsTffvhWko7qdcxAxf80FpaAPHXEqgh3uuLanTILk0evUQNw
R0reYZeMVJP1CQ8Dh+wcZgFdVBYyeYHTi4+b1q2Y0XJE0CbRdERe1e79VRb22bs6
xDfwtcmNocKWnHHxiv6A0sjm0HSoMg==
=CSKG
-----END PGP SIGNATURE-----

--=-FOp+GqeSI2bnqbVaozq5--


--===============8174082285155521554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8174082285155521554==--

