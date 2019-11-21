Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D326105A7F
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 20:39:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7E13871A2;
	Thu, 21 Nov 2019 19:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJZS5hjFcm2s; Thu, 21 Nov 2019 19:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2844687171;
	Thu, 21 Nov 2019 19:39:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC01D1BF341
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 19:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C90C2880A5
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 19:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jA2PlEejJhkL for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 19:39:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2888885F8D
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 19:39:00 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BEF1FAB7D;
 Thu, 21 Nov 2019 19:38:57 +0000 (UTC)
Message-ID: <1a953395f7b231127fce6ca46fcf78ba6dc9bf4d.camel@suse.de>
Subject: Re: [PATCH v2 0/4] staging: vchiq: Fix vchiq_read return value in
 case of error
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>, 
 gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
Date: Thu, 21 Nov 2019 20:38:55 +0100
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
User-Agent: Evolution 3.34.1 
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8139862928142024616=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8139862928142024616==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-MwIPn4t8mzotI4jgdBxl"


--=-MwIPn4t8mzotI4jgdBxl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcelo,

On Wed, 2019-11-20 at 15:20 -0500, Marcelo Diop-Gonzalez wrote:
> This is a proposed fix of an issue regarding the handling of positive
> return values from copy_to_user() in vchiq_read(). It looks like the
> struct dump_context passed to the vchiq_dump() function keeps track
> of the number of bytes written in the context->actual field. When
> copy_to_user() returns a positive value, this is set to -EFAULT. The
> problem is that this is never returned to the user, and instead the
> function continues, adding the number of bytes that should have
> been copied to context->actual.
>=20
> Running the following program:
>=20
> #include <stdio.h>
> #include <stdlib.h>
> #include <fcntl.h>
> #include <unistd.h>
> #include <errno.h>
>=20
> int main(int argc, char **argv) {
>         int fd =3D open("/dev/vchiq", 0);
>         if (fd < 0)
>                 exit(-1);
>         sbrk(getpagesize());
>         char *bad_buf =3D sbrk(0)-100;
>         int x =3D read(fd, bad_buf, 2000);
>         printf("%d %d\n", x, errno);
>         puts(bad_buf);
> }
>=20
> gives this output:
>=20
> -1 1
> State 0: CONNECTED
>   tx_po
>=20
>=20
>   Remote: slots 2-32 tx_pos=3D578 recycle=3D1f
>     Slots claimed:
>=20
> Note the mangled output and incorrect errno value. Messing with the
> constants in that toy program changes the results. Sometimes read()
> returns with no error, sometimes it returns with a wrong error code,
> sometimes with the right one. But it seems that it only ever returns an
> error at all accidentally, due to the fact that the comparison between
> context->actual and context->space in vchiq_dump() is unsigned, so that
> that function won't do anything else if it ever sets context->actual
> to a negative value.
>=20
> After this patchset, the above program prints this:
>=20
> -1 14
> State 0: CONNECTED
>   tx_pos=3Db4a218(@165de6b4), rx_pos=3Dae0668(@f02b54f4)
>   Version: 8 (min 3)
>   Stats
>=20
> Help with testing would be appreciated. So far I've basically just
> diffed the output of 'cat /dev/vchiq', run the program above with
> a few different values, and run vchiq_test a few times.
>=20
> These were applied to the staging-next branch of the tree
> at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

For the whole series:

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas


--=-MwIPn4t8mzotI4jgdBxl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3W588ACgkQlfZmHno8
x/6G/Af+LBq5JWfSJQufzmjeSyDpF2U3LWfHKXt/RYNHBAW3lupHgIQJZZvKzDHd
/+/Ze0ztgTaOJHNvbxEck/6m1JRSNFjpOI5e8z3cJgnnsR2G71/CP7nDy8v6V2WK
htVVti9ETaz0NMnT/iEBoxuQXUimNzaCQ9iXxIbsLOSWur3tsjlfgVka08kdZT54
biS/DLlJsadBBrmZCoHcvt+JQ6lZHRuW5TMZmUiZhdfbHfGekf3/tuam4WgcbFdg
FYsBjsxw++hFhGATMrSihkfxpDWm77ZxiQsleueuDaq7vD3nD9IauNxr843K5Iwv
HGia6UtF36BJNeF33vUlbA08/GqyAw==
=SSQ2
-----END PGP SIGNATURE-----

--=-MwIPn4t8mzotI4jgdBxl--


--===============8139862928142024616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8139862928142024616==--

