Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C0127D3C
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 138C33151A;
	Thu, 23 May 2019 12:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uZgAccColuIB; Thu, 23 May 2019 12:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9496313B0;
	Thu, 23 May 2019 12:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0528B1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3AA286AB1
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QY8EXLVq84aU for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2BCB86AAA
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:50 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id 188so5338485ljf.9
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AhSeNDsoUdUKug5x4JHt0IZKHwNd5yuItEIHg6AIB9c=;
 b=X58KYUnxMFoMN706or9z2easKrW5izuFJCrAsqJILNZcCL142GV7pxV8NY0AnI/03S
 o4ryaFG2rPhg0tryyLmAhgtyxJK8Tn5O2TMQPKkfnzNGcV7nIiGSd6//BbRe5Id9oMZT
 oOoK2GvIEiKEoNlymxU1bDZJxqbQXre+KxXDQw095gZnLwB9m05AZgQKjx5eTOTR34BD
 Vugpn6DkAYVKHiYbA7ovIhidlEkwDTSznPkXY6XJ13o8azCAz6VzrwZ3PDgGoc+bZccK
 6zVmFw23qSckDGACy7LpZ/h7s1QxfAXvNqSKFJVZTihyyGq9UdQatZJuF1LsKGnyhcHH
 06CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AhSeNDsoUdUKug5x4JHt0IZKHwNd5yuItEIHg6AIB9c=;
 b=bW8oAP6W7QNbPZQO6uAXTwWzZC2DgjN+DkwJgjjs8H+XOjbZJBveaoZdduvi4LGvvv
 I9ju6o1Bws8tlxr+3K1dwuHxHcD2ZzobEzQxpHDDOihvyanMaK7UQCrlObEl3mGWtO6o
 bRpTTijutKIg6o91LRa/Pjpsny5w6EUHXgYn83yZN1IKhZvwa2SLnOkeA7aoPvCITj1M
 CJypXuGTt6ySKaPZHXPntYLJkrHmUF7T75lAeVsAONGYo1j5wx3MARjhZRJK1q4+W4YS
 deIOOcvzS5s2FXALh83TJltSmBgCRkgwcEpjNfzabQbbfhF5NVL2rAB4ccfkbVmATWIp
 lh+A==
X-Gm-Message-State: APjAAAW1ecJwoRY9DWl3buEdu26H76f99xmEdQ869B/iwHA+UK18XJeH
 UnV/RT1Slcpk80jjRi8cGVDnTw==
X-Google-Smtp-Source: APXvYqwOETQo629+dgWMiuq2qkyk7+rhOWXt+13MZ83XUiWEmei63fhPIe02F/bF6AYf32h2G342og==
X-Received: by 2002:a2e:7d02:: with SMTP id y2mr22280232ljc.62.1558615908429; 
 Thu, 23 May 2019 05:51:48 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:47 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/9] staging: kpc2000: use __func__ in debug messages
Date: Thu, 23 May 2019 14:51:36 +0200
Message-Id: <20190523125143.32511-3-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIgdXNpbmcgJyIlcy4uLiIsIF9fZnVu
Y19fJyB0byB1c2luZwonPGZ1bmN0aW9uIG5hbWU+JywgdGhpcyBmdW5jdGlvbidzIG5hbWUsIGlu
IGEgc3RyaW5nIi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fu
b3IubnU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMg
fCAxOSArKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NlbGxfcHJvYmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2Vs
bF9wcm9iZS5jCmluZGV4IDk1YmZiZTRhYWU0ZC4uYjU1OWFkZTA0YWNhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYwpAQCAtMzI3LDcgKzMyNyw4IEBA
IHN0YXRpYyBpbnQgcHJvYmVfY29yZV91aW8odW5zaWduZWQgaW50IGNvcmVfbnVtLCBzdHJ1Y3Qg
a3AyMDAwX2RldmljZSAqcGNhcmQsCiAKIAlrdWRldi0+ZGV2ID0gZGV2aWNlX2NyZWF0ZShrcGNf
dWlvX2NsYXNzLCAmcGNhcmQtPnBkZXYtPmRldiwgTUtERVYoMCwgMCksIGt1ZGV2LCAiJXMuJWQu
JWQuJWQiLCBrdWRldi0+dWlvaW5mby5uYW1lLCBwY2FyZC0+Y2FyZF9udW0sIGN0ZS50eXBlLCBr
dWRldi0+Y29yZV9udW0pOwogCWlmIChJU19FUlIoa3VkZXYtPmRldikpIHsKLQkJZGV2X2Vycigm
cGNhcmQtPnBkZXYtPmRldiwgInByb2JlX2NvcmVfdWlvIGRldmljZV9jcmVhdGUgZmFpbGVkIVxu
Iik7CisJCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsICIlczogZGV2aWNlX2NyZWF0ZSBmYWls
ZWQhXG4iLAorCQkJX19mdW5jX18pOwogCQlrZnJlZShrdWRldik7CiAJCXJldHVybiAtRU5PREVW
OwogCX0KQEAgLTMzNSw3ICszMzYsOCBAQCBzdGF0aWMgaW50IHByb2JlX2NvcmVfdWlvKHVuc2ln
bmVkIGludCBjb3JlX251bSwgc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkLAogCiAJcnYgPSB1
aW9fcmVnaXN0ZXJfZGV2aWNlKGt1ZGV2LT5kZXYsICZrdWRldi0+dWlvaW5mbyk7CiAJaWYgKHJ2
KSB7Ci0JCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsICJwcm9iZV9jb3JlX3VpbyBmYWlsZWQg
dWlvX3JlZ2lzdGVyX2RldmljZTogJWRcbiIsIHJ2KTsKKwkJZGV2X2VycigmcGNhcmQtPnBkZXYt
PmRldiwgIiVzOiBmYWlsZWQgdWlvX3JlZ2lzdGVyX2RldmljZTogJWRcbiIsCisJCQlfX2Z1bmNf
XywgcnYpOwogCQlwdXRfZGV2aWNlKGt1ZGV2LT5kZXYpOwogCQlrZnJlZShrdWRldik7CiAJCXJl
dHVybiBydjsKQEAgLTQxMCw3ICs0MTIsOCBAQCBzdGF0aWMgaW50ICBrcDIwMDBfc2V0dXBfZG1h
X2NvbnRyb2xsZXIoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkKQogCXJldHVybiAwOwogCiBl
cnJfb3V0OgotCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsICJrcDIwMDBfc2V0dXBfZG1hX2Nv
bnRyb2xsZXI6IGZhaWxlZCB0byBhZGQgYSBETUEgRW5naW5lOiAlZFxuIiwgZXJyKTsKKwlkZXZf
ZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAiJXM6IGZhaWxlZCB0byBhZGQgYSBETUEgRW5naW5lOiAl
ZFxuIiwKKwkJX19mdW5jX18sIGVycik7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtNDIzLDcgKzQy
Niw4IEBAIGludCAga3AyMDAwX3Byb2JlX2NvcmVzKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2Fy
ZCkKIAl1bnNpZ25lZCBpbnQgaGlnaGVzdF9jb3JlX2lkID0gMDsKIAlzdHJ1Y3QgY29yZV90YWJs
ZV9lbnRyeSBjdGU7CiAKLQlkZXZfZGJnKCZwY2FyZC0+cGRldi0+ZGV2LCAia3AyMDAwX3Byb2Jl
X2NvcmVzKHBjYXJkID0gJXAgLyAlZClcbiIsIHBjYXJkLCBwY2FyZC0+Y2FyZF9udW0pOworCWRl
dl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsICIlcyhwY2FyZCA9ICVwIC8gJWQpXG4iLCBfX2Z1bmNf
XywgcGNhcmQsCisJCXBjYXJkLT5jYXJkX251bSk7CiAKIAllcnIgPSBrcDIwMDBfc2V0dXBfZG1h
X2NvbnRyb2xsZXIocGNhcmQpOwogCWlmIChlcnIpCkBAIC00NzIsOCArNDc2LDggQEAgaW50ICBr
cDIwMDBfcHJvYmVfY29yZXMoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkKQogCQkJfQogCQkJ
aWYgKGVycikgewogCQkJCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsCi0JCQkJCSJrcDIwMDBf
cHJvYmVfY29yZXM6IGZhaWxlZCB0byBhZGQgY29yZSAlZDogJWRcbiIsCi0JCQkJCWksIGVycik7
CisJCQkJCSIlczogZmFpbGVkIHRvIGFkZCBjb3JlICVkOiAlZFxuIiwKKwkJCQkJX19mdW5jX18s
IGksIGVycik7CiAJCQkJZ290byBlcnJvcjsKIAkJCX0KIAkJCWNvcmVfbnVtKys7CkBAIC00OTIs
NyArNDk2LDggQEAgaW50ICBrcDIwMDBfcHJvYmVfY29yZXMoc3RydWN0IGtwMjAwMF9kZXZpY2Ug
KnBjYXJkKQogCWN0ZS5pcnFfYmFzZV9udW0gICAgICAgID0gMDsKIAllcnIgPSBwcm9iZV9jb3Jl
X3VpbygwLCBwY2FyZCwgImtwY191aW8iLCBjdGUpOwogCWlmIChlcnIpIHsKLQkJZGV2X2Vycigm
cGNhcmQtPnBkZXYtPmRldiwgImtwMjAwMF9wcm9iZV9jb3JlczogZmFpbGVkIHRvIGFkZCBib2Fy
ZF9pbmZvIGNvcmU6ICVkXG4iLCBlcnIpOworCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAi
JXM6IGZhaWxlZCB0byBhZGQgYm9hcmRfaW5mbyBjb3JlOiAlZFxuIiwKKwkJCV9fZnVuY19fLCBl
cnIpOwogCQlnb3RvIGVycm9yOwogCX0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
