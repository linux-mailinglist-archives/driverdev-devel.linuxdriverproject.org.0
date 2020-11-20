Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE15C2BB299
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Nov 2020 19:27:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86AA98706F;
	Fri, 20 Nov 2020 18:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-Nama4QvMUe; Fri, 20 Nov 2020 18:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73AD88702D;
	Fri, 20 Nov 2020 18:27:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85A9B1BF327
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 18:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7FD962E11B
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 18:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BI1ROViDZvfZ for <devel@linuxdriverproject.org>;
 Fri, 20 Nov 2020 18:27:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7BAEF2E117
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 18:27:39 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7589024137;
 Fri, 20 Nov 2020 18:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605896859;
 bh=fmjm1AiZxkRaF0b1/Nesig0WMravFjRhy2EbeFt3hTo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IrVkdKVgpgaoVGWxLIUc9x/BKLIikfPolq7fpmPdtW3t+I7hXd0ci+0nOm8BGFl3r
 0G0zgkyYRfzDwY3OcBDDWJqHN+Z2eIbB24707ZN5gtbMGbZz3AtlLd02OakvzrSU+z
 a5tbL4fJzLP+jOE9BSGXtYk1xvRR869/rdUOckgo=
Date: Fri, 20 Nov 2020 12:27:44 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 024/141] staging: vt6655: Fix fall-through warnings for Clang
Message-ID: <863fda60074850bc976974af48fa769c64725e64.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In preparation to enable -Wimplicit-fallthrough for Clang, fix multiple
warnings by explicitly adding multiple break statements instead of just
letting the code fall through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/vt6655/device_main.c | 1 +
 drivers/staging/vt6655/rxtx.c        | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 09ab6d6f2429..0adbd2b67df0 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1579,6 +1579,7 @@ static int vnt_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	case DISABLE_KEY:
 		if (test_bit(key->hw_key_idx, &priv->key_entry_inuse))
 			clear_bit(key->hw_key_idx, &priv->key_entry_inuse);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 477d19314634..1a64152de189 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1004,6 +1004,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 		switch (info->control.hw_key->cipher) {
 		case WLAN_CIPHER_SUITE_CCMP:
 			cbMICHDR = sizeof(struct vnt_mic_hdr);
+			break;
 		default:
 			break;
 		}
@@ -1318,6 +1319,7 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
 			break;
 		case WLAN_CIPHER_SUITE_CCMP:
 			tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_AES);
+			break;
 		default:
 			break;
 		}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
