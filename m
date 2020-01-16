Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD5F13E758
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 18:25:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE9E386BAD;
	Thu, 16 Jan 2020 17:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IwRajsqADnlF; Thu, 16 Jan 2020 17:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B18A86B19;
	Thu, 16 Jan 2020 17:25:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C79D51BF2B0
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C4D06842A8
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7rUAvhDc8FrH for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 17:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3FD848651D
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 17:25:04 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D7CB246CA;
 Thu, 16 Jan 2020 17:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195504;
 bh=QWQJxnLDkNt1oRoE6sADWy1w2Gz/H+uoEqJBl4/Yang=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hcKoPn013Gw9RDQr0H//zSXHOOVShK9gBsshpMPBMubyxoACCI7bLg81wMDQNFW5K
 0AVDGeavDBpsheu+hyEwQCCeht9tRH/HEiz/FmhXVpNXNgM+YyNHJgKrcOivETpob5
 3OU3ap6wJTE0/Ceyh7vxtsa6MwY5jUTe750k/X2s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 104/371] staging: r8822be: check kzalloc return
 or bail
Date: Thu, 16 Jan 2020 12:19:36 -0500
Message-Id: <20200116172403.18149-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
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
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Nicholas Mc Guire <hofrat@osadl.org>

[ Upstream commit e4b08e16b7d9d030b6475ef48f94d734a39f3c81 ]

The kzalloc() in halmac_parse_psd_data_88xx() can fail and return NULL
so check the psd_set->data after allocation and if allocation failed
return HALMAC_CMD_PROCESS_ERROR.

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
Fixes: 938a0447f094 ("staging: r8822be: Add code for halmac sub-drive")
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c    | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
index 544f638ed3ef..15091ee587db 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -2492,8 +2492,11 @@ halmac_parse_psd_data_88xx(struct halmac_adapter *halmac_adapter, u8 *c2h_buf,
 	segment_size = (u8)PSD_DATA_GET_SEGMENT_SIZE(c2h_buf);
 	psd_set->data_size = total_size;
 
-	if (!psd_set->data)
+	if (!psd_set->data) {
 		psd_set->data = kzalloc(psd_set->data_size, GFP_KERNEL);
+		if (!psd_set->data)
+			return HALMAC_CMD_PROCESS_ERROR;
+	}
 
 	if (segment_id == 0)
 		psd_set->segment_size = segment_size;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
