Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E5C7C1D1
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 14:43:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A50E220A2;
	Wed, 31 Jul 2019 12:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xj1orCsnPEOU; Wed, 31 Jul 2019 12:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 824DD2201C;
	Wed, 31 Jul 2019 12:43:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C70E1BF32A
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 26F7E85D21
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pqpv1J7sc+zm for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 12:43:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8BF7867D4
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 12:43:08 +0000 (UTC)
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id CCA5910000A;
 Wed, 31 Jul 2019 12:43:01 +0000 (UTC)
Date: Wed, 31 Jul 2019 14:43:01 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v7 0/4] HEVC/H.265 stateless support for V4L2 and Cedrus
Message-ID: <20190731124301.GA18205@aptenodytes>
References: <20190725185602.22522-1-paul.kocialkowski@bootlin.com>
 <7fa38a2c-8e16-5e88-d073-1d04e9feaa84@xs4all.nl>
 <20190727095729.GD16618@aptenodytes>
 <91a028b6-7f25-1a38-24e4-7dac02f34039@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <91a028b6-7f25-1a38-24e4-7dac02f34039@xs4all.nl>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4859281529843528789=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4859281529843528789==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 30 Jul 19, 09:27, Hans Verkuil wrote:
> On 7/27/19 11:57 AM, Paul Kocialkowski wrote:
> > Hi Hans,
> >=20
> > On Fri 26 Jul 19, 10:33, Hans Verkuil wrote:
> >> On 7/25/19 8:55 PM, Paul Kocialkowski wrote:
> >>> HEVC/H.265 stateless support for V4L2 and Cedrus
> >>>
> >>> This is early support for HEVC/H.265 stateless decoding in V4L2,
> >>> including both definitions and driver support for the Cedrus VPU
> >>> driver, which concerns Allwinner devices.
> >>>
> >>> A specific pixel format is introduced for the HEVC slice format and
> >>> controls are provided to pass the bitstream metadata to the decoder.
> >>> Some bitstream extensions are intentionally not supported at this poi=
nt.
> >>>
> >>> Since this is the first proposal for stateless HEVC/H.265 support in
> >>> V4L2, reviews and comments about the controls definitions are
> >>> particularly welcome.
> >>>
> >>> On the Cedrus side, the H.265 implementation covers frame pictures
> >>> with both uni-directional and bi-direction prediction modes (P/B
> >>> slices). Field pictures (interleaved), scaling lists and 10-bit output
> >>> are not supported at this point.
> >>>
> >>> Changes since v6:
> >>> * Rebased on latest media tree from Hans;
> >>
> >> Which tree is that? Or are you just referring our media_tree master
> >> branch? (which isn't 'my' tree :-) )
> >=20
> > I'm usually rebasing on the tree you use to send PRs to Mauro, at:
> > https://git.linuxtv.org/hverkuil/media_tree.git/
>=20
> There are lots of branches there, and none are stable branches.
>=20
> Just base it on the master branch of git://linuxtv.org/media_tree.git.

Understood, I will do that from now on.

Either way, the series applies and builds as-is (with the initial patch out=
 of
the way, as it was merged already) on top of the common media tree.

I just retested everything and it's good to go as far as I'm concerned!

Cheers,

Paul

> Regards,
>=20
> 	Hans
>=20
> >=20
> > which is usually the best up-to-date stateless codec support tree :)
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> >> Regards,
> >>
> >> 	Hans
> >>
> >>> * Reordered some fields to avoid holes and multi-padding;
> >>> * Updated the documentation.
> >>>
> >>> Changes since v5:
> >>> * Rebased atop latest next media tree;
> >>> * Moved to flags instead of u8 fields;
> >>> * Added padding to ensure 64-bit alignment
> >>>   (tested with GDB on 32 and 64-bit architectures);
> >>> * Reworked cedrus H.265 driver support a bit for flags;
> >>> * Split off codec-specific control validation and init;
> >>> * Added HEVC controls fields cleanup at std_validate to allow reliable
> >>>   control comparison with memcmp;
> >>> * Fixed various misc reported mistakes.
> >>>
> >>> Changes since v4:
> >>> * Rebased atop latest H.254 series.
> >>>
> >>> Changes since v3:
> >>> * Updated commit messages;
> >>> * Updated CID base to avoid conflicts;
> >>> * Used cpu_to_le32 for packed le32 data;
> >>> * Fixed misc minor issues in the drive code;
> >>> * Made it clear in the docs that the API will evolve;
> >>> * Made the pixfmt private and split commits about it.
> >>>
> >>> Changes since v2:
> >>> * Moved headers to non-public API;
> >>> * Added H265 capability for A64 and H5;
> >>> * Moved docs to ext-ctrls-codec.rst;
> >>> * Mentionned sections of the spec in the docs;
> >>> * Added padding to control structures for 32-bit alignment;
> >>> * Made write function use void/size in bytes;
> >>> * Reduced the number of arguments to helpers when possible;
> >>> * Removed PHYS_OFFSET since we already set PFN_OFFSET;
> >>> * Added comments where suggested;
> >>> * Moved to timestamp for references instead of index;
> >>> * Fixed some style issues reported by checkpatch.
> >>>
> >>> Changes since v1:
> >>> * Added a H.265 capability to whitelist relevant platforms;
> >>> * Switched over to tags instead of buffer indices in the DPB
> >>> * Declared variable in their reduced scope as suggested;
> >>> * Added the H.265/HEVC spec to the biblio;
> >>> * Used in-doc references to the spec and the required APIs;
> >>> * Removed debugging leftovers.
> >>>
> >>> Cheers!
> >>>
> >>> Paul Kocialkowski (4):
> >>>   media: v4l2-ctrl: Add a comment on why we zero out compound controls
> >>>     fields
> >>>   media: v4l: Add definitions for the HEVC slice controls
> >>>   media: pixfmt: Document the HEVC slice pixel format
> >>>   media: cedrus: Add HEVC/H.265 decoding support
> >>>
> >>>  Documentation/media/uapi/v4l/biblio.rst       |   9 +
> >>>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 486 +++++++++++++-
> >>>  .../media/uapi/v4l/pixfmt-compressed.rst      |  21 +
> >>>  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
> >>>  .../media/videodev2.h.rst.exceptions          |   3 +
> >>>  drivers/media/v4l2-core/v4l2-ctrls.c          |  93 +++
> >>>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >>>  drivers/staging/media/sunxi/cedrus/Makefile   |   2 +-
> >>>  drivers/staging/media/sunxi/cedrus/cedrus.c   |  31 +-
> >>>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  18 +
> >>>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   9 +
> >>>  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 616 ++++++++++++++++=
++
> >>>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +
> >>>  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 271 ++++++++
> >>>  .../staging/media/sunxi/cedrus/cedrus_video.c |  10 +
> >>>  include/media/hevc-ctrls.h                    | 198 ++++++
> >>>  include/media/v4l2-ctrls.h                    |   7 +
> >>>  17 files changed, 1789 insertions(+), 8 deletions(-)
> >>>  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> >>>  create mode 100644 include/media/hevc-ctrls.h
> >>>
> >>
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1BjNUACgkQ3cLmz3+f
v9FjuAf/aL5i4AOg3ogqc6Uz7f2hvSX1pHj2oFKXBRtcq0iz/tC2U02b7b8w6sQ7
DHowvN5AwbEyiXgiwOWTzPDi4TGkEZSNCORwkD08m7DA6MzRrKA78SLRaHW9WYSc
PjVrpSncMMuxJ4SHqekk9sX5dFJzxpYdor+ggQdd6YgU4NFnlQKjKHRjeI+r4Qcz
jzXwwQ07ugPsHDROaQOE8VyCSZXFs8JKs5SMiRcQs7fRIwvJimaPLvng3N8qNX27
XOHH6DLl0Q22X1CXgasgX+OeMk+8oN7ie4ZecTyDIBKW6h2sSfGxufcr1dUo1ABm
IA52WkzBa+IMEwDEqgqfmWgHaApu1A==
=3hPJ
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--

--===============4859281529843528789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4859281529843528789==--
