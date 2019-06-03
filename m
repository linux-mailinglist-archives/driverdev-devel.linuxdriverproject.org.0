Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D60C32EED
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 13:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 883B084410;
	Mon,  3 Jun 2019 11:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfTHiIaAqizx; Mon,  3 Jun 2019 11:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D335983469;
	Mon,  3 Jun 2019 11:46:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D70D71BF287
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 11:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D45538790F
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 11:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qkRk1EsdAiCm for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 11:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2F0785C12
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 11:46:32 +0000 (UTC)
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 6EDBB1BF216;
 Mon,  3 Jun 2019 11:46:21 +0000 (UTC)
Date: Mon, 3 Jun 2019 13:46:20 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 2/7] media: cedrus: Fix H264 default reference index count
Message-ID: <20190603114620.vsvbxz6gyhg3tn7b@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-3-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca,
 paul.kocialkowski@bootlin.com, wens@csie.org, boris.brezillon@collabora.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8059808926326776506=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8059808926326776506==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fsayms5djr42vwm2"
Content-Disposition: inline


--fsayms5djr42vwm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 30, 2019 at 11:15:11PM +0200, Jernej Skrabec wrote:
> Reference index count in VE_H264_PPS reg should come from PPS control.
> However, this is not really important because reference index count is
> in our case always overridden by that from slice header.
>
> Cc: nicolas@ndufresne.ca
> Cc: boris.brezillon@collabora.com
> Cc: jonas@kwiboo.se
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

> ---
> We have to decide if we drop pps->num_ref_idx_l0_default_active_minus1
> and pps->num_ref_idx_l1_default_active_minus1 fields or add
> num_ref_idx_l0_active_override_flag and num_ref_idx_l0_active_override_flag
> to slice control.
>
> Current control doesn't have those two flags, so in Cedrus override flag is
> always set and we rely on userspace to set slice->num_ref_idx_l0_active_minus1
> and slice->num_ref_idx_l1_active_minus1 to correct values. This means that
> values stored in PPS are not needed and always ignored by VPU.
>
> If I understand correctly, algorithm is very simple:
>
> ref_count = PPS->ref_count
> if (override_flag)
> 	ref_count = slice->ref_count
>
> It seems that VAAPI provides only final value. In my opinion we should do the
> same - get rid of PPS default ref index count fields.

The rationale was to be as conservative as possible and just expose
everything that is in the bitstream in those controls to accomodate
for as many weird hardware as possible.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fsayms5djr42vwm2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUIjAAKCRDj7w1vZxhR
xdm0AP46c7mpa3rFUC3RjFMniXaoNTXWcQ8pPICsPfw3vjCa9gD+KujizJ6uc9di
+fd1bkaTJJCq8ZbqR+3HqBMJe9acIgE=
=wE3x
-----END PGP SIGNATURE-----

--fsayms5djr42vwm2--

--===============8059808926326776506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8059808926326776506==--
