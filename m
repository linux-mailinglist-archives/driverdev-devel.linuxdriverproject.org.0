Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7611CB0A3
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 22:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0016286B15;
	Thu,  3 Oct 2019 20:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GxQB1A2oFNw2; Thu,  3 Oct 2019 20:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14C0F86B1A;
	Thu,  3 Oct 2019 20:59:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6188C1BF369
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 20:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A8E788334
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 20:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWUf55o72gzD for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 20:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87CE7882DB
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 20:59:03 +0000 (UTC)
X-Originating-IP: 132.205.230.8
Received: from aptenodytes (unknown [132.205.230.8])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4335D60005;
 Thu,  3 Oct 2019 20:58:59 +0000 (UTC)
Date: Thu, 3 Oct 2019 16:58:57 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Message-ID: <20191003205857.GA3927@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <12199603.8LrTjBMqpV@jernej-laptop>
 <20191003202846.GA2800@aptenodytes>
 <3413755.LxPTGpI9pz@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <3413755.LxPTGpI9pz@jernej-laptop>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6526338994185659654=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6526338994185659654==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 03 Oct 19, 22:44, Jernej =C5=A0krabec wrote:
> Dne =C4=8Detrtek, 03. oktober 2019 ob 22:28:46 CEST je Paul Kocialkowski=
=20
> napisal(a):
> > Hi,
> >=20
> > On Thu 03 Oct 19, 07:16, Jernej =C5=A0krabec wrote:
> > > Dne =C4=8Detrtek, 03. oktober 2019 ob 00:06:50 CEST je Paul Kocialkow=
ski
> > >=20
> > > napisal(a):
> > > > Hi,
> > > >=20
> > > > On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> > > > > Reference index count in VE_H264_PPS should come from PPS control.
> > > > > However, this is not really important, because reference index co=
unt
> > > > > is
> > > > > in our case always overridden by that from slice header.
> > > >=20
> > > > Thanks for the fixup!
> > > >=20
> > > > Our libva userspace and v4l2-request testing tool currently don't
> > > > provide
> > > > this, but I have a pending merge request adding it for the hantro so
> > > > it's
> > > > good to go.
> > >=20
> > > Actually, I think this is just cosmetic and it would work even if it =
would
> > > be always 0. We always override this number in SHS2 register with
> > > VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD flag and recently there was a pa=
tch
> > > merged to clarify that value in slice parameters should be the one th=
at's
> > > set on default value if override flag is not set in bitstream:
> > > https://git.linuxtv.org/media_tree.git/commit/?
> > > id=3D187ef7c5c78153acdce8c8714e5918b1018c710b
> > >=20
> > > Well, we could always compare default and value in slice parameters, =
but I
> > > really don't see the benefit of doing that extra work.
> >=20
> > Thanks for the detailed explanation! So I just realized that for HEVC, I
> > didn't even include the default value in PPS and only went for the
> > per-slice value. The HEVC hardware block apparently only needs the fiel=
ds
> > once at slice level, and by looking at the spec, only one of the two se=
t of
> > fields will be used.
> >=20
> > So perhaps we could do the same for H.264 and only have the set of fiel=
ds
> > once in the slice params, so that both codecs are consistent. Userspace=
 can
> > just check the flag to know whether it should put the PPS default or
> > slice-specific value in the slice-specific control.
> >=20
> > What do you think?
>=20
> I think that there would be less confusion if only value in slice params =
would=20
> exists. But since Philipp rather made clarification in documentation, may=
be he=20
> sees benefit having both values?

Actually I just caught up with the discussion from thread:
media: uapi: h264: Add num_ref_idx_active_override_flag

which explains that we need to pass the default fields for hardware that pa=
rses
the slice header itself and we need the non-default fields and flag for oth=
er
cases.

To cover the case of hardware that does slice header parsing, I guess it wo=
uld
also work to use the slice-specific values in place of the pps default valu=
es
in the hardware register for that. But it feels quite confusing and a lot l=
ess
straightforward than having all the fields and the override flag exposed.

So I think I should fix HEVC support accordingly, just in case the same
situation arises for HEVC.

Cheers,

Paul

> Best regards,
> Jernej
>=20
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> > > Best regards,
> > > Jernej
> > >=20
> > > > Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > >=20
> > > > Cheers,
> > > >=20
> > > > Paul
> > > >=20
> > > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > > ---
> > > > >=20
> > > > >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
> > > > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > > >=20
> > > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > > > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > > > > bd848146eada..4a0e69855c7f 100644
> > > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > > > > @@ -364,12 +364,8 @@ static void cedrus_set_params(struct cedrus_=
ctx
> > > > > *ctx,
> > > > >=20
> > > > >  	// picture parameters
> > > > >  	reg =3D 0;
> > > > >=20
> > > > > -	/*
> > > > > -	 * FIXME: the kernel headers are allowing the default value to
> > > > > -	 * be passed, but the libva doesn't give us that.
> > > > > -	 */
> > > > > -	reg |=3D (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
> > > > > -	reg |=3D (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
> > > > > +	reg |=3D (pps->num_ref_idx_l0_default_active_minus1 & 0x1f) << =
10;
> > > > > +	reg |=3D (pps->num_ref_idx_l1_default_active_minus1 & 0x1f) << =
5;
> > > > >=20
> > > > >  	reg |=3D (pps->weighted_bipred_idc & 0x3) << 2;
> > > > >  	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
> > > > >  =09
> > > > >  		reg |=3D VE_H264_PPS_ENTROPY_CODING_MODE;
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2WYREACgkQ3cLmz3+f
v9EBxwf/STm4CrHMrCGTCK309+Egn7wh84ZC5dcfEQFxjIN7Aemkg5ODVe3Kk3CM
vTU9fm1Z9sedQe8M9RKDxHwmZUmh174xYEJs8YKCZHSmp2d2cIgd7iGlok8RSNfv
KGNmeiki9mongQhyFtCayolXR0hmQrBzK60X4QLbDz063kqnptMUlkPYicUIeQdt
872pX6UpQJ+Nox/Jrp9uKPtb0hfJ/SuVQJko6egjL5g0HvTVB3c2RpBJS1Vf3FB1
TsDW6v63yhu9nwK0Q74NASofG0d9HBScvzvUmV316uo8ckl7rm5gUO3oV/94yrWv
pJm6Za/zJIYSY2iuhULsbQTCJKt+UA==
=p0Ab
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--

--===============6526338994185659654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6526338994185659654==--
