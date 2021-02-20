Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F3323255
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:47:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96BCC4302C;
	Tue, 23 Feb 2021 20:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9AG97j3gM4b7; Tue, 23 Feb 2021 20:47:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 318FF43024;
	Tue, 23 Feb 2021 20:47:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD1A1BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B12343023
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHYGiZstfnt1 for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5ED4342FFB
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:32 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7FB6B9F7;
 Tue, 23 Feb 2021 15:47:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 23 Feb 2021 15:47:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Q314xCs1BgmcW
 DvS+OYmVUP0zZBAD3sE20xlF8MXGd8=; b=H1mBThu5Bv8o3sLC+NioH9DptqouF
 A1xsqwDQGgY2E2BPsZ/XltbRcmDt6ZM9lYXGjHleMWP8zOVlFb8M6EVd9oMLe8qW
 ZYhzc3ZIbJ4WUzRe3lWCkbL5oZyosEyWXkHiAVzURwJhbktv9TaDOjE33uIlZGnR
 5Z5/hs5DKP5sXoQafBGLvl1OlkxOfbQabxe0L2ks8e/NZsm7zL/5PD1PzZk86Ijs
 b+ka1NOYfhjjw8d/SvFMcUO6tYxH+WHkrpyp+FG9tr2WqOg15y8fFPxJ1g3MUPeb
 TRyOid6btSVTgt9H5b+Kv1JB9H4aAD6+UNL0PXzpEboGT+E68KnIzx9qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Q314xCs1BgmcWDvS+OYmVUP0zZBAD3sE20xlF8MXGd8=; b=tjy/Cfz4
 fyL3axOo5niF/sVCWyKU/n91wl3PSIAJbDveYWVfaPhct8jSTALrK+HXitrMROGD
 1gx3bW7PV0o/ws7rH9kt3W+v0H5e7l2AW+mpMfRB1fsU+uStKM+voYW8aYuAebRM
 r3iBPRm9JMjOwR9MCvIqc45V5P73ZLbBnQjFJ4PMs7N/1EDAgzzTYshcY8I9cXM7
 N+1RaR7f85JmhSEdwl5jZLSLWEjoPtTiT3zb0UdG0nu0J/SESwwWodLqFX3oRU1m
 HrsVTc0rNxZ5uM7wIqRNR3QZdxmLrdlOPBIz3Z4GYiJBTDtPUf0jLx9OKWHzFl3O
 oQOPgrBPQ65oZw==
X-ME-Sender: <xms:4Wk1YKGVm_Fd8Mjnjet33lZuDFZlnG3cGbYafDwDzUBvvC9kfyl0iQ>
 <xme:4Wk1YLV3D34EHfrQO-aeNAes34sj_EgJFg4fg-gcIT5S9rJjltGEZM7WNPNb6RLB6
 a1FiT4Tk2ha7xgV6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:4Wk1YELuXto7lPxfqT_-CitCcXnfSzF64IN1njQhvEeNEX8jFQmuTw>
 <xmx:4Wk1YEEqNmrHNu7C-4V8MfjvoFOUCHAzIMtJ0I50dNCrb8LqDzHJXw>
 <xmx:4Wk1YAUoNnE07OohkUUawuAjq-aQjWkmZc3sYBojCoCpY4CXGtXSIQ>
 <xmx:4Wk1YJfRDrJYEWz4iqROGmm7ShX2lzAG05v5QbdF0KUZkRnGUWglDw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id E418424005A;
 Tue, 23 Feb 2021 15:47:28 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 01/13] staging: rtl8192e: remove blank line in bss_ht struct
Date: Sat, 20 Feb 2021 15:54:05 +0000
Message-Id: <20210220155418.12282-2-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210220155418.12282-1-will+git@drnd.me>
References: <20210220155418.12282-1-will+git@drnd.me>
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

Fixes a checkpatch CHECK issue.

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
