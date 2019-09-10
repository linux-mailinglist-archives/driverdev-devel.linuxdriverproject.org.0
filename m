Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA42AF574
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 07:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CBA0D221F5;
	Wed, 11 Sep 2019 05:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcfeFMXj48gw; Wed, 11 Sep 2019 05:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FBF3221D5;
	Wed, 11 Sep 2019 05:32:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDFB61BF340
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 05:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA95585EC4
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 05:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1y-sTY_FPhD4 for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 05:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B77485EBF
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 05:32:40 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y5so10170782pfo.4
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 22:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pkilmsNq34QM6fzPouRIjHA9eQej3vUHgsJOdmlr/mg=;
 b=FVg5H5Yg04IdooVDFzD15iqEf2UgRrpeiHNkpmYD/rpTIo+zHxNAbbjx1YF2d3lwUs
 CbuJqChUeEdtLvElpxN7txBZhPGKypa48toX/YZMg5pSiRXubhvCKn+fmPAzpBlsCBqK
 Fq7ZN1MCgzQ5D7bxklhXWFv/DOL/otKjMlxgjuD+/AGUW0QQIFfwv8BP01dxczJsf0qn
 flTzSw0SAU5R49QGll6za21iXWveXdpeoeZzOADMGYKXX79Oaqk7MGyVMG+Zv0bCJJ2F
 +J/Cr+Mcw9l4phntNbAnK2ukLvNhuhiwYT2oIBHuXc5M1Np5Akyrn17UQs6Q2aToqjhA
 NwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pkilmsNq34QM6fzPouRIjHA9eQej3vUHgsJOdmlr/mg=;
 b=ZalYA5pS/cbcZCv6YIKbQC4NlFV4d0OX6vbqNrYxitTKIlz/ZQ0eqX+0iNakUP2Mfe
 lpraALDYFU/LzdfhfALpgXH3D+VdXU0sObGitoI2hCh71ByVXzSjTYtkpV3mWnsZIR6j
 DpDaxnPmb6WK5EVeYgwn3y2QwsklccQV6nuZAmqX+d7kDaiFcxL20T8NUDU+vI2+BRHy
 b+mfD9HHSmkMEzdHyoyC7GEM9H7vvm3U1/f8hPMEn6Nctp5Vy7klz7Cl8w95nbJNtFiJ
 nRm8uXbqtQ68uWnd+eeMSghzcfuL2yZsieUu6eoPCjSakDScQ5N6SxV1X1xcUAkNkEoT
 +XCQ==
X-Gm-Message-State: APjAAAWvjjN24+VKrTLPYq2G2nTaxFrG/pcsFsCmxTkeNqXD60J8746q
 YXhoWvmKw9x1YmQ3LS/E12A=
X-Google-Smtp-Source: APXvYqzzHqeN23OB3jI8La8pJ3yyFIM3b4sDj6ChffoHpXwBAFZvGsCH1pA4YbeF/4Jc5PErP2Qdrg==
X-Received: by 2002:a65:62d7:: with SMTP id m23mr31313726pgv.358.1568179959858; 
 Tue, 10 Sep 2019 22:32:39 -0700 (PDT)
Received: from FINLAND.cbr.squiz.net.au (220-245-33-70.static.tpgi.com.au.
 [220.245.33.70])
 by smtp.gmail.com with ESMTPSA id b3sm30961519pfp.65.2019.09.10.22.32.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 22:32:39 -0700 (PDT)
From: Adam Zerella <adam.zerella@gmail.com>
To: dan.carpenter@oracle.com
Subject: [PATCH v2] staging: android: ion: Replace strncpy() for stracpy()
Date: Tue, 10 Sep 2019 23:23:12 +1000
Message-Id: <20190910132312.6729-1-adam.zerella@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910115550.GA15977@kadam>
References: <20190910115550.GA15977@kadam>
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
 Adam Zerella <adam.zerella@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Using strncpy() does not always terminate the destination string.
stracpy() is a alternative function that does, by using this new
function we will no longer need to insert a null separator.

Signed-off-by: Adam Zerella <adam.zerella@gmail.com>
---

v2: Remove unnecessary MAX_HEAP_NAME param from stracpy()
---
 drivers/staging/android/ion/ion.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index e6b1ca141b93..445bb951148f 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -433,8 +433,7 @@ static int ion_query_heaps(struct ion_heap_query *query)
 	max_cnt = query->cnt;
 
 	plist_for_each_entry(heap, &dev->heaps, node) {
-		strncpy(hdata.name, heap->name, MAX_HEAP_NAME);
-		hdata.name[sizeof(hdata.name) - 1] = '\0';
+		stracpy(hdata.name, heap->name);
 		hdata.type = heap->type;
 		hdata.heap_id = heap->id;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
