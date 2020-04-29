Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D40D1BD35D
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 06:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 202BD863FF;
	Wed, 29 Apr 2020 04:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 625MIan00oOW; Wed, 29 Apr 2020 04:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D2DD844E0;
	Wed, 29 Apr 2020 04:04:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAC491BF408
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2C48863FF
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJ2s_Kx4dinf for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 04:04:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 697CE844E0
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 04:04:14 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 9CA7E5C0395;
 Wed, 29 Apr 2020 00:04:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 29 Apr 2020 00:04:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:mime-version:content-type; s=
 fm3; bh=XdFu2LVocl6Q8NRZueDlDbnMeY4kJhnop+dhw+CTWks=; b=crNq3xEQ
 miE6QtiCrnOUqpkUSUbBDRh2qsLXBjG4HVxh1b2hlkbmRldO1/jHjbCd+DtOcTLb
 f0cvGH7kS9R/3NQ5gjzO3xU6h9azxNRaeWXTR/zdxxJDju9+V0ZtWO5aly3a7d3B
 T4FTCp2jg8a1S0f3YywQO1H4oYS7lgrTQ6vDggyCIJ5oIoM3O8UOZ0LQqk8FgtPI
 8gW7GdqDfVEpP2lDdEs14v7bEv4zTML0JsdAdOybOrB1t2IluWVE4poLi5NuUy0o
 kpAGo1Ky+yaZsyscpDdTCyClWPGweoOBktpAJDCpliH0ySPgW/DNg0qHuLSTsHMm
 2M9nJ+0DutgrJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=XdFu2LVocl6Q8NRZueDlDbnMeY4kJ
 hnop+dhw+CTWks=; b=Ap0rU8p20uDRjVwyqeEfPRPwYh8Yhg5FhwxcNYkK+Fi/s
 dkygVnc4RUkpT7vGrkLzMcoG8xOSINjIPzdVgZVIgCIway5XhZpia30qEoiUg9YP
 Pe39K0EozzX2HdZUnX7zTIWsKgpE6EVlChCVoiI2f6EuYYqqvNIbiemHDHRUSmmy
 R2aKBYH+WoeZmvyRLR7cUUzcDU6TWj3ZOpaNteojVaUbQzlJtkc2aIjZHMU9mLIq
 E4ZwKiUo3X59+Bo40uQpGazN2bCwa5joz6Fwu4O/NvgUe/4/AHrIe8/EBsueOqJj
 dkqJYnmuYHCjRl9q0661QnGRuvohFcjphPTfF8ATA==
X-ME-Sender: <xms:vPyoXoFKinLs4iFfob71EhWroSu2ZC_faqiXKSqWPy2Dp7bAUmCGrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedvgdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkgggtugesthdtredttddtjeenucfhrhhomheptfihlhgrnhcuffhm
 vghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecukfhppedutdekrdegle
 drudehkedrkeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:vPyoXo_6lwTCZjiP9zzQhqGgOG0z5xpv17_TZmzydjxplGK58JgRcQ>
 <xmx:vPyoXvwjDwynT_gqwxqnShMSqn_Mg8kVS64npyqmPkDVqnuoa_Rw_Q>
 <xmx:vPyoXkN4owSIgiL4AiXzXqEuvrN4PqFCEqzzUOqOaJPmwBE5d2wlFA>
 <xmx:vPyoXjlzDAW0Tn4JeVudDopDQHTJu1M0mc_wPzMyiW8SpzIZ7pBsQA>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1479C3280064;
 Wed, 29 Apr 2020 00:04:12 -0400 (EDT)
Date: Wed, 29 Apr 2020 00:04:10 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] staging: qlge: Remove multi-line dereferences from
 qlge_main.c
Message-ID: <aae9feb569c60758ab09c923c09b600295f4cb32.1588132908.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
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

Fix checkpatch.pl warnings:

  WARNING: Avoid multiple line dereference - prefer 'qdev->func'
  WARNING: Avoid multiple line dereference - prefer 'qdev->flags'

Signed-off-by: Rylan Dmello <mail@rylan.coffee>
---
 drivers/staging/qlge/qlge_main.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index d7e4dfafc1a3..10daae025790 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -396,8 +396,7 @@ static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
 			 * the route field to NIC core.
 			 */
 			cam_output = (CAM_OUT_ROUTE_NIC |
-				      (qdev->
-				       func << CAM_OUT_FUNC_SHIFT) |
+				      (qdev->func << CAM_OUT_FUNC_SHIFT) |
 					(0 << CAM_OUT_CQ_ID_SHIFT));
 			if (qdev->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)
 				cam_output |= CAM_OUT_RV;
@@ -3432,9 +3431,9 @@ static int ql_request_irq(struct ql_adapter *qdev)
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
