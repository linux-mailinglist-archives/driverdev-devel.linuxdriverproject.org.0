Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF992F19EB
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 16:44:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 912198707F;
	Mon, 11 Jan 2021 15:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2PS9QpEzlvs9; Mon, 11 Jan 2021 15:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E3718708D;
	Mon, 11 Jan 2021 15:44:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C29101BF3D8
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 15:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 943CF2079C
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 15:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JjyG4r3OGkQ1 for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 15:44:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E45A204B0
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 15:44:03 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 56DB1AB3E;
 Mon, 11 Jan 2021 15:44:01 +0000 (UTC)
Message-ID: <c8e5077c4b7c8ec73316d9c07c088b648e4f03d4.camel@suse.de>
Subject: Re: [PATCH v2 0/3] A trio of vchiq bulk transfer fixes
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Phil Elwell <phil@raspberrypi.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Dan Carpenter
 <dan.carpenter@oracle.com>, Stefan Wahren <stefan.wahren@i2se.com>, 
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org
Date: Mon, 11 Jan 2021 16:43:59 +0100
In-Reply-To: <20210105162030.1415213-1-phil@raspberrypi.com>
References: <20210105162030.1415213-1-phil@raspberrypi.com>
User-Agent: Evolution 3.38.2 
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
Content-Type: multipart/mixed; boundary="===============8057030187135981078=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8057030187135981078==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vWevdPEfOrfcmx1Agg/s"


--=-vWevdPEfOrfcmx1Agg/s
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2021-01-05 at 16:20 +0000, Phil Elwell wrote:
> The recent batch of vchiq improvements broke bulk transfers in two ways:
>=20
> 1. The userdata associated with a transfer was lost in the case that a
> =C2=A0=C2=A0=C2=A0non-blocking mode was used.
>=20
> 2. The 64-bit ioctl compatibility shim for a bulk transfer used the
> =C2=A0=C2=A0=C2=A0wrong ioctl command.
>=20
> This patch set fixes both of those bugs, and adds a security-related
> note to the TODO file.
>=20
> Changes in v2:
> - Expand the commit message on patch 1 to clarify the impact of the
> =C2=A0=C2=A0bug, and add Tested-by.
> - Add commit 3 with an additional TODO item.
> - Change the name of the patch set to be numerically accurate.
>=20
> Phil Elwell (3):
> =C2=A0=C2=A0staging: vchiq: Fix bulk userdata handling
> =C2=A0=C2=A0staging: vchiq: Fix bulk transfers on 64-bit builds
> =C2=A0=C2=A0staging: vc04_services: Add a note to the TODO
>=20
> =C2=A0drivers/staging/vc04_services/interface/TODO                | 4 +++=
+
> =C2=A0.../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 +++=
+--
> =C2=A02 files changed, 8 insertions(+), 2 deletions(-)
>=20

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-vWevdPEfOrfcmx1Agg/s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl/8ckAACgkQlfZmHno8
x/4eBAf9HsjeqowbAXSubi5234uRVGWJuSN3HyNrJ3tMPSVKRBn3TqeY6FcIkcwQ
G+oTMN0u2TsQs4d6o2JaxFm83Ioih0hsSGxM9bWQp/STALmiZRpeNe27gLYcxYki
+tZsbEln+9Gbfn/JakiR+UqD7DlN4lr113MVAc4iDAYpu1VfGEFwZRkeD7sJzcbs
GYrzbJ/Ws0FhrrCzEvc00nRJ4hwLEUb+tQyMPQd3X4JEiOLpq/nE+TaUI2Y9A5rd
u78ZoI58BMRh5GloHYzh7tS8RdhxM0LfJ2w5aIzWkdHOTU0QRKCJSlZZXSB1fkyl
6chDk0vgdVUSXmAzDFsSo0vZVLcT/w==
=aqSe
-----END PGP SIGNATURE-----

--=-vWevdPEfOrfcmx1Agg/s--


--===============8057030187135981078==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8057030187135981078==--

