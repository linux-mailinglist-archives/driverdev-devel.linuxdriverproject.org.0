Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C71291DD4
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:49:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18B7A22E94;
	Sun, 18 Oct 2020 19:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1EvrFwqgZaVT; Sun, 18 Oct 2020 19:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D924E22D24;
	Sun, 18 Oct 2020 19:49:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42ABC1BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3547920399
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fwqxdBhw-1Os for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 19:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8171020367
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:49:39 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id r10so137084plx.3
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 12:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XBjCi9n5sRXOHmjCnHoQMv9TMlv0+e+xdsqW9A8AbOo=;
 b=g57EGboQB/k2Ynwid67H8sfmdLRbBRB1fqV8z0u/EMJLAwAmAeX4MPxlpDlpqsW6OC
 gPXWiGhx1rg/R+uXRd2ELMMkMs0/b61BnrTy8obPxXSD2zX7TJ2EOUMBHGqsqIAbhfBi
 3n/eO05OPG+gAsrPMv93UYznEZUwWpk3sKA01YUG1xKiUiZ2wq/GDbXBSUkXAlTZDqlU
 MLyfhc3CgyTVwK+4aSg3+FuzKijRI5PylIDu6vOCAfdIrjBcfwMFa8B6F72kzWKRB/5H
 4TLw8B2mGM7ZaT+BJjIMBvf2X2DjsnEkzGyMp/J7hmsu/IOurL1t9RF4UbwGPiA9kTGY
 zV/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XBjCi9n5sRXOHmjCnHoQMv9TMlv0+e+xdsqW9A8AbOo=;
 b=poAHRTeM8dK25IM11kanJcetNT+6x9RLmA7AIhdKQWNMFzJLA3trtLLG/qWDdEsdTw
 SCf97c89NGfnV9lcQYzSas8rAFBETn00Pt/Cg59FbqANLVltsvwgu9nLgI1pa0/egf7c
 dSzfTomJT8CnsSX9uecYIDBo+R91YmtWLvlsH5oHlc/fYiDIZXL1/MwyhE+l2qc+n7Ay
 sFXNo/cApo4qTUEIBwHVxUPkX0qtL6LIrcmNZsai/iUeyEqe0OXyZBGiftBzuoIqGaUT
 8TrdWDuMWWHsX6iW1YlrNSHFtnTyMO+1XF9lmYEjxI2JoeFm8dcr6zMVfPhyH7vC9lqw
 Ibsg==
X-Gm-Message-State: AOAM530IV1D9LYLGEbnctQRqkU7Ebk1lTHcHiUIAzUdXxAqRmTrKZOmC
 Kuvy6+vpGcjTj30S7nB6lM8=
X-Google-Smtp-Source: ABdhPJx+Wdr0JV+iMVpZNCpLySTTWd98vQlmjruOUSIX6CbKkGYxvMq23CrpeSMnz2QCLHscdW9Ybg==
X-Received: by 2002:a17:902:8ec7:b029:d2:42fe:37de with SMTP id
 x7-20020a1709028ec7b02900d242fe37demr13758283plo.23.1603050579080; 
 Sun, 18 Oct 2020 12:49:39 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id i25sm9351504pgi.9.2020.10.18.12.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Oct 2020 12:49:38 -0700 (PDT)
Date: Mon, 19 Oct 2020 01:19:34 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 devel@driverdev.osuosl.org
Subject: [PATCH 2/2] staging: comedi: combine split lines for improved
 readability
Message-ID: <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
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

Instructions split on multiple lines can be combined on a single line
for improved readability of the code.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index 7db83cf5e4aa..a3b1be623861 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(!route_register_is_valid(4, O(4), T),
-		 "check for bad source 4-->4\n");
-	unittest(!route_register_is_valid(0, O(1), T),
-		 "find first source\n");
-	unittest(!route_register_is_valid(4, O(6), T),
-		 "find middle source\n");
-	unittest(!route_register_is_valid(9, O(8), T),
-		 "find last source");
+	unittest(!route_register_is_valid(4, O(4), T), "check for bad source 4-->4\n");
+	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
+	unittest(!route_register_is_valid(4, O(6), T), "find middle source\n");
+	unittest(!route_register_is_valid(9, O(8), T), "find last source");
 }
 
 void test_ni_check_trigger_arg(void)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
