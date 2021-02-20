Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F7C3244E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 21:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3620F4ED2D;
	Wed, 24 Feb 2021 20:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5BdzZ2k_HaJr; Wed, 24 Feb 2021 20:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 296584ECBD;
	Wed, 24 Feb 2021 20:08:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C58F51BF9B6
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1D1C4ED00
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VBWJiQuv9PTY for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 315CE4ECFC
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 20:07:47 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id C99C98EF;
 Wed, 24 Feb 2021 15:07:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 24 Feb 2021 15:07:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=RYLufI04OScg/
 q2h48yuGO/OEesMeqFUtY3MNWzcEh8=; b=Bh0jimy7vnixVQ9Pz6DTiLhm4hMbL
 Nv217Da+jFskg8R/MzfyHAwR6ayNqHg8GAAxTtGf1R3vHSbZGih8Mk5nfD1tgOqZ
 tOhNSP0KHnsKS4mr760/S0U9wswkfQmfdNNOnQNVlm1UlJ+ixa1YlpySmkO8/a1c
 Kv7+OscX/PvpA48keBYcR3/b9D+az2jjm/Ro1b6EPX5vnZv8p0Ye1Pfqbtp3voAB
 eSLCKXAmTHa7c/pz9nFyZGfzpN/trG+iozNL82I8hhb+9yxyhcwsMHGcI/KkXSdf
 XwUwncGoyWfBzC4bOhH/YHKHLiDZddXZxpeUSrNUSAzFmfGtLX/fWXUEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=RYLufI04OScg/q2h48yuGO/OEesMeqFUtY3MNWzcEh8=; b=Q4keBwCN
 DOO9qrl6LmJzOSng1QfewFI/bOuoXqV73JZYN0ScltsTZDKzXZkovNAS8RU1nxuu
 Kv/JMeSV605RzyXAXh2yKocA34XOoQ6l2hUafnZspJFtYj0Hohd3FmvtbAwExNPD
 XcSLn+RaxWtzsL2nTj1tx/VTvVb+/VjEmjJGEUwGcZZ8ixpVQMqWtL/hvoiv2awb
 z3mG8rFLBeGbFYaxJqoEnU4Gnrco0CwO1G/yPsy/4DiY7rkZ6TY89Meo1M6q8Inx
 hVg1Gjb3Ae6HanK/Ggy69Xs0yFPbVEfVCtgapSBprgeNeIWkbhwPhgbSkt58JJ7I
 X0qx17K//107ww==
X-ME-Sender: <xms:ELI2YOPVaq3hgc4MZ_sJWIucvHxalxPs2wHvzcGMTWsVWlaT0SvnNg>
 <xme:ELI2YM8f4SHBNVyVRv8m9OnqDpkluLmGkT9Dt3qKzolNS5t-XQXyd7VNZtumoHv1n
 0yXUZr4dxHdcQhS9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeejgddufeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ELI2YFTdonvRuaTLbAdch4L0PYZcqZ-9oEtKJVrL86ySYkeZMrfSRQ>
 <xmx:ELI2YOsghR0pqGq7yVp-6obCXNZLWlPPCC3TeeUlRjdhE7QP5oQKeA>
 <xmx:ELI2YGfqKYwfIN2_Q_5n7GIZXowlfuHKTUTs8F4ps6FW8yay8Hh9Eg>
 <xmx:ELI2YOnQ5miqUY7Aq6qmWywnW4NW0nz7IzBfTO7-2pL0yKBfg5jI0Q>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id E570E1080054;
 Wed, 24 Feb 2021 15:07:43 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 01/13] staging: rtl8192e: remove blank line in bss_ht struct
Date: Sat, 20 Feb 2021 17:28:57 +0000
Message-Id: <20210220172909.15812-2-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210220172909.15812-1-will+git@drnd.me>
References: <20210220172909.15812-1-will+git@drnd.me>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a checkpatch warning about a blank line after an open curly brace.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_HT.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 11269fe6b395..1bbb9ed18e6d 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -179,7 +179,6 @@ struct rt_hi_throughput {
 } __packed;

 struct bss_ht {
-
 	u8				bdSupportHT;

 	u8					bdHTCapBuf[32];
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
