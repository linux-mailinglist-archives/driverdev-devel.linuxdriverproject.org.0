Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7252929AD
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 16:45:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63FF52DE22;
	Mon, 19 Oct 2020 14:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0+oI40POo5i; Mon, 19 Oct 2020 14:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF45E2D002;
	Mon, 19 Oct 2020 14:45:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 506E41BF335
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 14:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C90886E8A
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 14:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvSBFKAzUnvA for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 14:45:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C7EA68444F
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 14:45:16 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id ds1so5428897pjb.5
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 07:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=+38x8TDtAWjRMllwwY+FGBxUISgfVIF5BfqY05A7vYM=;
 b=nX3H+12uDtFlvGXTVgpeWDsY4D9bE3X8KJ0PeW2pPyBo1i8ehnI2LN9mKXk4XTikmm
 tayb2i8VqSvmntHOuZ1y3uTdo5/6EBXxkNlW1uGsn+uuF1zUKuBJkYQbRcRM/jWbUmPK
 W0ZOzNp+RlB7DGSHKpg48ce7Uox2lvT7+4CvN49naY38QGgiHTHNgK8QVkydnm3y+6Yo
 0WLTb4Uhkqdw4o/2W8Y23bs6pN0AfAJQv5c8UcFxamJH/cJeKscRnjt91Z9JLUDzJZTz
 nlBAcEA+M9Z/uvMNmxVWNIzZOVExUnCHgC9oXlHoBMdxr2Favh6eoBpuIR6HCQjThQq7
 BPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=+38x8TDtAWjRMllwwY+FGBxUISgfVIF5BfqY05A7vYM=;
 b=knsprzASh2qTSAJ+xsPukQ1QZ/xysUC/PVo6ecUTcKKeON0qkoh+ZhgjkT+1i7LBtC
 ssSBlQhGqteWPqoOTWzxJhHonJ0AUUWXaEhqmfMjo939P+fcQzyEiuxv53kxW4rzf6wh
 mxGL4FBvWQWXT6d9f5X/FEvKc9Ylz6VfkpZjwHZD7CcZX+dKhY+UK7euABXxvfj3uoRQ
 CVB4ghlmUwvIhYQwGUyjk1iYhlBP9I/YTLZ4t+iSaKy7hWt0RJsT3Diz67ctMzX+/oOz
 4j4qvRQy8ONz8VkCR6xnlrlI2IXK9m2VKiU673OTTlyc0faxn0HaJdHv1r56RCA7Xxzi
 oSTw==
X-Gm-Message-State: AOAM533aGQyb1DBELXVjHlJ4BI1zeVO8iqWWYQgXshHYU8IRn68mUtQr
 T4JgTKWM9tL562967Jf+1us=
X-Google-Smtp-Source: ABdhPJwl8MvefZqyiZsWEkF6cZN8QrQwxxO5JWo8kQ3QzRkdXFYecR0DmD54ejISy4e+7V4bLqh/DA==
X-Received: by 2002:a17:90a:ae12:: with SMTP id
 t18mr96964pjq.147.1603118716422; 
 Mon, 19 Oct 2020 07:45:16 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id mn11sm76946pjb.19.2020.10.19.07.45.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 07:45:15 -0700 (PDT)
Date: Mon, 19 Oct 2020 20:15:09 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: comedi: Simplify conditional evaluation
Message-ID: <20201019144509.GA23282@ubuntu204>
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
