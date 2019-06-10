Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 841223B113
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A1A386372;
	Mon, 10 Jun 2019 08:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ciEVl6J5q9jn; Mon, 10 Jun 2019 08:44:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C74786223;
	Mon, 10 Jun 2019 08:44:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 727531BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6F53584B91
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9p8JDzIrb1mB for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B30B584A33
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:44:55 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id r15so6023037lfm.11
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XlBqqPFxo7cPYwn+Uda7t8bSPWi1Ym5xI4tmKez88oU=;
 b=akcYbJG+EMEHuyktHUZxehludAWVvbXzug3nXiPrAg6KkyhcJDGTSMK8syNlanvUgN
 f/hfNQcmgW6qzY125P4en91PIDaTMtIUChSkMpsfTfbuHD26y+Tlzx1zTOues0HL8r/9
 4LkroMb8B38ifuJCocFP4HZcQLqMvQ8RDnARiRWkDYOT+dlgTACmx7RimR+Mcs2Y7gCU
 EZjlG6CP25NNf60EQLQkPY2t3n/WVIVgDAcaeV2wAkMh+9yOHjeckw4fjpoMy2tD1VmS
 9U0ziQ9CiTYqdSBjabaySXJ4kzP2qFeHdV+42ZnqTWgkjzak7bLIDtjQDK786qYhAPnr
 WXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XlBqqPFxo7cPYwn+Uda7t8bSPWi1Ym5xI4tmKez88oU=;
 b=mu5yzRaQ3TwKFlzZVnM5SChKJTBhEHJGqRBF7kmM/ZJoDW6OHCzW3WH3Q5l0Rr6q0q
 JSxvGdR7K5Ra+YxBgB/Smc8hjZM1UY3+QIY3AM4L3h/4C7SbkfBP1EyUF/Q08IxerZyE
 IVP3e95eWgMKFCjzHaORq1LAx4BdIZUpFN7OtfewIXjM84F64hsnZqnmnkySm0mZIjnT
 UlGWjocwv8JKqhCCMp78P6UdzGWS78UkaO7CkhxFuZAx3TXX6bjyL2AMyjbYZfsBI90a
 FIdDDvh/BAWP6l7mlbBp3roxEkH38mAjmLP4j/JGgPTq4xJMh7rmK2KiqerfJ+jyAmXe
 oxxw==
X-Gm-Message-State: APjAAAW7gGZUcM6ckc9hBixbF1xqMi7zTeypGw0NNTggWEMEgkZMcBpU
 /JYGQCeHXKvW5QxzpTt+cLpQRt85tGKXfg==
X-Google-Smtp-Source: APXvYqzr5fBdboTIMnsXpzQOs0AcoKbfsF0S4KG0fFF4gArjf2efwlStUrgW/uitQQjcm5KQeUstiA==
X-Received: by 2002:ac2:455a:: with SMTP id j26mr22568179lfm.18.1560156294028; 
 Mon, 10 Jun 2019 01:44:54 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e26sm1826486ljl.33.2019.06.10.01.44.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:44:53 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: kpc2000: remove unnecessary debug prints in
 kpc_dma_driver.c
Date: Mon, 10 Jun 2019 10:44:32 +0200
Message-Id: <20190610084432.12597-6-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610084432.12597-1-simon@nikanor.nu>
References: <20190610084432.12597-1-simon@nikanor.nu>
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
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>, =simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVidWcgcHJpbnRzIHRoYXQgYXJlIHVzZWQgb25seSB0byBpbmZvcm0gYWJvdXQgZnVuY3Rpb24g
ZW50cnkgb3IgZXhpdApjYW4gYmUgcmVtb3ZlZCBhcyBmdHJhY2UgY2FuIGJlIHVzZWQgdG8gZ2V0
IHRoaXMgaW5mb3JtYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEva3BjX2Rt
YV9kcml2ZXIuYyB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9rcGNfZG1hX2RyaXZlci5j
IGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9rcGNfZG1hX2RyaXZlci5jCmluZGV4
IDlhY2YxZWFmYTAyNC4uNGI4NTQwMjdlNjBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
a3BjMjAwMC9rcGNfZG1hL2twY19kbWFfZHJpdmVyLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjX2RtYS9rcGNfZG1hX2RyaXZlci5jCkBAIC0xMDYsOCArMTA2LDYgQEAgaW50ICBr
cGNfZG1hX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBsZGV2KQogCQlnb3RvIGVycl9y
djsKIAl9CiAKLQlkZXZfZGJnKCZwbGRldi0+ZGV2LCAiJXMocGxkZXYgPSBbJXBdKSBsZGV2ID0g
WyVwXVxuIiwgX19mdW5jX18sIHBsZGV2LCBsZGV2KTsKLQogCUlOSVRfTElTVF9IRUFEKCZsZGV2
LT5saXN0KTsKIAogCWxkZXYtPnBsZGV2ID0gcGxkZXY7CkBAIC0xODMsOCArMTgxLDYgQEAgaW50
ICBrcGNfZG1hX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwbGRldikKIAlpZiAoIWxk
ZXYpCiAJCXJldHVybiAtRU5YSU87CiAKLQlkZXZfZGJnKCZsZGV2LT5wbGRldi0+ZGV2LCAiJXMo
cGxkZXYgPSBbJXBdKSBsZGV2ID0gWyVwXVxuIiwgX19mdW5jX18sIHBsZGV2LCBsZGV2KTsKLQog
CWxvY2tfZW5naW5lKGxkZXYpOwogCXN5c2ZzX3JlbW92ZV9maWxlcygmKGxkZXYtPnBsZGV2LT5k
ZXYua29iaiksIG5kZF9hdHRyX2xpc3QpOwogCWRlc3Ryb3lfZG1hX2VuZ2luZShsZGV2KTsKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
