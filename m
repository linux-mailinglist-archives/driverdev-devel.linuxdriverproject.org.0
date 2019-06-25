Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F5B526E6
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 10:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 425A885E83;
	Tue, 25 Jun 2019 08:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHlp0dc3FlbM; Tue, 25 Jun 2019 08:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0125085DF5;
	Tue, 25 Jun 2019 08:41:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60CB41BF319
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5DCD1849A6
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2ROCB3deVtP for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 08:41:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23C7984CF3
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 08:41:37 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 205so6578424ljj.8
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 01:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=weUglzTtIq4sAlt0j1mvPYtNfW0fP+4XOBaGGUaVvYI=;
 b=cKzjRJU3W6eX2V54ZSciulywf3c73hUnd9N3wXCg9BINskPrwtkJ63YSFwVvBrbuC1
 CGZOBLEAFdw00YNYIlLdmbhr2QHxDB5USG2qSsv+R8mnU/m8IvGFNDqoRUAgcQ57i+M3
 DafM2JkjdQs6zUlzBC/nZg/coUZ/brAyrNE2eqiFzGsuV13ziA4yMJ/CvMZI0tXe6fG9
 TOMM3YPHIIzFRB0V/tyvXcSju3NVoggCF2Bfb5HgQ+u3hbrLlfU0OpyrckhMTFAF7tM3
 vuTMTduCUjmtV9Zw52AjR8CkDnmAsOJMKRovKM69dRwqh8BvzsJ46rZF6XrDihrSxyu+
 DyzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=weUglzTtIq4sAlt0j1mvPYtNfW0fP+4XOBaGGUaVvYI=;
 b=b1CsreHsl37XHXVqE2LBtm6ljG/iE23Wy13xbTxBu72lhKo0K0pSfORnWwF+Z9VmDb
 hgvHhp5YftIlv1zrmbtx4CJc5fXzjpaP9uHFEpxkrB5PIDbqzkZkCjTekgvPEheDm61U
 JeQq4tIQwnZwHB/+c3LX0c1UQhE7vP5+AbWMoEoHQbzzef7isb9+9H4rsjuTF7PVoBSU
 iaQxipUD1CAhgGzSunwHrTAcIX1A1Ltudd1J3n7dX6bbQLZP0wUkzCyz5fCzIDYT8ik5
 ErI5QiDKFImjEJrbqIGER9u3qcTsMRwOVsWIVBo4RyxG3V/eSIMos8R7emztFnWQnz4u
 f81w==
X-Gm-Message-State: APjAAAW2yVIynB7y7Amw6YhxxXBbo1yB5vUwtRRZtwhr8W+uLsvUdjGf
 oFsZu5Wtdf9o7zi4Ok6nBTN8YA==
X-Google-Smtp-Source: APXvYqwr2UPRGbsF9+g5c/Vm6ACGW8PfyCMEJqNaS7EA9TcoBGg/vFtltckQI/9D4XY8lSG3cKlypg==
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr65784559ljf.10.1561452095398; 
 Tue, 25 Jun 2019 01:41:35 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id h78sm341564ljf.88.2019.06.25.01.41.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 01:41:34 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: kpc2000: add missing spaces in kpc2000_i2c.c
Date: Tue, 25 Jun 2019 10:41:27 +0200
Message-Id: <20190625084130.1107-2-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625084130.1107-1-simon@nikanor.nu>
References: <20190625084130.1107-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaCAiQ0hFQ0s6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJysn
IChjdHg6VnhWKSIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfaTJjLmMgfCA2ICsr
Ky0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX2kyYy5jIGIvZHJpdmVy
cy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9pMmMuYwppbmRleCA2OWU4NzczYzFlZjguLjNlMDhk
ZjlmMjA1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9pMmMu
YworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX2kyYy5jCkBAIC0yNTcsNyAr
MjU3LDcgQEAgc3RhdGljIGludCBpODAxX2Jsb2NrX3RyYW5zYWN0aW9uX2J5X2Jsb2NrKHN0cnVj
dCBpMmNfZGV2aWNlICpwcml2LCB1bmlvbiBpMmNfc20KIAkJbGVuID0gZGF0YS0+YmxvY2tbMF07
CiAJCW91dGJfcChsZW4sIFNNQkhTVERBVDAocHJpdikpOwogCQlmb3IgKGkgPSAwOyBpIDwgbGVu
OyBpKyspCi0JCQlvdXRiX3AoZGF0YS0+YmxvY2tbaSsxXSwgU01CQkxLREFUKHByaXYpKTsKKwkJ
CW91dGJfcChkYXRhLT5ibG9ja1tpICsgMV0sIFNNQkJMS0RBVChwcml2KSk7CiAJfQogCiAJc3Rh
dHVzID0gaTgwMV90cmFuc2FjdGlvbihwcml2LCBJODAxX0JMT0NLX0RBVEEgfCBFTkFCTEVfSU5U
OSB8IEk4MDFfUEVDX0VOICogaHdwZWMpOwpAQCAtMzM3LDggKzMzNyw4IEBAIHN0YXRpYyBpbnQg
aTgwMV9ibG9ja190cmFuc2FjdGlvbl9ieXRlX2J5X2J5dGUoc3RydWN0IGkyY19kZXZpY2UgKnBy
aXYsIHVuaW9uIGkyCiAJCS8qIFJldHJpZXZlL3N0b3JlIHZhbHVlIGluIFNNQkJMS0RBVCAqLwog
CQlpZiAocmVhZF93cml0ZSA9PSBJMkNfU01CVVNfUkVBRCkKIAkJCWRhdGEtPmJsb2NrW2ldID0g
aW5iX3AoU01CQkxLREFUKHByaXYpKTsKLQkJaWYgKHJlYWRfd3JpdGUgPT0gSTJDX1NNQlVTX1dS
SVRFICYmIGkrMSA8PSBsZW4pCi0JCQlvdXRiX3AoZGF0YS0+YmxvY2tbaSsxXSwgU01CQkxLREFU
KHByaXYpKTsKKwkJaWYgKHJlYWRfd3JpdGUgPT0gSTJDX1NNQlVTX1dSSVRFICYmIGkgKyAxIDw9
IGxlbikKKwkJCW91dGJfcChkYXRhLT5ibG9ja1tpICsgMV0sIFNNQkJMS0RBVChwcml2KSk7CiAJ
CS8qIHNpZ25hbHMgU01CQkxLREFUIHJlYWR5ICovCiAJCW91dGJfcChTTUJIU1RTVFNfQllURV9E
T05FIHwgU01CSFNUU1RTX0lOVFIsIFNNQkhTVFNUUyhwcml2KSk7CiAJfQotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
