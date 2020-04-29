Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAAB1BD361
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 06:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FA60876EE;
	Wed, 29 Apr 2020 04:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n324IJTD2dxz; Wed, 29 Apr 2020 04:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F1BA86FB1;
	Wed, 29 Apr 2020 04:04:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 650771BF3A6
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5223322B7A
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XqeY9UVMMTkY for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 04:04:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by silver.osuosl.org (Postfix) with ESMTPS id DC35E22728
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 04:04:48 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 289935C0392;
 Wed, 29 Apr 2020 00:04:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 29 Apr 2020 00:04:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=hFef1z+7qhE8uSAgi3qJP1RsP94
 Wmsl+o0e0YRp0D8c=; b=YuUbcqpbctfCLwjdABE48sFdI/r/uzEgnmDWlldh3Ir
 HG7m/miahinctm2h86KWL7jCe364Q3e4x5VwBAWuYMe8NxxkFIu8+3kFKDtkz8yC
 dAK3Mi3asdtn3B8P+jz3qffKQ4V+wAwSq2V8SEBLP12vqwzcboPj3Ps23TtqVxdJ
 qGVrVAmEFnUbIxmkVeAwSQvahEUCTVpVv+9/XSAzFkk4URJM3of98UXNdGU541mu
 pilSeQ7Gnfd+N3apIGuzTjUmZjnKPt0aQoEHNarRH5QZeT2drooRdfDecIdrchMo
 aZkZZm4LxhtzBVQRutlpzpSYHJZ9tPPjptml5PyS13g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=hFef1z
 +7qhE8uSAgi3qJP1RsP94Wmsl+o0e0YRp0D8c=; b=l2U2bjpxhrp7J6jcpH/2ST
 JIkt0vYLtspIzSEmjzJeS8ZPsRyUjgaQCknDK57ajB3o+iK1LpYIYP0G0tV1rmIv
 OJvb40Xw+kpVsstXLJCSOJwJCrY3R6JAu2qXRVFCeWeVJDAokIdRWaD1zFMBAVY+
 wltdvy+m8bNrhrduoF/uP5yxsK8cHOkDus3DOPeJuyn/0QGh2vYqNB8l1iNlNv7I
 S4yiU8UmoF627hYrfElgAm8aV8NWkRvHreUAc1qMMSFkRIhM8eJ/M8yFCK0D5xsq
 dvJLHkYxKndvEbs9e8r1iAaHjD0zPuNtxnTvdkXcN1RpRnpvwfURYZ/FCnzbUYZw
 ==
X-ME-Sender: <xms:4PyoXqIqBSYWyWHzNUGlhp4gA_UTrRjm5frXt_V3aXgv98xIhPBWeQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedvgdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomheptfihlhgrnhcu
 ffhmvghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecukfhppedutdekrd
 egledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:4PyoXmjsKWaVzb_glkv7EZAalUtBkZBDTLXZqfdciiJsfZzPsM430Q>
 <xmx:4PyoXolVzXyluwMyalD4j2cmACz_UVmy-pjVBvJUCCbZFjWmb_b3rw>
 <xmx:4PyoXtUXHY3hWRtJL3BbkcOfUtKgHbTlqoHUi6vUTRdnjWP5BNwbsg>
 <xmx:4PyoXspCSqpqjWwU4lAnuaxUOYUHNqNT5C_Q8lysVhVIIfeeLeCYtQ>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id C4E06328005D;
 Wed, 29 Apr 2020 00:04:47 -0400 (EDT)
Date: Wed, 29 Apr 2020 00:04:46 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] staging: qlge: Fix function argument alignment warning
 in qlge_main.c
Message-ID: <45c37ee5d0605ac7274776edbb8e8e9108c786ce.1588132908.git.mail@rylan.coffee>
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

Fix checkpatch.pl check:

  CHECK: Alignment should match open parenthesis

Signed-off-by: Rylan Dmello <mail@rylan.coffee>
---
 drivers/staging/qlge/qlge_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 0edeea525fef..c493da03e45f 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4450,7 +4450,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	pci_save_state(pdev);
 	qdev->reg_base =
 	    ioremap(pci_resource_start(pdev, 1),
-			    pci_resource_len(pdev, 1));
+		    pci_resource_len(pdev, 1));
 	if (!qdev->reg_base) {
 		dev_err(&pdev->dev, "Register mapping failed.\n");
 		err = -ENOMEM;
@@ -4460,7 +4460,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	qdev->doorbell_area_size = pci_resource_len(pdev, 3);
 	qdev->doorbell_area =
 	    ioremap(pci_resource_start(pdev, 3),
-			    pci_resource_len(pdev, 3));
+		    pci_resource_len(pdev, 3));
 	if (!qdev->doorbell_area) {
 		dev_err(&pdev->dev, "Doorbell register mapping failed.\n");
 		err = -ENOMEM;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
