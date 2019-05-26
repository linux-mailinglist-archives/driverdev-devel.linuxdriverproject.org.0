Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7712A783
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4D0A882F8;
	Sun, 26 May 2019 01:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xiqx8hG1mp3y; Sun, 26 May 2019 01:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8152E880C3;
	Sun, 26 May 2019 01:19:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B26E71BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF40B86133
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WIYIRY8s+kyn for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3FB3886100
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id n7so5141769uap.12
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Thiz24oLUJjnwJssddGA50jJAZJH3Ux+9Q55q5uwhW0=;
 b=VGZVE/0Wr+aN2rA6mptgptwPqtXIBa2qt+WBvdGKoU9zYEmd17iXQy7+0jqHBhWxDg
 VOmbIRwtQXYy43JFpQC9wbxTQiXUL1lZ2z0J+RGkfx7Bi571I3RmAtkhO1TMeVVfeZus
 iJAcBITC17AJQ0F4HL7igiOZKRB/TtbLLy0pYjHYXGq8Sa2tTpH1Ssi0UxJqNysz1t7L
 9SwG40bwcxmyR9zfcxqeR5C665gWM4twXJsOHRMFcmR4SiwCIvM1LOgawav0bsNLSzX5
 oUp0U3nfK3y4GeKvT/cXz0PGhiBAP1liSzUwBmzNE7+NnS74NFe3xqzIcHtmHn/UiG/h
 Nl3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Thiz24oLUJjnwJssddGA50jJAZJH3Ux+9Q55q5uwhW0=;
 b=Y+7/eGlV5dGmL0OzFdlGikPXwDCKLFRKW4AqZdtrJ+iNeQ/bQN95DNvQGvex+veeGq
 XnZCikWcfG4pQCTH29fAoHKuu+frqi8S71jgFGSdlv7djjytfyNN+zO3a+em/YofieFN
 J+U8fUJvQJB7KkYEXTmSUEXG6hUbmK0Tu42qNvUM50EGvDj6tVl5ctt/SynvoqiZPGIC
 Ugi3lR6CaSedTVdj3i80MuS0bGr2gn7/0ICneodigKPFokHrtR2ccg0XsiHXmpbL7LyY
 x/k4Mxu+2LIkc2TmTU6AfswhzGNjmLLjWMkBaHzNk3nkdFPKgS7n7Zov/FWu2S4LvLDe
 e60g==
X-Gm-Message-State: APjAAAWy2jfbDLypcDi1UBLhebAoU6oDCNx6ogWAg9jh70GcZkh6sOHb
 YRPVDzLgfcSVdI3x7J/LRbo=
X-Google-Smtp-Source: APXvYqwnwrXkH7CwOPUNJhDtaRdQB/OmkfvVyI/UJZRIHTsjN3llyG2PvL3Ed12nNTelUeW6mkN8Sw==
X-Received: by 2002:ab0:53cd:: with SMTP id l13mr29517179uaa.101.1558833577432; 
 Sat, 25 May 2019 18:19:37 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:36 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 7/8] staging: kpc2000: kpc_i2c: fail probe if unable to map
 I/O space
Date: Sun, 26 May 2019 01:18:33 +0000
Message-Id: <313d7ff86c2bdc4ef42629baa26a8eef893c89c8.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558832514.git.gneukum1@gmail.com>
References: <cover.1558832514.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc2000 driver does not verify whether or not mapping the I/O
space succeeded during probe time. Make the driver verify that the
mapping operation was successful before potentially using that area
in the future.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 452052bf9476..51e91653e183 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -591,6 +591,8 @@ static int pi2c_probe(struct platform_device *pldev)
 		return -ENXIO;
 
 	priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
+	if (!priv->smba)
+		return -ENOMEM;
 
 	platform_set_drvdata(pldev, priv);
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
