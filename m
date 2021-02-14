Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6026731E172
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 22:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F0DE605C0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 21:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvVtQsslTH7t for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 21:34:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 54891605DF; Wed, 17 Feb 2021 21:34:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE8AB60597;
	Wed, 17 Feb 2021 21:34:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 464DB1BF9D1
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41CE38660A
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iElsONWh4Yty for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 21:33:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7544187234
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 21:33:55 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id D4BFF5C00F9;
 Wed, 17 Feb 2021 16:33:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 17 Feb 2021 16:33:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references; s=fm2;
 bh=0DPt8T+IrQKOkEiQ1EPlTZOferGKmocm4fwWAE5D5bs=; b=bKvX3COYgLTR
 sXoB8fJlRlnbjvYP/Ed8QRLW1Z2ischDqBdgHvzSHQhgMCD7W5BW2kyMvt1UUsvU
 ssf5YV98UoOQzn7c0JkJbwzFJyi9zQTNVzfMZ6reThTFBFXwcTvcaLD2R7lvTZvt
 vw9EUfWzSgjOyIfSaEl2K75O86KkrdwkzoIPjaR2qfzFWWX84TwpiUMIPkhHoZ6h
 gSoZVaVV+AbWH5O3rVMscVlV03/h6kKo55g2XJyElbEpVys+dxznw3noPVfpncsY
 +aH7MKixmfpQb2/I95Vp0UGn855y2jesvDm8WQBKf7UAQ/38inAG+tey/4wJ9X3m
 6wElwJJhHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:in-reply-to:message-id
 :references:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=0DPt8T+IrQKOkEiQ1EPlTZOferGKm
 ocm4fwWAE5D5bs=; b=PxhZSFhPJxer46Xo1H2DS/cDc3nDPTQrq24dqB6PRrCkC
 yjjLnt20xKYJVnNLAEWR7UGLNLMgZPnx+JnDh+vxk29lU1ruEgB++qCua0Zak/mt
 5JDgq7rFKe2w6radFwCbTtbUuh9wBmU3PcnJ+bOBtJVZrdAukmPPKsCWDcFRK4XR
 pWBOBEGkIpTZ7/C2fw6lGbjUfxrtE8SUjT1MMlnKFRnViagkZ5I1bpzqvpdXjZx6
 IE0w9ZcORGF6qByIehHKljItKdSfrDmN59SlZT4r2shvTPv4y7eyY+Ts+ntXpRnI
 d/6BfRQooVtYWLDZFJG1rG0BiqBWzUEUZIvAbJdxQ==
X-ME-Sender: <xms:wostYIL1aQ-UdEwPtAyTZpu87wtuuq9hBA5kfdjLjH3ai-4aXvuUFw>
 <xme:wostYO6kS1VKDqcmxXLaeC9OSKTS3gV0iQPWqUHdAmvpMlbDMzCKreURItStQy5M3
 bkTtHYR-JFOTrKzDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedvgdduvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfsedttdertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepfffgkeduffdtieeltddtgeetgfdujeekhfegfeegudduffffgedtvddufeelveev
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:wostYKftfuljmnLLipbBGMkb9dZ5nLsV-FSWq_ExArwHHqXZf66pyA>
 <xmx:wostYBEPoeNmDBAbEJbZO-JeardBbE0LeL2_RxaaV6NPSTukvED86Q>
 <xmx:wostYLRlVU6rHExCkExRfJ9yQ5vFzKmEcPlgEzl9EAw0Ueu2b8Hb0g>
 <xmx:wostYAs0ErD68Y_OljXZLovZSndulMUdip46yXNjGogQE-1mW1b8jw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5FD3A240057;
 Wed, 17 Feb 2021 16:33:54 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] staging: rtl8192e: rename FragNum to frag_num in
 sequence_control union
Date: Sun, 14 Feb 2021 14:03:31 +0000
Message-Id: <20210214140332.16175-3-will+git@drnd.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210214140332.16175-1-will+git@drnd.me>
References: <20210214140332.16175-1-will+git@drnd.me>
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

Fixes a checkpatch CHECK message.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 34d66b8f5155..3e5bd3fc78ce 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -22,7 +22,7 @@
 union sequence_control {
 	u16 short_data;
 	struct {
-		u16	FragNum:4;
+		u16	frag_num:4;
 		u16	SeqNum:12;
 	} field;
 };
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
