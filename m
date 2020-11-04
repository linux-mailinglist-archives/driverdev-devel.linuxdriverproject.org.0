Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F30B2A6D13
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 19:45:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40DE5860D1;
	Wed,  4 Nov 2020 18:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 742KrEirl0nK; Wed,  4 Nov 2020 18:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79A8085EB4;
	Wed,  4 Nov 2020 18:45:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66DB71BF5AD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 18:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 631CC8562D
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 18:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LWItSnSDbP4x for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 18:45:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A5D28560E
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 18:45:44 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id E6A4B580835;
 Wed,  4 Nov 2020 13:45:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 04 Nov 2020 13:45:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=h6gVKgYCHB4jd1QasmgPAb4cVDy
 Lq5KKdZf8FcfXr70=; b=qonIoKt5ynpSunhkKMoyc09F/y3b4DLCFZaYQc7rQ/I
 wfU4OIT+8iGVCc/csj8PEB7Nm4usgOlD9Jy8BEkd7mfB++jZ467JbNZWRimFLxgu
 BQA2gZVq0O0dQ3j3f7FlOEyG+/3u0P9SCHiU0jDh3udHxXqJpma/3rAa6ZJEsRMx
 PnIm21k/O/r0oVdIqjuXo6OE0+vhLrpBEg0PPuH439P3DpOlg87Xev3Son+qCFtF
 fgCAMrbQVs0JaEXHUiQl5DiOMw8w3gf0yJwCKM/WA/bcpVQQhWYvsH9OPWGSvjmI
 SY5eCDuro02ZQPre4Ic8UoIfUCGJy1pRFaiMSGCnbYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=h6gVKg
 YCHB4jd1QasmgPAb4cVDyLq5KKdZf8FcfXr70=; b=Qb2E6f+2MnAete1r0wrSxx
 bxyhhbgSeAG6GGM+C+xBlWEuL4VvD9L6c7v/yZ78XTQH4PNdcFN3btY/A3K/5ak2
 FGQq8dPvTgTXBZOLESAbOqBv6qmWru6stUtffv02ovtH2ZQvX0Ooet8t8efaE/u/
 rsz6IKf52nEQ4sjyu7e6Y7vUHywMLusd1HoKDn1rLET8cN7pRyaBvQP9CFByCbTI
 WWoC/jds3ba07/gVapb1LZYQVgWgoAmMxbYIWZDvL9294xexN28QJhHt9vBj6IC8
 lFX7tHfTYkkd0Vj8WrkPcdTJIW2rduvf4cNlLUHuTZWAXM2HuzB1zV8iLGUCP4SA
 ==
X-ME-Sender: <xms:1PaiX3uIGw44cNMmjGrWphGok82QEI-4XmiIGbjL59CK3Ko8k8NMlg>
 <xme:1PaiX4e6sYGoZkM9_lFhJE9Q4DmD81-Vyu5h98xs-ETfU7yAt7mRsomycC6xUGDOY
 kL2MX7SXL4cfSZBLoQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddthedguddukecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeehjedugfduvefhvdfgkeffvddvkeduhfffvdffjeffvdefhfeuuedviedv
 jeduudenucffohhmrghinheplhhinhhugihtvhdrohhrghdpkhgvrhhnvghlrdhorhhgne
 cukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:1PaiX6wNFuQ3YyPN67e-fzHDzF6VZonIdA2i8nEMrbHvY7JHh11ujQ>
 <xmx:1PaiX2PGH_U4iQl8I3Z6N8Z6F0t7EhhsYgtK8D6Fk7Sg1SN6-Ta5Pw>
 <xmx:1PaiX38uTORCesjCckcr2-UKvnNiA9-eYinx33sI5ujyUIvkdFe8qw>
 <xmx:1vaiX620cpglAM1dYEU9NBoPZ_pcGjiRDgt7d-VdgSgU117MM3Q9iw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 46CEA328037B;
 Wed,  4 Nov 2020 13:45:40 -0500 (EST)
Date: Wed, 4 Nov 2020 19:45:38 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201104184538.f6qagsmjdoijbzmv@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
 <1a3a615c-a058-e282-2dbb-c99dfa98be68@collabora.com>
 <20201102092110.ro6a456lvbrktwoz@gilmour.lan>
 <20201104111710.GB287014@aptenodytes>
 <f74e4d59-a391-36ab-74aa-8e02aca1b0bc@collabora.com>
MIME-Version: 1.0
In-Reply-To: <f74e4d59-a391-36ab-74aa-8e02aca1b0bc@collabora.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 kevin.lhopital@hotmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2455813274664708479=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2455813274664708479==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="omzz5qqvuni2vts6"
Content-Disposition: inline


--omzz5qqvuni2vts6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 04, 2020 at 01:38:08PM -0300, Helen Koike wrote:
>=20
>=20
> On 11/4/20 8:17 AM, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > On Mon 02 Nov 20, 10:21, Maxime Ripard wrote:
> >> On Fri, Oct 30, 2020 at 07:45:18PM -0300, Helen Koike wrote:
> >>> On 10/23/20 2:45 PM, Paul Kocialkowski wrote:
> >>>> The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 controller
> >>>> found on Allwinner SoCs such as the A31 and V3/V3s.
> >>>>
> >>>> It is a standalone block, connected to the CSI controller on one side
> >>>> and to the MIPI D-PHY block on the other. It has a dedicated address
> >>>> space, interrupt line and clock.
> >>>>
> >>>> Currently, the MIPI CSI-2 controller is hard-tied to a specific CSI
> >>>> controller (CSI0) but newer SoCs (such as the V5) may allow switching
> >>>> MIPI CSI-2 controllers between CSI controllers.
> >>>>
> >>>> It is represented as a V4L2 subdev to the CSI controller and takes a
> >>>> MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> >>>> media controller API.
> >>>
> >>> Maybe this is a bad idea, but I was thinking:
> >>> This driver basically just turn on/off and catch some interrupts for =
errors,
> >>> and all the rest of v4l2 config you just forward to the next subdevice
> >>> on the pipeline.
> >>>
> >>> So instead of exposing it as a subdevice, I was wondering if modeling
> >>> this driver also through the phy subsystem wouldn't be cleaner, so
> >>> you won't need all the v4l2 subdevice/topology boilerplate code that
> >>> it seems you are not using (unless you have plans to add controls or
> >>> some specific configuration on this node later).
> >>>
> >>> But this would require changes on the sun6i-csi driver.
> >>>
> >>> What do you think?
> >>
> >> Eventually we'll need to filter the virtual channels / datatypes I
> >> guess, so it's definitely valuable to have it in v4l2
>=20
> Which kind of datatypes?=20

MIPI-CSI datatypes. Each packet on the MIPI-CSI bus is assigned a
virtual channel and data type so that you can multiplex multiple streams
(like a 3d camera would send for example, through the virtual channels)
and data types (like frames and metadata) and MIPI-CSI controllers
usually allow to filter them based on what you want.

> I ask to know if this shouldn't be configured through the video node
> instead of subdevice.

Not really, some setups have a mux that can split the multiple virtual
channels to multiple video nodes for example.

> Regarding channels, we had a discussion to implement it through the video
> node (and not subdevice) [1]. But we discussed about blitters and multi-s=
calers,
> so now I'm wondering if we could use the same API for mipi-csi virtual ch=
annels
> in the video entity device, or if it doesn't apply and we need another API
> for that in a subdevice instead.
>=20
> [1] https://patchwork.linuxtv.org/project/linux-media/cover/2020071711543=
5.2632623-1-helen.koike@collabora.com/

There's already an API to deal with MIPI-CSI virtual channels:
https://patchwork.kernel.org/project/linux-renesas-soc/cover/20190328200608=
=2E9463-1-jacopo+renesas@jmondi.org/

Maxime

--omzz5qqvuni2vts6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX6L20gAKCRDj7w1vZxhR
xaHxAP9LB6Lpk4KycyR1opg5fGkFaTk8pgwzZgebU3CFW+7LvgD+JQUkd4k4fIY7
xTpXAqCHpDduJ5qtwB9v5M5dAiu+Jgc=
=vbHI
-----END PGP SIGNATURE-----

--omzz5qqvuni2vts6--

--===============2455813274664708479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2455813274664708479==--
