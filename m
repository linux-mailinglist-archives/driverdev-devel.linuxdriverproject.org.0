Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CBF31E16B
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 22:34:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C18085FC7;
	Wed, 17 Feb 2021 21:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuFAdZgxXj8R; Wed, 17 Feb 2021 21:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D4D785F98;
	Wed, 17 Feb 2021 21:34:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93C171BF869
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D5D18723D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saZj7aRhkrD6 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 21:33:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1AA9B8660A
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 21:33:55 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id DF96E5C0120;
 Wed, 17 Feb 2021 16:33:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 17 Feb 2021 16:33:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id; s=fm2; bh=HTx1d6PdU8kt3GBqLvMqkM
 mWvVwnzk53kCYroUPo/+Q=; b=qSkOH14ULWwTstE1FJtd/E5Bm61weMzS/yTotN
 h9kSux+Ti5EuAvQyjm7lzcsNMpoe4NIUAN9JVWIancqz+HUF7rFLjxyx1F0nNmIx
 MWNFl9gdIstwKCpNrovGW/ZmuJMJbEgwkKeKfcNkxsduKLJpuDKrUj8/HkA/4tje
 OoO4Y6XNmaccr6yija7/FH/MUINM5w3S1puuF99QxJJuI7tq+102iQd3zrT2PAsz
 CjBomopIZTGwEqC0v9HtOmUq0ThK7CfF9pWaHLsqtrkOBNSoYX9PviqMvBUslIFW
 aBqavbjG4yGBNcDw28hp/mnt9K2STmUacZSgzhmu4PeRROtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:message-id:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=HTx1d6PdU8kt3GBqLvMqkMmWvVwnzk53kCYroUPo/+Q=; b=sOgFEEsu
 3gEQCHff6HNKFUyvdtAESR3EgCvS9znwVDTXZFaaUY7UCG6bfqYFxu+4wBsXMAIh
 HPa0pUyJIMK3lcA2NM8SbRAOqP5xUEEPZomMImLeGS7LN3WSzslD9USJfy/q6WCQ
 xFeoS1I0mYll1db5UOq1abR5QyyYhfO/sJP3C2VesI0zBeKHZjMmHLgWcJj40TQ7
 tJfuzFNvdBgEFszk3EwSfq0WN9cp4pf1cjDrNsA2Do9GF0KCa6cBIGc1wYN7ZdFO
 iJe3awVekMbyf6PpL89eID2Z4t7z4VLQbTISaaNyuzfSu8GGxkQdOANgpPWIXf2u
 qw6sqGp1Ppee1w==
X-ME-Sender: <xms:wYstYIfHBrCfpqkzl0OOyjHoCAXfizUNlBmzS5sPWL0IkBTjx5BxWA>
 <xme:wYstYKNakFSwT_kLHFMCu4tdksV-3CBOYkuDZwswm-GOU5qILwqXvdTa_acDYyp3a
 C7K7r3CiCThyGBkMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedvgdduvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffosedttdertdertddtnecuhfhrohhmpeghihhllhhirghmucff
 uhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvghrnh
 epjeetudeiveejfeduueehgfdvveegheeghefgtdeuueetveelueehtdeukedvgeetnecu
 kfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:wYstYJhhiZJ5KAr-epOX-UpTTBBJG7Ux458w6H6tYjk8vCrrBX68lw>
 <xmx:wYstYN-JMN-DHg4X2-U4pyzje-iTMo4QWFDeHOE40-G9ftiMldd1ng>
 <xmx:wYstYEvSYFuaRhccCFAdwMkLbWmAh8M6qpUoBKv0xJTPd9MrIcEIqw>
 <xmx:wYstYK0ZmOJ7JOoMH5AkIBq_lIDAqeMq3bQD94xNX9POOXpaKGaQcg>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1A70324005C;
 Wed, 17 Feb 2021 16:33:53 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] staging: rtl8192e: sequence_control union cleanups
Date: Sun, 14 Feb 2021 14:03:29 +0000
Message-Id: <20210214140332.16175-1-will+git@drnd.me>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixes the checkpatch issues related to the `sequence_control`
union defined in `rtl8192e/rtl819x_BA.h` (avoid camelcase).

William Durand (3):
  staging: rtl8192e: rename ShortData to short_data in sequence_control
    union
  staging: rtl8192e: rename FragNum to frag_num in sequence_control
    union
  staging: rtl8192e: rename SeqNum to seq_num in sequence_control union

 drivers/staging/rtl8192e/rtl819x_BA.h     | 6 +++---
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 4 ++--
 drivers/staging/rtl8192e/rtllib_tx.c      | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
