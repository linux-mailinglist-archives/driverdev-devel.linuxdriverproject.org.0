Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E869A16A567
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 12:45:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45A9B86456;
	Mon, 24 Feb 2020 11:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wELu5YToN2Ga; Mon, 24 Feb 2020 11:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 270878613C;
	Mon, 24 Feb 2020 11:45:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40CA41BF2F1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27F5D204A6
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UnU9KyxtsR8F for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 11:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by silver.osuosl.org (Postfix) with ESMTP id 9C163203CE
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:45:34 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12FB530E;
 Mon, 24 Feb 2020 03:45:34 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 66C063F534;
 Mon, 24 Feb 2020 03:45:33 -0800 (PST)
Date: Mon, 24 Feb 2020 11:45:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] docs: dt: fix several broken doc references
Message-ID: <20200224114532.GC6215@sirena.org.uk>
References: <0e530494349b37eb2eab4a8eccf56626e0b18e6d.1582448388.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <0e530494349b37eb2eab4a8eccf56626e0b18e6d.1582448388.git.mchehab+huawei@kernel.org>
X-Cookie: How you look depends on where you go.
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Vignesh Raghavendra <vigneshr@ti.com>, devel@driverdev.osuosl.org,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Piotr Sroka <piotrs@cadence.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============0761078686128936420=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0761078686128936420==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DIOMP1UsTsWJauNi"
Content-Disposition: inline


--DIOMP1UsTsWJauNi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 23, 2020 at 09:59:53AM +0100, Mauro Carvalho Chehab wrote:
> There are several DT doc references that require manual fixes.
> I found 3 cases fixed on this patch:
>=20
> 	- directory named "binding/" instead of "bindings/";
> 	- .txt to .yaml renames;
> 	- file renames (still on txt format);

This seems like it should've been split up a bit.  :/

Acked-by: Mark Brown <broonie@kernel.org>

--DIOMP1UsTsWJauNi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5Tt1sACgkQJNaLcl1U
h9CeXgf/ee/xxhTgqVSMNL+gDYl+cgPqn0CVS5ynzTQm6XlCEEXDBneO8oAyMs9Q
B35qG/r62a8QVrA/l3LzqVMhLlv8zL4iGOheD5+eZ6gHnMv7lPajWNmGOfnMJd9H
UKLDbTT2i5G+9z8eCMtms1XURh+HwDOazAYv0AivApzVodTmO2psgQP1QLL2OzJL
LPC4wm0qrtgar4rno/OfhGR/wyJfJKLE7MqnJ73wcaO5fZ48mtXx0mZwh3aJqtxe
3inu1PkxuHNSlxEIMHFKg8Tvg/cGD1vngJEwsEZ8AJ+bTOcI8HX+goLuAyNwTG6F
VynhL1Jdiscm+V62nRat6prHHhzWBw==
=WoRy
-----END PGP SIGNATURE-----

--DIOMP1UsTsWJauNi--

--===============0761078686128936420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0761078686128936420==--
