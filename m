Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9418C1F6387
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jun 2020 10:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C96BD87971;
	Thu, 11 Jun 2020 08:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyKjJ5JK65V2; Thu, 11 Jun 2020 08:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC5A087949;
	Thu, 11 Jun 2020 08:26:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B76E01BF3BB
 for <devel@linuxdriverproject.org>; Thu, 11 Jun 2020 08:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF97987949
 for <devel@linuxdriverproject.org>; Thu, 11 Jun 2020 08:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vr7rd98pc4hL for <devel@linuxdriverproject.org>;
 Thu, 11 Jun 2020 08:26:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C545878DF
 for <devel@driverdev.osuosl.org>; Thu, 11 Jun 2020 08:26:19 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67677207C3;
 Thu, 11 Jun 2020 08:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591863978;
 bh=YUMp2q/HufrKUWQR8d10DU5EVMYQ+RTK4Ary2FsUxpg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g92fsaSSZ1PFMOpD75oQHjkFfyB+k99l45z3iWHzROPI9k1izAbq8oCEuWP9DUh/L
 obOLjjf6Z8QST/NJgwjuLosUkGdMBxHzWtEHhuygRAsfE9IDGk7WpAhK+TtBWi1Uiw
 Ag9Vn2pyP1D/znXiB2AG+PfUPIIy6uIlJDb7jgZo=
Date: Thu, 11 Jun 2020 09:26:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v2 0/6] Enable Greybus Audio codec driver
Message-ID: <20200611082616.GA4671@sirena.org.uk>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <20200610173711.GK5005@sirena.org.uk>
 <20200610182322.GC21465@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200610182322.GC21465@gmail.com>
X-Cookie: I like your SNOOPY POSTER!!
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Alex Elder <elder@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, greybus-dev@lists.linaro.org,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8832314157513235345=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8832314157513235345==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 10, 2020 at 11:53:24PM +0530, Vaibhav Agarwal wrote:

> With patch#6 in this series, I'm proposing some of the (dummy) helper=20
> APIs required to link DAPM DAI widgets for the GB Audio modules=20
> added/removed dynamically.

> Eventually, I would like to propose relevant changes in snd-soc APIs to=
=20
> enable dynamic linking of DAI widgets for the modules added and=20
> remove/free component controls for the module removed.

> I'm seeking your opinion on the proposed changes. And as per the=20
> recommendation I'm sharing the changes with ASoC mailing list as well.

These are proposed incremental changes to an out of tree driver that has
never been submitted.  I don't know what the current code looks like,
what it's supposed to be doing or anything like that so I've no idea
what's going on or why.

> Kindly suggest me the preferred way to follow on this thread.=20

This is effectively out of tree code, until someone submits it properly
I'm not sure it's useful to submit incremental patches upstream.

--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7h6qcACgkQJNaLcl1U
h9ClMQf5AfzPskdM7GJn5Lf8DIJciRGrA08Te9rvY3eabhXU4aiMCp9lBF1prenp
QGLxYB+mW1bdfMOqVwzmQlVKZ6OtZ9IinlKhqWn6cea9eWK3aGo8uaGjp3H8tJp1
HYpMyoBfCedLFxL/YGlhxn2yj5k++pPtDS+6NwEYuec1FV3k46hzKfmzr5BJzgcp
LYLZT8n/3S+AJoCb7NRY07Ptz1+Qev16y+Ta45oolFnFceewDJ+jxt4w7+BLVwJt
rAchPXSGY0SgPhSDu/hPcKODETZ7O2UloPGht/R5SG8Fzabg6ngJqujyawqzDddL
TYo4fg6SQ2NWig21RJ9+2byMqNbgPg==
=yLco
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--

--===============8832314157513235345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8832314157513235345==--
