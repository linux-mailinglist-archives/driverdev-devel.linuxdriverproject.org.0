Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D06A320D73
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:11:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BFB18701B;
	Sun, 21 Feb 2021 20:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4n5KdqR0VMW; Sun, 21 Feb 2021 20:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88C0086F75;
	Sun, 21 Feb 2021 20:11:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E93131BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5426847AC
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mncHtJh03BEO for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7FDCB84693
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:23 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id F21865C0095;
 Sun, 21 Feb 2021 15:11:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=jXsBUoybpr+xf
 LrjVnZr3WgkC4A+z3u0ih0b+m+ZW0g=; b=io98orW687hZGjSBQIW8X1jhz3T+j
 ZFS/aGs0RdqkTSZWVMlJIsDvsJ7l8C4MoGkaaXpfWWQJGPNoxXmMVyWBG5I6WGLn
 mf009tD5hJf2zDbDWtmxhZqZc6NocFOn+HAwbAEqhQPbDgvCqcQk8lm/s2sOJSeG
 fiO5X4GYGMsh53DED6iIXVsmC7e1Ix/lj/lT3NfOyHveJohVu05m4dIQ4wfwfKDW
 YKNrvd4NWrmv0fXIvjX97/KPDUoigk3xBeQ8aYkXXkFmXVcaSnqIFy7ooc7576Zd
 g7S6TwInP1y5XmQM9QtGttlb72tsHXi/GXzks3A/jbRGikt31w/DwdB2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=jXsBUoybpr+xfLrjVnZr3WgkC4A+z3u0ih0b+m+ZW0g=; b=c6Gvpho4
 bfCac2FE/WJSoZpzlTHD3GUkBGScgpfb8MESYMDBv9jFj9b2NvlvUu4YX/qxSkGk
 kFc9hyeVE4waPI1DSWkkh1tqixwA3phAc4PoJRw/tdmruzN2JCpDaps7kQk4Ztqb
 GMDsevnKwLR1pc3GKhzWT4D34GsyH/i15A0BYpuYv1Mh2hGkDuIDr8tfHdAaEvCx
 uhSi2I9YDd38AsSxX/zjISVm4FFA9Y5TiPY2EHCPYNUL5ZsrPgpLRbIV3n/hIRFe
 UA3W2HqIvLlDB6jDVa5tgBXNgYu7QVmSORfMCmBWq7Dsj16L3MDMFnneDbE7bhUF
 EEM95ErpVP5RIQ==
X-ME-Sender: <xms:ar4yYGpmi7oLPayX6d3qIVvAXTmvf59JdcwFzaEkua1X2IzBLxlTCQ>
 <xme:ar4yYErzC0nuHxyko0UifQ3zbfSZjlki45dF9WahLxX96ca95nEZBCZtLak8FHeJr
 s__w8RFQOguM9Qz8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:ar4yYLNqQ0KQYTHHTcEvR5KPsNWKt3MpOApy6tNG-78ZwovCmlh4_A>
 <xmx:ar4yYF6seKQcxZGTmm9UiAipklms4SELUWqSB4aM9D0fcnTxMETU9A>
 <xmx:ar4yYF6cKRl6jFhj9OA2HwUiyzw-Jpr0e9gcpGlahkGO9aP1dJuNnw>
 <xmx:ar4yYCgLIitUD9TozHZt2PgKyFvS7booqJ1rTdwP0QRruzz0qLx87Q>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6A1E31080057;
 Sun, 21 Feb 2021 15:11:22 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 7/7] staging: rtl8192e: reformat ba_record struct
Date: Fri, 19 Feb 2021 23:11:28 +0000
Message-Id: <20210219231128.27119-8-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219231128.27119-1-will+git@drnd.me>
References: <20210219231128.27119-1-will+git@drnd.me>
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

This change uses a space instead of tabs between the type and name of
each member of the struct.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 1d2a11b3ec67..8a35d7a3eee1 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -49,11 +49,11 @@ union delba_param_set {
 };

 struct ba_record {
-	struct timer_list		timer;
-	u8				b_valid;
-	u8				dialog_token;
+	struct timer_list timer;
+	u8 b_valid;
+	u8 dialog_token;
 	union ba_param_set ba_param_set;
-	u16				ba_timeout_value;
+	u16 ba_timeout_value;
 	union sequence_control ba_start_seq_ctrl;
 };

--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
