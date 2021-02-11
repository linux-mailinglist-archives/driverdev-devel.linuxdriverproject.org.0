Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F91319479
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:29:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FD9C86E9F;
	Thu, 11 Feb 2021 20:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQBHj6QO7hWi; Thu, 11 Feb 2021 20:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A68F86DF8;
	Thu, 11 Feb 2021 20:29:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F23C1BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C58886E44
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 20:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HiQL35n3bh0I for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:29:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3B69286DDA
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 20:29:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1613075385; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Nl8lnYSomWul+PxseJtO1bAT0ivdAV7voSyTGNfk4k74tRBkqWvP02f/gokxPw/CnzU7HoHWvZm3INaELhqtn/2LvPCq/CN9T3+3le0C06WwG7++Kuypql0vGQeUequzZPjr+eUwnGIWWI24yZxubIkaGMDorLiRTz0IHyOzH3s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1613075385;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=QL6scrjpr0rKzcnmUg99LHglhMJLPiiSDVWbEgsLSHw=; 
 b=mT+K789bY4NH9lDG/CBs5cEc4BHCUmvuK4KIoooS+yU4VYnMvKL0JT4qHBls5+iMg71UP2cL/dliK51FUu96hRbEfXTEsFCyUK2duL0xUF/GRep7CJLyTcaW+j4wQ+C35IxLyFtLaNkObDnYmj1ZscaAavAlGBTkZQLj/dPakTQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1613075385; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=QL6scrjpr0rKzcnmUg99LHglhMJLPiiSDVWbEgsLSHw=;
 b=jRqGwqZMKscaJSxiYPXObkqOLwiDzRDidfJOxPjslUAqgMVwVVxbsqjO1P5ogWRV
 bR4I5+KDD4rZJNzxqApoY2vwwlh5XoKssKGLHQsVBvVT7Mi1l3TKOBHjEctRRZNmEJ5
 Md8u5R6d2IMTiDcEdF5wYwf3SOTrQgQh/j59nQpk=
Received: from localhost.localdomain (49.207.58.1 [49.207.58.1]) by
 mx.zohomail.com with SMTPS id 1613075380231560.0918248835499;
 Thu, 11 Feb 2021 12:29:40 -0800 (PST)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: lee.jones@linaro.org, kuba@kernel.org, johannes@sipsolutions.net,
 colin.king@canonical.com, arnd@arndb.de, gregkh@linuxfoundation.org
Message-ID: <20210211202908.4604-1-mail@anirudhrb.com>
Subject: [PATCH] staging: wimax/i2400m: fix some byte order issues found by
 sparse
Date: Fri, 12 Feb 2021 01:59:08 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Anirudh Rayabharam <mail@anirudhrb.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix sparse byte-order warnings in the i2400m_bm_cmd_prepare()
function:

wimax/i2400m/fw.c:194:36: warning: restricted __le32 degrades to integer
wimax/i2400m/fw.c:195:34: warning: invalid assignment: +=
wimax/i2400m/fw.c:195:34:    left side has type unsigned int
wimax/i2400m/fw.c:195:34:    right side has type restricted __le32
wimax/i2400m/fw.c:196:32: warning: restricted __le32 degrades to integer
wimax/i2400m/fw.c:196:47: warning: restricted __le32 degrades to integer
wimax/i2400m/fw.c:196:66: warning: restricted __le32 degrades to integer

Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
---
 drivers/staging/wimax/i2400m/fw.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index b2fd4bd2c5f9..bce651a6b543 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -189,12 +189,16 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
 {
 	if (i2400m_brh_get_use_checksum(cmd)) {
 		int i;
-		u32 checksum = 0;
+		__le32 checksum = 0;
 		const u32 *checksum_ptr = (void *) cmd->payload;
-		for (i = 0; i < cmd->data_size / 4; i++)
-			checksum += cpu_to_le32(*checksum_ptr++);
-		checksum += cmd->command + cmd->target_addr + cmd->data_size;
-		cmd->block_checksum = cpu_to_le32(checksum);
+		for (i = 0; i < le32_to_cpu(cmd->data_size) / 4; i++)
+			le32_add_cpu(&checksum, *checksum_ptr++);
+
+		le32_add_cpu(&checksum, le32_to_cpu(cmd->command));
+		le32_add_cpu(&checksum, le32_to_cpu(cmd->target_addr));
+		le32_add_cpu(&checksum, le32_to_cpu(cmd->data_size));
+
+		cmd->block_checksum = checksum;
 	}
 }
 EXPORT_SYMBOL_GPL(i2400m_bm_cmd_prepare);
-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
