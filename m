Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607E1254905
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 17:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28A53884CA;
	Thu, 27 Aug 2020 15:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvF7l3tKcrOH; Thu, 27 Aug 2020 15:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46651884C9;
	Thu, 27 Aug 2020 15:19:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28C7B1BF40B
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 15:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A6C12046D
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 15:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtDgPBN4OoXB for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 15:19:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F7DF203F6
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 15:19:19 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id ED74F13F4;
 Thu, 27 Aug 2020 11:19:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 27 Aug 2020 11:19:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=RSXeFCAVyCX3aYLKYMbZeZXSxmS
 Xwn7LT8+Wx3RjWNM=; b=F8l8Ojj/TBni6VehwfbAMamic7/vSaOKl9W9TvxXbrW
 e4ejSCQ9KLMcnK/I0mLTuObu0fREP+CxjmF1mYNl7yS06CMy1KpPjZ2TlnR/JuRX
 2t8W50rpAzn7rUN97jVHjoIG2UQii2X0aRSs6iS/2XzQXTHbqbH6U+uS7Jbx1k77
 yWZEvEPYyCwfTTa8dOIsal4jv5qwyRN01D6QXLmqGUfcoa41IRxVI9g0ZnAcld8Z
 WkC1QaGEQJSq6euvS+HTfHZMKzCgMoas15qg1G4UNPy0DF48zQx4yYybxG6VqIrR
 qGgIbD102niACW1O9JMkbxvYRhHMEwGbOfldHKBxhDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=RSXeFC
 AVyCX3aYLKYMbZeZXSxmSXwn7LT8+Wx3RjWNM=; b=TMmC2MtisUEs2n3TsVlool
 qSh5Hb7qu6Cqn+vZ0sRyS7lRMj9IDL2eyeK3BgWuiBLb5p+L94ji9sCItqMFte49
 UHqB/G0g9Qo2HLhJhTF4FxrO/AccnQF4Sq6y9dj/Br3+aKzeBaxn4RlHeMkHaLb/
 QNwujHuojLpdLXHzmdFdJvLYdOkwfaqAwXyo2N0Niy1cCHZIn+8rb67PCMF64agt
 rmVckLie86XWn6bbYB8Mfb32yNvQFGyVxzSjkXb+/sqfuWNod+42+Em/tKlZ+HlB
 1xoUQTS9SfhwrGpKN2CXkQxxzBTggOm3o3F7AnWVa9PMEppaAHyQd0j164DJE+7Q
 ==
X-ME-Sender: <xms:9M5HX7WZa9MJa905TVKH1aLcR44o_72vl5e7CE7zBTQpSAGN4jcCUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:9M5HXzksu6H9NLU-JHpE44gvTZN1HLK8hg0nSDsMv-p_LtYsnOSlaQ>
 <xmx:9M5HX3ZiWTAtHlbHOd0W_wztoEK37pGB9Ftz1nRWolT11nn7eEwKkw>
 <xmx:9M5HX2VcMEImMZCM96eQHANOo-yedsRERAeDh6FQys9rrYlffrjZJg>
 <xmx:9c5HX37UnQ4oOxPRjuIjQ-AQSVCndrkQ6_M4hxZwjhjNE5tstWiCgyxys8s>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DD7673280068;
 Thu, 27 Aug 2020 11:19:15 -0400 (EDT)
Date: Thu, 27 Aug 2020 17:19:14 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 0/5] ARM: dts: sun8i: r40: Enable video decoder
Message-ID: <20200827151914.copcle3xjn3ek6p4@gilmour.lan>
References: <20200825173523.1289379-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200825173523.1289379-1-jernej.skrabec@siol.net>
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
 gregkh@linuxfoundation.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5942468784002304794=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5942468784002304794==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iuvgwm6rpxeewgp5"
Content-Disposition: inline


--iuvgwm6rpxeewgp5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 25, 2020 at 07:35:18PM +0200, Jernej Skrabec wrote:
> Allwinner R40 SoC contains video engine very similar to that in A33.
>=20
> First two patches add system controller nodes and the rest of them
> add support for Cedrus VPU.
>=20
> Please take a look.

Applied all 5 patches, thanks

Maxime

--iuvgwm6rpxeewgp5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX0fO8gAKCRDj7w1vZxhR
xV5NAQDF9g6AIv8B7pmqugf0GI/8cUs9e7lyAcm+Rz+TGwFkWgD/VEcDH7+c5LKz
fF+auOAaw4kec1ruj6+uGhxwKyBSYAU=
=FNIg
-----END PGP SIGNATURE-----

--iuvgwm6rpxeewgp5--

--===============5942468784002304794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5942468784002304794==--
