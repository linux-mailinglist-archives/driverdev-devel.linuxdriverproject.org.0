Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA6E31FD2F
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 17:36:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8676460701
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 16:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zOzG3LMcy4bQ for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 16:36:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 01EDF60708; Fri, 19 Feb 2021 16:36:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C220F605F9;
	Fri, 19 Feb 2021 16:36:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F40311BF287
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 16:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EEF0986949
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 16:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HdtAzHPLEJLP for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 16:36:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4697A8650A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 16:36:21 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id g1so17228211ljj.13
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V8gjkSXbyN+GwM8OVf0FOHVFNyFJ51dH9JSVHbOdelQ=;
 b=XJ1BlLOnpjEK9L1nPSVKong5qJF/14qvE7jBAD/vtPPETVCDCzjupANifjpL1Lhtqi
 LQJ3NcwUOXjPHWyHlvAuOpie4bueXx/Bl1lz4WhqfypwlcDTEYEdm9e3ebWcIpXBv9wY
 YgaDyyY3R8TrDcCeoYKQqpign40NoavYvkYltE0LHIq+pKJiZnJWhoaAWLeBJGlhJCnf
 KaESBoT0fBY3SZhmP3/pmubGj5zkKu/DtPzqjYqsgGToWgNVY/gTMczeMrKtyljSrvS1
 JI54qkXr6+KiXPG59lVdLE7RNo09/GOhmA3qiXrXzCZ+leElylz479FsKDHtAvYz8iJU
 CSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V8gjkSXbyN+GwM8OVf0FOHVFNyFJ51dH9JSVHbOdelQ=;
 b=rzf3QNsudfRpgqxIqGmfnfUMkxiByeoSthX+cgGPob7a4lgOnVp8Zlux/aXmhBAIKK
 ZHZvRaI1oeFQ5TNBiQ63tiUFxLWv2JreyRtThfPPCY82su6p0cP5e6c40yjv90yBQ+pY
 0lMjUBNgoM3YwBoqoQ3d74ErU1SMnJasWpXWSz2XCo+HrwEaYJJbNJPwwCf0ZURpfq1/
 9BqX1HamJZ5Yz7hy66UKzfZZxZOQP0AzSY0smKXFLXoHBPRrfDt+OWkXvjX5LVQUPmD9
 JI4NCfNT5aviv4sseWhVg+31BtVuaFJJ8ebrjIkh0nJC+4zP7L3V5Eth6x4ikSFf2Zl8
 YyuA==
X-Gm-Message-State: AOAM53337OlpQwPa8OpnLTUHYrntZjz+VBnI1/SmLF4RUV5hLsrDT2sR
 gbDtdwkP8av2XvEDN2YJ99o=
X-Google-Smtp-Source: ABdhPJxzK9YLgeZDUqoYrZKiABKGnpRnbNOzSr4yR06BgBUXtxzRU94rnc0LPmnK9w/QMoyO7+qWrQ==
X-Received: by 2002:a19:7d7:: with SMTP id 206mr5904459lfh.135.1613752579546; 
 Fri, 19 Feb 2021 08:36:19 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id n14sm970877lfi.219.2021.02.19.08.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 08:36:19 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org,
	sergiu.cuciurean@analog.com
Subject: [PATCH v3 02/02] staging: kpc2000: code style: fix alignment issues
Date: Fri, 19 Feb 2021 19:34:20 +0300
Message-Id: <20210219163420.24930-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YC92OIgh6HTEexu4@kroah.com>
References: <YC92OIgh6HTEexu4@kroah.com>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl warning:

WARNING: line length of 124 exceeds 100 columns

in file kpc2000_i2c.c

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

Additionally some style warnings remain valid here and could be fixed by
another patch.

v2: Edited changelog, as suggested by Greg KH <gregkh@linuxfoundation.org>
v3: Splitted patch in two parts, as suggested by Greg KH <gregkh@linuxfoundation.org>

 drivers/staging/kpc2000/kpc2000_i2c.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 25bb5c97dd21..68f5ec000365 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -200,7 +200,9 @@ static int i801_check_post(struct kpc_i2c *priv, int status, int timeout)
 		outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status)
-			dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
+			dev_warn(&priv->adapter.dev,
+				 "Failed clearing status flags at end of transaction (%02x)\n",
+				 status);
 	}
 
 	return result;
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
