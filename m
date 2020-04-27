Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0B51B95C8
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 06:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C60685EF9;
	Mon, 27 Apr 2020 04:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pEbsPXm9fVI; Mon, 27 Apr 2020 04:21:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3C758620F;
	Mon, 27 Apr 2020 04:21:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 490071BF342
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 04:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 456D984539
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 04:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WEjd--ttBA_9 for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 04:21:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D94D384536
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 04:21:42 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 6E1FD5C0091;
 Mon, 27 Apr 2020 00:14:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 27 Apr 2020 00:14:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=snpCVV56mFmo9muUIO7ngHFvMfQ
 7y0CccI9e/ddkW0U=; b=q+b03J2UvN30BlUtUGidor66RUfVg3I7fjOkVJJL3VW
 39AhUvi+QNQkhDLUZqmJW4IvIqK7daijDogltdSo4T6Zr2xOXS5z4guhuzUMZtgy
 LcRqOFq8pv2uUkncIo0NonlyVOjlYKmy6hIWZnp9xuFn3pZS5rRvGynmTwB3Euy5
 NAKtdNdz1W6Bsg1Gusq297e6A2fggFIe2nt5zMgC3Hdq8CQZmSE8YxypvoM1p5nd
 bU/kln6UbW4Gx48pKj5czLphnw+FNIpwagcr3RPwrKOdlJQHfPLSujsay6Vb/sdl
 0+1lkOyOSiiSnenLuIO9fZ3fviHRIdZy8twcLwQZERg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=snpCVV
 56mFmo9muUIO7ngHFvMfQ7y0CccI9e/ddkW0U=; b=hpaEQTZiBPxM0Qo083dgn2
 Ts1zTLA7sARPE68PW6ttqv6ZnKudiSuVaKTzJB7oUtd5S0ua6WlZrvN/BqSt9YWa
 eKxRl99X1Sj1D3YYU8Jt8pbeNuQfi7Mie1U9scMW7vJBzxKy67W4Jx99MBRODCu3
 dvdO2EjjL8Y4qC+jmCU6bHuW9XFkjRGuQSnswcfHDG7va0Urk7DsdMv9Nt9zzjDi
 5e900CRzX7elpXpOf80zMcCTFHZDsojxWZelHgFJhgNPdlf/2jVBsUTihonywI44
 MEO5gOtw/DxrHkd4pDy/EmeTKv1YVs5Peja/6qX4Y5X5xzYERkK36m/DULuRZXcQ
 ==
X-ME-Sender: <xms:NFymXr_l9tmdV_Yq1GwPexpbbw4pMKWMLO59YJZyCtZKwqDxPO8r_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheekgdekvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomheptfihlhgrnhcu
 ffhmvghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecukfhppedutdekrd
 egledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:NFymXn6fxpL4blHwkmRbVBSp9J6s70LlgTh3e2PlPmjpnC-5cl3hhQ>
 <xmx:NFymXnUrdNsb-XMC1uJE-WrCmKEY5pV09nF9glSkQWoYKLk1wEhLQw>
 <xmx:NFymXlPuN3VPn65LG64uChuE-zACUkuvdAkuSwdeSdJ2xJySx31zig>
 <xmx:NFymXueMlwYWYS3-vEzZHAKmQKs0Ahpk-IZp6-78t35a2u_lAAQG8g>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id 077583065E46;
 Mon, 27 Apr 2020 00:14:44 -0400 (EDT)
Date: Mon, 27 Apr 2020 00:14:44 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Benjamin Poirier <bpoirier@suse.com>,
 Jiri Pirko <jpirko@redhat.com>
Subject: [PATCH 2/3] staging: qlge: Remove print statement for vlgrp field
Message-ID: <51bae37a54d414491779e4a3329508cc864ab900.1587959245.git.mail@rylan.coffee>
References: <cover.1587959245.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1587959245.git.mail@rylan.coffee>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove statement that tries to print the non-existent 'vlgrp' field
in the 'ql_adapter' struct, which causes a compilation failure when
QL_DEV_DUMP is set.

vlgrp seems to have been removed from ql_adapter as a part of
commit 18c49b91777c ("qlge: do vlan cleanup") in 2011.

vlgrp might be replaced by the 'active_vlans' array introduced in the
aforementioned commit. But I'm not sure if printing all 64 values of
that array would help with debugging this driver, so I'm leaving it
out of the debug code in this patch.

Signed-off-by: Rylan Dmello <mail@rylan.coffee>
---
 drivers/staging/qlge/qlge_dbg.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index e0dcdc452e2e..bf157baace54 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1570,7 +1570,6 @@ void ql_dump_qdev(struct ql_adapter *qdev)
 	int i;
 
 	DUMP_QDEV_FIELD(qdev, "%lx", flags);
-	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
 	DUMP_QDEV_FIELD(qdev, "%p", pdev);
 	DUMP_QDEV_FIELD(qdev, "%p", ndev);
 	DUMP_QDEV_FIELD(qdev, "%d", chip_rev_id);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
