Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 542E21F7B65
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jun 2020 18:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D45988B69;
	Fri, 12 Jun 2020 16:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXQ30VhMN9UK; Fri, 12 Jun 2020 16:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A561788B68;
	Fri, 12 Jun 2020 16:06:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FE1C1BF84C
 for <devel@linuxdriverproject.org>; Fri, 12 Jun 2020 16:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 36E7084E27
 for <devel@linuxdriverproject.org>; Fri, 12 Jun 2020 16:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HZFBgu2d7lCF for <devel@linuxdriverproject.org>;
 Fri, 12 Jun 2020 16:06:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4E698888A
 for <devel@driverdev.osuosl.org>; Fri, 12 Jun 2020 16:06:23 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D30BB20801;
 Fri, 12 Jun 2020 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591977983;
 bh=UjJtFUryNP2TfJoK7XZIrmSz3ZmZvBDsoJb0rLk8EY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=COsDhrpNjPhRjQp1IP+GA2CNQOwVT+YkNkJkEbucvFLBWbEd+umPkJdCtPmg4IXIx
 L6MTrc18FKrFHBlDN2melT7JEU8KOAKjBDTlAD3oOJOMBgq+SJmQVfliExmxaYNMY4
 AFco7TTy/ZJDevo0PuVugBZirC6QlZ/UOdnuHDyE=
Date: Fri, 12 Jun 2020 17:06:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v2 0/6] Enable Greybus Audio codec driver
Message-ID: <20200612160620.GK5396@sirena.org.uk>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <20200610173711.GK5005@sirena.org.uk>
 <20200610182322.GC21465@gmail.com>
 <20200611082616.GA4671@sirena.org.uk>
 <20200612153722.GB26807@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200612153722.GB26807@gmail.com>
X-Cookie: As seen on TV.
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
Content-Type: multipart/mixed; boundary="===============1468892737215577161=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1468892737215577161==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8tUgZ4IE8L4vmMyh"
Content-Disposition: inline


--8tUgZ4IE8L4vmMyh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 09:07:24PM +0530, Vaibhav Agarwal wrote:
> On Thu, Jun 11, 2020 at 09:26:16AM +0100, Mark Brown wrote:

> > > Kindly suggest me the preferred way to follow on this thread.=20

> > This is effectively out of tree code, until someone submits it properly
> > I'm not sure it's useful to submit incremental patches upstream.

> Thanks for the suggestion Mark. I'll create a separate patchset aligned=
=20
> to the ASoC tree in next ~2 weeks and share them separately.

Great.  If there's controversial/complicated design bits to sort out it
would probably be good to split them out so the simple stuff can go
through more easily.

--8tUgZ4IE8L4vmMyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7jp/sACgkQJNaLcl1U
h9BjNwf/TxHtNpRoCQSQlm7mC4/R/p3AdvljC0eznPnwUtB6vCy/VN08DiwKL9eW
9jCL9qejGDblZC/T3PRjBcTmRDNrxME5N8LD5/bQNClC8pYTlUurvzoXOrkc768s
qxme6AYqrPgChIFm6IvfQF7Uj2LppW37d3t3F920rTkDW0LDBK23caFhLo5JNEdF
gireupD5ofMp6iIZJDYL7GE0/aKk58gqBxBTVPVy6GmfZP0P76c7DFJmPj1IPg2g
8gV7sdFA+Qaf5akbdUMYMt1YQpVZrCmeGacMSL9Qk+RL/1GTN6oa1P8+Srxuf3Qb
XZbQqZcxA1kWUIAlw2gfeBn5FBtN5w==
=Vm6h
-----END PGP SIGNATURE-----

--8tUgZ4IE8L4vmMyh--

--===============1468892737215577161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1468892737215577161==--
