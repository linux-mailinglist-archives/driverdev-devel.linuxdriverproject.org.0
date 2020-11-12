Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7BC2B018B
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 10:06:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65B5986E19;
	Thu, 12 Nov 2020 09:06:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cEOsf3bWqRc5; Thu, 12 Nov 2020 09:06:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63DE786DF4;
	Thu, 12 Nov 2020 09:06:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62BBD1BF329
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 09:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5E838872A5
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 09:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bee-tZn0TIUL for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 09:06:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A443E87290
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 09:06:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay1.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 96635AE78;
 Thu, 12 Nov 2020 09:06:23 +0000 (UTC)
Message-ID: <9e3a04f0ae76675f610bf25e6b53b4aff26afae4.camel@suse.de>
Subject: Re: [PATCH v3 07/11] input: raspberrypi-ts: Release firmware handle
 when not needed
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Thu, 12 Nov 2020 10:06:21 +0100
In-Reply-To: <20201112014542.GA1003057@dtor-ws>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-8-nsaenzjulienne@suse.de>
 <20201112014542.GA1003057@dtor-ws>
User-Agent: Evolution 3.36.5 
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
 linus.walleij@linaro.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 bgolaszewski@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1134071698866371036=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1134071698866371036==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-j2+UKM6wkcW3jVx2ysNJ"


--=-j2+UKM6wkcW3jVx2ysNJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-11-11 at 17:45 -0800, Dmitry Torokhov wrote:
> Hi Nicolas,
>=20
> On Wed, Nov 04, 2020 at 11:39:33AM +0100, Nicolas Saenz Julienne wrote:
> > Use devm_rpi_firmware_get() so as to make sure we release RPi's firmwar=
e
> > interface when unbinding the device.
>=20
> Unless I am mistaken this driver does not really need the firmware
> structure past rpi_ts_probe(), and will be fine if it disappears earlier
> than unbind time.

Yes, I missed that. Will update it.

Regards,
Nicolas


--=-j2+UKM6wkcW3jVx2ysNJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+s+w0ACgkQlfZmHno8
x/5iuQgApaPJZjl0NVPJ80THZ1yICuyOa9+6d8Bal28kwj6Ft8Xb+Z6ploXmWJ5T
EPDFQF4pFMoSBGmgGSspJj4dl/KD3UaeJIRB3c3UNqIC7icH9TpBZY4Z41Mioqsv
l4QH1DIWYVsRYi/9I1vhoijsquL5t5WK0c1N9GBs6GIQjVwEMN9tsDcQ3flTLKZs
93saK4xtDp6UbqsYQYtwmupmREvAIxqnm0g3GB/Qk8Fkg9vpIK0H5cRBaJT9bfb8
tQPpTY2LWTXQ53azvlBOcZC7yJQRBKitR2GkibS1ynNoNl43f5ZjyWXkzK2TEw1j
HOKtCH+6NObb7Wm+xwL50tkanpTaGg==
=eql2
-----END PGP SIGNATURE-----

--=-j2+UKM6wkcW3jVx2ysNJ--


--===============1134071698866371036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1134071698866371036==--

