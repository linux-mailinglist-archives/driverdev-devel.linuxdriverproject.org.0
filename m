Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4AB320926
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 09:15:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E56A85DB1;
	Sun, 21 Feb 2021 08:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x7WyUHGgTVE3; Sun, 21 Feb 2021 08:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1430585EB4;
	Sun, 21 Feb 2021 08:15:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 945271BF2BA
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 08:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 912DF85DB1
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 08:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwMCeZYsPu7x for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 08:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB76A85D92
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 08:14:50 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id e8so7104460ljj.5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 00:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OWTmBsyijCf6vI3V7ZFWo67ukVjrYzDX36ElWJjaiaI=;
 b=Tq2pQYj9G1iG5HHb0g4Dn0JNWPCwjD9dmE4Gf0AxREu5mttEfh+GWQlHL6VKHJaHh0
 oQ4RmyIxPhXpb3L76w0KRNOx5k0oswEJdHsH+3wR3fffcK7Ns9R3Ct1vyX9Q3NwL2V2a
 R9uvwQH+vMS9Aq9ylKJAGn4yWYlvJntKBtJICn5oUg93OMjiDRIttJX8Aeh1Shoto7Ud
 N0JdHUAENIqDiRTQZfnnqg2MO/h6Fnd45riHAC/NmUsqTiiZTiqldtbB3SCy/bwmazcO
 xh+THxNyahXAoBZFw09FaEms9tPIhaMKFXNEjEg4Ied7Nye1Jm3z0MdU7Y2ijsvSuxz1
 QaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OWTmBsyijCf6vI3V7ZFWo67ukVjrYzDX36ElWJjaiaI=;
 b=byzJEqxrEazNOnmUkcYNPNPCJ88nUd0vUDccPNeDdF9TO7HZQlOfjRIqbytvfmLNH3
 SO8blX4RG6PPHObeICQ2+CgrSvQWXNmBAGzLbAOAvFAnIkwDa8WfYPZ6lAcshnAOHhL2
 Og67H6+fQgQDr4X4ycRO9gN1CnrHBW3SQvAoPCfkzmNh6Y0JQozGdvTVoT+zEJCB2Sal
 gDHyx1szLraHwLhUXc+hYO4nfRF7bukJej2tHkYOYpodC8aK3Hi3zoX57P36PeA3zHzS
 8L7ZSVr5QKTKSKp0uL4gDNYZ6KL7s03Cw6D4nvxdKX73NiUGCC31vxLL3T9JlyWSrHFT
 q2PA==
X-Gm-Message-State: AOAM530kX7NVnH1tSNRDYusTGKC8W57v+kczk/3skae9ROw8e9JxhXoO
 gqPcKmM/jVXK7VTzMigG84Q=
X-Google-Smtp-Source: ABdhPJyJK/W3P7+mczkvsPG//AhzzG0g4u/Xof8QNc+iGNQoTj/av+TVhRjyHQfxhXv7q2bTl7hDyw==
X-Received: by 2002:a2e:7611:: with SMTP id r17mr10520015ljc.163.1613895288805; 
 Sun, 21 Feb 2021 00:14:48 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id x75sm1479093lff.91.2021.02.21.00.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 00:14:48 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: media: ipu3: code style fix - missing a blank
 line after declarations
Date: Sun, 21 Feb 2021 11:12:36 +0300
Message-Id: <20210221081236.9758-2-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210221081236.9758-1-knv418@gmail.com>
References: <20210221081236.9758-1-knv418@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl warning:

WARNING: Missing a blank line after declarations

in file ipu3-css-fw.h

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

Additionally some style warnings remain valid here and could be fixed by
another patch.

 drivers/staging/media/ipu3/ipu3-css-fw.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/ipu3/ipu3-css-fw.h b/drivers/staging/media/ipu3/ipu3-css-fw.h
index 79ffa7045139..3c078f15a295 100644
--- a/drivers/staging/media/ipu3/ipu3-css-fw.h
+++ b/drivers/staging/media/ipu3/ipu3-css-fw.h
@@ -148,6 +148,7 @@ union imgu_fw_union {
 struct imgu_fw_info {
 	size_t header_size;	/* size of fw header */
 	u32 type __aligned(8);	/* enum imgu_fw_type */
+
 	union imgu_fw_union info;	/* Binary info */
 	struct imgu_abi_blob_info blob;	/* Blob info */
 	/* Dynamic part */
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
