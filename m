Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE64E105A87
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 20:41:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 645A08892E;
	Thu, 21 Nov 2019 19:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5TQxvTE7V3O; Thu, 21 Nov 2019 19:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53DE18890B;
	Thu, 21 Nov 2019 19:41:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EAD51BF341
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 19:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B37988907
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 19:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nqiAcK7dLnL7 for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 19:41:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E464F888FD
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 19:41:40 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C0377AE4D;
 Thu, 21 Nov 2019 19:41:38 +0000 (UTC)
Message-ID: <8d445b9a1165f41b205fa9c5224aa1d76897657f.camel@suse.de>
Subject: Re: [PATCH 0/3] staging: vchiq: Fix vchiq_read return value in case
 of error
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Marcelo Diop-Gonzalez
 <marcgonzalez@google.com>, gregkh@linuxfoundation.org, eric@anholt.net
Date: Thu, 21 Nov 2019 20:41:37 +0100
In-Reply-To: <f2f8b72e-3d56-e9e5-f381-5b80a09490dc@gmx.net>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <f2f8b72e-3d56-e9e5-f381-5b80a09490dc@gmx.net>
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
Cc: devel@driverdev.osuosl.org, Phil Elwell <phil@raspberrypi.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2742759776724163838=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2742759776724163838==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WGoL+syLyjTGtiSuxCib"


--=-WGoL+syLyjTGtiSuxCib
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-21 at 11:42 +0100, Stefan Wahren wrote:
[...]
> > Help with testing would be appreciated. So far I've basically just
> > diffed the output of 'cat /dev/vchiq', run the program above with
> > a few different values, and run vchiq_test a few times.
>=20
> i consider this as sufficient, but i'm not the VCHIQ expert.

Agree, the patch only affects the vchiq state dump code, I think it's OK wi=
th
this test.

Regards,
Nicolas


--=-WGoL+syLyjTGtiSuxCib
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3W6HEACgkQlfZmHno8
x/4WfAgAjval470+UD7tsOFDhfN/YfaDpBvZ0BC5MTbcJwHM8Q4zeyq1P9bgg84a
/iAjm6uKURKl/1QcV8KNZ9IswMW+ottBOTHNH5Orlj7W4tH0hNXjQKubIEMh9aJl
x8PFresS9aZvvZCSSG9sZvcF7VBW+cZSNa0QXZcLJ2tszzEzVdz0g9hJb61b6hm2
HhhgwOuInFblV/T9wX1w3nOtsPlG1+mePAiQXTAe1f8EdouBu0b5Id/JAAyDrA1/
+NfcumG3HG14hOrB4d1jZyEw8rgr3oU9APSy/mCp2CC4vQLUuAnEKeJ1rrX44bAg
wCB6ftUYDOnu1ayEAMwDc6Ms4ItVKA==
=bfV9
-----END PGP SIGNATURE-----

--=-WGoL+syLyjTGtiSuxCib--


--===============2742759776724163838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2742759776724163838==--

