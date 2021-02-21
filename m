Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFBF320A87
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:24:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66305870CE;
	Sun, 21 Feb 2021 13:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXsMMv4f-Uwv; Sun, 21 Feb 2021 13:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA5238705B;
	Sun, 21 Feb 2021 13:24:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4913F1BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 45AE785D37
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7_N2ZYwFeQ4r for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:24:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C39785D35
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:24:42 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id a17so48364655ljq.2
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 05:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Apv9vP6L2bjpyU9CPQaFB9hI3iy52QU4Q6xqwVOlSNA=;
 b=iGxewxx77SiEf7GCNwQHgbwgvBLk17qLwQFm5EhOV+1EWAH7UC6ZQ2RJm5m+mTt//k
 an7zAHScrCNRCBl2yfzg9DU6+0ih3o+tou+u6hZ7lNd2zOwyPehgpxxLRPHPl5g6IS1q
 BRg49+CtlkaL2zypgTfwIGjN6+pJtkmE6sOb2MB2g11EayrbHrobGkgFKGs+7Ywhqi8j
 YOVaJGnoWGyMLnj2wQZEpJA+eLEzaXG+HzNhzU3+6F3iTyZJjizzc/z2isfcONsHM56l
 pUjZ7mI6bpUI/WrizERu27irLLJVf0FyB6Tk6e3pslgF9HOn7QRSk7igXgclVXZSuC+E
 MdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Apv9vP6L2bjpyU9CPQaFB9hI3iy52QU4Q6xqwVOlSNA=;
 b=C4WYUy2bkhfbVhTG9kdIsSnQ4QqwvN2PXpRk45T4ixU3vHYnQd76sjgYSTZ4+RyHGs
 obOH+BzKGtXwUjlGZvzimPr4zMD6ZQ3LeNpVZgiH7Xpj5D6I58zIEO+qaJtrZ0/4rL7t
 aukXEFisHmskDFx3gJWgdnM5bgyLBDbQGRH8xNT4ksYGOROynD0YbNr3xRULq5oTTcOQ
 HHqMSSFXc0hSvF4sVBp6D81p1Eb6z63Y9RlgEcc0Qitzw8+ELfMkdRP9w+PgwbfPnRie
 1iEXSqTJg+2RUjUglE2sK2iAd9vAD5mENHQJgjkppcBilW3Tpt4b4idXP14v0KErY/tL
 Jb0g==
X-Gm-Message-State: AOAM531n4suIK6ec19SndqkCyf43wm2sYhQxhRMURJEIIpBhDvcuFRRc
 3iI8h8wyM2KM4PQnfFVXTVQ=
X-Google-Smtp-Source: ABdhPJxDh0/rAISuZnjVHOquntKXWyj9vpjzAACnhzAGquM0BPf+y+ajcyFALz6Rp4x66POW9JdYLw==
X-Received: by 2002:a2e:b702:: with SMTP id j2mr11174662ljo.300.1613913880503; 
 Sun, 21 Feb 2021 05:24:40 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id s10sm1684637ljo.115.2021.02.21.05.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 05:24:40 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org,
	sergiu.cuciurean@analog.com
Subject: [PATCH v4 02/02] staging: kpc2000: code style: fix line length issue
Date: Sun, 21 Feb 2021 16:22:46 +0300
Message-Id: <20210221132246.1154-2-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210221132246.1154-1-knv418@gmail.com>
References: <YDJaHNsT9zta2up2@kroah.com>
 <20210221132246.1154-1-knv418@gmail.com>
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
v4: Changed patch subject line, as suggested by Greg KH <gregkh@linuxfoundation.org>

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
