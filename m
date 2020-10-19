Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D416292C64
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 19:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11DB187617;
	Mon, 19 Oct 2020 17:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvbEr4any5R3; Mon, 19 Oct 2020 17:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11D4087552;
	Mon, 19 Oct 2020 17:14:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38A311BF3C5
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 17:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3500B87550
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 17:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUmJrXt+8wfs for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 17:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A818E87544
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 17:14:31 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id gm14so121766pjb.2
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 10:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=bkANpEs/C8LOFqToZsES5TWve3UPNPt07x+5xHrgifg=;
 b=iuZJmL8f12rTpKYisLUo36CQVPiHEJaw+af0yaGzAspSM1llm15Jc4h1mTRIU0wT4e
 TlyaXIGFshqnvqpL+9I2D/Tef/SKzCs9gcoSouq5oiNiX303KxczfThIFdK7gAgv7+YE
 J/P1jFcxVluz0ikW/b/WFbH/uaOcZ02uiCuMuOiYq+SfXC/XF6YJKQ6NDwR5jvTAU73S
 Mk6R/dgLC1+NbNMJKUs86jRbDzdeTGAz32pT7eSUuiHhBYI5uOyq1qQWKIGK2Apx/eTN
 upDG9wq0YLndnw52jGqsFW5cEGNxT9FR4ZLSwl4DwYhm19dCWVG0l24WfMtD3T9LOTkk
 6ouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=bkANpEs/C8LOFqToZsES5TWve3UPNPt07x+5xHrgifg=;
 b=fKkoC/OzbTiJd+xUguez8j0kBFLZN2TwIU2LAKjC4mtMtO9iQegK2G78piyX5ZAfsA
 th+2re+AKZbu4y1wh4uI0chmvrgSKHo/BayHgFfhnCxU7K5GufaK+avykcn1OqMtxpMm
 f69yACfERerpV9R6UG0sKDDx4dmCNNNrJnrtlnDHNr3VpLT65+JP94KSfoUJfBkcUClG
 w1/k33a1MchnoRf3Vvb1SXO/B3QIUEWuS4YkAchOssC5FnhUpArwzseBtxQPPOw+tilr
 EbljO74oIx3ozz2rkmS2vj+hyrs0hA6xuzs0Vs2GyCgR9cYTD9kptvOQuLJqai2dyYxs
 uW6w==
X-Gm-Message-State: AOAM531+NZ3RH648vUBvL9rmA/8BMRaepvwx0mjaiMo4/vH0l3VgX7JK
 vSJrUDGoRX0UzFAOJoeEaY4=
X-Google-Smtp-Source: ABdhPJxjhtMoFcrFbEZW+JdOYGL3SqfCKpnOsMOsdmpLLGGhHyIHnFb9/8Ae1fsszFqXdFNOjbK5BQ==
X-Received: by 2002:a17:90a:1704:: with SMTP id z4mr378252pjd.7.1603127671346; 
 Mon, 19 Oct 2020 10:14:31 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id j37sm226990pgi.20.2020.10.19.10.14.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 10:14:30 -0700 (PDT)
Date: Mon, 19 Oct 2020 22:44:26 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 devel@driverdev.osuosl.org
Subject: [PATCH v3] staging: comedi: tests: Simplify conditional evaluation
Message-ID: <20201019171426.GA72818@ubuntu204>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Boolean comparison of the condition inside unittest function is
unnecessary and can be simplified by directly using the condition
outcome for evaluation. Issue reported by :
scripts/coccinelle/misc/boolinit.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - Update patch subject to include tests tag as well to be more
     informative of the scope of change. Suggested by Ian Abbott.
Changes since v1:
   - Corrected wrongly inverted tests. Feedback from Ian Abbott.
   - Note:
       This patch was sent earlier as part of a patch set containing 2
       patches. The second patch of the patch set is dropped. Hence
       sending this standalone patch as v2 version. This is based on the
       feedback from Ian Abbott and Julia L.

 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index eaefaf596a37..4061b3b5f8e9 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(route_register_is_valid(4, O(4), T) == false,
+	unittest(!route_register_is_valid(4, O(4), T),
 		 "check for bad source 4-->4\n");
-	unittest(route_register_is_valid(0, O(1), T) == true,
+	unittest(route_register_is_valid(0, O(1), T),
 		 "find first source\n");
-	unittest(route_register_is_valid(4, O(6), T) == true,
+	unittest(route_register_is_valid(4, O(6), T),
 		 "find middle source\n");
-	unittest(route_register_is_valid(9, O(8), T) == true,
+	unittest(route_register_is_valid(9, O(8), T),
 		 "find last source");
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
