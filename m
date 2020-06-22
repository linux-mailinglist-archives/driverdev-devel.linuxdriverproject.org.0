Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC10203A1A
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 16:56:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16CD988A49;
	Mon, 22 Jun 2020 14:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTAhR34ePLWE; Mon, 22 Jun 2020 14:56:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B14B88A25;
	Mon, 22 Jun 2020 14:56:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9FB1BF263
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 14:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 88F03203D6
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 14:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RXdo0t4G0CB8 for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 14:56:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id A10A520027
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 14:56:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B88C1BD52;
 Mon, 22 Jun 2020 14:56:19 +0000 (UTC)
Message-ID: <b1dd18a335934707998080f35db5b5b0a91b7935.camel@suse.de>
Subject: Re: [bug report] staging: vchiq_arm: use list_for_each_entry when
 accessing bulk_waiter_list
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 22 Jun 2020 16:56:19 +0200
In-Reply-To: <20200619143132.GE267142@mwanda>
References: <20200619143132.GE267142@mwanda>
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5164211035326614491=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5164211035326614491==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-R1vIulvljxCFYDwEIY6w"


--=-R1vIulvljxCFYDwEIY6w
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dan,
Thanks for reaching out.

On Fri, 2020-06-19 at 17:31 +0300, Dan Carpenter wrote:
> Hello Nicolas Saenz Julienne,

Feel free to refer to me as Nicolas, but if you'd rather keep it formal the
name is Nicolas Patricio Saenz Julienne. :P

>=20
> The patch 46e4b9ec4fa4: "staging: vchiq_arm: use list_for_each_entry
> when accessing bulk_waiter_list" from Nov 20, 2018, leads to the
> following static checker warning:
>=20
> 	drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:427
> vchiq_blocking_bulk_transfer()
> 	warn: iterator used outside loop: 'waiter'
>=20
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>    417          mutex_lock(&instance->bulk_waiter_list_mutex);
>    418          list_for_each_entry(waiter, &instance->bulk_waiter_list, =
list)
> {
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^^
> The list iterator is always non-NULL.
>=20
>    419                  if (waiter->pid =3D=3D current->pid) {
>    420                          list_del(&waiter->list);
>    421                          break;
>    422                  }
>    423          }
>    424          mutex_unlock(&instance->bulk_waiter_list_mutex);
>    425 =20
>    426          if (waiter) {
>                     ^^^^^^
> In the original code "waiter" was only non-NULL if we found the correct
> pid, but now it's always non-NULL.
>=20
>    427                  struct vchiq_bulk *bulk =3D waiter->bulk_waiter.b=
ulk;
>    428 =20
>    429                  if (bulk) {
>    430                          /* This thread has an outstanding bulk
> transfer. */
>    431                          if ((bulk->data !=3D data) ||
>    432                                  (bulk->size !=3D size)) {
>    433                                  /* This is not a retry of the pre=
vious
> one.
>    434                                   * Cancel the signal when the tra=
nsfer
>    435                                   * completes.
>    436                                   */
>    437                                  spin_lock(&bulk_waiter_spinlock);
>    438                                  bulk->userdata =3D NULL;
>    439                                  spin_unlock(&bulk_waiter_spinlock=
);
>    440                          }
>    441                  }
>    442          }
>    443 =20
>    444          if (!waiter) {
>                     ^^^^^^^
> This is dead code now.  I'm a bit surprised this bug didn't show up
> during testing.

I've had a look for this issue and it seems that no one complained about it=
,
neither downstream or upstream. So it might be a somewhat uncommon code pat=
h.

Actually, I now see that blocking bulk transfers are very rare, none of the
kernel drivers use them, only some user-space applications. IIUC we need tw=
o
concurrent calls, from different applications to hit the actual issue. So w=
e
didn't catch this trough vchiq_test.

That said, I'll prepare a fix ASAP.

Regards,
Nicolas


--=-R1vIulvljxCFYDwEIY6w
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7wxpMACgkQlfZmHno8
x/6MuggAqGtS4R+sirpTyd07zlCvEAcIkd9B0oB5rjyLe/Q7ahahlIuCGdaIe9fG
AP8AqMdzTxkkrq336fnoqyBuNV0b7/X0QFdWY+ZzxObu1UK4f/CyYVhzD9XL1zIK
QB7Yhl+ZLF+Pw+Zn9tp1M/dXg4DppxG54hNPVF+7DrKPdZxl5QeIZ18r4XK7/xNE
C4ANBNSHIqDL6lOGHN07pDbAqJiHZ6QVdgR5CkkQtNfz+aacANXvPlBUM6R1DibQ
13FgYWp964b1oCPO1bXhkNCWO131BrsGAUSJub4HIj7lJpq7XY+LgXex7Tm3JNG8
wIndlviP9YYCJ3XfJi26MGOpNj508Q==
=I9/J
-----END PGP SIGNATURE-----

--=-R1vIulvljxCFYDwEIY6w--


--===============5164211035326614491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5164211035326614491==--

