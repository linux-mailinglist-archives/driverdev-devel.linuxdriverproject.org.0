Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4DF13E36C
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 18:02:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F4D487EBA;
	Thu, 16 Jan 2020 17:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ycv0cHhzkATr; Thu, 16 Jan 2020 17:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B961C87F34;
	Thu, 16 Jan 2020 17:02:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 575AC1BF3DB
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E94B87ED9
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hLEeIZxIHprf for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 17:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B066687EC4
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 17:01:53 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A736207FF;
 Thu, 16 Jan 2020 17:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194113;
 bh=mj3HslSb1a5eU9nWcmhRgwdvOAOv8VDJJFtg0QffIwc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fe7OK/c5wdkbYM1XiWYj2W+Plp7dIN660SmjMxlXLpvLhwXiJ+lvZBDjfFHUJbYz+
 uzNjIH5ih//4VFE5A2/2rlOqXTQStiMSW3lVJEt3tA26W6quvxTl7xPng2lcerWqnY
 pqH0UP2xWtYAd/pZ4njIX22p/FH/K4kVLOvrd06c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 209/671] staging: rtlwifi: Use proper enum for
 return in halmac_parse_psd_data_88xx
Date: Thu, 16 Jan 2020 11:51:58 -0500
Message-Id: <20200116165940.10720-92-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 clang-built-linux@googlegroups.com, Nicholas Mc Guire <hofrat@osadl.org>,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit e8edc32d70a4e09160835792eb5d1af71a0eec14 ]

Clang warns:

drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c:2472:11:
warning: implicit conversion from enumeration type 'enum
halmac_cmd_process_status' to different enumeration type 'enum
halmac_ret_status' [-Wenum-conversion]
                        return HALMAC_CMD_PROCESS_ERROR;
                        ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~
1 warning generated.

Fix this by using the proper enum for allocation failures,
HALMAC_RET_MALLOC_FAIL, which is used in the rest of this file.

Fixes: e4b08e16b7d9 ("staging: r8822be: check kzalloc return or bail")
Link: https://github.com/ClangBuiltLinux/linux/issues/375
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
index ec742da030db..ddbeff8224ab 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -2469,7 +2469,7 @@ halmac_parse_psd_data_88xx(struct halmac_adapter *halmac_adapter, u8 *c2h_buf,
 	if (!psd_set->data) {
 		psd_set->data = kzalloc(psd_set->data_size, GFP_KERNEL);
 		if (!psd_set->data)
-			return HALMAC_CMD_PROCESS_ERROR;
+			return HALMAC_RET_MALLOC_FAIL;
 	}
 
 	if (segment_id == 0)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
