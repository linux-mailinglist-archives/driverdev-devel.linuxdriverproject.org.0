Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B41CB22DBF
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02F478545E;
	Mon, 20 May 2019 08:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2oFB1-nInAoi; Mon, 20 May 2019 08:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86C5783970;
	Mon, 20 May 2019 08:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56A061BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52A1B84525
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HXdWyBDfpTOQ for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:06:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D832E83970
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:06:23 +0000 (UTC)
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 51B4C60003;
 Mon, 20 May 2019 08:06:17 +0000 (UTC)
Date: Mon, 20 May 2019 10:06:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] media: cedrus: Allow different mod clock rates
Message-ID: <20190520080616.qlkpru5ypmtsiob6@flea>
References: <20190518174415.17795-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190518174415.17795-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7855332601711312970=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7855332601711312970==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z4svvflxvz3jxhmz"
Content-Disposition: inline


--z4svvflxvz3jxhmz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 18, 2019 at 07:44:15PM +0200, Jernej Skrabec wrote:
> Some VPU variants may run at higher clock speeds. They actually need
> extra speed to be capable of decoding more complex codecs like HEVC or
> bigger image sizes (4K).
>
> Expand variant structure with mod_rate information.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--z4svvflxvz3jxhmz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJf+AAKCRDj7w1vZxhR
xYO1AP4hYgh/ydYRZ1dLOpWjomwTaBIE4ZTTvdBGUDoMiNB7vgD/TN9xyBUVpRON
FUBwqbdUlEFesY7PSvrMnKR0eobJYwg=
=1oN6
-----END PGP SIGNATURE-----

--z4svvflxvz3jxhmz--

--===============7855332601711312970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7855332601711312970==--
