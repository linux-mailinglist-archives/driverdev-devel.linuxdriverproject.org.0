Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D10691F5AAF
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 19:37:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAA44882CE;
	Wed, 10 Jun 2020 17:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3N5eAQk3uLGu; Wed, 10 Jun 2020 17:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9510787FED;
	Wed, 10 Jun 2020 17:37:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 672791BF5A9
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 17:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60FDC8805E
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 17:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zBbnzfoklsn for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 17:37:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9DC487FED
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 17:37:13 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35D01204EC;
 Wed, 10 Jun 2020 17:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591810633;
 bh=utG4SogSUZldhtrkFrDEcO0SomUMTV8zNf9Bc9crx+Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EhlvajO+Sj3UaawAk83wrJJ3AnCgi4UDhNSl2AqvNYAnOPDjnxEaCjzA7uHkP/TKX
 FYThE/vd7Gm9pv/M49vtKTTD8Ug+p2Qxu/v4Tf/kJtZNPlBxhPhZCFCAPsYc4hzIMY
 oXTO1oIkY7YTpPnN9Iagl7dcMSq4UelELdwXaFgs=
Date: Wed, 10 Jun 2020 18:37:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v2 0/6] Enable Greybus Audio codec driver
Message-ID: <20200610173711.GK5005@sirena.org.uk>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1591802243.git.vaibhav.sr@gmail.com>
X-Cookie: fortune: No such file or directory
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
Content-Type: multipart/mixed; boundary="===============5124580140538767936=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5124580140538767936==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5dNcufZ4prhark0F"
Content-Disposition: inline


--5dNcufZ4prhark0F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 10, 2020 at 10:58:24PM +0530, Vaibhav Agarwal wrote:
> The existing GB Audio codec driver is dependent on MSM8994 Audio driver.
> During the development stage, this dependency was configured due to
> various changes involved in MSM Audio driver to enable addtional codec
> card and some of the changes proposed in mainline ASoC framework.

I'm not sure why you're copying me on a staging driver?  I don't recall
the base driver having been submitted properly yet.

--5dNcufZ4prhark0F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7hGkYACgkQJNaLcl1U
h9CrqAf+PTr4Z6aVY9XOlKtwcNflVCkOCX3qxnt1cwrgLmhUdXwDJ7MRRcKyzi2i
vCqjsn1rj9GAkhIwt0CC9FRnC+jq7pGLNucnbEugF6VuEr4GWTxKkS2P+yldMV2x
pdq12Re+x3tXN6oqziMyMcVWnqXXWdcxVaacEx2jqeXADr9pYkiQtN9ScJaERvPy
ComnaHl20yeooKklC7JdWutUyFCxijoMdkqhTPtO8lu5MoSk7DxuRlFgWD6EhyoP
Xx+2OdPgBaQMaIMk4GBm5Arornj2W80mLsVorGWV0SdWQ6gYuvoCn3U3h/IW6YS5
0/RCEd2Bon5c7Hd0v5eAUxPVChr5+A==
=yTza
-----END PGP SIGNATURE-----

--5dNcufZ4prhark0F--

--===============5124580140538767936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5124580140538767936==--
