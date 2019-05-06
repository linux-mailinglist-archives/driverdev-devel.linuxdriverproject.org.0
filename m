Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D5A153D9
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 20:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A216925F62;
	Mon,  6 May 2019 18:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyRAfKv82Fsf; Mon,  6 May 2019 18:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E4DED255B4;
	Mon,  6 May 2019 18:51:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C09F31BF36C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 18:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BDBD0245E3
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 18:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MBDNWyyyqZwC for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 18:51:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id D9EFC235A6
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 18:51:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6121AACCD;
 Mon,  6 May 2019 18:51:49 +0000 (UTC)
Message-ID: <9871b5d816b3868633381dba84b315bb21bb2ace.camel@suse.de>
Subject: Re: [PATCH v2 0/3] staging: vchiq: use interruptible waits
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, linux-kernel@vger.kernel.org
Date: Mon, 06 May 2019 20:51:47 +0200
In-Reply-To: <b2679404-ba00-d18e-fe15-44c6e280dc11@i2se.com>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <b2679404-ba00-d18e-fe15-44c6e280dc11@i2se.com>
User-Agent: Evolution 3.30.5 
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 phil@raspberrypi.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: multipart/mixed; boundary="===============1616303800209038215=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1616303800209038215==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-7b5y6BpkJZ6GF8kuMfMZ"


--=-7b5y6BpkJZ6GF8kuMfMZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-05-06 at 20:12 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 06.05.19 um 16:40 schrieb Nicolas Saenz Julienne:
> > Hi,
> > ...
> >=20
> > Regards,
> > Nicolas
> >=20
> > [1] https://github.com/raspberrypi/linux/issues/2881
> > [2] https://archlinuxarm.org/forum/viewtopic.php?f=3D65&t=3D13485
> > [3]=20
> >=20
https://lists.fedoraproject.org/archives/list/arm@lists.fedoraproject.org/m=
essage/GBXGJ7DOV5CQQXFPOZCXTRD6W4BEPT4Q/
> >=20
> > --
> >=20
> > Changes since v1:
> >   - Proplery format revert commits
> >   - Add code comment to remind of this issue
> >   - Add Fixes tags
> >=20
> > Nicolas Saenz Julienne (3):
> >   staging: vchiq_2835_arm: revert "quit using custom
> >     down_interruptible()"
> >   staging: vchiq: revert "switch to wait_for_completion_killable"
> >   staging: vchiq: make wait events interruptible
> >=20
> >  .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
> >  .../interface/vchiq_arm/vchiq_arm.c           | 21 +++++++------
> >  .../interface/vchiq_arm/vchiq_core.c          | 31 ++++++++++++-------
> >  .../interface/vchiq_arm/vchiq_util.c          |  6 ++--
> >  4 files changed, 35 insertions(+), 25 deletions(-)
> >=20
> against which tree should this series apply?
>=20
> Since the merge window opened the current staging-linus wont be
> available soon.

I don't know if that's what you meant, but I guess we should wait for 5.2-r=
c1
and then push it, the fixes will eventually get into the stable version of =
5.1.


Regards,
Nicolas


--=-7b5y6BpkJZ6GF8kuMfMZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzQgkMACgkQlfZmHno8
x/5aeQf/WayQQc7jVUFGX+QXs7v5yyWsQeju/5uDmQTIx7tBkCMoEjSTOzlRs4eI
Sql06hOgpYwHD2U74Mu2bqon/sgK3royEyESPglhyI4v/V3/rFoGSd2qyRCRNs0U
ev6zXzgWYntfEguNgzhAMB+VN6MP36ea+UbPgr+88YCzKR1KBPxNjbpRH5gSoPn0
nWVFaxYidiJvFuHpuwDVYwBpDpSQkGcwhUL3ubPtZP3N0QO1MgdpJwY8+pWf+aHU
Uou4nOuQuZ7smASZ4aPWSu5HU0QoA2E+4WvKx6VezMDoBrcmH37jYUi+NIlp6dHC
dOxi0KAZi7Tam8WdDqSlo8upfd6qAQ==
=EZQz
-----END PGP SIGNATURE-----

--=-7b5y6BpkJZ6GF8kuMfMZ--


--===============1616303800209038215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1616303800209038215==--

