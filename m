Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806ED20C28A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 16:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C1768881F;
	Sat, 27 Jun 2020 14:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xEIgsFwIwDZj; Sat, 27 Jun 2020 14:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC229886EF;
	Sat, 27 Jun 2020 14:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F5611BF20D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C1008770A
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-2t+1T6QxFj for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 14:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2AB1875B1
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 14:59:07 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id b92so6154736pjc.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OXCWS5l1hNTKEHeq2P6oXDr1lUXw6ML7qH8FWGclkjQ=;
 b=T+jFxcbZP2wA6XgvOm93rWiikTj/eUGBXz4ZkETXxQ6oGgl7Uj5438LzCZw+fTgxum
 NCTtGnnHS8nQR4jMr0RWEtCNl2kwBDobdQ40QiixUhkglkKxdMNdfDQCEbYYNSrgzPTK
 aZHl+pUwK7j+6ageCy4NymepG3sLRktWjcxhMASpt2JEvIm1qWAAVaAnq9DVhzeU63kZ
 yGaYFGDep58t0QZOB8kOZlj0KjgiZEuqppOhzcZlVR1TK1BiMueghO+s3ecRpzK/zlBq
 Nvp5ZeGW+fsuJXcn+Mq401z+KjUsaLDmliSy6QA6Lme4fZ7AByOHxvlFZny3v70Il1rQ
 IXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OXCWS5l1hNTKEHeq2P6oXDr1lUXw6ML7qH8FWGclkjQ=;
 b=D2F15uyP1Sa5oh1MMgXeKvAwwjKU9l8m4AWRm/QK8ZsQ9BikEs76feUN2tDtWhh3KJ
 +UBWmdY412rTFPqZJVUQMMzPHoLpLDB9bqmN5Omb9EUAFkkWAxAr/1FEDPfG4CCroLBm
 9niNDVdXZHjkVIzVu3VuCIDyedD2Rtf5BNgJVTMd9qnNNHnNiAJz+1kmTBY8GoXDmaS/
 g5hX0XRQrUnn2b8AwlYf9isJ5Bl7cDpromTs0KKUr+fRE6YUyswwrOD4cn4ZH9k+4j83
 6l36CUaNUs9w3ZhXzP07CxirhYWooAO0vYevCmGfrgCaEI/meTeyMYDd7c8lKN78HL2w
 VL4Q==
X-Gm-Message-State: AOAM5317jPzX8O50V/Txtdf84RBImSpfn2qT7sibNJvpwCo9cPaz1Esi
 O5xDE49rnk2tMTmpWDivlHaKa+QWXFM0YA==
X-Google-Smtp-Source: ABdhPJxBwsBIKeqKoWJH2ednu186dszsycHP6kHw1Up0wVXWKmXmq1ri6LbLCYUCEx81b8whm+AIvw==
X-Received: by 2002:a17:902:bc49:: with SMTP id
 t9mr6994421plz.17.1593269946099; 
 Sat, 27 Jun 2020 07:59:06 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id k92sm14313833pje.30.2020.06.27.07.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 07:59:05 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 0/4] staging: qlge: coding style fix for the qlge driver
Date: Sat, 27 Jun 2020 22:58:53 +0800
Message-Id: <20200627145857.15926-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: joe@perches.com, gregkh@linuxfoundation.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

v2
 - let all patches' subject lines match the pattern "staging: qlge: ..."

These patches fix three coding style problems for all files under
drivers/staging/qlge,
    - trailing */ in block comment
    - unnecessary else after return or break
    - pr_err preferred over netdev_err

and a bug about releasing lock.

Coiby Xu (4):
  fix trailing */ in block comment
  fix else after return or break
  fix ql_sem_unlock
  replace pr_err with netdev_err

 drivers/staging/qlge/qlge_dbg.c  | 583 ++++++++++++++++---------------
 drivers/staging/qlge/qlge_main.c |  11 +-
 drivers/staging/qlge/qlge_mpi.c  |  14 +-
 3 files changed, 309 insertions(+), 299 deletions(-)

--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
