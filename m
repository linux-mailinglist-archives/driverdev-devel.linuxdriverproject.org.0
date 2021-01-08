Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F02CD2EF012
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:52:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 98E9F204FB;
	Fri,  8 Jan 2021 09:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y+D9Bd3ORpGQ; Fri,  8 Jan 2021 09:52:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EAEF72E11C;
	Fri,  8 Jan 2021 09:52:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C689C1BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C014887313
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8aXwb7nsN56H for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:52:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5A0E87311
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:52:26 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5AC1358041D;
 Fri,  8 Jan 2021 04:52:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 08 Jan 2021 04:52:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=TKBkA03lRN84ad9o+as6yIqJAef
 QnnerZu10YLu1NjI=; b=m+pxzedo2S2L716UHZ4j9iCb1c5FDm8UGCb2vef3hdV
 ew3LWXiBjWiNt2+dbzspyyriTBT+K+LRmyDJGkK2hnFTcGruOy60aHVNeHPCxPki
 Td0Gr1Y958Oh7o+g5Vu7Vh8lhr4qnCj6Wh66EhCWqn/0236sU4oLnEGWDUJt+cpU
 iZO2r52XCPmI24HJFrfFHLqjmoArrG1uGTgE4xY9NgMIPYLVqvUaojw2XE+Tud4o
 xsrhpVkqo5tOsoChAu+L6yfEfhGL3SS2OMdFUJp6LA5eoi6x8FselVmijYkZ+/Tb
 9JR30bMfZyfpldrTEiXvjdWmCE+UNAtL+0undFw8T1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=TKBkA0
 3lRN84ad9o+as6yIqJAefQnnerZu10YLu1NjI=; b=heq/+AQIBLXcDsCkZx5zff
 0hnm1PMvajE6l7mt4Z47GwPSsqpB8ggnwNuPHvywBvf7WKb1hwrg22hIeUUhM197
 LeSfIx7DwsJTt7l55Upr/WG4hk6D/y7wvjN55E8a/dJD3KYfpMlMFoL9k4fMbzMn
 OPvOGhhV+YH9wG6uuaGG8iGPwspLrtP81OMqo/05GAhurx9z46gfAqmPpTEAu8mC
 Iowc/0aEvMifC5po2jAxkUBI8yIrMSnT3tXH0MRT9csPaZ7HAzy5QDi0AJZqOex6
 lSNAPBegVc4SLw+cst+IrPfu20zBZLW3DtVd8Y0J+PHc/LgXE33eBDstYsB6LJzQ
 ==
X-ME-Sender: <xms:Viv4X4h3I89EjG0iLlhFhjKy7kBSvhKHAcWPTNDQE2FdBNMnMrxiCQ>
 <xme:Viv4XxAx1Hhc-qM9_K10QSi-xxLfqEARjUUIUoUULrr9ick7ODGCTDR4IzZINCrq7
 KMrAuU80PnqyxNbRLs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Viv4XwGcjShzK8QFNQjNxg2u94C5NgOVSatD_enozxkDpi6F0dGUiQ>
 <xmx:Viv4X5S-Q3KDoFbUdzfqhiaLW3J83aqDSpMuC37wqaN-O0b2tADPuw>
 <xmx:Viv4X1zhxMhL93apUjud3BPMxgahozIT220Q5vnhbFT2KHv12OOMsA>
 <xmx:WSv4X7q0iqtF9Qza53DGiFN9PqwltNx255OzBpeLEMfjlMqnI35eOg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 464A61080059;
 Fri,  8 Jan 2021 04:52:22 -0500 (EST)
Date: Fri, 8 Jan 2021 10:52:21 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 07/15] media: sun6i-csi: Add support for MIPI CSI-2
 bridge input
Message-ID: <20210108095221.squax52u2knxxgoy@gilmour>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201231142948.3241780-8-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============5889161582357845556=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5889161582357845556==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sapnhbeyia6qq3l7"
Content-Disposition: inline


--sapnhbeyia6qq3l7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 31, 2020 at 03:29:40PM +0100, Paul Kocialkowski wrote:
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

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--sapnhbeyia6qq3l7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/grTwAKCRDj7w1vZxhR
xaWoAQDnF8B2JCSct0BxYeQua9xd5yH22K8Et3Stf1Z7l8QlcQD8C2QDOCFM5k6d
9v4VMq95E2L9I/j04U1xefNZHfVdkw8=
=yq67
-----END PGP SIGNATURE-----

--sapnhbeyia6qq3l7--

--===============5889161582357845556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5889161582357845556==--
