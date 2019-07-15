Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA09697F9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 17:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6CFA20469;
	Mon, 15 Jul 2019 15:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SF66EvNwxClo; Mon, 15 Jul 2019 15:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 17CEF2107D;
	Mon, 15 Jul 2019 15:14:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D52E1BF350
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 15:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 09E9D87820
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 15:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uudW5fkFB1nJ for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 15:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 918E7877DB
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 15:14:31 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 69CC0ACBA;
 Mon, 15 Jul 2019 15:14:29 +0000 (UTC)
Message-ID: <ba7c763b5c2a2d5edc4c0f700dabe08c47970600.camel@suse.de>
Subject: Re: [PATCH] Staging: fbtft: Fix GPIO handling
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jan Sebastian =?ISO-8859-1?Q?G=F6tte?= <linux@jaseg.net>
Date: Mon, 15 Jul 2019 17:14:27 +0200
In-Reply-To: <294c94d2-d2c1-514d-ba6d-c62e98017bc0@jaseg.net>
References: <20190715143003.12819-1-nsaenzjulienne@suse.de>
 <7b8242ab-cc0c-d90b-60af-ff1c53789e44@opensynergy.com>
 <5a77c18f-7338-888f-2379-12171b6a545e@jaseg.net>
 <294c94d2-d2c1-514d-ba6d-c62e98017bc0@jaseg.net>
User-Agent: Evolution 3.32.3 
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
Cc: devel@driverdev.osuosl.org, leobras.c@gmail.com,
 linux-fbdev@vger.kernel.org, nishadkamdar@gmail.com,
 gregkh@linuxfoundation.org, dri-devel@lists.freedesktop.org,
 bhanusreemahesh@gmail.com, Phil Reid <preid@electromag.com.au>
Content-Type: multipart/mixed; boundary="===============5459571571067730021=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5459571571067730021==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-QmBqWije45AXLJOH4tKP"


--=-QmBqWije45AXLJOH4tKP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-07-16 at 00:04 +0900, Jan Sebastian G=C3=B6tte wrote:
> Commit c440eee1a7a1 ("Staging: fbtft: Switch to the gpio descriptor
> interface") breaks GPIO handling. In several places, checks to only set
> a GPIO if it was configured ended up backwards.
> I have tested this fix. The fixed driver works with a ili9486
> display connected to a raspberry pi via SPI.
>=20
> Fixes: commit c440eee1a7a1d ("Staging: fbtft: Switch to the gpio descript=
or
> interface")
> Tested-by: Jan Sebastian G=C3=B6tte <linux@jaseg.net>
> Signed-off-by: Jan Sebastian G=C3=B6tte <linux@jaseg.net>

Thanks Jan, this version is indeed more complete.

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-QmBqWije45AXLJOH4tKP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0smFMACgkQlfZmHno8
x/7xwQf9FFwqX1/6VPgDb4yvg7MXgCePh5zi7ffVRp75KpkfnNhAaKVX2v80j1XF
363ZZxrH2l67NyEorRbbFcqVRQh5vrIPExE/yAOTtnD1JTiZ3BnaBsKMmRfNVFgq
dQN2uxi7hW0xeSRGOb3PrtgVLB58UvOcSfTRX9++C+fy9W+BBqacK3qB5Ib5IRAJ
iRDVyyz45WTo7D6DgDiU/A/7vZnCTrNvu8Mw8R4FWdUbrfEzu1HUR/bem1KTAzIe
NEeAE9oe60C4dz3xd4Hfa5R7L0DCivs/PlzBtOGLTXu59L4DT7X/RdD3yKzbnH4X
dgfIdTNtBQv4XOgazxOdnbgFIzfLlw==
=7p4W
-----END PGP SIGNATURE-----

--=-QmBqWije45AXLJOH4tKP--


--===============5459571571067730021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5459571571067730021==--

