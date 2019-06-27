Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1481358B21
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E56FD2263C;
	Thu, 27 Jun 2019 19:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCLcZqf9tSeC; Thu, 27 Jun 2019 19:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D85DD2262B;
	Thu, 27 Jun 2019 19:53:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F1DC1BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66CBB87F73
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:53:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkRuSVXXYV1n for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:53:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69EF687D5E
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:53:29 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y198so2404631lfa.1
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 12:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyjExCHwdDuT+ZRUy4Wx0tS5RD0zr2GPc2KHGmsxfJc=;
 b=dhEKhKjVpul/8+p2dC9a6u4AdtPpgvkYVgLRFj4YarCkAgelqDWE3RL4oGXRRLftnx
 9APEIpWjI36ePdcK+sSR5kuNevSGyf0G5qp2abEpJRwnizWYXofEZJgxLDkO1f15n9Kj
 cl3qrYx6LrlbCkspWrnJn8H1VIJG64YlX6CPJAYW2DJL1kis/IzygI84dwOnIjs36ejw
 AwUsBajvso2FPX/9e4yts+Ae0BBOnPYAErBGYGJi3mTcoyklLsc/cgTm7azETBFoSu/f
 ZLlpq6h2duSlbJuHKwiVAVIliz6/gydQzeK9eKo/CqGUfyo/MVNyZLT+LPZACMghiuZJ
 uNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AyjExCHwdDuT+ZRUy4Wx0tS5RD0zr2GPc2KHGmsxfJc=;
 b=qrIpZIiovXYIgda3UqblYBrad9kEEJRqHjd1m82sKPUW8Fd567fDhjjMGyfdcHHWFW
 0qtyvNfQhjeIOlYhfltts8o4MlVHGZwQXWd/JymPidenVtD3iZEY8FXFDdPpcnM+3f4c
 P48AYdUggRm4cINvUiVQSK3Fh5+4bDcqeTw1Rg/Xt3bMUUE9HA1EMdoBIR4y7hpFTN3d
 3rZfzr3fHd/OhPpltY0bEN/LC0zntg/uodT8yjpudjdclJDtVw+6LHhN0Er/gqk6NwVz
 bBjIaJ1wWtqHvpvj+CDmHyij2Kj1NQrHySxiNGd7wBI36iilVqpCYWvT2kRvzXQccp/A
 5fPA==
X-Gm-Message-State: APjAAAUgGDUj4JAqXvNJedjTq1tD3Zc0hk/MhQ3uo6nQYqiHxVRCqYud
 FNzN2G9C6WiyvzJW+RQh90jmIw==
X-Google-Smtp-Source: APXvYqz5sISLIWRgKwraHEgQaGLSmH1xcM/FC4vCWXlkqWf/qYbgGzgtc425Zb5mF1kgCuPLnC/3RA==
X-Received: by 2002:a19:6602:: with SMTP id a2mr2912384lfc.25.1561665207444;
 Thu, 27 Jun 2019 12:53:27 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id r84sm740952lja.54.2019.06.27.12.53.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 12:53:26 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: fix brace issues in kpc2000_spi.c
Date: Thu, 27 Jun 2019 21:53:23 +0200
Message-Id: <20190627195323.28913-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgaXNzdWVzIGZvdW5kIGJ5IGNoZWNrcGF0Y2g6CgotICJXQVJOSU5HOiBicmFjZXMge30g
YXJlIG5vdCBuZWNlc3NhcnkgZm9yIHNpbmdsZSBzdGF0ZW1lbnQgYmxvY2tzIgotICJXQVJOSU5H
OiBicmFjZXMge30gYXJlIG5vdCBuZWNlc3NhcnkgZm9yIGFueSBhcm0gb2YgdGhpcyBzdGF0ZW1l
bnQiCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51Pgot
LS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMgfCAzOSArKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyNSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAw
X3NwaS5jIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9zcGkuYwppbmRleCA5ODQ4
NGZiYjlkMmUuLjc2ZGI4ZTg1MTBkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIw
MDAva3BjMjAwMF9zcGkuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3Nw
aS5jCkBAIC0xNjQsOSArMTY0LDkgQEAga3Bfc3BpX3JlYWRfcmVnKHN0cnVjdCBrcF9zcGlfY29u
dHJvbGxlcl9zdGF0ZSAqY3MsIGludCBpZHgpCiAJdTY0IHZhbDsKIAogCWFkZHIgKz0gaWR4Owot
CWlmICgoaWR4ID09IEtQX1NQSV9SRUdfQ09ORklHKSAmJiAoY3MtPmNvbmZfY2FjaGUgPj0gMCkp
IHsKKwlpZiAoKGlkeCA9PSBLUF9TUElfUkVHX0NPTkZJRykgJiYgKGNzLT5jb25mX2NhY2hlID49
IDApKQogCQlyZXR1cm4gY3MtPmNvbmZfY2FjaGU7Ci0JfQorCiAJdmFsID0gcmVhZHEoYWRkcik7
CiAJcmV0dXJuIHZhbDsKIH0KQEAgLTE4OCwxMSArMTg4LDEwIEBAIGtwX3NwaV93YWl0X2Zvcl9y
ZWdfYml0KHN0cnVjdCBrcF9zcGlfY29udHJvbGxlcl9zdGF0ZSAqY3MsIGludCBpZHgsIHVuc2ln
bmVkIGxvCiAJdGltZW91dCA9IGppZmZpZXMgKyBtc2Vjc190b19qaWZmaWVzKDEwMDApOwogCXdo
aWxlICghKGtwX3NwaV9yZWFkX3JlZyhjcywgaWR4KSAmIGJpdCkpIHsKIAkJaWYgKHRpbWVfYWZ0
ZXIoamlmZmllcywgdGltZW91dCkpIHsKLQkJCWlmICghKGtwX3NwaV9yZWFkX3JlZyhjcywgaWR4
KSAmIGJpdCkpIHsKKwkJCWlmICghKGtwX3NwaV9yZWFkX3JlZyhjcywgaWR4KSAmIGJpdCkpCiAJ
CQkJcmV0dXJuIC1FVElNRURPVVQ7Ci0JCQl9IGVsc2UgeworCQkJZWxzZQogCQkJCXJldHVybiAw
OwotCQkJfQogCQl9CiAJCWNwdV9yZWxheCgpOwogCX0KQEAgLTIxNSw5ICsyMTQsOCBAQCBrcF9z
cGlfdHhyeF9waW8oc3RydWN0IHNwaV9kZXZpY2UgKnNwaWRldiwgc3RydWN0IHNwaV90cmFuc2Zl
ciAqdHJhbnNmZXIpCiAJCWZvciAoaSA9IDAgOyBpIDwgYyA7IGkrKykgewogCQkJY2hhciB2YWwg
PSAqdHgrKzsKIAotCQkJaWYgKGtwX3NwaV93YWl0X2Zvcl9yZWdfYml0KGNzLCBLUF9TUElfUkVH
X1NUQVRVUywgS1BfU1BJX1JFR19TVEFUVVNfVFhTKSA8IDApIHsKKwkJCWlmIChrcF9zcGlfd2Fp
dF9mb3JfcmVnX2JpdChjcywgS1BfU1BJX1JFR19TVEFUVVMsIEtQX1NQSV9SRUdfU1RBVFVTX1RY
UykgPCAwKQogCQkJCWdvdG8gb3V0OwotCQkJfQogCiAJCQlrcF9zcGlfd3JpdGVfcmVnKGNzLCBL
UF9TUElfUkVHX1RYREFUQSwgdmFsKTsKIAkJCXByb2Nlc3NlZCsrOwpAQCAtMjI5LDkgKzIyNyw4
IEBAIGtwX3NwaV90eHJ4X3BpbyhzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpZGV2LCBzdHJ1Y3Qgc3Bp
X3RyYW5zZmVyICp0cmFuc2ZlcikKIAogCQkJa3Bfc3BpX3dyaXRlX3JlZyhjcywgS1BfU1BJX1JF
R19UWERBVEEsIDB4MDApOwogCi0JCQlpZiAoa3Bfc3BpX3dhaXRfZm9yX3JlZ19iaXQoY3MsIEtQ
X1NQSV9SRUdfU1RBVFVTLCBLUF9TUElfUkVHX1NUQVRVU19SWFMpIDwgMCkgeworCQkJaWYgKGtw
X3NwaV93YWl0X2Zvcl9yZWdfYml0KGNzLCBLUF9TUElfUkVHX1NUQVRVUywgS1BfU1BJX1JFR19T
VEFUVVNfUlhTKSA8IDApCiAJCQkJZ290byBvdXQ7Ci0JCQl9CiAKIAkJCXRlc3QgPSBrcF9zcGlf
cmVhZF9yZWcoY3MsIEtQX1NQSV9SRUdfUlhEQVRBKTsKIAkJCSpyeCsrID0gdGVzdDsKQEAgLTI2
MSw5ICsyNTgsOCBAQCBrcF9zcGlfc2V0dXAoc3RydWN0IHNwaV9kZXZpY2UgKnNwaWRldikKIAlj
cyA9IHNwaWRldi0+Y29udHJvbGxlcl9zdGF0ZTsKIAlpZiAoIWNzKSB7CiAJCWNzID0ga3phbGxv
YyhzaXplb2YoKmNzKSwgR0ZQX0tFUk5FTCk7Ci0JCWlmICghY3MpIHsKKwkJaWYgKCFjcykKIAkJ
CXJldHVybiAtRU5PTUVNOwotCQl9CiAJCWNzLT5iYXNlID0ga3BzcGktPmJhc2U7CiAJCWNzLT5j
b25mX2NhY2hlID0gLTE7CiAJCXNwaWRldi0+Y29udHJvbGxlcl9zdGF0ZSA9IGNzOwpAQCAtMjk3
LDkgKzI5Myw4IEBAIGtwX3NwaV90cmFuc2Zlcl9vbmVfbWVzc2FnZShzdHJ1Y3Qgc3BpX21hc3Rl
ciAqbWFzdGVyLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm0pCiAJY3MgPSBzcGlkZXYtPmNvbnRyb2xs
ZXJfc3RhdGU7CiAKIAkvKiByZWplY3QgaW52YWxpZCBtZXNzYWdlcyBhbmQgdHJhbnNmZXJzICov
Ci0JaWYgKGxpc3RfZW1wdHkoJm0tPnRyYW5zZmVycykpIHsKKwlpZiAobGlzdF9lbXB0eSgmbS0+
dHJhbnNmZXJzKSkKIAkJcmV0dXJuIC1FSU5WQUw7Ci0JfQogCiAJLyogdmFsaWRhdGUgaW5wdXQg
Ki8KIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KHRyYW5zZmVyLCAmbS0+dHJhbnNmZXJzLCB0cmFuc2Zl
cl9saXN0KSB7CkBAIC0zNTMsMTcgKzM0OCwxNCBAQCBrcF9zcGlfdHJhbnNmZXJfb25lX21lc3Nh
Z2Uoc3RydWN0IHNwaV9tYXN0ZXIgKm1hc3Rlciwgc3RydWN0IHNwaV9tZXNzYWdlICptKQogCQkJ
c2MucmVnID0ga3Bfc3BpX3JlYWRfcmVnKGNzLCBLUF9TUElfUkVHX0NPTkZJRyk7CiAKIAkJCS8q
IC4uLmRpcmVjdGlvbiAqLwotCQkJaWYgKHRyYW5zZmVyLT50eF9idWYpIHsKKwkJCWlmICh0cmFu
c2Zlci0+dHhfYnVmKQogCQkJCXNjLmJpdGZpZWxkLnRybSA9IEtQX1NQSV9SRUdfQ09ORklHX1RS
TV9UWDsKLQkJCX0KLQkJCWVsc2UgaWYgKHRyYW5zZmVyLT5yeF9idWYpIHsKKwkJCWVsc2UgaWYg
KHRyYW5zZmVyLT5yeF9idWYpCiAJCQkJc2MuYml0ZmllbGQudHJtID0gS1BfU1BJX1JFR19DT05G
SUdfVFJNX1JYOwotCQkJfQogCiAJCQkvKiAuLi53b3JkIGxlbmd0aCAqLwotCQkJaWYgKHRyYW5z
ZmVyLT5iaXRzX3Blcl93b3JkKSB7CisJCQlpZiAodHJhbnNmZXItPmJpdHNfcGVyX3dvcmQpCiAJ
CQkJd29yZF9sZW4gPSB0cmFuc2Zlci0+Yml0c19wZXJfd29yZDsKLQkJCX0KIAkJCXNjLmJpdGZp
ZWxkLndsID0gd29yZF9sZW4gLSAxOwogCiAJCQkvKiAuLi5jaGlwIHNlbGVjdCAqLwpAQCAtMzgy
LDkgKzM3NCw4IEBAIGtwX3NwaV90cmFuc2Zlcl9vbmVfbWVzc2FnZShzdHJ1Y3Qgc3BpX21hc3Rl
ciAqbWFzdGVyLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm0pCiAJCQl9CiAJCX0KIAotCQlpZiAodHJh
bnNmZXItPmRlbGF5X3VzZWNzKSB7CisJCWlmICh0cmFuc2Zlci0+ZGVsYXlfdXNlY3MpCiAJCQl1
ZGVsYXkodHJhbnNmZXItPmRlbGF5X3VzZWNzKTsKLQkJfQogCX0KIAogCS8qIGRlLWFzc2VydCBj
aGlwIHNlbGVjdCB0byBlbmQgdGhlIHNlcXVlbmNlICovCkBAIC00MDYsOSArMzk3LDggQEAga3Bf
c3BpX3RyYW5zZmVyX29uZV9tZXNzYWdlKHN0cnVjdCBzcGlfbWFzdGVyICptYXN0ZXIsIHN0cnVj
dCBzcGlfbWVzc2FnZSAqbSkKIGtwX3NwaV9jbGVhbnVwKHN0cnVjdCBzcGlfZGV2aWNlICpzcGlk
ZXYpCiB7CiAJc3RydWN0IGtwX3NwaV9jb250cm9sbGVyX3N0YXRlICpjcyA9IHNwaWRldi0+Y29u
dHJvbGxlcl9zdGF0ZTsKLQlpZiAoY3MpIHsKKwlpZiAoY3MpCiAJCWtmcmVlKGNzKTsKLQl9CiB9
CiAKIC8qKioqKioqKioqKioqKioqKioKQEAgLTQ1MCw5ICs0NDAsOCBAQCBrcF9zcGlfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGxkZXYpCiAJa3BzcGktPmRldiA9ICZwbGRldi0+ZGV2
OwogCiAJbWFzdGVyLT5udW1fY2hpcHNlbGVjdCA9IDQ7Ci0JaWYgKHBsZGV2LT5pZCAhPSAtMSkg
eworCWlmIChwbGRldi0+aWQgIT0gLTEpCiAJCW1hc3Rlci0+YnVzX251bSA9IHBsZGV2LT5pZDsK
LQl9CiAKIAlyID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBsZGV2LCBJT1JFU09VUkNFX01FTSwg
MCk7CiAJaWYgKHIgPT0gTlVMTCkgewotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
