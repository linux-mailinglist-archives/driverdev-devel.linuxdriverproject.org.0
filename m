Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4532C23BCC8
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 16:58:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D44CC87463;
	Tue,  4 Aug 2020 14:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J0bZzVc3ZxHy; Tue,  4 Aug 2020 14:58:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2B8487525;
	Tue,  4 Aug 2020 14:58:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 518A61BF34C
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 14:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 496D987463
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 14:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqkXKTFxSjNX for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 14:58:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D8E248744F
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 14:58:21 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id f193so10026704pfa.12
 for <devel@driverdev.osuosl.org>; Tue, 04 Aug 2020 07:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=CxN7Czk8Q/fjw3b2OK/Eu1Y95h805YTwH9VxKqGhCAo=;
 b=jru5qnT7fx9ST2x/KOLl/kvsCn/g45/ledxil45Vl4N+Ge/ny9q5E5mgRPmVmFLXxW
 fbngSWkODodtOID37BCP6yMPvZvPA9qsxnnlc/Xuc51KAIOAf7SgpmFgp+YjylD1c3Do
 zAYZhXAX0OtsnfWwCy/mDSSAER3RBBgg7qhKPVqkFjrI5CnqYU9DnSo1I/Difx6LS+1O
 MuxRPHyjkVyp6bFhSCcn3l+/vuKizYJXrnQsP9Hn24jXE+XgGB5QrYa8w3ceKt5UdHzN
 kcH925AQ/1GyoVladVbuqO3B6Lb3aVrBfdqWxgY3/xMkHmz1mHnztJxw1RK4ueU+7Py9
 F6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=CxN7Czk8Q/fjw3b2OK/Eu1Y95h805YTwH9VxKqGhCAo=;
 b=hdGMPVu1u9BwQVVJgtN5kFb0ppe6Rvyz3/Wr4lSEAA3QYYA2WI4aCu5ua9+VE8NgAi
 KCymhM0SsFWGGFSmNVovfmUAWAHOCZp7WHU5rxjc82xP57YmxWkGOUOIV482s/sE2B5f
 sAeo0BLNblpKKkRVmbfh/QryNJNt/sIViVvKFRtb/P4/132hXyatf1gZeAMId21yYk+A
 O9fJpw3VfJt8t1Rn6YOFmSDK48nap79GLVBIsqmBqB+qC1FtnXOml7E8gpVSgY5RtzHl
 8gpbOHheM4UNqAPAPsEFtpdr2wrHHSDioh5BEszoRIrJHWlt/QfiGgNj7mvLe+DePTnF
 s5eA==
X-Gm-Message-State: AOAM532yFlDes1sRZAyrxlikB8CQD8kxYJWi++X24glSpl9xmC1wtVy4
 A5tlSgBG4JmmsafEgNF6wv77ch/b2O6y7w==
X-Google-Smtp-Source: ABdhPJwuhINGBfY5nsK2kvG0IomWiTrH6vzMJ6AcEutNSoXYsinQjejRyHJem+tIrvh3h/wq9pLSlw==
X-Received: by 2002:aa7:9493:: with SMTP id z19mr20942709pfk.190.1596553101344; 
 Tue, 04 Aug 2020 07:58:21 -0700 (PDT)
Received: from aditya ([49.14.130.231])
 by smtp.gmail.com with ESMTPSA id na14sm2518023pjb.6.2020.08.04.07.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Aug 2020 07:58:20 -0700 (PDT)
Date: Tue, 4 Aug 2020 20:28:16 +0530
From: Aditya Bansal <adbansal99@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: fixed misspelled word in comment
Message-ID: <20200804145816.GA3823@aditya>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Aditya Bansal <adbansal99@gmail.com>

Subject: [PATCH] fixed typo in driver/staging/wfx/hif_tx.c file

Correct the spelling of function

Signed-off-by: Aditya Bansal <adbansal99@gmail.com>
---

diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
index 5110f9b93762..6a485fa5b72b 100644
--- a/drivers/staging/wfx/hif_tx.c
+++ b/drivers/staging/wfx/hif_tx.c
@@ -125,7 +125,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request,
 
 // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't reply to any
 // request anymore. We need to slightly hack struct wfx_hif_cmd for that job. Be
-// carefull to only call this funcion during device unregister.
+// carefull to only call this function during device unregister.
 int hif_shutdown(struct wfx_dev *wdev)
 {
 	int ret;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
