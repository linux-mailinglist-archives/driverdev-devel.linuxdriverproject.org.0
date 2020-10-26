Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B35299338
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 18:00:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F7B587176;
	Mon, 26 Oct 2020 17:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bc4+VrhAJZNH; Mon, 26 Oct 2020 17:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B38087044;
	Mon, 26 Oct 2020 17:00:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A529A1BF41F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A1E96861B2
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 17:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrqk8K0uOxD0 for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 17:00:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9780181B72
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 17:00:47 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8D8D75805DF;
 Mon, 26 Oct 2020 13:00:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 26 Oct 2020 13:00:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=C2vT4YWldJbuxSY1g9g5EETM2zW
 xr1fwz0Zt7cC50Ks=; b=UGqDC3y+c6CfUFj4e9uOe+gGA5WC6bYlniMNyOZlum1
 wHmoClQJc/d7CmU9FK+UXbnPe7TJMsjr4BUaJaKxK91Eiqcjeqk3yO2zFnGSOoLw
 qnJ/vCgRiaD9qAggPd6LYaEwJvE5c+fmrXu1N5y1atHiK7MtSB5/EWgy1hg20LwO
 AHAO5AtrcqYUaJ+hE86VVDZHlCZNRg4sVaOFUvC3DjM5iCG12GfECe7pposwYO05
 zvgek4ktJK4x/qnwRSvx/uXBvIkqH5eRG7YnFUAkPbdEUy8bl93lxDXw5nlEJ/d3
 nvNA+zqL3GtrWfHTDENwjDdHM4rhSX2znpOtv7uMmAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=C2vT4Y
 WldJbuxSY1g9g5EETM2zWxr1fwz0Zt7cC50Ks=; b=LZYxVdBt+VytNDBZwg3ILL
 uBCamcXGvYcz8uSMfYZZLmpvb3HlqiK0Vpvj78yQAak6O2oOy6W47TftHp8FD4aQ
 eX8e0EIngTvm6ZUNugrDSQFa+/gy5KZAyfol+56hLYUftd9eBBFQmU+xxGdvvep4
 Y4ygSJJl9Dx9CjGZyoGgUACpfge4x2KlxthOBzinlEOGCuw226EGawqxSuvIm7K9
 YG7i7sPF69qvA0R3NTTEFqEbcQBrTWphcZaQaoodFi6wOPj5Bp+mmsG/ViRpeM/w
 p/m0bVE2MwH1gO0wOFqrWf9ozw31AyK2QprdiydFhTvM+sCOUnSVunTDvnnUB6Sw
 ==
X-ME-Sender: <xms:uwCXX-ILvrkKYZU_q3XlYxh8EhtZviUsPUAc0yAZVq_qdjy8sAccwg>
 <xme:uwCXX2I35gzBUB-w07WupOXqO-PmMnwUQLvTjJZatJ6UeMx2Ai6PkWsLhES6R-gYn
 7Vq1PSxyi2opHhzEHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeejgdeitdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdejvdfg
 veenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:uwCXX-v4f1VoDPQ0qKwBjnaoVDGoD4vBy9dPkPXoBBTN8i9Qojd05A>
 <xmx:uwCXXzaKp-iYeJd-w-56B1hgT8la6bqH58zehO8jV5km6zqwphvYEA>
 <xmx:uwCXX1Yhjg86n5kkEHXaMmnsdD2dYkOqapxIzpIGb9ec8HQUc3Gusg>
 <xmx:vgCXXySnKFYtW-gQXpz9FmU-tCdCSJGlJj8hHYtXogExLdLvDjxe9w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 065263280063;
 Mon, 26 Oct 2020 13:00:42 -0400 (EDT)
Date: Mon, 26 Oct 2020 18:00:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 12/14] media: sunxi: Add support for the A83T MIPI CSI-2
 controller
Message-ID: <20201026170041.qsjzxlurufuuhcsq@gilmour.lan>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-13-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-13-paul.kocialkowski@bootlin.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6602481625395535785=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6602481625395535785==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fifha5mo6q7tep5s"
Content-Disposition: inline


--fifha5mo6q7tep5s
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 23, 2020 at 07:45:44PM +0200, Paul Kocialkowski wrote:
> The A83T supports MIPI CSI-2 with a composite controller, covering both t=
he
> protocol logic and the D-PHY implementation. This controller seems to be =
found
> on the A83T only and probably was abandonned since.
>=20
> This implementation splits the protocol and D-PHY registers and uses the =
PHY
> framework internally. The D-PHY is not registered as a standalone PHY dri=
ver
> since it cannot be used with any other controller.
>=20
> There are a few notable points about the controller:
> - The initialisation sequence involes writing specific magic init values =
that
>   do not seem to make any particular sense given the concerned register f=
ields.
> - Interrupts appear to be hitting regardless of the interrupt mask regist=
ers,
>   which can cause a serious flood when transmission errors occur.

Ah, so it's a separate driver too.

> This work is based on the first version of the driver submitted by
> K=E9vin L'h=F4pital, which was adapted to mainline from the Allwinner BSP.
> This version integrates MIPI CSI-2 support as a standalone V4L2 subdev
> instead of merging it in the sun6i-csi driver.
>=20
> It was tested on a Banana Pi M3 board with an OV8865 sensor in a 4-lane
> configuration.

Co-developped-by and SoB from Kevin?

Looking at the driver, the same comments from the v3s apply there

Maxime

--fifha5mo6q7tep5s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5cAuQAKCRDj7w1vZxhR
xQA7AQCD+RWN+ye76Hyh+RC2HCeFniYs1GUZ+zYbJ4AwNgCE9QEA3lh5d35xT4LL
Q85GQqjRb2oIKo8G2euZT7n4hqW5hwY=
=3VJd
-----END PGP SIGNATURE-----

--fifha5mo6q7tep5s--

--===============6602481625395535785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6602481625395535785==--
