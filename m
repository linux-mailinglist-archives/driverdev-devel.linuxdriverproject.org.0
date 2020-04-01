Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F63319A9C6
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 12:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C302B87F58;
	Wed,  1 Apr 2020 10:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Klygrtqo8YjY; Wed,  1 Apr 2020 10:47:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21B5A87CBE;
	Wed,  1 Apr 2020 10:47:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA09A1BF479
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 10:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C69632153D
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 10:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KWd1N-wzcYFM for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 10:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 6764C2151F
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 10:47:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 47585AD48;
 Wed,  1 Apr 2020 10:47:47 +0000 (UTC)
Message-ID: <7ffa87bfeb77e68ec365a5b1f1345862cc0dc859.camel@suse.de>
Subject: Re: [PATCH 0/9] staging: bcm2835-camera: Clean up driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Dave
 Stevenson <dave.stevenson@raspberrypi.org>
Date: Wed, 01 Apr 2020 12:47:44 +0200
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.4 
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
Content-Type: multipart/mixed; boundary="===============6183367398612922074=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6183367398612922074==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-bRPc7YYLXTwIfAespfz3"


--=-bRPc7YYLXTwIfAespfz3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2020-03-29 at 14:44 +0200, Stefan Wahren wrote:
> Except of patch 2 all these patches tries to clean up the bcm2835-camera
> driver.
>=20
> Stefan Wahren (9):
>   staging: bcm2835-camera: Drop PREVIEW_LAYER
>   staging: bcm2835-camera: Activate V4L2_EXPOSURE_METERING_MATRIX
>     handling
>   staging: bcm2835-camera: Make struct indentation consistent
>   staging: bcm2835-camera: Simplify set_framerate_params
>   staging: bcm2835-camera: Move encode component setup in its own
>     function
>   staging: bcm2835-camera: Move video component setup in its own
>     function
>   staging: bcm2835-camera: return early in mmal_setup_components
>   staging: bcm2835-camera: reduce multiline statements
>   staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect
>=20
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 382 ++++++++++-----=
---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-bRPc7YYLXTwIfAespfz3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6EcVAACgkQlfZmHno8
x/58/gf+JH9oyEdWWMY0Cp5wBZIws4fg5qOCH7qX5b+0oZilkSPHkl52S26hhpW8
GY52Kq3Ad3kwnR9I9oKAHkDz9igHFQRDL+EVvLvmXIe13GAjZKDEliKZGolBR+Hw
j+ZpIjta/yqJMZm3uly28Whzo6uQYQGhu1wHRUyqZEuvq1DLpHkfvNEqFxsz3Lgr
a138Usks/BbxWkKir1UzlIAy0yPMJl53zMvOOtrvbZU5O6m4nLjdOw1Q32zWbT2w
2+xYvWTf3JDU3ayyM+j34kXkm+yxXOf0XmMpeuVE210lCBSBTfSrwfk34n/rEWz8
SOP9qGQ8NxM1GN9yzE1mDuhzX1wGVQ==
=hUPF
-----END PGP SIGNATURE-----

--=-bRPc7YYLXTwIfAespfz3--


--===============6183367398612922074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6183367398612922074==--

