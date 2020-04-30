Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E61BEDA2
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 03:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2497C2420F;
	Thu, 30 Apr 2020 01:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TcUu1tlPt83R; Thu, 30 Apr 2020 01:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C8092014A;
	Thu, 30 Apr 2020 01:34:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD2771BF316
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 01:34:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA0AA86C4F
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 01:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p0mliYXUSkpW for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 01:34:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AC40A86C4B
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 01:34:28 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id E64F55C0098;
 Wed, 29 Apr 2020 21:34:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 29 Apr 2020 21:34:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=gdaFA2XkrvEtYXytp2mxXVDgZSI
 YUFcivrn9R/xM5YM=; b=CKLv1oQ6TUexrFBL4TlN9aP6IUlawlmTojkSNNzT/08
 0ao9TU1diTYrFNtJv9EHzY0Yvyw1GZEhwHg+gCy67USLeVmjHfHNbkhYUDKaYPlx
 b4CinJbh/v7yo1C3Z9zNdjT/dcLBBFeIj0AjDy/sL5SOfXEjBGHUqwmTOpgQJ66z
 51YgAHg29Vh5UWkBuo1tF4sE46ENbXRr3JfXZioLxl28W6M8hWYFUx1J2WCOdNDT
 v6vkRxCOLy3FoRdNBUQAwAsA3n7uKpxBUqCJazuUnyfChPxDThl9AxEF5H03BueC
 wETHTUqtdnAnbl1DCk6n7obiNtxRTHP2bp1xOGCW2PA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=gdaFA2
 XkrvEtYXytp2mxXVDgZSIYUFcivrn9R/xM5YM=; b=SNFr3fxpj8w+zqWE+xpJ0Z
 G/sNTus4+EJ6w8fTgSiaK4JO26tj7GILPmEl0ZJz9Kz6irZPTpO1pbymz8OB/mks
 RE2Jk89nxfElFXqQtCuh4zssfpP+8kO/v7p20+ryb5a5pSrci68wTr+rOnprK84u
 GBekVXMWTFqbb1orG5KIuw71jyVyT0LclOUkyGTpYLE6Q46Gr8INT/ywlVtGuPIy
 BbPoe+8XYEhXRwNf4W3ui/IaYUoCRMPf1gJVbfcmE+lm0c9IXGVNtvbIGxl8KG3a
 Xs93gtTb7Jd/LdaXqijaKK5AbEoiC1C09cS0+4Av0yypz/M4+NvsCJN7+GX1NptQ
 ==
X-ME-Sender: <xms:IiuqXu223_9CFqIBySUTMH2F1Xz11kiiJtrknJIdF6fLsj4XDsysyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieeggdegjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomheptfihlhgrnhcu
 ffhmvghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecuggftrfgrthhtvg
 hrnhepjeffvefffeevgfdtteegudffieduveeuhfettddvueehveethfffgeetfeeghfeu
 necukfhppedutdekrdegledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:IiuqXiaC57b8yZgIUFv1DjkgXIHBDx7qtWGGPU965mvpY1Rq_s0d6g>
 <xmx:IiuqXriSt2kJGmd5voBxXMYzF_zmgMBzo1rrfaUMsODIu5gIsqJrkg>
 <xmx:IiuqXihwVm1FLo2IsK3Z7aB9m24HfvF2PkH7vafUb3gN9uPIsxqnfA>
 <xmx:IiuqXgo5t-48Pwic6YQagcvEkQ8ddv7UKERY9st0QmbiId3B2FnuUg>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id 82AFC3280066;
 Wed, 29 Apr 2020 21:34:26 -0400 (EDT)
Date: Wed, 29 Apr 2020 21:34:25 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>
Subject: [PATCH v2 5/7] staging: qlge: Remove multi-line dereference from
 ql_request_irq
Message-ID: <517d71f0cbc55e6880c19a9ff16c2c8ab8913251.1588209862.git.mail@rylan.coffee>
References: <cover.1588209862.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588209862.git.mail@rylan.coffee>
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

  WARNING: Avoid multiple line dereference - prefer 'qdev->flags'

Signed-off-by: Rylan Dmello <mail@rylan.coffee>
---
 drivers/staging/qlge/qlge_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index bb6c198a0130..9aa62d146d97 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3415,9 +3415,9 @@ static int ql_request_irq(struct ql_adapter *qdev)
 				     &qdev->rx_ring[0]);
 			status =
 			    request_irq(pdev->irq, qlge_isr,
-					test_bit(QL_MSI_ENABLED,
-						 &qdev->
-						 flags) ? 0 : IRQF_SHARED,
+					test_bit(QL_MSI_ENABLED, &qdev->flags)
+						? 0
+						: IRQF_SHARED,
 					intr_context->name, &qdev->rx_ring[0]);
 			if (status)
 				goto err_irq;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
