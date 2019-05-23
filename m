Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAAB27D3E
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 680BE88513;
	Thu, 23 May 2019 12:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XHMAUzqlMmCz; Thu, 23 May 2019 12:52:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43E3C88517;
	Thu, 23 May 2019 12:52:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 383981BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 322D685F8E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJGNOvQGJofj for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7A21185F5D
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:55 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y19so4319085lfy.5
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+9ejD9Dmbikyh/E/C2ffOjcSNuWRasGmPKqlousO2AI=;
 b=2Cvm2iOLdW2zG+hEE7WnSyyadypZpHlWc7YNTc8b8WgJcvLxzJ6v5d+t5TFvjaDd5r
 V6QazTM8O3so3YIG1hBBhFKAGq26HFgRXQ3oq1WFxadqLr8MoC6ovjnMq2HAJheX80xi
 zWBf3P/sih7Rs2VP58sFBZJ3QPesb7GwUyr/yHhc9oObeQU6JdiGWTi8zGoybGTYOqr7
 D1T32fesG31q5rU5AOBC1haHpKMubGyOji7/vS4Qfsr60vK+vwk2PQeOHXyAhcgZhyW2
 547RMgVd9pC5Kribrnez7P/n9fEmfmRfjku4gb+ZYs7E4n4v55yoR5eGN1tMY2CVPdam
 FGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+9ejD9Dmbikyh/E/C2ffOjcSNuWRasGmPKqlousO2AI=;
 b=eXrQROkh6U2XXak/u/chgj64uCp1G2zLUxLjtF5/t/TZoemhlMz86eqk1A0IK6R6wT
 5qAnInHf6n6e326AMq1O3iuJmH1Fua8WIYi11FxHsPpt5dLDXgsLtZ6bEFNW2gYMEAya
 GhhKT47oSMEYOI8Juqkg8Gg+kIq0AlLwKRjOYvjb/Lg7YOxB5Ex9VRHm967hIU/hIgmP
 eDKznr0iArcDZFCVao3wcNwNDjyPfQfnS6KCJOcJUQO+b3lTmj51LYpFaI68JTis+y0+
 TBS3RBzYYMsHC34vCQPJHR7wZoIEj1ytOO/KPjJ9tcYteNbQDWi5BIH5Lu0thCX8dwN9
 q55Q==
X-Gm-Message-State: APjAAAWGn2uTEJ35JNe/mW/Q0SbdWwd0GfjFBrSfVRDmJ0M2YLm/P996
 KlWCNUHKUybWKJjziBU/at1zkQ==
X-Google-Smtp-Source: APXvYqwuga05QEEZFv966dAEMfP4nQxKq+vT82FqzWnvc4YmVcR8kfm5koljHuehptbDMAzunB8ncw==
X-Received: by 2002:ac2:4209:: with SMTP id y9mr8382103lfh.83.1558615914197;
 Thu, 23 May 2019 05:51:54 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:53 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 8/9] staging: kpc2000: remove unnecessary include in
 cell_probe.c
Date: Thu, 23 May 2019 14:51:42 +0200
Message-Id: <20190523125143.32511-9-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523125143.32511-1-simon@nikanor.nu>
References: <20190523125143.32511-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJVc2UgI2luY2x1ZGUgPGxpbnV4L2lvLmg+IGlu
c3RlYWQgb2YKPGFzbS9pby5oPiIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxz
aW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2Vs
bF9wcm9iZS5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jIGIvZHJpdmVy
cy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKaW5kZXggNjgyZDYxZGE1MzY5
Li41ZTY1YmQ1NmQ2NmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIw
MDAvY2VsbF9wcm9iZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2Vs
bF9wcm9iZS5jCkBAIC00LDcgKzQsNiBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5j
bHVkZSA8bGludXgvZXhwb3J0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgotI2luY2x1ZGUg
PGFzbS9pby5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVkZSA8bGludXgvaW8tNjQt
bm9uYXRvbWljLWxvLWhpLmg+CiAjaW5jbHVkZSA8bGludXgvbWZkL2NvcmUuaD4KLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
