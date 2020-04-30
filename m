Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC311BED92
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 03:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E3E19241F9;
	Thu, 30 Apr 2020 01:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UN95H+w78fqT; Thu, 30 Apr 2020 01:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6754723E8D;
	Thu, 30 Apr 2020 01:32:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3736A1BF316
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 01:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2611823C58
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 01:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hq-Wp+Cw8Cko for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 01:31:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by silver.osuosl.org (Postfix) with ESMTPS id E274223735
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 01:31:56 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id DDF925C00A0;
 Wed, 29 Apr 2020 21:31:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Wed, 29 Apr 2020 21:31:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rylan.coffee; h=
 date:from:to:subject:message-id:mime-version:content-type; s=
 fm3; bh=SYK7O3pWETptKlBHEnGL7d2b/hjrdjwGHndWnjpBIYc=; b=I9Rl+wyc
 wAmq++yMiOioQj+oWaq9nyXI0XsLaqEES0VZqiZwG3prd4qZiNH07Q145rQ02dNq
 hiLZJ6vBIMkLZ2ndPBKwbqopvZdd6zvQY6vIbd5CGzWXB8MQPZXo3IJGiz2sxYEH
 jEWLbfFBRRoXGB3avlx202U5BnmawUUsOJzYvFaXNo9CnkQs1LeZA+ul2U79Gx+C
 YR/tYQJUGn89eRpeqo9C9aZ5QzVUl8RZbUM6wKXIli0Nk8dnqRQrQMqNvv4ubNt6
 iASUhkOAh2Fc3GpsjNZ150ToHv9MC05eTZ13wdMxMXg/Iu93TTSsCBuxANMkhbUM
 ua3TxhhdnZ/dbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=SYK7O3pWETptKlBHEnGL7d2b/hjrd
 jwGHndWnjpBIYc=; b=nj/QXmBskjFwJjZz1SEW1HTzdX8C72xA7b4qZZetuwHhN
 PhYYmRuYS1q3NXxGVLmOQPNBVgH9Nwqd0fzzHSZE5j2S37tLeO5EInEUUr/PMT4Q
 /VwbstVRlh3+Te5/QOaSsRpOzg3jxqiclLh5JMtyPtbXm1/MhOSI345DWRT6NiY+
 Re6AGEKQvpx3TxC1FNlmHfv0KC2ps7kTtnDCJMH4oNayw2OEyCshrwzW45YuDnCt
 FcpKcLPcyN3llXYe4dHj7CAI3/8ym5xPdnFRKa8RLzo8vxmEpVtrfNCGURjxSj+L
 knem6Dwzvlf9Jwiu0XWft13qK+4rNWSxN+ep0XHPQ==
X-ME-Sender: <xms:iyqqXnUN-2jG3K83g1OHzb59grIIIjZflxFff9n6CzTX6jxhYluwHA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieeggdegiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkgggtugesthdtredttddtjeenucfhrhhomheptfihlhgrnhcuffhm
 vghllhhouceomhgrihhlsehrhihlrghnrdgtohhffhgvvgeqnecuggftrfgrthhtvghrnh
 epledukefggeevtdffjeduieefiedtuddufeeuvdehkeeuieelleeigfdvledufeelnecu
 kfhppedutdekrdegledrudehkedrkeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrihhlsehrhihlrghnrdgtohhffhgvvg
X-ME-Proxy: <xmx:iyqqXk_bOnBPMdhsAuA9Cx8DiMD_JJOWdmohjdJXLx9qsCThNAbYQQ>
 <xmx:iyqqXmfyNvhFEl-sZyw_u2rBq3rgtfHICqzKdd_fECy43MKqgILAxg>
 <xmx:iyqqXm-z82upvot94bBLUozn0b478f_YHZyc91ghnR9gelwOL-PtIA>
 <xmx:iyqqXoIpOUQVVdgBIbxjt6b_6umq_MMSUQE4voGi_jjtSKIaejryQw>
Received: from athena (pool-108-49-158-84.bstnma.fios.verizon.net
 [108.49.158.84])
 by mail.messagingengine.com (Postfix) with ESMTPA id 59DB73065EBD;
 Wed, 29 Apr 2020 21:31:55 -0400 (EDT)
Date: Wed, 29 Apr 2020 21:31:54 -0400
From: Rylan Dmello <mail@rylan.coffee>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>
Subject: [PATCH v2 0/7] staging: qlge: Checkpatch.pl indentation fixes in
 qlge_main.c
Message-ID: <cover.1588209862.git.mail@rylan.coffee>
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

This patchset fixes some indentation- and style-related issues in qlge_main.c
reported by checkpatch.pl, such as:

  WARNING: Avoid multiple line dereference
  WARNING: line over 80 characters
  WARNING: suspect code indent for conditional statements

v2:
 - Addressed feedback from Joe Perches by unindenting
   ql_set_mac_addr_reg and by replacing goto statements with break
   statements in the function.

Rylan Dmello (7):
  staging: qlge: Fix indentation in ql_set_mac_addr_reg
  staging: qlge: Remove gotos from ql_set_mac_addr_reg
  staging: qlge: Fix indentation in ql_get_mac_addr_reg
  staging: qlge: Remove goto statements from ql_get_mac_addr_reg
  staging: qlge: Remove multi-line dereference from ql_request_irq
  staging: qlge: Fix suspect code indent warning in ql_init_device
  staging: qlge: Fix function argument alignment warning in
    ql_init_device

 drivers/staging/qlge/qlge_main.c | 258 ++++++++++++++-----------------
 1 file changed, 120 insertions(+), 138 deletions(-)

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
