Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0592226EC5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 04:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CD808775F;
	Fri, 18 Sep 2020 02:14:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmcFpeABfShx; Fri, 18 Sep 2020 02:14:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65B858772D;
	Fri, 18 Sep 2020 02:14:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD3BD1BF30B
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 02:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA07287404
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 02:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKO4+jfV48aD for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 02:14:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24701873D7
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 02:14:08 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 408B323787;
 Fri, 18 Sep 2020 02:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600395247;
 bh=/bcd0jQMlT29A2Sh5lZOPbG+3Nq5bj6MKELIeujLM9E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lRv7s5EgAoptQtTcB6JDSTMpU+MYBfI5XgwyzJLUtieWqWx7NcEvSKnuPuPgwRLPp
 FogaqRxMv61pPsbeXkqaSELT61DmXQzaFKqgYPkNKZVBpeVm1NEAfVR04RJ9FmLm4l
 LAayilYviK8S6s21FjLULHfrM/K55dsGISVGHtxg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 090/127] staging:r8188eu: avoid skb_clone for
 amsdu to msdu conversion
Date: Thu, 17 Sep 2020 22:11:43 -0400
Message-Id: <20200918021220.2066485-90-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918021220.2066485-1-sashal@kernel.org>
References: <20200918021220.2066485-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Ivan Safonov <insafonov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ivan Safonov <insafonov@gmail.com>

[ Upstream commit 628cbd971a927abe6388d44320e351c337b331e4 ]

skb clones use same data buffer,
so tail of one skb is corrupted by beginning of next skb.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
Link: https://lore.kernel.org/r/20200423191404.12028-1-insafonov@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index afb9dadc1cfe9..77685bae21eda 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1541,21 +1541,14 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 
 		/* Allocate new skb for releasing to upper layer */
 		sub_skb = dev_alloc_skb(nSubframe_Length + 12);
-		if (sub_skb) {
-			skb_reserve(sub_skb, 12);
-			skb_put_data(sub_skb, pdata, nSubframe_Length);
-		} else {
-			sub_skb = skb_clone(prframe->pkt, GFP_ATOMIC);
-			if (sub_skb) {
-				sub_skb->data = pdata;
-				sub_skb->len = nSubframe_Length;
-				skb_set_tail_pointer(sub_skb, nSubframe_Length);
-			} else {
-				DBG_88E("skb_clone() Fail!!! , nr_subframes=%d\n", nr_subframes);
-				break;
-			}
+		if (!sub_skb) {
+			DBG_88E("dev_alloc_skb() Fail!!! , nr_subframes=%d\n", nr_subframes);
+			break;
 		}
 
+		skb_reserve(sub_skb, 12);
+		skb_put_data(sub_skb, pdata, nSubframe_Length);
+
 		subframes[nr_subframes++] = sub_skb;
 
 		if (nr_subframes >= MAX_SUBFRAME_COUNT) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
