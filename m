Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B4C27D3B
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8082386AC1;
	Thu, 23 May 2019 12:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8aj5IqPOhClf; Thu, 23 May 2019 12:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5761886AAA;
	Thu, 23 May 2019 12:51:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47B6A1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 449F986AB3
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v6dxJHwJGKMh for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C4E1C86AB1
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:52 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w1so5384123ljw.0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rZdczaVGyQjvanE23Fu/ZU9lf8yYQixA/KoNU+HEtSs=;
 b=zdQfL9oGxUyal2kYcvEy/VcupsF5u0Nn/8dFIvz21lojZBSJhEmgpK2ZudXNpgKroy
 4lS8BbHbgntcu65Ngjyujp6cninufk7E4RziAbRqYFRktsm+4BMAHB1m4oqvDNVDKrgV
 oChMNPpIw9lNsWSGuWmBRvXDMFgGZvTk7Jz0xlaNT8/vL175LLdHQAJQzJi6jdNnsvoY
 fMcQlmO4S9K9XP6/nNtP5Bd/vLLlC7rtpozjrQeS+wjssKo5Z0qzLL62wJLhxSb381bu
 UpDWD6tyEbgN84h55LwhqAogr2rSpAPnTGKfvc1KJH83OFDT9bxNlqGocki2SVZcXmHC
 UUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rZdczaVGyQjvanE23Fu/ZU9lf8yYQixA/KoNU+HEtSs=;
 b=PxFzAkvU99ogZjv1GhlpNFlZI5h9nYpvdOeny3t/9zqu+qbtAZK+sq5UovT/6nnAvH
 JfFo+OBcyqbP6TaYsz3kT7Teh38c5NPAcd0cRcN2aJjp/6Wnv4UITZRznONpW1YU8HgF
 nzrwRgHxlTsCbQA44dHqdlRuRR7exh3a+XjANm1i0It8xRqIkygsCZ9DukGyQHwKxqRb
 MD0GPRgELoPSvT4f6VSf5hTjvoqTWgyRTeDd/Vgs6UjqHSHcZjB0ARuZNC6orHrkr6Du
 D9L2lN2XYPsd6sp5WOXTEzjWMlORoCZcECjWIoDPUV/pTHrEgg3ywsvuhx3AklYmZ/vu
 f8rw==
X-Gm-Message-State: APjAAAUNUx0f4nOvShN3ZufrgcrxLN1PgMzDYVY33RUhI/e2DtegurHI
 MUdkgYUxHtX2HP5tu7HTtl+jJl5pdj6DtA==
X-Google-Smtp-Source: APXvYqyqxKhtOfbWZSS2bIR77JBsPl/PPIlE8cDBFj/P7ttRg0jDns1aamVnLjTZIAIWcJm+vGDZ2A==
X-Received: by 2002:a2e:8185:: with SMTP id e5mr16807928ljg.14.1558615911134; 
 Thu, 23 May 2019 05:51:51 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:50 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 5/9] staging: kpc2000: remove extra blank lines in
 cell_probe.c
Date: Thu, 23 May 2019 14:51:39 +0200
Message-Id: <20190523125143.32511-6-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBi
bGFuayBsaW5lcyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5j
IHwgNCAtLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4IDViODg1MDRiMDBlYy4uZjhk
MTllNjkzZjIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2Nl
bGxfcHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJv
YmUuYwpAQCAtOTQsNyArOTQsNiBAQCB2b2lkIHBhcnNlX2NvcmVfdGFibGVfZW50cnkoc3RydWN0
IGNvcmVfdGFibGVfZW50cnkgKmN0ZSwgY29uc3QgdTY0IHJlYWRfdmFsLCBjbwogCX0KIH0KIAot
CiBzdGF0aWMgaW50IHByb2JlX2NvcmVfYmFzaWModW5zaWduZWQgaW50IGNvcmVfbnVtLCBzdHJ1
Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQsCiAJCQkgICAgY2hhciAqbmFtZSwgY29uc3Qgc3RydWN0
IGNvcmVfdGFibGVfZW50cnkgY3RlKQogewpAQCAtMTExLDcgKzExMCw2IEBAIHN0YXRpYyBpbnQg
cHJvYmVfY29yZV9iYXNpYyh1bnNpZ25lZCBpbnQgY29yZV9udW0sIHN0cnVjdCBrcDIwMDBfZGV2
aWNlICpwY2FyZCwKIAogCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsICJGb3VuZCBCYXNpYyBj
b3JlOiB0eXBlID0gJTAyZCAgZG1hID0gJTAyeCAvICUwMnggIG9mZnNldCA9IDB4JXggIGxlbmd0
aCA9IDB4JXggKCVkIHJlZ3MpXG4iLCBjdGUudHlwZSwgS1BDX09MRF9TMkNfRE1BX0NIX05VTShj
dGUpLCBLUENfT0xEX0MyU19ETUFfQ0hfTlVNKGN0ZSksIGN0ZS5vZmZzZXQsIGN0ZS5sZW5ndGgs
IGN0ZS5sZW5ndGggLyA4KTsKIAotCiAJY2VsbC5wbGF0Zm9ybV9kYXRhID0gJmNvcmVfcGRhdGE7
CiAJY2VsbC5wZGF0YV9zaXplID0gc2l6ZW9mKHN0cnVjdCBrcGNfY29yZV9kZXZpY2VfcGxhdGRh
dGEpOwogCWNlbGwubnVtX3Jlc291cmNlcyA9IDI7CkBAIC0xMzcsNyArMTM1LDYgQEAgc3RhdGlj
IGludCBwcm9iZV9jb3JlX2Jhc2ljKHVuc2lnbmVkIGludCBjb3JlX251bSwgc3RydWN0IGtwMjAw
MF9kZXZpY2UgKnBjYXJkLAogCQkJICAgICAgIE5VTEwpOyAgICAgICAgICAgICAgICAgIC8vIHN0
cnVjdCBpcnFfZG9tYWluICoKIH0KIAotCiBzdHJ1Y3Qga3BjX3Vpb19kZXZpY2UgewogCXN0cnVj
dCBsaXN0X2hlYWQgbGlzdDsKIAlzdHJ1Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQ7CkBAIC0zNDYs
NyArMzQzLDYgQEAgc3RhdGljIGludCBwcm9iZV9jb3JlX3Vpbyh1bnNpZ25lZCBpbnQgY29yZV9u
dW0sIHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCwKIAlyZXR1cm4gMDsKIH0KIAotCiBzdGF0
aWMgaW50ICBjcmVhdGVfZG1hX2VuZ2luZV9jb3JlKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2Fy
ZCwgc2l6ZV90IGVuZ2luZV9yZWdzX29mZnNldCwgaW50IGVuZ2luZV9udW0sIGludCBpcnFfbnVt
KQogewogCXN0cnVjdCBtZmRfY2VsbCAgY2VsbCA9IHsgLmlkID0gZW5naW5lX251bSB9OwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
