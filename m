Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8632D976A
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:34:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A3D687225;
	Mon, 14 Dec 2020 11:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lKIj7a89j6u; Mon, 14 Dec 2020 11:34:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF21086EB4;
	Mon, 14 Dec 2020 11:34:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49E61BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D678F204E8
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:34:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mD1x7OUc4NAU for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:34:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id 99042204C5
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:34:29 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 46A28580503;
 Mon, 14 Dec 2020 06:34:28 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 14 Dec 2020 06:34:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=HC54RztzNa/cUR9WRuFCupTCs1r
 TPzZoY9HGRsF4LiI=; b=rkERmi/aXqC6mQzJ61vf3C3Gi6JCObZe75f83T/WCmU
 aedCWfySN3evAloO4lsWRfTU6x2ZKTLDZpUXXodbgUyCYscu5LCQpBuJ6ZCdr/+O
 Yq+RskwpX34p+dMKshf2qu+WdPdjeVkUMmWWbDFLql7VOjI3kRcJ5f40P2aS+5bN
 FErOfZ0bb8klWGisErEe78bHsMbn+YQlOakRMaNUIEVtJ9JBYZjrxjX7BAeg2ExU
 cbwyaqCBF0tzBqiSRnPFbLZdLHGnyylDvxgCQMTif7KsabqBCP1J0LKHeDQ8mYf1
 m4EC9ho2+Ap5/VKxMPEhAm39B19gFK0ePP6J501EHSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HC54Rz
 tzNa/cUR9WRuFCupTCs1rTPzZoY9HGRsF4LiI=; b=Ky4mL77zz6E4sqY+AzhWRU
 AvjJ2uJdZ8O3SkPFPakiQajlS79CHgbkh7gxhEgFJz66I/AMrCiIqEjltO1EBrNV
 N5IeUy5MMSlhtJmmNWUesL1orqkxjgXj/fJYc69QmFSUWu8paUPHMkCxcOQtqN6V
 kpXGJUGqOS8UilntQ/4xansxMJ+b1b4xJpPkREv8r+pX4QFHSeUlr6cW2GKgpdkb
 Wq4Q9g5KH6/G5GQojaL7x3RXhfZNESRLZBfXmiI9xnMS1lZ3mIHVVRLMjv8fk8Ri
 xosJUpBj5W/9FzHmz3F7fa+krWBF8CThkO6irqw7tUAL1MmMjJAt/m7YvOeco9dA
 ==
X-ME-Sender: <xms:wk3XX30nB47orHKr2_L_Ww9cZ_UdQOjgAVROSpmEE6x7KZt9NPPPbQ>
 <xme:wk3XX2E6uPvG0LmZ917PpqR8-9So1L4BbZTMVrekBPm_0OT4iaj47qDQXlp8F-wiP
 2ggXM5A0m8MqpBOWw0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedgvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:wk3XX35ZsJjqmuVmJ-LXfBkEDRwRaYCWcZe8XXUREfxDHCRWJy8seQ>
 <xmx:wk3XX826iHwWE7vLS2-RhLWbt0dp1F1E7I6jNut9WZSqmitooCgOjg>
 <xmx:wk3XX6F7SxWwjV-YcpHFsX7k1NURvP6_d32ntpAZ6HgXVMvbT3oNNg>
 <xmx:xE3XX-PXjHGA_t162XmWWhoc9J0Ll5i2BUkdRCwzS3Hy1XQp-_Pqlw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C30F1240057;
 Mon, 14 Dec 2020 06:34:25 -0500 (EST)
Date: Mon, 14 Dec 2020 12:34:24 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 07/15] media: sun6i-csi: Add support for MIPI CSI-2
 bridge input
Message-ID: <20201214113424.cx7ox6i5bm7lszhb@gilmour>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201211155708.154710-8-paul.kocialkowski@bootlin.com>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============8624513673085006236=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8624513673085006236==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q5rb2agebcwu6woe"
Content-Disposition: inline


--q5rb2agebcwu6woe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 11, 2020 at 04:57:00PM +0100, Paul Kocialkowski wrote:
> The A31 CSI controller supports a MIPI CSI-2 bridge input, which has
> its own dedicated port in the fwnode graph.
>=20
> Support for this input is added with this change:
> - two pads are defined for the media entity instead of one
>   and only one needs to be connected at a time;
> - the pads currently match the fwnode graph representation;
> - links are created between our pads and the subdevs for each
>   interface and are no longer immutable so that userspace can select
>   which interface to use in case both are bound to a subdev;
> - fwnode endpoints are parsed and stored for each interface;
> - the active subdev (and fwnode endpoint) is retrieved when validating
>   the media link at stream on time and cleared at stream off;
> - an error is raised if both links are active at the same time;
> - the MIPI interface bit is set if the MIPI CSI-2 bridge endpoint is
>   active.
>=20
> In the future, the media entity representation might evolve to:
> - distinguish the internal parallel bridge and data formatter;
> - represent each of the 4 internal channels that can exist between
>   the parallel bridge (for BT656 time-multiplex) and MIPI CSI-2
>   (internal channels can be mapped to virtual channels);
> - connect the controller's output to the ISP instead of its
>   DMA engine.
>=20
> Finally note that the MIPI CSI-2 bridges should not be linked in
> the fwnode graph unless they have a sensor subdev attached.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 123 ++++++++++++++----
>  .../platform/sunxi/sun6i-csi/sun6i_csi.h      |   3 -
>  .../platform/sunxi/sun6i-csi/sun6i_video.c    |  53 ++++----
>  .../platform/sunxi/sun6i-csi/sun6i_video.h    |   7 +-
>  4 files changed, 135 insertions(+), 51 deletions(-)
>=20
> diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers=
/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> index f1150de94e98..481181038e1e 100644
> --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> @@ -52,15 +52,16 @@ bool sun6i_csi_is_format_supported(struct sun6i_csi *=
csi,
>  				   u32 pixformat, u32 mbus_code)
>  {
>  	struct sun6i_csi_dev *sdev =3D sun6i_csi_to_dev(csi);
> +	struct v4l2_fwnode_endpoint *endpoint =3D sdev->csi.video.source_endpoi=
nt;
> =20
>  	/*
>  	 * Some video receivers have the ability to be compatible with
>  	 * 8bit and 16bit bus width.
>  	 * Identify the media bus format from device tree.
>  	 */
> -	if ((sdev->csi.v4l2_ep.bus_type =3D=3D V4L2_MBUS_PARALLEL
> -	     || sdev->csi.v4l2_ep.bus_type =3D=3D V4L2_MBUS_BT656)
> -	     && sdev->csi.v4l2_ep.bus.parallel.bus_width =3D=3D 16) {
> +	if ((endpoint->bus_type =3D=3D V4L2_MBUS_PARALLEL
> +	     || endpoint->bus_type =3D=3D V4L2_MBUS_BT656)
> +	     && endpoint->bus.parallel.bus_width =3D=3D 16) {

The operators should be at the end of the previous line, not at the beginni=
ng

Maxime

--q5rb2agebcwu6woe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9dNwAAKCRDj7w1vZxhR
xU1FAQCe7tGabmV5/A5Z5LxuElH4dianoBeoE4wLIaT/n63r+AD+IT8rCnQclTCB
sMoAwM/wMKeqVEflw4FhFI2POaza5QQ=
=gZ/r
-----END PGP SIGNATURE-----

--q5rb2agebcwu6woe--

--===============8624513673085006236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8624513673085006236==--
