Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA67A2267A
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 11:34:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EA5252305A;
	Sun, 19 May 2019 09:34:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKns3xCGeAzw; Sun, 19 May 2019 09:34:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 399FB21FF8;
	Sun, 19 May 2019 09:34:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9621BF238
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 09:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F14D86230
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 09:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VFuRMM7LaDvw for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 09:34:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA87786180
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 09:34:46 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id n19so5785333pfa.1
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 02:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=11epPDMxJKikdDuH5v438Dqzhu+8xiuwN8/dlEEPf7w=;
 b=IrPi4dzjuT6IuaUnXQW4C/RlKY8SAQGAI5efWh0a40wMRM8t2LHgHcz1avoKtU3abK
 bFUrCDyneTCImqczkLbYkM6PeugMcl6RjCaBzPHsUMb2p2Qfu+d2cdlSbWEhnOqUdzd4
 2H6Hc9rb8zKSVSzvYcSMEXscOSsySGNNd1unU/69ZUdiwH8CToKoW11BzMulBk5jOYJa
 +H0GbeS85k3CzVc3RfSojyBPlo6/khO7Y7mF0IU6XLofQ4eJlBUFLEtkP0hBnuCAZJyx
 VZwLlivrukrcR2MuFInFQFIZ+SZZZvgRjujyAsXkfkLjoB7fGeVs54Ztp/RiBvut1iUN
 UlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=11epPDMxJKikdDuH5v438Dqzhu+8xiuwN8/dlEEPf7w=;
 b=Jwv6y/QOj+BusOs9duq8m+hWNNM4ny1svSopcj4rS2pAn7DkQB8lUCafrQIAyD5ZQL
 JihYSEEF7wpNQTug+dYRKp6kcba2K9t0hkV8DL52D5KBj/FfHmBO5UuZwkmj3hijsvHl
 vcHgVnsyh2hjpmhoOaS9aglAlHpz+4ZCla1SLFwoKeEL4Qmtjaw3d8Uhsm0WW+cMlW9N
 2qOTGG9E4u3xpMj+aAi9FbS//l+R3IUoahyCuXf1aXfv61LIf5gKrvAlRzxECkr5w3ZJ
 gteLnz9tvMudU1HHO/zv3w/Y8EfpVShaNrIlVwJ2RGVkukDDYZwYTerRYMEXC4K5Tlm9
 rNQw==
X-Gm-Message-State: APjAAAUsvMjZRMXpWZccP4lAiLVdJ8eN4jnpn7Wlwb3RDgXp1ZrLPV6g
 uIxVydyTI5CVTadyRfFzFHo=
X-Google-Smtp-Source: APXvYqxvavbTr5Llg15jkn4mHoaZyPh1phIxnZxhyXOoqbUxbMz6gbjUaChu1TIA3y6jx3n1pcJ2/A==
X-Received: by 2002:a63:7141:: with SMTP id b1mr68253806pgn.331.1558258486280; 
 Sun, 19 May 2019 02:34:46 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id w189sm16622660pfw.147.2019.05.19.02.34.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 02:34:45 -0700 (PDT)
Date: Sun, 19 May 2019 15:04:40 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: erofs: fix Warning Use BUG_ON instead of if
 condition followed by BUG
Message-ID: <20190519093440.GA16838@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below warning reported by  coccicheck

drivers/staging/erofs/unzip_pagevec.h:74:2-5: WARNING: Use BUG_ON
instead of if condition followed by BUG.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
-----
Changes in v2:
  - replace BUG_ON with  DBG_BUGON
-----
---
 drivers/staging/erofs/unzip_pagevec.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
index f37d8fd..7938ee3 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/unzip_pagevec.h
@@ -70,8 +70,7 @@ z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
 			return tagptr_unfold_ptr(t);
 	}
 
-	if (unlikely(nr >= ctor->nr))
-		BUG();
+	DBG_BUGON(nr >= ctor->nr);
 
 	return NULL;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
