Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AD96F94D
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 08:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 573B38560E;
	Mon, 22 Jul 2019 06:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxnsc8KhCgp6; Mon, 22 Jul 2019 06:07:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C307685604;
	Mon, 22 Jul 2019 06:07:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E38931BF3FD
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 06:07:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA28285BB0
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 06:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G51OVxPRUzGg for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 06:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4863D85B71
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 06:07:06 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id c14so18636081plo.0
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 23:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nJXrgrSN2Tlu02tkqLNuQE/VhMtIboN1RIqkDuAB2P8=;
 b=rv3mTh5ZiJppYaMjbz2Kd983X1vNPC07xgeWpCrm3uLSWI4w43fHI9rEHIx+fXNnhh
 Gp6FUgfPY1t+co4YQPixNOVgTgjUZ2QbthzWmGRYjMKcKysQioE0LCZ1eQWfMbgzekdr
 wwGHWIMgB/uDgHVNZy4dteV/sM26uIAS2iZqjd7+tTeENLooPnhaPtv8UE/1AMajbI9B
 9Lh+Epd7kxdEC0bwJhS9dv4D37wL2A4hVz4rbW/EBHIpHErrpl4cBVfTbEHu8R2HSQxl
 ElKqY7z12d/6qnk6eG9M6e/p9NQqBQ9ZclUDjZ3DmcfFT0C2SM9vgED271a8UmS7VY/M
 7jPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nJXrgrSN2Tlu02tkqLNuQE/VhMtIboN1RIqkDuAB2P8=;
 b=e+24EbYPxyyvEd30pJc5RHClYJ9HASVu2W3kfI+hLZXQwL8fpRPyfBA0Xcp3HNmwHQ
 K+uPyljLptgK7BlkFC/1RDRe+FPgfxHCvfv2p/8bzw9jxVty8OJ/ZtqQfIAv7BdWQJLl
 gvTo5FZWcofUeR7QgVb18JPGzdk9d73n/51dvxRygA5K/4dayqrcULPAbEXVBJNsSvxF
 Fz1oCojKeOmqSIFYD8/lw3cMe+rdzXTN85jglK2MFu5phC/u/SK/HY2vvxK7QHe/7ccB
 lbEh/qL3yRuPF4N+veIfxeLBGh3w3dIp8Y5YdZgPLpJ5JT9b2LxDprXitgKVVwna+qq8
 T+5A==
X-Gm-Message-State: APjAAAVPm//kDB6SP9VN/qwmDCs8etM+o1KpjEjaXY4x13YF89HtUf2u
 MzcWAHt+9DEK8cER9H+vX6g=
X-Google-Smtp-Source: APXvYqzk6v7tQvu2fTaY2Q2UszOnOuD4ns4eYEIDZ0p4SxWS/dsaD+LXL1DVIAQFRdWnk9tAHO6JCg==
X-Received: by 2002:a17:902:2f84:: with SMTP id
 t4mr68932398plb.57.1563775625815; 
 Sun, 21 Jul 2019 23:07:05 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id j13sm35935646pfh.13.2019.07.21.23.07.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 23:07:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: maxime.ripard@bootlin.com, paul.kocialkowski@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] staging: media: sunxi: Add bool cast to value
Date: Mon, 22 Jul 2019 11:36:51 +0530
Message-Id: <20190722060651.6538-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Typecast as bool the return value of cedrus_find_format in
cedrus_check_format as the return value of cedrus_check_format is always
treated like a boolean value.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Add !! to the returned pointer to ensure that the return value is
  always either true or false, and never a non-zero value other than
  true.

 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..b731745f21f8 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
 static bool cedrus_check_format(u32 pixelformat, u32 directions,
 				unsigned int capabilities)
 {
-	return cedrus_find_format(pixelformat, directions, capabilities);
+	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
 }
 
 static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
