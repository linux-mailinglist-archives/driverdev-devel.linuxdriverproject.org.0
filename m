Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C58CF32326C
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 21:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7292606A9;
	Tue, 23 Feb 2021 20:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MFF4mJN8grP; Tue, 23 Feb 2021 20:50:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1751F6066C;
	Tue, 23 Feb 2021 20:49:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 051B11BF25F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00D4643025
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 20:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XU7Dca8cj8Ow for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 20:47:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D8CC43024
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 20:47:38 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id AE81DAFC;
 Tue, 23 Feb 2021 15:47:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 23 Feb 2021 15:47:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=doruJhczG0yJ4
 EN8JQu3N66tK/shwjEF6ktp55ZkXOM=; b=LW7dQJvTCpEyDG1scV+oj2S07g0/9
 /0iXd4DwpKRewI8+DChUJzursfNOHANySUmHmHcvDk6/KvT6d2WrJAqTVX/UEbTO
 qVTctUyQIYSNUOA5y/fpQ2t9xIWX+bcSkCEJb1h7BINnDAY5KuwaarbKetjcZkWM
 Hqlf5mSP6zIV2A5/bc6dDdd3W2RrqRcpCcXBy6PM+wQMaWoDaH+XdHNQoTjJeVRq
 o27/Kg9zsFxDPcmw/ZrMtIl/GgJzxnGRBxStKN4cDMRqI+0f2zdLURwZWfc0gaXv
 2APRevw+Zgg646T/H3zApeGL/7XNP9x1x5Azz6rVT3EtFgqdzCuFHbuPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=doruJhczG0yJ4EN8JQu3N66tK/shwjEF6ktp55ZkXOM=; b=O7X2YT1U
 GcMNQBfJXxgkrl9vamyrvh7hoQlro7WgFCl9GYCP1PvsdvUePKUY7bhnH0jaReXL
 qiuhocp+yHPoyqHy7PFxQ8gabJjOdCfZzRjNUvzP4uKXHRjyo9PCZkD5QpDzAwt1
 iObbsmmYSWP4IXnl/Vgfl/d7d+astDqm/sj7vMGD2SkVggJdLWL1Ekq6x17HaKvd
 XuYzI5lfm7Ln2csUG1uA5XOWfNIYYnryMGIPuzVnXDnXlqwIKSlvdaYWNKUj0CmB
 g5M6++JLmqbl03C+H7cY7pb5KVLoI0ezhAb2NU32qjDkfupODa4GzT3tG0LHKtpO
 AMda+DlKHDERBQ==
X-ME-Sender: <xms:6Wk1YI4W4nYPxbwYWWtSeuWCr0rJBcNPv-vFQE775uNAO7MuN4dRRA>
 <xme:6Wk1YNI27eF2ReM0bez-TSlJT0-dBBT_lXWIKp2UVVFa5WNnvY-b4KJhXSScuCclD
 pKfEMPu9_Y5L6xV6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeehgddugedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhepjedvgeffieeivdefleekvddvudffvefhiefgueeujedvgfegfeelkeduffel
 ffefnecukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpe
 ehnecurfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:6Wk1YA6Ho9-_NG1wkf1C-lbC3h4edd_MNsNZrfY_H6xteG15XMhdJA>
 <xmx:6Wk1YIyQQDOkZNATG-_FtlCBQtuzgFYLWNCfou4aJwuvkulLvrzlgw>
 <xmx:6Wk1YMbU_If7O8Ggef1aJzl7isad5p9UWTOtA9waZ6KGIxDSBu-9Ew>
 <xmx:6Wk1YLCtNHT1jTpGKRpKul8WVWAs_-MruQCvtxEzLDMCKqlKGtPSkA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id D0AD7240062;
 Tue, 23 Feb 2021 15:47:36 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 13/13] staging: rtl8192e: reformat bss_ht struct
Date: Sat, 20 Feb 2021 15:54:17 +0000
Message-Id: <20210220155418.12282-14-will+git@drnd.me>
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

This change uses a space instead of tabs between the type and name of
each member of the struct.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_HT.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 33a58c87f4c1..ce13b41074a7 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -179,20 +179,20 @@ struct rt_hi_throughput {
 } __packed;

 struct bss_ht {
-	u8				bd_support_ht;
+	u8 bd_support_ht;

-	u8					bd_ht_cap_buf[32];
-	u16					bd_ht_cap_len;
-	u8					bd_ht_info_buf[32];
-	u16					bd_ht_info_len;
+	u8 bd_ht_cap_buf[32];
+	u16 bd_ht_cap_len;
+	u8 bd_ht_info_buf[32];
+	u16 bd_ht_info_len;

 	enum ht_spec_ver bd_ht_spec_ver;
 	enum ht_channel_width bd_bandwidth;

-	u8					bd_rt2rt_aggregation;
-	u8					bd_rt2rt_long_slot_time;
-	u8					rt2rt_ht_mode;
-	u8					bd_ht_1r;
+	u8 bd_rt2rt_aggregation;
+	u8 bd_rt2rt_long_slot_time;
+	u8 rt2rt_ht_mode;
+	u8 bd_ht_1r;
 };

 extern u8 MCS_FILTER_ALL[16];
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
