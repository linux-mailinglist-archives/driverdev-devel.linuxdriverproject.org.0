Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A241D150CD
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 17:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41A3F855CB;
	Mon,  6 May 2019 15:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtDbuSqqfEOo; Mon,  6 May 2019 15:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2397A85478;
	Mon,  6 May 2019 15:59:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8B181BF28B
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2DD980A5B
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JiZGGvxiMcxy for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 15:59:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB55F84949
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 15:59:09 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4DCC3ADDC;
 Mon,  6 May 2019 15:59:07 +0000 (UTC)
Message-ID: <686a4d50696a87b9cbe2a5908737ce91faec5313.camel@suse.de>
Subject: Re: [PATCH v2 2/3] staging: vchiq: revert "switch to
 wait_for_completion_killable"
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 06 May 2019 17:59:04 +0200
In-Reply-To: <20190506152039.GT2239@kadam>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <20190506144030.29056-3-nsaenzjulienne@suse.de>
 <20190506152039.GT2239@kadam>
User-Agent: Evolution 3.30.5 
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6745259553510256259=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6745259553510256259==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HWk7wVSA1bmO90ELmSsB"


--=-HWk7wVSA1bmO90ELmSsB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dan, thanks for reviewing.

On Mon, 2019-05-06 at 18:20 +0300, Dan Carpenter wrote:
> On Mon, May 06, 2019 at 04:40:29PM +0200, Nicolas Saenz Julienne wrote:
> > @@ -1740,7 +1740,8 @@ parse_rx_slots(struct vchiq_state *state)
> >  					&service->bulk_rx : &service->bulk_tx;
> > =20
> >  				DEBUG_TRACE(PARSE_LINE);
> > -				if (mutex_lock_killable(&service->bulk_mutex)) {
> > +				if (mutex_lock_killable(
> > +					&service->bulk_mutex) !=3D 0) {
>=20
> This series does't add !=3D 0 consistently...  Personally, I would prefer
> we just leave it out.  I use !=3D 0 for two things.  1)  When I'm talking
> about the number zero.
>=20
> 	if (len =3D=3D 0) {
>=20
> Or with strcmp():
>=20
> 	if (strcmp(a, b) =3D=3D 0) { // a equals b
> 	if (strcmp(a, b) < 0) {  // a less than b.
>=20
> But here zero means no errors, so I would just leave it out...

I agree, I'll fix it.

Regards,
Nicolas


--=-HWk7wVSA1bmO90ELmSsB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzQWcgACgkQlfZmHno8
x/5C3Qf+L5Sma8zaKvvi3d9DSw4lZXBIQpyTCI5G81wW2l+4ax2oZnUNZlLpu7lj
sRJy5o+hSJExXkx/3b3oBUEojchKWCZPC7ZI76aq7uhRK93Q7Yf4jem9wUJvsOwf
kvsdFhSIO7F/gxfNfZUDn2whfAN5FPBvSTBqq3e++k/1+RTqe/y65rAbJIeIkmrL
s9qVV+DWownkHzfGwsVJ1paJmvrLuwYOlfsPXIlQk3y8g+GSClXRsCWvPJxeS4vi
2Qzs/+AB6kDiVzDdxj7YDF1puf1d4xliFfvMJnUR7iEdzOG0IQZAp+qMktTvOKX8
n//mOh1eQcHx4P/2ajTxj8/5P5Wieg==
=QGu9
-----END PGP SIGNATURE-----

--=-HWk7wVSA1bmO90ELmSsB--


--===============6745259553510256259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6745259553510256259==--

