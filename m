Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D85A9C551
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 19:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 10741220C2;
	Sun, 25 Aug 2019 17:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUiSdXIlWbAU; Sun, 25 Aug 2019 17:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 869B221549;
	Sun, 25 Aug 2019 17:58:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C124A1BF589
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 17:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B931B86D91
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 17:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYts+4697GRO for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 17:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7EDB686BC9
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 17:58:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i30so10071591pfk.9
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 10:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=AUReMEj+OWI7uTCmSw4KZpSaGrKQiydQlLo7sRyzOyI=;
 b=rKB8xGjqgcOq1wbh46xt0gd91xRKZAJQmmV26JCj+kJPySYK7hQkJqg99P2MNtKFnV
 vYwDo53vblu5MJHouWyTa0CmT9MmXwswtyQhrqbai1AgAYCOyyIduNA4SUrxrLERUKcO
 IPcTMdgoiQnfgbJLD1uFU+8FO2SA/XIGT3hHlN+pCf4Ylc1hLsaRtldZG4Qt9VMR6F5q
 VOa9IpZS3aINxBLupLqqNE64APc+CMF3n2NU06iqzUqPS1IJjy+i/uXzh+Mn8eo8rEk5
 fXb3pA2Kj9j0GxSKw0oeDx+5w7THwrJIG6emSNw3+zdo6SMvInxXcCCsaZnUbfaD+F4u
 oTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=AUReMEj+OWI7uTCmSw4KZpSaGrKQiydQlLo7sRyzOyI=;
 b=TP4bZ/ZObS3POjrfZshT5sGG1aPrEANlbMh65gLTWE93zChq9jHFBSO6SvFY3Z0yui
 NQmoPumF3UzNBy6yNke3UGNuq7gj/LAfmU3vE4pB11bNYFQvIypUIQAhsq424OpUSPgO
 2Qaoi/g6e9uwoEuimipgFyOPW+DQumMMTdQdrLbYNcJK4TIr6uR0gCD6rCBzAaSqMdvT
 7bxmPu+sQ7DIXzoxq8ZTnK9l1aWawQiSs8lb95oTW43mjBclo13ZeEGIkSk5YyAp/f8s
 6UKK1AZaSa76x5OBE///dK5Xulg9AgqUQcsyx7hdvVq+aCDM5ZAdRC2gSsXMh4f6Rxt0
 zhTw==
X-Gm-Message-State: APjAAAXdHE8HylxjpSJ0T/GbzSU/8zAxkpHSyrv8b37UKMQ+oKQMr610
 GQNFtVKbNlXBS3wjFWROWw==
X-Google-Smtp-Source: APXvYqzZjtpwNGnlCP86552/rOEvaIwNoEyT9S8H3LCLyJ8Mck9/aaViEjR7fPNiAIsnev7/SAXdhw==
X-Received: by 2002:a63:4404:: with SMTP id r4mr12728454pga.245.1566755933156; 
 Sun, 25 Aug 2019 10:58:53 -0700 (PDT)
Received: from MarkdeMacBook-Pro.local (114-32-231-59.HINET-IP.hinet.net.
 [114.32.231.59])
 by smtp.gmail.com with ESMTPSA id 4sm8881965pfn.118.2019.08.25.10.58.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 10:58:52 -0700 (PDT)
Date: Mon, 26 Aug 2019 01:58:49 +0800
From: Peikan Tsai <peikantsai@gmail.com>
To: gregkh@linuxfoundation.org, christian.gromm@microchip.com,
 gustavo@embeddedor.com, suzuki.poulose@arm.com, colin.king@canonical.com
Subject: [PATCH] staging: most-core: Fix checkpatch warnings
Message-ID: <20190825175849.GA74586@MarkdeMacBook-Pro.local>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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

Hi,

This patch solves the following checkpatch.pl's messages in drivers/staging/most/core.c.

WARNING: line over 80 characters
+			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);

CHECK: Please use a blank line after function/struct/union/enum declarations
+}
+/**

Signed-off-by: Peikan Tsai <peikantsai@gmail.com>
---
 drivers/staging/most/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index b9841adb7181..8e9a0b67c6ed 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -303,7 +303,8 @@ static ssize_t set_datatype_show(struct device *dev,
 
 	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
 		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
-			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);
+			return snprintf(buf, PAGE_SIZE, "%s",
+					ch_data_type[i].name);
 	}
 	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
 }
@@ -721,6 +722,7 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 
 	return link_channel_to_component(c, comp, link_name, comp_param);
 }
+
 /**
  * remove_link_store - store function for remove_link attribute
  * @drv: device driver
-- 
2.13.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
