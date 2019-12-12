Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 246A111CB97
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 11:58:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BED4C84B62;
	Thu, 12 Dec 2019 10:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3DBerjFJ_R7i; Thu, 12 Dec 2019 10:58:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AFB9845A4;
	Thu, 12 Dec 2019 10:58:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 012C41BF3B0
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 10:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F18A086230
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 10:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWC1InnRm6+e for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 10:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E167986214
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 10:57:57 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6CFDAAEC1;
 Thu, 12 Dec 2019 10:57:56 +0000 (UTC)
Message-ID: <9f0d4eb964f3f18ff18c0c2697ff1a681639ce58.camel@suse.de>
Subject: Re: [PATCH for-5.6 4/4] staging: bcm2835-audio: Drop superfluous
 ioctl PCM ops
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Thu, 12 Dec 2019 11:57:55 +0100
In-Reply-To: <20191210141356.18074-5-tiwai@suse.de>
References: <20191210141356.18074-1-tiwai@suse.de>
 <20191210141356.18074-5-tiwai@suse.de>
User-Agent: Evolution 3.34.2 
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: multipart/mixed; boundary="===============5832540883950184186=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5832540883950184186==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-g0TJqR5cdhbPOzOoFy6+"


--=-g0TJqR5cdhbPOzOoFy6+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-10 at 15:13 +0100, Takashi Iwai wrote:
> PCM core deals the empty ioctl field now as default.
> Let's kill the redundant lines.
>=20
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!


--=-g0TJqR5cdhbPOzOoFy6+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3yHTMACgkQlfZmHno8
x/4wugf+NmAk0UkDbFiLmoISfbHMhP+QF9xsW4TglreylmVopMkzBgb7rGFwpf+c
lYB4ggdHpr4CfCZlYS4C5eKUa6KxCs4cqhQgkJqWkMrSQ3xNWzyrblVr7uA+yz17
3HtdAB6wE83Hh7zrJgvcQPASSXlziK2JryotwDHjpqGixTRAYmAIueTMIiP8j/+Y
SWzx6QZY4CduTjIYjDgOIE+12GB2w4NJ/n4UCJ0nBXF4jth6FE6VbqPqQ2zylgYJ
W/XW/w3yJ1ebgDRmriOGNS2vBG/L8ASuiI4RnnXWa1jLMd75IPnGBAgvIOCRnkQk
NKRgdGsILjMZhoEISnha3z3jvYUmTQ==
=IRls
-----END PGP SIGNATURE-----

--=-g0TJqR5cdhbPOzOoFy6+--


--===============5832540883950184186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5832540883950184186==--

