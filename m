Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963FAD1FB5
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 06:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94D5C884CD;
	Thu, 10 Oct 2019 04:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-y2RDGE5rq1; Thu, 10 Oct 2019 04:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA03488520;
	Thu, 10 Oct 2019 04:38:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAA131BF5A3
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 895C4884D0
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zB6hm-Sc62Mp for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 04:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6E05884CD
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 04:38:34 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id b128so3072706pfa.1
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 21:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l5uokupUiO2U2j99X5zPHcQ8eZZb9WokuIKIk7sOlFY=;
 b=AKUf19DkQPdw0kdHAAVDVBCfTDQY7NEaj4VomUaYZY2MA04uGr4YUiCrg9NPqKbkGq
 BjC+s85LwAKZrzkkyEg/vA7TL+mvERFXgVNeDqGcWzjBZJmzfysAilRVLg546r+lFALb
 MJFV9zbG0VGRktwQCMdq6Fswm26LvaoEIy6qQaT6ymwKgMq9Ig4wJWUJlHungqmW81J0
 BmNRSKp96SXKwHJRBjC9V8C9ETZwsNBSCg5QwST0kVBZHi/voZIS9bmv69xDPN0GF8qX
 oDEk2GOLuqx7G/fpcVdQjpWyFnVQbEZHfl/RNenN4m4cluNLTbjObB2PYhI1gNLnLc32
 KWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l5uokupUiO2U2j99X5zPHcQ8eZZb9WokuIKIk7sOlFY=;
 b=R5Onro3NmG1OUIiULXrNzS70l+4sA0c8S+KVn16YAXtZAQz4MR6BdRHLSVCV6ED77E
 yq6DcTf9KUHhPBGqS1EjnREaS9dAVsIH8PwCJJbccrMC3VP0ILcjbTNHXjvH50FXviZA
 0UV+aMHiqfy/FXKHQDBFJwLoAJ6u9Cp6rHifv8fyQ0eQEiVd3ny5Esm1m2Y/qPiZySlB
 zm5wJsllyR6L39IgF9rZsuL2ih2wD0jpu0BSkIrO5ZHJcaLxAR/TZvq4YUnIAYz1+4Pv
 Qw8IPbSEPAQtTCicS5nsSXBagn96zJYVMF8K/yHJ84E4dz+e5qu+e9rWaHNVuC5yikCT
 uAWg==
X-Gm-Message-State: APjAAAXZYmxVmOM7xppB6FoTU2Z1qlcggfSAalAZ+HGpEfHTUhaKn9Z9
 qONvwtuWtW/sdmmVSYq1n3Q=
X-Google-Smtp-Source: APXvYqwqAOIgfwe6DjQigpRhbLT1ifaj2H8W91DCzGL2sLJsiXL5q1Dh91K8D/dSGP/e96d4vUs9tA==
X-Received: by 2002:a63:ff46:: with SMTP id s6mr8656134pgk.337.1570682314092; 
 Wed, 09 Oct 2019 21:38:34 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 2sm3607480pfo.91.2019.10.09.21.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 21:38:33 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: Fix incorrect type in assignment
Date: Thu, 10 Oct 2019 07:38:15 +0300
Message-Id: <20191010043815.14027-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following warning generated by sparse in
drivers/staging/octeon/ethernet-tx.c:

drivers/staging/octeon/ethernet-tx.c:563:50: warning: incorrect type in assignment (different base types)
drivers/staging/octeon/ethernet-tx.c:563:50:    expected unsigned short [usertype] hw_chksum
drivers/staging/octeon/ethernet-tx.c:563:50:    got restricted __wsum [usertype] csum

Warning generated by running:
make C=2 CF="-D__CHECK_ENDIAN__" drivers/staging/octeon/

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 38954b6c89e1..b2e3c72205dd 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -123,7 +123,7 @@ union cvmx_pip_wqe_word0 {
 	struct {
 		uint64_t next_ptr:40;
 		uint8_t unused;
-		uint16_t hw_chksum;
+		__wsum hw_chksum;
 	} cn38xx;
 	struct {
 		uint64_t pknd:6;        /* 0..5 */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
