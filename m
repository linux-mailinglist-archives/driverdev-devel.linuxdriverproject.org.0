Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0CD27BDF
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B035686723;
	Thu, 23 May 2019 11:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WfWDFQmlbyNs; Thu, 23 May 2019 11:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 367F186708;
	Thu, 23 May 2019 11:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A30E1BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 76E88880A7
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7OQxVB0dJcr for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7FD4988091
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:38 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id h19so5130792ljj.4
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=11qH4y9SfuGcGcjlxGwKTBKKhuVs5qvrsowrYqhLe+k=;
 b=Y7bYLdd5Ld95lBElF+p+gMQOuiWb+w+At7YDGkJortepcdHgqXw+vHsr1Xovdn4ayt
 uKHewJa0wAPLm+49BFZcWJJfwwa5okbo15J4pvBUL97sPQ1tPBVt1/WHPREEnTc/V2Ww
 LBx3h2a4Y4jwQ8Krho6kRDZ8661Nh2AFQGLaJSAbc7xW0mJYvyN5BRDl0XWzKaw1Kgu9
 IPBg6Moi5NMkx2Bc5pTlUiBVndC3ywvVa3KvyTXNuu0CYsalbzvf/OPhFH3mEZ65rkra
 aK1o/gBc1xZ2zhUGbgOfhJb98Xu9CrU10tUaWu0vyDKABymiAthp/J3HN/aENf8FsO3S
 O8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=11qH4y9SfuGcGcjlxGwKTBKKhuVs5qvrsowrYqhLe+k=;
 b=J1UKbl7DxhrfnkB29omjgCIu1hS6EerATZ5XGiGvkMjZV5xofa4DIIr8FCIjKbuXqa
 fEPkirFg5Bq7n2/Xwr465woejHI+edQeTIJmndnSjidbICHq1TeNMzfGJfFVRxfr5xFD
 9hC8F/oEeHkgQRzovCNSMqJbTTWL1MaAO/OJ6SaM0p0zo9Razp7c8vSC8XTpj1XTLIAJ
 A87+wE5/QIg4fyogUXR9Hg3rqERr7yUBe+D1/1+gVlcDicBdOZU8ZupOQPf/32rp8hH/
 P0FfSgOFdah04ISMW/hfW1cQ3oaGTlRFQLNn/UNnDNHUkQdidehbKPAsUGvMJYLNC815
 +P1w==
X-Gm-Message-State: APjAAAXiLS8pgm7JooHi8FYUdDOo11QBYlvwZ0BbV0ZcynX/XtXvgue7
 3GPdbX11CQzqd0vLZ3tsuTf1DQ==
X-Google-Smtp-Source: APXvYqx7pRnYxk6XRIEXgy9Ad7KNNYeIcOE4OGgp6hRV2gwnbrOOVxc7iNVI2ZGrwynKkeYyjbKcEg==
X-Received: by 2002:a2e:9259:: with SMTP id v25mr5166102ljg.46.1558611396410; 
 Thu, 23 May 2019 04:36:36 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:35 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/8] staging: kpc2000: use kzalloc(sizeof(var)...) in
 cell_probe.c
Date: Thu, 23 May 2019 13:36:11 +0200
Message-Id: <20190523113613.28342-7-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523113613.28342-1-simon@nikanor.nu>
References: <20190523113613.28342-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIga3phbGxvYyhzaXplb2YoKmt1ZGV2
KS4uLikgb3ZlcgpremFsbG9jKHNpemVvZihzdHJ1Y3Qga3BjX3Vpb19kZXZpY2UpLi4uKSIKClNp
Z25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fub3IubnU+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4IDBkYTQxY2ExN2ViNy4uOGQ5MjU0
ZGI5NDk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxf
cHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUu
YwpAQCAtMjkyLDcgKzI5Miw3IEBAIHN0YXRpYyBpbnQgcHJvYmVfY29yZV91aW8odW5zaWduZWQg
aW50IGNvcmVfbnVtLCBzdHJ1Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQsCiAKIAlkZXZfZGJnKCZw
Y2FyZC0+cGRldi0+ZGV2LCAiRm91bmQgVUlPIGNvcmU6ICAgdHlwZSA9ICUwMmQgIGRtYSA9ICUw
MnggLyAlMDJ4ICBvZmZzZXQgPSAweCV4ICBsZW5ndGggPSAweCV4ICglZCByZWdzKVxuIiwgY3Rl
LnR5cGUsIEtQQ19PTERfUzJDX0RNQV9DSF9OVU0oY3RlKSwgS1BDX09MRF9DMlNfRE1BX0NIX05V
TShjdGUpLCBjdGUub2Zmc2V0LCBjdGUubGVuZ3RoLCBjdGUubGVuZ3RoIC8gOCk7CiAKLQlrdWRl
diA9IGt6YWxsb2Moc2l6ZW9mKHN0cnVjdCBrcGNfdWlvX2RldmljZSksIEdGUF9LRVJORUwpOwor
CWt1ZGV2ID0ga3phbGxvYyhzaXplb2YoKmt1ZGV2KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFrdWRl
dikgewogCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAiJXM6IGZhaWxlZCB0byBremFsbG9j
IGtwY191aW9fZGV2aWNlXG4iLAogCQkJX19mdW5jX18pOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
