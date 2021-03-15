Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F29533A921
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 01:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 631576F548;
	Mon, 15 Mar 2021 00:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RFHzmHu-n3Ev; Mon, 15 Mar 2021 00:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5AFD6F515;
	Mon, 15 Mar 2021 00:47:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D78D91BF95F
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 00:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0F954A332
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 00:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G04DR2CXLzOo for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 00:46:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E5F5D475AA
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 00:46:58 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id l11so3226982otq.7
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 17:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vyZ6O3YiaYxzFmZQxJKT3OMafYwYaK1e74woeq3EBtc=;
 b=nMXk4Ve5Bz8QwKAwVDxcLjrze0dXxceif1jDO2cmG8P/Y6Z9rqoh5mNhyGr1iuX/9K
 MLoy9uOC73DMMUFqdz+0PqIAO7vHAGTxfANAJyToGA0pED72knryJ6meypJit1Yv+1Os
 QHo3FVJvRcufiWu7b8dsfo8L3MlZEOz0d98/Hb4kxqvmHMvP5JGfu1TpNVUIYaTDWpl+
 RoRRo+fUmkInjOTgo9BMdePSM5B0On4YaN0Q97TVEaqVUwjqPMXWUsfkMA27ObxfBj6Q
 7ru63BVVXaQ2NTbaG56zQouIg1a2fXsCp3lLSe0xc3M708C5Xn6qQDURU/ANAfgAqlot
 qQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vyZ6O3YiaYxzFmZQxJKT3OMafYwYaK1e74woeq3EBtc=;
 b=lVtpAdy7TR7g7dUcJMjufzjQFfDoNlxlgWZilLXJZ5WzHIJVtGfm5tpfwvvyxXBLVh
 0kg0jue3SjjegUh4R5CqdjaC+Gr3L5g6S8BSkhxde+KItLA3bO04e8tZJVmHK69HZ61Z
 CUAOIFAhrnjn87/JqzqAblMDyQVFI3F1Ub1Sk2wVqF1PrjZ/nODWh3MdYaKv/22nxPw1
 mzkViG85TvBkNS5SVPXX6TPEqkQFzNEiO0B9lxqAMolVkx7/L+9r1I5+T3BbXXbdvY5V
 LwwmWxbsXkBDpXM311eLhQ1F8uV9ZVn3DgMt3sxBAYtdM8O1fllYdsMbeaANzguyVDC4
 d1Eg==
X-Gm-Message-State: AOAM531ahHGmPvy36jIkbnAUVYOn3MMhQwMqkpZlP8mei2tDYupV5yA+
 X65bhYdIgk43xdGukCkgqYY=
X-Google-Smtp-Source: ABdhPJw0TxDavpLAYcvq4zJCbpxjxmJNmx0hCxtyvdbtZwA6xrGQxUYOqM0vrbzHRjgUqRxhJyS1ow==
X-Received: by 2002:a9d:760a:: with SMTP id k10mr12205341otl.23.1615769217941; 
 Sun, 14 Mar 2021 17:46:57 -0700 (PDT)
Received: from madhuleo.lan (cpe-24-27-52-237.austin.res.rr.com.
 [24.27.52.237])
 by smtp.googlemail.com with ESMTPSA id p67sm5955294oih.21.2021.03.14.17.46.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 17:46:57 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org, sbrivio@redhat.com,
 briana.oursler@gmail.com, rapiz@foxmail.com
Subject: [PATCH v2] staging: vt6655: Rename two dimensional array declaration
Date: Sun, 14 Mar 2021 19:46:41 -0500
Message-Id: <20210315004641.378933-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename two dimensional array declaration to fix checkpatch warning: Avoid
Camelcase and make the declaration more readable and understandable

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v2: Improve commit message
---
 drivers/staging/vt6655/baseband.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 1aa675241599..d89163299172 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -52,7 +52,7 @@
 /*---------------------  Static Variables  --------------------------*/
 
 #define CB_VT3253_INIT_FOR_RFMD 446
-static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
+static const unsigned char by_vt3253_init_tab_rfmd[CB_VT3253_INIT_FOR_RFMD][2] = {
 	{0x00, 0x30},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -2002,8 +2002,8 @@ bool bb_vt3253_init(struct vnt_private *priv)
 		if (by_local_id <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
 				result &= bb_write_embedded(priv,
-					byVT3253InitTab_RFMD[ii][0],
-					byVT3253InitTab_RFMD[ii][1]);
+					by_vt3253_init_tab_rfmd[ii][0],
+					by_vt3253_init_tab_rfmd[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
