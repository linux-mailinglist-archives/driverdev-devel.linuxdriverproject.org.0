Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E23A260ADF
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 08:23:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0085856B7;
	Tue,  8 Sep 2020 06:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVkFPqlKAoAL; Tue,  8 Sep 2020 06:23:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FF9E8573E;
	Tue,  8 Sep 2020 06:23:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D40631BF296
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 06:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D097C871BA
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 06:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xMLzKmaHSdOJ for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 06:23:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF6D28708C
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 06:23:32 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 5B965D31;
 Tue,  8 Sep 2020 02:23:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Sep 2020 02:23:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=8PeJUwpZWqv0vmkZd7YAC2nu4o8
 KiLCP0IQDcIlnSOo=; b=ZuF+MoBRPeJv/T6zjra7/jOdL5LsazsWA6d2xxmB0Pb
 R7WPMM4onVuWLRbFYKVFiDAQfSp8mIcXPdkNuo3iEHpOPx58Lw9BVnexpT6i43KR
 gGTirBBDiZ2y/RD4bVpjeVYLM6ceEapi9PQ6skZnx+hbn9+aL+SEmh0ENvV+Cv5J
 DUZi+t0R80p463Kr4msD0LHGcCQDCkziK2l67GkzkuN8lD6lgFfj3agEBCs7wQu6
 PP2Q5d8bwYZrNrsSlmGk2V7E4YpKpqRC1m07QS/9ogZpvjnFCGxQHb7kNO5p50Q2
 iMlv23fASXV0OzGuUWU1pqBDaRFr2R4AgkzxfDq+Z/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=8PeJUw
 pZWqv0vmkZd7YAC2nu4o8KiLCP0IQDcIlnSOo=; b=GTZf36Cany/gjRwOXn7Ic7
 uQLF77zuPvk5r4fut2E7gGmf3H1s7bzZFo9lbvY9zzlucSzMiCjoHTLstla6QzBE
 pmBN7Podzt5RDzSelNcfuXTtYBpyZpCCiG2m+hWwndspCZGGbhNrzWPyVTuFFq+e
 VZwhz6cGzqBmX36xKkmmcyACtgxmyvDppa4QX69WYr34FnR6GzE7pJeJwK5KTusE
 Y/JdCjjWxEbhobBJ0yx+Rn/dB6hm7yUmSXOv5yZJmJW1tUNH3MrhjOc2i07rLSZX
 Ou5CqKYc9AScW3mKXDy6mDfVI4JzxyuYFoBs7SOBKW+cU71kVnLay793GpRuyfPQ
 ==
X-ME-Sender: <xms:YCNXX2UgErBiRdbujEhwkEIsRdNlQh46_OYzYA0GFNnSObo6kvaLSg>
 <xme:YCNXXyml5PsQO6HK6Oc-Mx8Xj1dOsbi5w2FA5JygQosZWVNZh8KhwnJ2z0N8Rfom5
 PUs_RUoJD_WMSKMOnU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudehuddguddthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
 heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:YCNXX6aA6XP7FcQ7vAnSs84CykRxh6pIDAEmJkG_0Ezltc18Bwe_cA>
 <xmx:YCNXX9VW7PVPnu24SXyGTD6cazPERfiK-GsiUJ312VOSz9MdP5GcYA>
 <xmx:YCNXXwkbRAobrRfVg_mtQB0ELVx1gyOrEXZSh90RpTxkd8AT-J7W9g>
 <xmx:YSNXX67eMQSUQGB8SVRgN3mCY746la5Pt9qVueY9EUQo23vpsvxV3jGRLOk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A28F3280059;
 Tue,  8 Sep 2020 02:23:28 -0400 (EDT)
Date: Tue, 8 Sep 2020 08:23:27 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Martin Cerveny <m.cerveny@computer.org>
Subject: Re: [PATCH 0/6] ARM: dts: sun8i: v3s: Enable video decoder
Message-ID: <20200908062327.7o4abjnosvghtafy@gilmour.lan>
References: <20200904200112.5563-1-m.cerveny@computer.org>
MIME-Version: 1.0
In-Reply-To: <20200904200112.5563-1-m.cerveny@computer.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8889826667272366771=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8889826667272366771==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yeunpu5qtdhq4w3a"
Content-Disposition: inline


--yeunpu5qtdhq4w3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 04, 2020 at 10:01:06PM +0200, Martin Cerveny wrote:
> First patch extends cedrus capability to all decoders
> because V3s missing MPEG2 decoder.
>=20
> Next two patches add system control node (SRAM C1) and=20
> next three patches add support for Cedrus VPU.

How was it tested?

Maxime

--yeunpu5qtdhq4w3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX1cjXwAKCRDj7w1vZxhR
xV8GAP0cNYAAAy/pw2iH4/pxcs9qpz9Yq4xEwKOO219Fvk4puwD9EU7b+Q9/2v/p
2OT6tPxEesH157Xx1P4yiIB53HjDIQs=
=Kt/J
-----END PGP SIGNATURE-----

--yeunpu5qtdhq4w3a--

--===============8889826667272366771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8889826667272366771==--
