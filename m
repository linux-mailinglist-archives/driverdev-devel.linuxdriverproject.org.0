Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8532715A
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 23:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EFFB330E92;
	Wed, 22 May 2019 21:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PjfMRfXWaflK; Wed, 22 May 2019 21:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB15030EE6;
	Wed, 22 May 2019 21:06:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C596A1BF280
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C2842863E2
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpmBvZBmlQF6 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 21:06:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2487863E3
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 21:06:47 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id l26so2731422lfh.13
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 14:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qMtXEQ7J2EmiYI54BB3lm8CW7jtuHp2F5Gc+YkDY41M=;
 b=TfeYMnlfKI4zs58kUWYG9LrZ7tQtYxVNbmUbDUyPfmaXluFwe8CwcwR8gOFdgsyCCA
 AC3xePGqQ9brYSfmpsPLDznUYHlFD1VOe0vnzravjthD+wMcmdqdGZeSRS2rci280A2O
 IykWTDC1sA2P9DB5wr78gmImPD9dexAGWD+ttr9hBZe+Y8uolJXkfiCET3v2CldTiK+g
 /0TEGBpi1FPoATDSgYCsc2WBscb+6/hEfMjsjvEYw9EGIToSu/aB7gY60srypNsw6s0P
 /oIswPTfSct3V30ihrWfK3QtWrMkGl2n0S9sTSEfF3QEmUV+BVQgwquODOu5xhy2UUgU
 nAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qMtXEQ7J2EmiYI54BB3lm8CW7jtuHp2F5Gc+YkDY41M=;
 b=sSM/Kqpmi5jTXGueWF0DkvzX3xkWO/OiZ+72aI01wfsBlKpTfb1xEj1UR1jN+EY8Ze
 FNsjyP2Niv9kM5ykAn1jsy408ztbYBdAZNhFq51xQjPpBhBtd72BUCrfDuoqgvKYRf9b
 bzH6Fwv/r5ZHZzBvvgWG+XEWgseRcyCjzgZKTzpeaLdOsapQqxHy/OKgBTWUUV2/n1+E
 bU8a1FNSd93V4CZMjM4pI0qgcIWvtmhVfWMtAQzbBQwusgHWc4mdiCQ5X3UMbnXOIETd
 oFtlJrVO5HWwFhKQfVV1h90kTSdoMXH2fyzZ4CjlgjbnBRQypXyslP1PD8d2/BpNPvNd
 bpcQ==
X-Gm-Message-State: APjAAAW8Gu013MGLmSBBdQzJCiQMMQAyKzWiiz7xvmMadbQdDBKz6D4J
 r0JXZKnI93yTfGTou8dBwYfvIQ==
X-Google-Smtp-Source: APXvYqyQavIfvwAF8g0ZurPWxlCW4ymt+BaH9e+cHm5oL5V0VUiqti4EtoUjPKoAE9Dd3cXYJg79PA==
X-Received: by 2002:a19:a8c8:: with SMTP id r191mr44713147lfe.85.1558558747844; 
 Wed, 22 May 2019 13:59:07 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e12sm5506518lfb.70.2019.05.22.13.59.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:59:07 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] Fix coding style issues in drivers/staging/kpc2000
Date: Wed, 22 May 2019 22:58:43 +0200
Message-Id: <20190522205849.17444-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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
 dan.carpenter@oracle.com,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlc2UgcGF0Y2hlcyBmaXhlcyBhIGJ1bmNoIG9mIG1pbm9yIGNvZGluZyBzdHlsZSBpc3N1ZXMg
aW4Ka3BjMjAwMC9jZWxsX3Byb2JlLmMuCgotIFNpbW9uCgpTaW1vbiBTYW5kc3Ryw7ZtICg2KToK
ICBzdGFnaW5nOiBrcGMyMDAwOiBmaXggaW5kZW50IGluIGNlbGxfcHJvYmUuYwogIHN0YWdpbmc6
IGtwYzIwMDA6IGFkZCBzcGFjZSBiZXR3ZWVuICkgYW5kIHsgaW4gY2VsbF9wcm9iZS5jCiAgc3Rh
Z2luZzoga3BjMjAwMDogZml4IGludmFsaWQgbGluZWJyZWFrcyBpbiBjZWxsX3Byb2JlLmMKICBz
dGFnaW5nOiBrcGMyMDAwOiBhZGQgc3BhY2VzIGFyb3VuZCBvcGVyYXRvcnMgaW4gY2VsbF9wcm9i
ZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogYWRkIHNwYWNlIGFmdGVyIGNvbW1hIGluIGNlbGxfcHJv
YmUuYwogIHN0YWdpbmc6IGtwYzIwMDA6IHJlbW92ZSBpbnZhbGlkIHNwYWNlcyBpbiBjZWxsX3By
b2JlLmMKCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDU4
NSArKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjk2IGluc2VydGlvbnMoKyks
IDI4OSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
