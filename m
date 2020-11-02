Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B6F2A2C85
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 15:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6F5887381;
	Mon,  2 Nov 2020 14:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnF8CFJickeH; Mon,  2 Nov 2020 14:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3076C87212;
	Mon,  2 Nov 2020 14:18:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 256601BF3AA
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 14:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20E4A87323
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 14:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4JLxVtmAvYz for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 14:18:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DAC1487212
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 14:18:43 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id B0D30EA1;
 Mon,  2 Nov 2020 09:18:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 02 Nov 2020 09:18:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=0J+Fof+2UzXfo4XbpeTWRmJHnwd
 Jb+SdD0W2rbcDMEM=; b=cFEJqd0foMqU5yTfyDfkuLtmylYLrYHNQPIJUXA9BBB
 jrD9PvfuIZ/0Gyte44YKqNZ1mDAzVeWGxwJQRDc3wvI1/UdbBcMbC01gO5eUK2ok
 0bqCN+3VXwUmjoMFHRUsP8IfIdnAaFlridMuQKzahhdmtsiga85FagqChdCFGyQj
 dPi0W8GIn56VjQBmp112SVh91iKbKa/0m18N8w7ZWdbPXIj88EN2cB1eDdxynMS6
 HsidWMneYpevACHuE4raM/2O6zJ6fyRCsrGscRIX0nwLA+qaMonkkVAIZWRy3/qx
 Epre9ptGSigtj9/Z7Vu1dm3jcU8bzyh8+mHOoiSPgIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0J+Fof
 +2UzXfo4XbpeTWRmJHnwdJb+SdD0W2rbcDMEM=; b=lu7la2A5HqroArYMl6+13u
 zrZgTbt+4KWCInab4lU4fC3aQ3Khlnr8/XZ71CYkmpglTvI5gnU7gHJFt2h3UVrT
 jhdMYBadH3dp0d3khKJYDvbIcHhVartmv9RID6Y6Z0pEnXae6bofc2ymGVwgYutJ
 jpmaS1UQw3XgdyvOe3Wn8eH0ky5KtHEPaOZ19JIMXQeKh4oHXI6tRrjXXrJrKVW6
 YPnoqiLT5IQ/mAZKrVgN2yv1vbjQACFQad1i43M4DVaBJrTuKBCBWYF37AbGaJAS
 kViKMA0oYDce4z+2252SPSwyGL+9JaI7AOjyHjcVEBcYOpxGB2gukbrk/hHxcw9g
 ==
X-ME-Sender: <xms:QRWgX5sqhlcWTIjhhrZRVQhjGjPHU_xL8o1c-P6UFlFtdguSAHBvVQ>
 <xme:QRWgXyeCQcdSgsvYNA1lj1UkqjYd7UVYGZYm9cuakjwFa96gqXV4tY9iijU22MiAj
 pYLYeqOG4u6ccq59-0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtuddgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:QRWgX8zMJ3d7tQlIML2qA9_tjXaUh4j7dn2_Afsjsfd4nHLUmj5p1A>
 <xmx:QRWgXwPn5Ha8XDMbOIwFfFJTDLmxBOUMOuU2dNChFfvReGVibl4msA>
 <xmx:QRWgX5_SChTgNelL4WcWcC_QMwXYSsV6D8Gav7vjW2z2oGCHwSD1tQ>
 <xmx:QhWgX1ZipmndOhK5WGur2Ls9APqdwjEx6v5Kv4Ac_mz-r88csq7t7w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC839328005D;
 Mon,  2 Nov 2020 09:18:40 -0500 (EST)
Date: Mon, 2 Nov 2020 15:18:38 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Zhang Qilong <zhangqilong3@huawei.com>
Subject: Re: [PATCH -next] media: cedrus: fix reference leak in
 cedrus_start_streaming
Message-ID: <20201102141838.7oicqkeqy7vy3ki3@gilmour.lan>
References: <20201102142622.140001-1-zhangqilong3@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20201102142622.140001-1-zhangqilong3@huawei.com>
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
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7634521339161556923=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7634521339161556923==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iwerxiu77bwtbbop"
Content-Disposition: inline


--iwerxiu77bwtbbop
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 02, 2020 at 10:26:22PM +0800, Zhang Qilong wrote:
> pm_runtime_get_sync will increment pm usage counter even it
> failed. Forgetting to pm_runtime_put_noidle will result in
> reference leak in cedrus_start_streaming. We should fix it.
>=20
> Fixes: d5aecd289babf ("media: cedrus: Implement runtime PM")
> Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>

Shouldn't we fix pm_runtime_get_sync instead then? It seems that most of
the callers get this wrong, and that's definitely non-obvious.

Maxime

--iwerxiu77bwtbbop
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX6AVPgAKCRDj7w1vZxhR
xc8yAQDyxx8eKyHeme5xPWzAq1llV7HnIhAEIKVmbZWo5Fr+fwD/R67eEuzTDgqH
d501yUMJwaT4Ub1OAKf/fY7KGFizmgw=
=ubmD
-----END PGP SIGNATURE-----

--iwerxiu77bwtbbop--

--===============7634521339161556923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7634521339161556923==--
