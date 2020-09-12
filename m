Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B49FC267B04
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 16:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E18E2042E;
	Sat, 12 Sep 2020 14:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFAzsE9Sx0DP; Sat, 12 Sep 2020 14:47:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 01500203C7;
	Sat, 12 Sep 2020 14:47:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD5CB1BF36E
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 14:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B73E9203A7
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 14:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mEv54tE0wIxy for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 14:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by silver.osuosl.org (Postfix) with ESMTPS id AF9F820360
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 14:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599922048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=vhedvMNzaUEDcUuhwo/iLfGVABBNwD7Ffu7xTey6+9c=;
 b=CcQLWQ4NB+iNNaAAZAO9VXyDnP17GcB4uHtJuPHnjcokV41AVw+mFDy/HcSWd0GowFHiZj
 LWkUbcFTpGkMY92CrR13ZNzo1gY1RxssIbZNPj5a0aM3MKYqCh6DSNfXHPOAyWX4PozgKq
 7Y1sMokoqaIODSF8ntAI8EjwZ974cog=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-or2Bj-LQPY-XZwLaK_JlvQ-1; Sat, 12 Sep 2020 10:47:26 -0400
X-MC-Unique: or2Bj-LQPY-XZwLaK_JlvQ-1
Received: by mail-qt1-f197.google.com with SMTP id f5so8714237qtk.11
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 07:47:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vhedvMNzaUEDcUuhwo/iLfGVABBNwD7Ffu7xTey6+9c=;
 b=pi9jjzM3eONEY3rCNUduBc7sUuvBokY94XjPHBTDippiT/S477jnwY6Cg5WkSL3WPk
 1X8FYr1WPI/BeEXJolm8BeYBsL8uiFNJycQh++/WUrfXQRMgj8puceITI0i8mi/0xGaB
 vyGK4JffPRj9+g8bErOJozS3FwLTP0BbhU8PSlfIlm9fgcSaOcGz1e9o6jYU1Fm4kKsS
 gOhsSsSHw20S4oEbdxA2oifGAareT/xDv+mL8CD4djFTfh+YfM/7YWqHY9vgxcGrl5rZ
 TspWt+VAAUEatrdIbNbuWWYFrIpfk0jnuRY5tiO0ZVjvjnJjJQGabgJ/tCypJNnpqFhb
 FpSg==
X-Gm-Message-State: AOAM531vR8dDU+7TzopsLMuCJ6Jp9refFIbEynLJckQkpTtWQFTgfeiY
 5vGkZGOCXUH8ym5qLsSsqShrolK0T1WLkzuINjJUpuj2vJg/JBprhldJUY6dgJFtHozrrZHSedq
 r8bVyHP8eY1iziNB9+U5CQg==
X-Received: by 2002:a0c:e989:: with SMTP id z9mr6441210qvn.81.1599922045828;
 Sat, 12 Sep 2020 07:47:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwly9+TI3qlwz43wKPoJau1E8RyrgfhK9Hk6G2EG0hVy9Xgse6md8eIDmPt0UBEDtJtU63ziQ==
X-Received: by 2002:a0c:e989:: with SMTP id z9mr6441201qvn.81.1599922045640;
 Sat, 12 Sep 2020 07:47:25 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id u2sm7425387qkf.61.2020.09.12.07.47.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Sep 2020 07:47:25 -0700 (PDT)
From: trix@redhat.com
To: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: simplify virt_addr_valid call
Date: Sat, 12 Sep 2020 07:47:19 -0700
Message-Id: <20200912144719.13929-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
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
Cc: devel@driverdev.osuosl.org, Tom Rix <trix@redhat.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Tom Rix <trix@redhat.com>

Reviewing sram_write_dma_safe(), there are two
identical calls to virt_addr_valid().  The second
call can be simplified by a comparison of variables
set from the first call.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/staging/wfx/fwio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
index 22d3b684f04f..c99adb0c99f1 100644
--- a/drivers/staging/wfx/fwio.c
+++ b/drivers/staging/wfx/fwio.c
@@ -94,7 +94,7 @@ static int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf,
 		tmp = buf;
 	}
 	ret = sram_buf_write(wdev, addr, tmp, len);
-	if (!virt_addr_valid(buf))
+	if (tmp != buf)
 		kfree(tmp);
 	return ret;
 }
-- 
2.18.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
