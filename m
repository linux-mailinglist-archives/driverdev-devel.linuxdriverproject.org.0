Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629531BD35E
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 06:04:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 012DD8832D;
	Wed, 29 Apr 2020 04:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P9pdeSiUctKt; Wed, 29 Apr 2020 04:04:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C61B881E9;
	Wed, 29 Apr 2020 04:04:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BD911BF3A6
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0398386FBB
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUa7xGfG9CFa for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 04:04:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B11EB86FB1
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 04:04:32 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id EF0225C0392;
 Wed, 29 Apr 2020 00:04:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Wed, 29 Apr 2020 00:04:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=kHapGOq7KW9N0TnNYVQtbnV2HjZ
 ViclYwhrcnJjGpMI=; b=sutUTfGmDne65YZdufylKbT2c227tir34T9o7CYcVv4
 LpOIfWRVb+AKWaHupdBrwT7etOVqI3e5VKFMloBva1u+mv1T21gGs1iLFWWSSgBg
 b50C6vewk8ITYLWn/OfVP3u+oEb/53qjEO878G9H/x+s60LxQb8rbthqN1l7U92k
 uf7ue/OxvUN4PKFSFzDcMDvMd5CNXvvX+yspXexbybrWJaree3DhTV+Am3J4s810
 uGRnwh+FGubotj6B8IvmGpEGbRMFAzM28p/KcEtiLraCSh1M5M2eKMCltDyF/wXB
 BXv9dWyVHHc8RlGtaiTE9z/Mhtja1DxI0lNNPFZ9owQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=kHapGO
 q7KW9N0TnNYVQtbnV2HjZViclYwhrcnJjGpMI=; b=PJL9cRdRAbs0EtJuJEMIBR
 zBMtwIjdCf6ATsPA8IYlDLufn80ApaB9WoLe68z0SrrGnD0Z5SIcgd725kFYnqGL
 e6Ic4iLslGgAprLUp5N7kW6Kpcjub3JNijWpnSCOp8lAsDrRW54Yu+PR60dFTxLD
 hO5veoquEujwsI0clIl/SO/wb+G//oLPj57nxDqEGA6c4XDse0B8e7sALy0Uh9ly
 RZkzVIQvXUG+INp8pbHfX5u7LssnRcjGsdm5nnyNcSgWjUgrbYPOTz5jVlqO2HvI
 x5yd4iFm3e2n27psxuYl1MRpBwBJFhT5sZPF4v5O80Z1B8Wlsnr+vEv6nKKqCxoA
 ==
X-ME-Sender: <xms:z_yoXjnaYOXgBVdRN1zmXOgsplegzSEQFnbQK0Fpln0nGXMbH0BY6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedvgdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomheptfihlhgrnhcu
 ffhmvghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecukfhppedutdekrd
 egledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:z_yoXvcequtGXlXDDlFQNa22qccYJZo_tEnfUbr62i0OtA1KP34uPA>
 <xmx:z_yoXuHuNgfne2PE1fMsIdaUDgQP4bJRRBRlyFiE71mZqLVGiMR08w>
 <xmx:z_yoXvEGPVcc7UGHTqcwhhAL6Ca6Aq8mS1jnUb5YqZYdJ4gFxcsFjw>
 <xmx:z_yoXpSm3SczGgIgXFz5NRcbk1sIys5lFE5kAfhEkpIzPrmJAKV0sg>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8DB603065EDF;
 Wed, 29 Apr 2020 00:04:31 -0400 (EDT)
Date: Wed, 29 Apr 2020 00:04:30 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] staging: qlge: Fix suspect indentation warning in
 qlge_main.c
Message-ID: <eafcda7509c7904fc1624833c69cca349156d555.1588132908.git.mail@rylan.coffee>
References: <aae9feb569c60758ab09c923c09b600295f4cb32.1588132908.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aae9feb569c60758ab09c923c09b600295f4cb32.1588132908.git.mail@rylan.coffee>
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

Fix checkpatch.pl warning:

  WARNING: suspect code indent for conditional statements (16, 23)

Signed-off-by: Rylan Dmello <mail@rylan.coffee>
---
 drivers/staging/qlge/qlge_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 10daae025790..0edeea525fef 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4436,7 +4436,8 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	} else {
 		err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
 		if (!err)
-		       err = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
+			err = dma_set_coherent_mask(&pdev->dev,
+						    DMA_BIT_MASK(32));
 	}
 
 	if (err) {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
