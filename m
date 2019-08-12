Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3239F8A027
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 15:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F3F585DBB;
	Mon, 12 Aug 2019 13:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpOrWUUuKcap; Mon, 12 Aug 2019 13:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 996A485B5C;
	Mon, 12 Aug 2019 13:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3624A1BF34C
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 13:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 31F362034C
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 13:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LjA3SuNYqPQF for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 13:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by silver.osuosl.org (Postfix) with ESMTPS id 742842012D
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 13:55:24 +0000 (UTC)
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id AD3FC240003;
 Mon, 12 Aug 2019 13:55:19 +0000 (UTC)
Date: Mon, 12 Aug 2019 15:55:19 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 0/7] media: cedrus: Improvements/cleanup
Message-ID: <20190812135519.ysmqytkhtln7sknc@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1343883215452479996=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1343883215452479996==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5ghcmst6jaoa4kn7"
Content-Disposition: inline


--5ghcmst6jaoa4kn7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

On Mon, Aug 12, 2019 at 02:12:21PM +0200, Hans Verkuil wrote:
> On 5/30/19 11:15 PM, Jernej Skrabec wrote:
> > Here is first batch of random Cedrus improvements/cleanups. Only patch 2
> > has a change which raises a question about H264 controls.
> >
> > Changes were tested on H3 SoC using modified ffmpeg and Kodi.
> >
> > Please take a look.
>
> This has been sitting in patchwork for quite some time. I've updated the
> status of the various patches and most needed extra work.
>
> It seems that patches 4/7 and 5/7 are OK. Maxime, can you please confirm
> that these two are still valid? They apply cleanly on the latest master
> at least, but since they are a bit old I prefer to have confirmation that
> it's OK to merge them.

Yes, you can definitely merge those.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5ghcmst6jaoa4kn7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVFvxwAKCRDj7w1vZxhR
xaNLAPsEGPiyqOdRajYEA4cGxVY18jjPs7B80tUGLwn7y/lX7QEA1hoN114NPrjR
odSkIRw1Cs9MkNQXMbozY4cjiWx8ZAs=
=JSLg
-----END PGP SIGNATURE-----

--5ghcmst6jaoa4kn7--

--===============1343883215452479996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1343883215452479996==--
