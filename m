Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218E95B7D2
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B7DA879FC;
	Mon,  1 Jul 2019 09:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 230e1yCvQz9B; Mon,  1 Jul 2019 09:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29F6887987;
	Mon,  1 Jul 2019 09:18:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 628E71BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5F7778562D
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nZyQ1jP08cS for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8C965854AF
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:24 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id k18so12327897ljc.11
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xnGzpgrloPpecP5lmIfO2uWEIueLQKQHuqUdB5786nE=;
 b=yACaMc4g8j3hx/NgX9T84gJhPdqw3OvWNan6U6E9stNXr9Sr4Adhmnz8YVybMIEsDX
 9kV4n2dluX5DwV8vWFdAslmKxvvis4evgjQ0NDOu8gGqTVLrGSRnlVR+vvbFy+kmn1XP
 fQVK17Y8S/cS59UTHp91/E5jAe3l9CCPccF3o/511ZnDPVC3SIj+IRFn1yT+TgAHFcZR
 t5mRn+YhsEdGaODChO8WNlhj/8aMDYWAyMV70IdBTvoOHqCUuukniZlJPNTBRQ0psvot
 RDy9dXoqbdGXTk4IJlzvIs53tyqt+YYgdHf6jamgqqRUDdFEp++5oXXL/ByhTxawtYop
 oAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xnGzpgrloPpecP5lmIfO2uWEIueLQKQHuqUdB5786nE=;
 b=NSXGVHHkGU8IyMpiMNfn8x8Xy5T7PyThziqYLwPQwlvX8mihmzA1KY1JVtxwwAUrOr
 4MhTzmJP3RmIqtJ6JKIimpqmy8gket07lDtCx2H/2egE59PvQvuaCD/SWKMJcxie9b8P
 fgegfU2KZ0E0b3xUjW5HN4bMR3Z4S4uwjE7iYbePDVAYvtbU2QDjUdNTQdlM03YyGh2I
 anzcvAcnSVX7nDW/3+3NKoISgcv22FHj90LW2UTO5/2R1r4lwFYFslVglUxCe+6vsagl
 H8AdtPwoUZg64p+N5qkZkxS4mIHYWM4rUUJJc7qQOz5mFHQPc+LeGui5fXzQbw+9D1RI
 ojYw==
X-Gm-Message-State: APjAAAUIkXLgXfCIgWIH3VDLY76GkYQToTPQWaVcpsno+eV6WZQLQ54q
 PPhQUNnMs6I/PdXtRUvoMhjq2Q==
X-Google-Smtp-Source: APXvYqyPU7yNzZLFgu6Nh2z/u3nnbpMpnEUjP3Fk0MEn8WWnpZQSsQvJvuAt7/NvZogjBM3RZGMlkg==
X-Received: by 2002:a2e:2b8f:: with SMTP id r15mr12915741ljr.210.1561972702306; 
 Mon, 01 Jul 2019 02:18:22 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id i23sm3134821ljb.7.2019.07.01.02.18.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:21 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: kpc2000: fix brace issues in kpc2000_spi.c
Date: Mon,  1 Jul 2019 11:18:19 +0200
Message-Id: <20190701091819.18528-1-simon@nikanor.nu>
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
LS0KCkNoYW5nZWQgaW4gdjI6IHJlYmFzZWQuCgogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3Bj
MjAwMF9zcGkuYyB8IDMzICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGMyMDAwX3NwaS5jCmluZGV4IDAyMWNjODU5ZmVlZC4uMDA5ZGVjMmY0NjQxIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3NwaS5jCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMKQEAgLTE2NSw5ICsxNjUsOSBAQCBrcF9zcGlf
cmVhZF9yZWcoc3RydWN0IGtwX3NwaV9jb250cm9sbGVyX3N0YXRlICpjcywgaW50IGlkeCkKIAl1
NjQgdmFsOwogCiAJYWRkciArPSBpZHg7Ci0JaWYgKChpZHggPT0gS1BfU1BJX1JFR19DT05GSUcp
ICYmIChjcy0+Y29uZl9jYWNoZSA+PSAwKSkgeworCWlmICgoaWR4ID09IEtQX1NQSV9SRUdfQ09O
RklHKSAmJiAoY3MtPmNvbmZfY2FjaGUgPj0gMCkpCiAJCXJldHVybiBjcy0+Y29uZl9jYWNoZTsK
LQl9CisKIAl2YWwgPSByZWFkcShhZGRyKTsKIAlyZXR1cm4gdmFsOwogfQpAQCAtMTkyLDExICsx
OTIsMTAgQEAga3Bfc3BpX3dhaXRfZm9yX3JlZ19iaXQoc3RydWN0IGtwX3NwaV9jb250cm9sbGVy
X3N0YXRlICpjcywgaW50IGlkeCwKIAl0aW1lb3V0ID0gamlmZmllcyArIG1zZWNzX3RvX2ppZmZp
ZXMoMTAwMCk7CiAJd2hpbGUgKCEoa3Bfc3BpX3JlYWRfcmVnKGNzLCBpZHgpICYgYml0KSkgewog
CQlpZiAodGltZV9hZnRlcihqaWZmaWVzLCB0aW1lb3V0KSkgewotCQkJaWYgKCEoa3Bfc3BpX3Jl
YWRfcmVnKGNzLCBpZHgpICYgYml0KSkgeworCQkJaWYgKCEoa3Bfc3BpX3JlYWRfcmVnKGNzLCBp
ZHgpICYgYml0KSkKIAkJCQlyZXR1cm4gLUVUSU1FRE9VVDsKLQkJCX0gZWxzZSB7CisJCQllbHNl
CiAJCQkJcmV0dXJuIDA7Ci0JCQl9CiAJCX0KIAkJY3B1X3JlbGF4KCk7CiAJfQpAQCAtMjY5LDkg
KzI2OCw4IEBAIGtwX3NwaV9zZXR1cChzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpZGV2KQogCWNzID0g
c3BpZGV2LT5jb250cm9sbGVyX3N0YXRlOwogCWlmICghY3MpIHsKIAkJY3MgPSBremFsbG9jKHNp
emVvZigqY3MpLCBHRlBfS0VSTkVMKTsKLQkJaWYgKCFjcykgeworCQlpZiAoIWNzKQogCQkJcmV0
dXJuIC1FTk9NRU07Ci0JCX0KIAkJY3MtPmJhc2UgPSBrcHNwaS0+YmFzZTsKIAkJY3MtPmNvbmZf
Y2FjaGUgPSAtMTsKIAkJc3BpZGV2LT5jb250cm9sbGVyX3N0YXRlID0gY3M7CkBAIC0zMDUsOSAr
MzAzLDggQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdlKHN0cnVjdCBzcGlfbWFzdGVyICpt
YXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKIAljcyA9IHNwaWRldi0+Y29udHJvbGxlcl9z
dGF0ZTsKIAogCS8qIHJlamVjdCBpbnZhbGlkIG1lc3NhZ2VzIGFuZCB0cmFuc2ZlcnMgKi8KLQlp
ZiAobGlzdF9lbXB0eSgmbS0+dHJhbnNmZXJzKSkgeworCWlmIChsaXN0X2VtcHR5KCZtLT50cmFu
c2ZlcnMpKQogCQlyZXR1cm4gLUVJTlZBTDsKLQl9CiAKIAkvKiB2YWxpZGF0ZSBpbnB1dCAqLwog
CWxpc3RfZm9yX2VhY2hfZW50cnkodHJhbnNmZXIsICZtLT50cmFuc2ZlcnMsIHRyYW5zZmVyX2xp
c3QpIHsKQEAgLTM2NSwxNyArMzYyLDE0IEBAIGtwX3NwaV90cmFuc2Zlcl9vbmVfbWVzc2FnZShz
dHJ1Y3Qgc3BpX21hc3RlciAqbWFzdGVyLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm0pCiAJCQlzYy5y
ZWcgPSBrcF9zcGlfcmVhZF9yZWcoY3MsIEtQX1NQSV9SRUdfQ09ORklHKTsKIAogCQkJLyogLi4u
ZGlyZWN0aW9uICovCi0JCQlpZiAodHJhbnNmZXItPnR4X2J1ZikgeworCQkJaWYgKHRyYW5zZmVy
LT50eF9idWYpCiAJCQkJc2MuYml0ZmllbGQudHJtID0gS1BfU1BJX1JFR19DT05GSUdfVFJNX1RY
OwotCQkJfQotCQkJZWxzZSBpZiAodHJhbnNmZXItPnJ4X2J1ZikgeworCQkJZWxzZSBpZiAodHJh
bnNmZXItPnJ4X2J1ZikKIAkJCQlzYy5iaXRmaWVsZC50cm0gPSBLUF9TUElfUkVHX0NPTkZJR19U
Uk1fUlg7Ci0JCQl9CiAKIAkJCS8qIC4uLndvcmQgbGVuZ3RoICovCi0JCQlpZiAodHJhbnNmZXIt
PmJpdHNfcGVyX3dvcmQpIHsKKwkJCWlmICh0cmFuc2Zlci0+Yml0c19wZXJfd29yZCkKIAkJCQl3
b3JkX2xlbiA9IHRyYW5zZmVyLT5iaXRzX3Blcl93b3JkOwotCQkJfQogCQkJc2MuYml0ZmllbGQu
d2wgPSB3b3JkX2xlbiAtIDE7CiAKIAkJCS8qIC4uLmNoaXAgc2VsZWN0ICovCkBAIC0zOTQsOSAr
Mzg4LDggQEAga3Bfc3BpX3RyYW5zZmVyX29uZV9tZXNzYWdlKHN0cnVjdCBzcGlfbWFzdGVyICpt
YXN0ZXIsIHN0cnVjdCBzcGlfbWVzc2FnZSAqbSkKIAkJCX0KIAkJfQogCi0JCWlmICh0cmFuc2Zl
ci0+ZGVsYXlfdXNlY3MpIHsKKwkJaWYgKHRyYW5zZmVyLT5kZWxheV91c2VjcykKIAkJCXVkZWxh
eSh0cmFuc2Zlci0+ZGVsYXlfdXNlY3MpOwotCQl9CiAJfQogCiAJLyogZGUtYXNzZXJ0IGNoaXAg
c2VsZWN0IHRvIGVuZCB0aGUgc2VxdWVuY2UgKi8KQEAgLTQxOSw5ICs0MTIsOCBAQCBrcF9zcGlf
Y2xlYW51cChzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpZGV2KQogewogCXN0cnVjdCBrcF9zcGlfY29u
dHJvbGxlcl9zdGF0ZSAqY3MgPSBzcGlkZXYtPmNvbnRyb2xsZXJfc3RhdGU7CiAKLQlpZiAoY3Mp
IHsKKwlpZiAoY3MpCiAJCWtmcmVlKGNzKTsKLQl9CiB9CiAKIC8qKioqKioqKioqKioqKioqKioK
QEAgLTQ2NCw5ICs0NTYsOCBAQCBrcF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGxkZXYpCiAJa3BzcGktPmRldiA9ICZwbGRldi0+ZGV2OwogCiAJbWFzdGVyLT5udW1fY2hpcHNl
bGVjdCA9IDQ7Ci0JaWYgKHBsZGV2LT5pZCAhPSAtMSkgeworCWlmIChwbGRldi0+aWQgIT0gLTEp
CiAJCW1hc3Rlci0+YnVzX251bSA9IHBsZGV2LT5pZDsKLQl9CiAKIAlyID0gcGxhdGZvcm1fZ2V0
X3Jlc291cmNlKHBsZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7CiAJaWYgKHIgPT0gTlVMTCkgewot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
