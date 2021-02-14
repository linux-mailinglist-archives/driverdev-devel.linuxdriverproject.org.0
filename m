Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EB731E16C
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 22:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23EFF85FFC;
	Wed, 17 Feb 2021 21:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wPCsrlX-xxnO; Wed, 17 Feb 2021 21:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5772585F91;
	Wed, 17 Feb 2021 21:34:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF18B1BF869
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C91778660A
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRz2HLLoi43G for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 21:33:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73E2087230
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 21:33:55 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id C971F5C00E8;
 Wed, 17 Feb 2021 16:33:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 17 Feb 2021 16:33:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references; s=fm2;
 bh=D7bpP2gYtN8wyNdN6IquuCbwgH9A4L1H/A5WFmvvdW4=; b=uYV9HKWr+mID
 8MYucH0LsGw6Cfdy/IhE0QBXzW2KN2yah3YlG5FNkLOZwR7NV9c6Bzs6s/QsAjLi
 cSQi0j1613QDm7i7wMuLNv4HJBIMu4MrIz1n3krsIRbbUcFmFGWPEkBIPAEn+Paw
 Tj91Wjuk/keVsBx+sbiQ9c5NEh+Z1YLcx2mR+QiOLQiyWY2xXFbc/EtYGW23w7mT
 Lq/uy3tFxWDqWkP5snS2q2oisp9OD5SXs3jnw3B2hXs534XuAtMoo0u0eCAUYPcO
 +KoxBxmV9zDtuj5slyZNcM4tPU0y8lAxPOXpENc/AwohS7qFlPdCTbzkrF7QLY9i
 R+Qo1NXQng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:in-reply-to:message-id
 :references:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=D7bpP2gYtN8wyNdN6IquuCbwgH9A4
 L1H/A5WFmvvdW4=; b=Y91v5Z/yRQ5xZ06ET4kkfuESNaNzbCyLnvB0zm5haYC+1
 ezbXM5TwBXBd4ABdJhzrqjfo71WdCF2pjFKnBmgL7GQpIJ+/+svvEQ8Nub88nX7U
 ljmHRN9VKAc1WPoCQmXoA0ArVywyL4b79HRG/t5t4m83IbHBXEpnObDFZPXceO7t
 LDvFkGHX1mBzazALd8ZvImTvoVK8Hxbpmy6cILFJ78QyHdsGm5iCGeA7Tba95Od2
 QvKXv+93jZjjiMkstQ5snBpmo7ssD4O0DA+F86ojyfD0bh3icgQV3hQOKBXC0z0a
 OLxnDcT8Y3ysESCHKkO8RHCj1MrMhb/aF2AqShe2g==
X-ME-Sender: <xms:wostYEJ0Wxt9V-iup356j987kTbxvfiSIuxbkryLuUhP9e_x8pDEYw>
 <xme:wostYEFNsaEAPzp6Ve6z1wc8zfhGmiwagHKso13Mv-OVevkD9tj8hL_QDhYkicZBz
 kuSfBo0HC-VZMIaGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedvgdduvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfsedttdertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepfffgkeduffdtieeltddtgeetgfdujeekhfegfeegudduffffgedtvddufeelveev
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:wostYBlA91qOG0oe5LzVgY1hjQFzlmJephNa4pWbCG2b_Pk-1AG5jA>
 <xmx:wostYJKtk2VIytQ431vuC7OQXRyibMj4iARaivFZXOM5_6J45vEm3Q>
 <xmx:wostYKYcaZsfvlEmiALDYbhP1dYEG2RmQm-02Af1U3YZBtODCc3RAQ>
 <xmx:wostYOYKsI5rpfyoe9s6ojGZ0iGzJ9_YR1Nk4qQfHXrGbyIAQzg5fQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id BA849240062;
 Wed, 17 Feb 2021 16:33:53 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging: rtl8192e: rename ShortData to short_data in
 sequence_control union
Date: Sun, 14 Feb 2021 14:03:30 +0000
Message-Id: <20210214140332.16175-2-will+git@drnd.me>
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
 drivers/staging/rtl8192e/rtl819x_BA.h     | 2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 8b6e4c26f0fb..34d66b8f5155 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -20,7 +20,7 @@
 #define	DELBA_REASON_UNKNOWN_BA	38
 #define	DELBA_REASON_TIMEOUT			39
 union sequence_control {
-	u16 ShortData;
+	u16 short_data;
 	struct {
 		u16	FragNum:4;
 		u16	SeqNum:12;
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 2d5e4a0330c6..b3f0f64c7711 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -61,7 +61,7 @@ void ResetBaEntry(struct ba_record *pBA)
 	pBA->BaParamSet.shortData	= 0;
 	pBA->BaTimeoutValue		= 0;
 	pBA->DialogToken		= 0;
-	pBA->BaStartSeqCtrl.ShortData	= 0;
+	pBA->BaStartSeqCtrl.short_data	= 0;
 }
 static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 				    struct ba_record *pBA,
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
