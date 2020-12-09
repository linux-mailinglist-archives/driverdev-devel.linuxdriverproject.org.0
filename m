Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850D22D4024
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 11:42:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9D06878AB;
	Wed,  9 Dec 2020 10:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQHxc80fCdkf; Wed,  9 Dec 2020 10:42:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 153E987877;
	Wed,  9 Dec 2020 10:42:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FFF41BF5F6
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 10:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EED75273D7
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 10:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iq2Gb4FK6JXY for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 10:42:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 72D4B273CF
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 10:42:12 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 08849AB63;
 Wed,  9 Dec 2020 10:42:11 +0000 (UTC)
Message-ID: <fcc97ca28c3aaa3ab69b4de4818c1dc89b85b430.camel@suse.de>
Subject: Re: [PATCH v5 11/11] pwm: Add Raspberry Pi Firmware based PWM bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org, Thierry
 Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>
Date: Wed, 09 Dec 2020 11:42:09 +0100
In-Reply-To: <20201123183833.18750-12-nsaenzjulienne@suse.de>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-12-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3461531206273022961=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3461531206273022961==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-DYDWHGJjHHu30M9SeI+k"


--=-DYDWHGJjHHu30M9SeI+k
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

On Mon, 2020-11-23 at 19:38 +0100, Nicolas Saenz Julienne wrote:
> Adds support to control the PWM bus available in official Raspberry Pi
> PoE HAT. Only RPi's co-processor has access to it, so commands have to
> be sent through RPi's firmware mailbox interface.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20

I'll soon send a v6 of this series and was wondering if there is any more
feedback for this patch.

Regards,
Nicolas


--=-DYDWHGJjHHu30M9SeI+k
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl/QqgEACgkQlfZmHno8
x/4KCgf/atII/Noi91247tu9b99CnitDBaC5oT2VJlArRSWUNcHEEJPbZ1seDvpF
wmsApHQ7yKkAnDJdCzSRj7K+/Pp8PhETFK/vmD5TWAxaBtjbvvdHDQT+2RvLSthv
x4AJ/aAdpPsHuGzde7JViJAuogdoPuqVWExVPdjBbA2+SoWmuHxsaCBtnlD+HYhL
jP+22+d6ea9OTvtVHgWrgeRjfWXPaNSvQ6GCWASLBpbsfssUWlSWWAURk4NP/lXA
XhGFaDg+yzd1scAtX8T74lseUd7EP0sMpGmL4G3YWx1eg1oLSChdPx4hdupyIA6G
ZUcTKvwbLhTkXiSJYnXeAUDjSgbJag==
=FbnN
-----END PGP SIGNATURE-----

--=-DYDWHGJjHHu30M9SeI+k--


--===============3461531206273022961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3461531206273022961==--

