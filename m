Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FC25A490
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 20:53:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E525822850;
	Fri, 28 Jun 2019 18:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3diMrSeCq35G; Fri, 28 Jun 2019 18:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61F0B2202E;
	Fri, 28 Jun 2019 18:53:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F8641BF352
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 18:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C3F886868
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 18:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XePxDRcMjKgf for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 18:53:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB27384FA4
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 18:53:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 11:53:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; 
 d="asc'?scan'208";a="314213610"
Received: from rarober1-mobl.amr.corp.intel.com ([10.251.157.137])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 11:53:03 -0700
Message-ID: <fee5dd422d88806ee0b5a6b84f14cd6d50351343.camel@intel.com>
Subject: Re: [PATCH 24/39] docs: driver-model: move it to the driver-api book
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Linux Doc Mailing
 List <linux-doc@vger.kernel.org>
Date: Fri, 28 Jun 2019 11:53:03 -0700
In-Reply-To: <920ff36c66233113b1825ab504fe675ed5a5bd7b.1561724493.git.mchehab+samsung@kernel.org>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
 <920ff36c66233113b1825ab504fe675ed5a5bd7b.1561724493.git.mchehab+samsung@kernel.org>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Harry Wei <harryxiyou@gmail.com>,
 Alex Shi <alex.shi@linux.alibaba.com>, cocci@systeme.lip6.fr,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Gilles Muller <Gilles.Muller@lip6.fr>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, sparmaintainer@unisys.com,
 Nicolas Palix <nicolas.palix@imag.fr>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Julia Lawall <Julia.Lawall@lip6.fr>, linux-hwmon@vger.kernel.org,
 Michal Marek <michal.lkml@markovi.net>, linux-gpio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============5416669506487600629=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5416669506487600629==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-K11StWmkFkExVL88vQz+"


--=-K11StWmkFkExVL88vQz+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-06-28 at 09:30 -0300, Mauro Carvalho Chehab wrote:
> The audience for the Kernel driver-model is clearly Kernel hackers.
>=20
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

For the 'ice' driver changes.

> ---
>  Documentation/{ =3D> driver-api}/driver-model/binding.rst       | 0
>  Documentation/{ =3D> driver-api}/driver-model/bus.rst           | 0
>  Documentation/{ =3D> driver-api}/driver-model/class.rst         | 0
>  .../{ =3D> driver-api}/driver-model/design-patterns.rst         | 0
>  Documentation/{ =3D> driver-api}/driver-model/device.rst        | 0
>  Documentation/{ =3D> driver-api}/driver-model/devres.rst        | 0
>  Documentation/{ =3D> driver-api}/driver-model/driver.rst        | 0
>  Documentation/{ =3D> driver-api}/driver-model/index.rst         | 2 --
>  Documentation/{ =3D> driver-api}/driver-model/overview.rst      | 0
>  Documentation/{ =3D> driver-api}/driver-model/platform.rst      | 0
>  Documentation/{ =3D> driver-api}/driver-model/porting.rst       | 2 +-
>  Documentation/driver-api/gpio/driver.rst                      | 2 +-
>  Documentation/driver-api/index.rst                            | 1 +
>  Documentation/eisa.txt                                        | 4 ++--
>  Documentation/filesystems/sysfs.txt                           | 2 +-
>  Documentation/hwmon/submitting-patches.rst                    | 2 +-
>  Documentation/translations/zh_CN/filesystems/sysfs.txt        | 2 +-
>  drivers/base/platform.c                                       | 2 +-
>  drivers/gpio/gpio-cs5535.c                                    | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c                     | 2 +-
>  drivers/staging/unisys/Documentation/overview.txt             | 4 ++--
>  include/linux/device.h                                        | 2 +-
>  include/linux/platform_device.h                               | 2 +-
>  scripts/coccinelle/free/devm_free.cocci                       | 2 +-
>  24 files changed, 16 insertions(+), 17 deletions(-)
>  rename Documentation/{ =3D> driver-api}/driver-model/binding.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/bus.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/class.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/design-patterns.rst
> (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/device.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/devres.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/driver.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/index.rst (96%)
>  rename Documentation/{ =3D> driver-api}/driver-model/overview.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/platform.rst (100%)
>  rename Documentation/{ =3D> driver-api}/driver-model/porting.rst (99%)


--=-K11StWmkFkExVL88vQz+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl0WYg8ACgkQ5W/vlVpL
7c71FA//aLp3imbzpY3ovZhJWfkCedgU23P55ANWPX+9LogGHwK/qtSXQlpOFKet
AKb3TrRqbgzziAdpNGCgC9phQ5qo56UwhI6PAf+WweUQV0Q1y5VX9Uvis12Zut4i
CiScVqBx3+Fgaj1KRXxoZKTmpdqsGCgQAr4BsqQUxYBWYk9al+iBz4YlqS2kQtyr
HClWQ4taQ6T6xaVHnCkIZA5NaSvOnaQClg33sPyvWTXrXbnlcBnJ3pXttlOKpXRA
ImO2jo16IYZFDpqCzlQpC1WjXz6vvFrHb2ukosXmYvNPBj33a//vD5PTvn6WUPkX
euZ5dRMaHjCY6XA9lZ5/KgHgckHO7TuzNzOP1VNCfit1lszA5M4p74nAFeL4XfYy
EKvosns0N5hrxl0M3VqtLfi4vqyC0S52SHeGzQ9Jugfi3Ey4f+RfGU1bqRlWu1SI
4g/JtpDavi2dT/jer5JSX55XMnSPpHEGl5I7M8osiMSqUx1wsnubuT4StxBu5U5y
MY11YSpOWwq1ufPph3M6Bd05gJxQxfY9mbQojyHl+gQm88PlF6tSvgKRyvFChfK1
eBb+uyphD9mFl06ZVtimDSW8C/X7uCylET5CPahyh6Cb/Z2QfRuh07V1t7Jr0nox
KZLcjeAWq2BLZnk+TBikfnYQZ+/29kyml3N+Dm/cP7JByhm53bo=
=wwuU
-----END PGP SIGNATURE-----

--=-K11StWmkFkExVL88vQz+--


--===============5416669506487600629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5416669506487600629==--

