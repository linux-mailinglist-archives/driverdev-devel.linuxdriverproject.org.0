Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C21CE2B6853
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 16:10:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12AE32151F;
	Tue, 17 Nov 2020 15:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tTiqu2LpQTG8; Tue, 17 Nov 2020 15:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC216207B0;
	Tue, 17 Nov 2020 15:10:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1481BF3E0
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 15:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97DD184E1A
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 15:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IA10Fb6XIfeh for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 15:10:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A3BD8574F
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 15:10:31 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72B1D24199;
 Tue, 17 Nov 2020 15:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605625831;
 bh=iSZoRKh1gFpuZHL6h8cK3YGjkPYD7MPwMPj5dmNTTkY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ckp0Ii6Brb628GZs9wLTVHAy8xHsVrPfRumTmrfPgqT6gkTHIL/5gNrIrll7RYN7i
 YJdg7E4zuLVb/Rusr8oPMVwCR8L0fgtKenDE54PAmnbNCJXY7roWfbY81MRxgCZnM2
 aKC8Az4WsCfZtfF2c4ORoJNHfsKW7gUkofdglDUU=
Date: Tue, 17 Nov 2020 15:10:11 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 4/8] regulator: hi6421v600-regulator: move it from staging
Message-ID: <20201117151011.GE5142@sirena.org.uk>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <471362653f22a8748202c55babd2b462056a5797.1605530560.git.mchehab+huawei@kernel.org>
 <20201116183833.GC4739@sirena.org.uk>
 <20201117093830.29861118@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20201117093830.29861118@coco.lan>
X-Cookie: Pause for storage relocation.
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mayulong <mayulong1@huawei.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linuxarm@huawei.com,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1800807465373455353=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1800807465373455353==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WK3l2KTTmXPVedZ6"
Content-Disposition: inline


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 17, 2020 at 09:38:30AM +0100, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:

> > This also appears to be missing a DT binding document, binding
> > documentation is required for anything with DT support.

> The DT binding is documented on patch 3/8, together with MFD.

> As there's just one compatible for MFD and regulators altogether,
> I opted to have just one DT binding document for both.

I should've been copied on that patch then so the bindings can be
reviewed.

> > > +static DEFINE_MUTEX(enable_mutex); =20

> > Drivers shouldn't be declaring global variables, if this is required it
> > should be allocated in driver data.

> I'll try to see a better place for this, but in this case, the
> mutex should be global anyway, as the access to the SPMI bus
> should be serialized.

Surely the bus should be dealing with basic I/O serialisation?

> > It looks like it would be less code overall to just implement a regmap
> > for the MFD, even if it were only used in this driver - almost
> > everything in here is just a carbon copy of standard helpers that the
> > core provides for regmap devices.  Doing it in the MFD would be more
> > idiomatic for everything though.

> I tried to use regmap for this driver while porting it from Linaro's
> OOT to upstream, bkut it turns that adding support for it is not trivial.

Could you expand on "not trivial" please?  What did you try and what
difficulties did you encounter?

> I suspect that, just like I2C has their own set of regmap functions
> (regmap_init_i2c, devm_regmap_init_i2c), if we want to properly support
> regmap, we need first to add a SPMI variant to it, as the locking
> should be bus-aware.

drivers/base/regmap/regmap-spmi.c has been there since 2013, or if for
some reason this device is doing something non-standard for the bus then
the reg_read() and reg_write() operations can be used.

> > > +	ret =3D of_property_read_u32(np, "vsel-reg", &rdesc->vsel_reg); =20

> > There is no way this stuff should be being parsed out of DT, we should
> > know the register map for the device and what regulators it has based
> > purely off knowing what device we have.  Baking the register map into
> > the ABI is bad practice, it prevents us from improving our support for
> > the hardware without going and updating people's DTs.

> Well, I can move the existing registers out of DT, but, as I don't
> have any datasheet for this device, it means that I can implement
> there only a subset of the available LDOs. So, from the 36 LDOs that
> this chip support, we only know the registers for 8 of them:

> 	ldo3, ldo4, ldo9, ldo15, ldo16, ldo17, ldo33 and ldo34.

People will be free to submit patches adding additional functionality to
the driver if they need it.

> > > +	/*
> > > +	 * Not all regulators work on idle mode
> > > +	 */
> > > +	ret =3D of_property_read_u32(np, "idle-mode-mask", &sreg->eco_mode_=
mask);

> > There's no conditional code to not register the mode operations if the
> > mode information is not available (and again this should be done based=
=20
> > on knowing the properties of the device, this is unlikely to be system
> > dependent).

> This is the same case as before: as we don't have any datasheets,
> I only know what's there at the DT for just one device (Hikey 970).

> Again, we could hardcode those assuming Hikey 970 settings, but,
> if some other device using the same chip will ever be added, and
> they use some different configuration then we may face some
> backward-compatibility issues.

I can't follow the logic here, sorry.  If we have no idea how to
configure something how would offering operations to configure that
thing be useful?

> > > +	constraint->valid_modes_mask =3D REGULATOR_MODE_NORMAL;

> > This is absolutely not OK, a regulator driver should *not* be modifying
> > the constraints that the machine has set.  If it is safe to change modes
> > on a platform and the system integrator wants to do that then they will
> > set the constraints appropriately, there is no way the regulator driver
> > can tell what is appropriate on a given system.  The fact that the
> > driver is including machine.h at all ought to have been an indicator
> > that there's an abstraction problem here.

> Ok. Where such constraints should be instead? at the Hikey 970 DT
> file?

They should be configured whereever all the other constraints are
configured by the platform, if that is DT then they should also be
configured in DT.

--WK3l2KTTmXPVedZ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+z59IACgkQJNaLcl1U
h9CYSQf+I5MZA92v9+kZZneng2aE+YFiGuI3kiomor52qk4x9WBmgv3HU9Jbj8WM
a9Vy/JAr0BlhGA9POw5oubUD4lrroCdd9FFMdw9nDGlQavb0VuDcv9839fJDSmmC
WUPaFoLE3hjfrD9L6s9p2ViYUx3ZkPKBFz9CyXyjII56jdPP5J77cdZdoKZ78pOa
ZcUYGL4x8UMFSu2/y/AYrz5mESSg3Q4T6gFnsmMp667hlLW5z/0R+h8G4y2/IpUK
vDbP5tT846iWGQasc6j2orwtDPL+FgIhOkflOe4dTBSvEqWU0T6wEcUyKzgoj6+V
pTROO8zRzfUbi9+J4/qfhFOYJUZr/g==
=MLAd
-----END PGP SIGNATURE-----

--WK3l2KTTmXPVedZ6--

--===============1800807465373455353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1800807465373455353==--
