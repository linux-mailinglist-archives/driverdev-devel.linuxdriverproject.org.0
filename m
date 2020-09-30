Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFAE27DF12
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Sep 2020 05:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D8BB86103;
	Wed, 30 Sep 2020 03:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2NeRApuGyoD; Wed, 30 Sep 2020 03:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5660784528;
	Wed, 30 Sep 2020 03:41:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 508471BF3AB
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 03:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D10586078
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 03:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_ycLVufxIul for <devel@linuxdriverproject.org>;
 Wed, 30 Sep 2020 03:41:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8974B84528
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 03:41:53 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id o5so139887qke.12
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 20:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=904wo1HstmKPfAlqw09yQOCjg2/bb4jTacjAS/C5REA=;
 b=FxqvT8XjUW9EsnLWiMGev/S/pqV96UKY8Lln3yn7e0jP/0IFICsD+WyV1xSyK30+3W
 nYu6ZM2ciAeakWkSEr0S1VX6wK37oNkEIjQGQywTiBmcdrI8OHsCOXPkxjmG2IVFIK9s
 WBz9Xo+zUsYN0QPTFKKFRMLpDaSHl5kcDVmgzp7KywSRAcdCfV+publL4eMHs932s71B
 oA7mEvY2uelrMoAL4LLmbuk2GqFu/RKNP5J579TjOMxHzKe7VQUpsr9IysNQBESmpLGL
 OSAsRUk/sQdyYV4uHkVzy9ngzK86w9K1M9Rvs8MPJyKSQUS/2L/8dAhbdyzwAJoA+AA5
 2j9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=904wo1HstmKPfAlqw09yQOCjg2/bb4jTacjAS/C5REA=;
 b=QH9Ym38cRtsG+T9jQEw/gpG8+wnjzFGU2cu9+nrakaEcENjQowDfaJL9XAvHzBHm+U
 Kr4tUc5vuLVupCD2TdiafIn3qipRl7pFp3b88wV+Z89OGw9pIhTXWI0RfgysKxVhiBhY
 U3wSab0SPB7W6CR3qhilBFQehbR/RTZ20Kkac/6S/LF2oxwSXbkokE9gmCIz4CvesOlm
 yvPclt5G0mkFcFT6YRU8WBcO6ie+LxPyl+7yZd3Q2gGU422o++Wn7ADDTd+8T/5cUAYw
 WY+0jNbAgTFAhuNBKMpas8bFGDU1PXGvyxzW7f8b85IOVb4C/gB3jVW+M05094ehKSer
 10QA==
X-Gm-Message-State: AOAM531reY/RKj8dYtKO630oCD6R9mGi6CbzGJXpNQUxbog0qEQ562rp
 7mhI4/f8PajACzRm4/g1kWs92TFL6H/25A6iHIE=
X-Google-Smtp-Source: ABdhPJyBorD11hOERa2IM2DMaTmg2iWVV10SSsGQhH3lgvbKAy+MfEo0+NmxczMsYsKswQZuskKdzUOTY+UJ7wk74D0=
X-Received: by 2002:ae9:ed86:: with SMTP id c128mr708391qkg.277.1601437312482; 
 Tue, 29 Sep 2020 20:41:52 -0700 (PDT)
MIME-Version: 1.0
From: Matthew Hanzelik <mrhanzelik@gmail.com>
Date: Tue, 29 Sep 2020 23:39:53 -0400
Message-ID: <CAF4OWHKYrcZzZp_YVf+mnGgjHUi7AKPA22s5q7vVfu371_8HTg@mail.gmail.com>
Subject: [PATCH v2] Staging: nvec: Remove duplicate word in comment.
To: marvin24@gmx.de, Greg KH <gregkh@linuxfoundation.org>
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

Remove a duplicate word in a comment within nvec.c.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
Changes in v2:
 - Fix spelling mistake in commit.
---
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec0407740..a80996b2f5ce 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
  * interrupt handlers.
  *
  * Returns: 0 on success, a negative error code on failure.
- * The response message is returned in @msg. Shall be freed with
+ * The response message is returned in @msg. Shall be freed
  * with nvec_msg_free() once no longer used.
  *
  */
--
2.26.2
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
