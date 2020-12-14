Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A42A2D9781
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:39:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A97C204F9;
	Mon, 14 Dec 2020 11:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PjHnm4E1IYXh; Mon, 14 Dec 2020 11:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5F2204E8;
	Mon, 14 Dec 2020 11:39:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD6DF1BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B87B48750F
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id laRSXHoeb4VM for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:39:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89B5C8744F
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:39:08 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6835658050A;
 Mon, 14 Dec 2020 06:39:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 14 Dec 2020 06:39:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=h4tM2jXirOMSD1zihxUdk1ovjF7
 7z3fxMQ6d0RdoD6U=; b=dnK/868K+AwJSo/XNIzQU3gx7WvJii+Kqa+LkfMPs3c
 k2c93fyxmID2AQ9fldvzOrSMt8Z+iZ8/1InI2Z5GzAGwROKnb7ntgDuVAWOT63Pi
 s99kRahpymSFdJJeUdk64Cy42AH80JsC32dcH8umMQxgxfnHdFlVOsj6ZkpwoBda
 0PGtwrqSKemuaDtCzZ16QyI4BNeLk+5PKIXtFckdujss5RPOI/dn4DeKUYAMMoRF
 NXJCIOMyCVXwMnaNc2bJs2LPhFF6fIYoLL3Qaln8fXwh+NQDLSmHq/J6bDV0lC45
 ZZm5i7lRmcwnwrpiki7w4ocQCM0VUteiqzl/GPbBg0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=h4tM2j
 XirOMSD1zihxUdk1ovjF77z3fxMQ6d0RdoD6U=; b=oihxjcjdoq3Jzfhaj+oXBh
 iaGzQXVDw4Zr+3Y0EZMEiAo4BG4KHr+3knuM1Xvs3ofwsWxXhlPgELTaiDhLYrpt
 06NeFUrmbP943F74mDf11H+pPXJJ3skA2g9YT60WI/5nwyvg7RRbSRFAZRDpuFVS
 XPmg6KuNNPDaxysf7dfjWIBMjOpvWLv9Glb5HCzAURmC1Gj9bOog4JC3IGPo6ScF
 77ZH0h8QdGVcJXD7Mz1pD8HzT/Bk6r4ALL8jOOJ93wtkOCEjy/PWjXFVG9DArpWK
 Q29bUpwm8whZklbpkL13xc1ib8/VztcmO9N43KifVvk5JvzmE/fTD0ErSlfAf8og
 ==
X-ME-Sender: <xms:2U7XX17PrusISI2vTBDlszYpD73ByMV7lO5aDvjOOvLDNqzNac7bbQ>
 <xme:2U7XXy7bWl6za7LBTLLMsJm4u6HQprgH98JLa-sXv1vbbrnWseBc4HXoj4SjIs4hy
 IjHfux80LiakpDJ5_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:2U7XX8f-Yrf0UDyuPgz811tNXopvYhY5bSb75X8XWRSLTkwq_u8PBA>
 <xmx:2U7XX-KwZLxn1UhudSfy2gEn66zk_foLQeRyf8scz2J7dIBE0ggPUw>
 <xmx:2U7XX5IgZvZfLb_QSTZh-FJeNuT4abvYf-MTohbv7i3wUf87jY4uPA>
 <xmx:207XXyiNkmiAohPwgcoqt3e7CETdME3A2QVJeinyzxqStxG9_RkUaA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E40A7108005C;
 Mon, 14 Dec 2020 06:39:04 -0500 (EST)
Date: Mon, 14 Dec 2020 12:39:04 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 09/15] media: sunxi: Add support for the A31 MIPI
 CSI-2 controller
Message-ID: <20201214113904.v6j7z3yrvjv74dcd@gilmour>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-10-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20201211155708.154710-10-paul.kocialkowski@bootlin.com>
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
Content-Type: multipart/mixed; boundary="===============3208870423919852401=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3208870423919852401==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wl35bqlaasqbg43y"
Content-Disposition: inline


--wl35bqlaasqbg43y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 11, 2020 at 04:57:02PM +0100, Paul Kocialkowski wrote:
> +#define sun6i_mipi_csi2_subdev_video(subdev) \
> +	container_of(subdev, struct sun6i_mipi_csi2_video, subdev)
> +
> +#define sun6i_mipi_csi2_video_dev(video) \
> +	container_of(video, struct sun6i_mipi_csi2_dev, video)

Isn't it a bit unsafe?

The second subdev and video here is not the variable passed in the macro
but the field in the structure, so any attempt at using those two macros
with anything but a variable named subdev or video will result in a
compilation issue?

Maxime

--wl35bqlaasqbg43y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9dO1wAKCRDj7w1vZxhR
xb8UAQCe9ql3Nxn0nlTSWUSqxoplbpYkA5kmXzAwghQIyaX20wD+LX4lxWJ1O67c
MOXxx+Pku4au4HcY56vDu0LAhVu1ZQc=
=6qDt
-----END PGP SIGNATURE-----

--wl35bqlaasqbg43y--

--===============3208870423919852401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3208870423919852401==--
