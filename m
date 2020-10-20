Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FB5293F3F
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:07:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5B6E2E1BE;
	Tue, 20 Oct 2020 15:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZRjuyBv1hYd; Tue, 20 Oct 2020 15:07:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4493E2E1C3;
	Tue, 20 Oct 2020 15:07:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8CA71BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BFB886D63
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W+clCcSTw6QF for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C611886D60
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:07:38 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id a4so2367714lji.12
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hWp6NSMp247SAdz6iVX4ALjI7Mu9VJRlD2AaL4lhjdo=;
 b=sUJHXhzYv7FKEm9Swp03YHH1Y56chpz28irJ2Ntim+erm++ovTgoI4fSi4wu3Mha/B
 tzBoZ8snhrC0lWfdXft7Swo6qY4VFsZ/+HOqaOWjdLHDz3TKWzjKQLwUKpBFndJzyHN/
 ot4eQBoa69PXIwttJVviR446hZXsNNLHvk+GGYx/ASj9E+T4Zutw33qHgPswj2dCdwDh
 ZbJUuwYulteT/HfvMss//Q3aUb5vTlxIIwTzcjj8XB3IEKOUa23cp124mogyAQObzp7O
 ITXQogIF3emboJAKBMi3TLQ3HrrApHhPSIgEpELjsU8lup1QXAZhluc4KEFaQl3AVTxI
 rHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hWp6NSMp247SAdz6iVX4ALjI7Mu9VJRlD2AaL4lhjdo=;
 b=RIGmZo64l3Q0q/E+SJtPZm0hZKOrDXNq0Ta+Q3nGebGBkMTZc3fw5wMnrCjmSL3+sA
 s1RbmstQ0YgPb+TM2wx414Up1kocWoRsXoENXsQL7s6pTRaeSHNrxvDOOik2ebUVkHA8
 PCdvIQgRQvmhugLfJEDbvZ5X5GLhIOfiHlzpNbg1nBE3HVsdhPAOO2Y48XZQycoQ4MTL
 WDVTDtszPPreUpBhQJS7hNmprxgd7x8HPbTnxn6U9rZM02MT4IVSb9FVIj6PwzZnzifT
 eXO5fLsfWA7AjnNfxzAG2UXVaKiZrFNYYW8V8bnUTYQsjA1tG62GDc6MEaG7hbSuO2Se
 FEOQ==
X-Gm-Message-State: AOAM5304OwX57JrCEdsWLd9o6OKacd/Lwz4uOyHgJNzTChhdBlGmhC8L
 fqTG1SgpGgqnz+q4onRBUqE=
X-Google-Smtp-Source: ABdhPJwkfbq9ymiCvcRpldnvv2LJOVrjFjMYCiKnU0bpPtgr0mfghH4DFtQzZsZp6RRTyyJXosJT+g==
X-Received: by 2002:a05:651c:11d2:: with SMTP id
 z18mr1323023ljo.423.1603206456842; 
 Tue, 20 Oct 2020 08:07:36 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id z21sm359399lfb.20.2020.10.20.08.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 08:07:36 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/qlge: fix typo
Date: Tue, 20 Oct 2020 08:05:59 -0700
Message-Id: <20201020150559.35667-1-eafanasova@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 143a886080c5..2ff3db2661a9 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -91,7 +91,7 @@ int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
 	return ql_write_mpi_reg(qdev, 0x00001010, 1);
 }
 
-/* Determine if we are in charge of the firwmare. If
+/* Determine if we are in charge of the firmware. If
  * we are the lower of the 2 NIC pcie functions, or if
  * we are the higher function and the lower function
  * is not enabled.
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
