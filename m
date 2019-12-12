Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3822411CB8D
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 11:57:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2940E8700D;
	Thu, 12 Dec 2019 10:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORFbMpuE6Aoj; Thu, 12 Dec 2019 10:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A62386F21;
	Thu, 12 Dec 2019 10:57:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3C671BF3B0
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 10:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CBFB204FE
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 10:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCI4VcNlDRDF for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 10:57:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C597204D5
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 10:57:37 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D787CAFDF;
 Thu, 12 Dec 2019 10:57:34 +0000 (UTC)
Message-ID: <099cb6558e9a10c1fce73e34484c0eaf21293e61.camel@suse.de>
Subject: Re: [PATCH for-5.6 2/4] staging: bcm2835-audio: Use managed buffer
 allocation
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Thu, 12 Dec 2019 11:57:33 +0100
In-Reply-To: <20191210141356.18074-3-tiwai@suse.de>
References: <20191210141356.18074-1-tiwai@suse.de>
 <20191210141356.18074-3-tiwai@suse.de>
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
Content-Type: multipart/mixed; boundary="===============6012630599514123669=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6012630599514123669==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-KDe450wmkzJFlREF+n28"


--=-KDe450wmkzJFlREF+n28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-10 at 15:13 +0100, Takashi Iwai wrote:
> Clean up the driver with the new managed buffer allocation API.
> The hw_params and hw_free callbacks became superfluous and dropped.
>=20
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!


--=-KDe450wmkzJFlREF+n28
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3yHR0ACgkQlfZmHno8
x/7T1wf9HqdO2587apiYerHZt0Jf/EfpHtnps8r5NNLydl8BXf/nNo9Nnfb7E6vE
tamYcG/rVIzfWZ2aBeIaG1jxrfKwZFrTy8T+djPw4Y94x8HTLf7S+qhJs+ppzFHo
wAF3hzz25fUWCG0z1q2bEQXm4qmc5Irhdy/o9rESwdVF5Z3w+1XGo3J9HIDj4bKw
bKl63amT+yioLN4/cetU9IkEm2TUqKwR3qlH0TZz0EvCiXoOGR2t5kzT92YrROJL
Rxw/PyZ7gqJ4DM6fQ6aWUzo+/p82ASRfrfi0456846zQVShb7zYNAud7fODTsELR
aIt52MtSc3sl2zjH+jbV+U3hRV8Vkw==
=acj8
-----END PGP SIGNATURE-----

--=-KDe450wmkzJFlREF+n28--


--===============6012630599514123669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6012630599514123669==--

