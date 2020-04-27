Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA1F1B95C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 06:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D270875BE;
	Mon, 27 Apr 2020 04:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FwflnSEPHEfC; Mon, 27 Apr 2020 04:21:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE4F187535;
	Mon, 27 Apr 2020 04:21:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 907191BF97A
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 04:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D25D8620F
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 04:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMkKjIONp235 for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 04:21:43 +0000 (UTC)
X-Greylist: delayed 00:08:23 by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D67BA85EF9
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 04:21:42 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 1D0F85C00DE;
 Mon, 27 Apr 2020 00:15:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 27 Apr 2020 00:15:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=b2k2hy0obFtFe40lOY3WleQMvx/
 DeMs6uYX07xiuYUM=; b=llX/86K09l8ElFJedOdbRBX28xXwWgVXDiSP1UmlzEc
 0syw5duUk8wRFEenqJyGIEzj3uejgA/RAO0ihDyctwuBRKt4En+wVRZLcxe4Bb9O
 eJeL8PqhhR2XcPF86CsVkKqVnTZ4FIT68rPZx14qmHE2wgJx8CDiUZzFuO5BieX0
 pNtoIz5K12kEQQ5yK0CdgtK65RPRZLToydcdVErJ25xkPJ3ZYsmqmaU7adsJp8Jc
 CBzvIGiyWfj2dDQJ7f5PvXY0opTznBPMrlRwul81cEqdtRvQUvGdJP7NVbzh2nEv
 HHXiGC7k4oHPNYZGfEhTLBi7utfgiAAol2Vkj4w2new==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=b2k2hy
 0obFtFe40lOY3WleQMvx/DeMs6uYX07xiuYUM=; b=AlKMLq1bLc892cBt1Q1KmH
 64s5VqdC0fR2BCskqdMmeTDsrFAJUvB19qD9+rdCGLIHrPTy+b2mqyieQPz3vl6Y
 QXMVd86z3xEPE21Vm3oX2GuGIYQPBbSGeu4GbfBLhGS5maEihFTX4UdNu7jpQI8w
 WSTlDD9g4gS306oNBHLDdytTNh5cqgKlWwsDR35pkpV5v0tW56qjDkWJiUiF8hnp
 YIBn1zxhySKqwJWQIiz5XctteeJO+/4HskGAHixqchPRIqbbvGNrUkCldujXUHR2
 qNmdfSSUGCbgI32etLuy8ZTrar6ewFShjd11rrTrtn9rBhqzZaoJAH0NzSFbx0rA
 ==
X-ME-Sender: <xms:VVymXh84y6tCANY9_Y_ncc6r5-QCGhwGOfqqJ9RNkpt9TLq4Qon5Lw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheekgdekvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomheptfihlhgrnhcu
 ffhmvghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecukfhppedutdekrd
 egledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:VVymXuod60fD-NHqfvXPabNrd-OqBDq8iulf3jv79mvzYPhlRNje-Q>
 <xmx:VVymXsVmbP3nIDuarlYiRlGuLe4QB4pgdeJx_Uf4Yrn2bSbVJM5vsg>
 <xmx:VVymXpJyts3RNPEbSi-swCQfx_v0abltrYHVqGZNlNXlU22Cdr8ZxQ>
 <xmx:VlymXr1ioOfPPgoUySYicbyyax3FGEoCfJSXL7qPQIu033VdiQ5uiA>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id A9D47328005D;
 Mon, 27 Apr 2020 00:15:17 -0400 (EDT)
Date: Mon, 27 Apr 2020 00:15:18 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Benjamin Poirier <bpoirier@suse.com>,
 Jiri Pirko <jpirko@redhat.com>
Subject: [PATCH 3/3] staging: qlge: Remove print statements for lbq_clean_idx
 and lbq_free_cnt
Message-ID: <aa7e0197f4e34cec0855124e45696e33dd9527e5.1587959245.git.mail@rylan.coffee>
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

Remove debug print statements referring to non-existent fields
'lbq_clean_idx' and 'lbq_free_cnt' in the 'rx_ring' struct, which causes
a compilation failure when QL_DEV_DUMP is set.

These fields were initially removed as a part of commit aec626d2092f
("staging: qlge: Update buffer queue prod index despite oom") in 2019.

Their replacement fields ('next_to_use' and 'next_to_clean') are already
being printed, so this patch does not add new debug statements for them.

Signed-off-by: Rylan Dmello <mail@rylan.coffee>
---
 drivers/staging/qlge/qlge_dbg.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index bf157baace54..058889687907 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1757,8 +1757,6 @@ void ql_dump_rx_ring(struct rx_ring *rx_ring)
 	       rx_ring->lbq.prod_idx_db_reg);
 	pr_err("rx_ring->lbq.next_to_use = %d\n", rx_ring->lbq.next_to_use);
 	pr_err("rx_ring->lbq.next_to_clean = %d\n", rx_ring->lbq.next_to_clean);
-	pr_err("rx_ring->lbq_clean_idx = %d\n", rx_ring->lbq_clean_idx);
-	pr_err("rx_ring->lbq_free_cnt = %d\n", rx_ring->lbq_free_cnt);
 
 	pr_err("rx_ring->sbq.base = %p\n", rx_ring->sbq.base);
 	pr_err("rx_ring->sbq.base_dma = %llx\n",
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
