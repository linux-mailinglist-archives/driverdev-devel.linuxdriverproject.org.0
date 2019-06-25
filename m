Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3528526EB
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 10:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5ABE86C82;
	Tue, 25 Jun 2019 08:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-rj18J1yMGA; Tue, 25 Jun 2019 08:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43448879A6;
	Tue, 25 Jun 2019 08:41:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB7D41BF319
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C84992039F
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id voMutGcP9t4N for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 08:41:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E1BD20506
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 08:41:41 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id a21so15364988ljh.7
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 01:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sT0YZ5enr1IjgWnf7+8eOaRAS62hBp5cUSkc0cP/3oI=;
 b=h+1idvdy1rIsuqzSoEQ6L53/Rpk7LktZhBSjZo+AZ10Ery6goReuZ+HMVjmB6zv1NK
 +7A0if8oT1XPrYcsyYjfpDIC62nTFZHD8bzx3CJmXIQ8fE1hxX6sTf2OY9i8pXY1y6Fh
 3awRBU4mRA+r/0qe8y//xNgWHaFd0UKQaL6BIOGxb4dnlJExg/9liuH6LNiNtkgElb1l
 TqU1JBIxFXXbvginUp+Db5+Phl1ndLnOYNFg50UbE+5yQkn9dvEKoS5DLVrzBNxyWzwz
 xJLDVv3vKbW5mWddxa+wuMRtrwfodZ4qvKwQ0zzDaTEdjX61fcXmIpCyu8ykOhPg3C07
 s4kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sT0YZ5enr1IjgWnf7+8eOaRAS62hBp5cUSkc0cP/3oI=;
 b=ammLBSDn5BL4b0zmMHIguLVxmN86vPA2kFjrDZ/v4h/SMtVu2CHaJlN6G5CidVbARr
 gbynMialUTj5r+1a0ZiIb4ZEzHUir2o0bF/LNxzYy+gBXDUWGl+JS6KIMpiNE//A4XTw
 T4V0UCjIBpryqD8w3f7yCWJI6IpPnqOoHSi2QjYMf3G2iEDKXAiELGccDdhYNSm5SSIb
 fX0Sqb42ysFuX1sz52zjIgYZviTPlHppkvoiM77MgOnmL26plby1s1GNIDGNpkmDsU+c
 6KOANWQXfxKPyye4gvUOedbhXH7NdYAKQ3BD2Dwau2gtvoU9QhmFn/RpY50TzF3ZsC4S
 9GLQ==
X-Gm-Message-State: APjAAAXY8SapRsHtK2Y8W41dW9ASidozUBaVNz5OrxsT8uTSs9mzpiF8
 1ygiFei5QkvGUCAEECbyEBDjQw==
X-Google-Smtp-Source: APXvYqyhNRxe+Iyz0E8lvH38qfGCePVTqLsSX/TK9reum1lySDwVSWS9NIeoWyoXNZM6UksA24MGHA==
X-Received: by 2002:a2e:12dc:: with SMTP id 89mr20550744ljs.40.1561452099620; 
 Tue, 25 Jun 2019 01:41:39 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id h78sm341564ljf.88.2019.06.25.01.41.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 01:41:39 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: kpc2000: fix brace issues in kpc2000_spi.c
Date: Tue, 25 Jun 2019 10:41:30 +0200
Message-Id: <20190625084130.1107-5-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaCBlcnJvcnM6ICJlbHNlIHNob3VsZCBmb2xsb3cgY2xvc2UgYnJhY2Ug
J30nIiBhbmQKImJyYWNlcyB7fSBhcmUgbm90IG5lY2Vzc2FyeSBmb3Igc2luZ2xlIHN0YXRlbWVu
dCBibG9ja3MiLgoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5v
ci5udT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3NwaS5jIHwgMTAgKysr
Ky0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3NwaS5jIGIvZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9zcGkuYwppbmRleCA2OGIwNDlmOWFkNjkuLjRi
MTQ2ODEzNzcwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9z
cGkuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3NwaS5jCkBAIC0xNjQs
OSArMTY0LDkgQEAga3Bfc3BpX3JlYWRfcmVnKHN0cnVjdCBrcF9zcGlfY29udHJvbGxlcl9zdGF0
ZSAqY3MsIGludCBpZHgpCiAJdTY0IHZhbDsKIAogCWFkZHIgKz0gaWR4OwotCWlmIChpZHggPT0g
S1BfU1BJX1JFR19DT05GSUcgJiYgY3MtPmNvbmZfY2FjaGUgPj0gMCkgeworCWlmIChpZHggPT0g
S1BfU1BJX1JFR19DT05GSUcgJiYgY3MtPmNvbmZfY2FjaGUgPj0gMCkKIAkJcmV0dXJuIGNzLT5j
b25mX2NhY2hlOwotCX0KKwogCXZhbCA9IHJlYWRxKGFkZHIpOwogCXJldHVybiB2YWw7CiB9CkBA
IC0yMjIsOCArMjIyLDcgQEAga3Bfc3BpX3R4cnhfcGlvKHN0cnVjdCBzcGlfZGV2aWNlICpzcGlk
ZXYsIHN0cnVjdCBzcGlfdHJhbnNmZXIgKnRyYW5zZmVyKQogCQkJa3Bfc3BpX3dyaXRlX3JlZyhj
cywgS1BfU1BJX1JFR19UWERBVEEsIHZhbCk7CiAJCQlwcm9jZXNzZWQrKzsKIAkJfQotCX0KLQll
bHNlIGlmIChyeCkgeworCX0gZWxzZSBpZiAocngpIHsKIAkJZm9yIChpID0gMCA7IGkgPCBjIDsg
aSsrKSB7CiAJCQljaGFyIHRlc3QgPSAwOwogCkBAIC0yNjEsOSArMjYwLDggQEAga3Bfc3BpX3Nl
dHVwKHN0cnVjdCBzcGlfZGV2aWNlICpzcGlkZXYpCiAJY3MgPSBzcGlkZXYtPmNvbnRyb2xsZXJf
c3RhdGU7CiAJaWYgKCFjcykgewogCQljcyA9IGt6YWxsb2Moc2l6ZW9mKCpjcyksIEdGUF9LRVJO
RUwpOwotCQlpZiAoIWNzKSB7CisJCWlmICghY3MpCiAJCQlyZXR1cm4gLUVOT01FTTsKLQkJfQog
CQljcy0+YmFzZSA9IGtwc3BpLT5iYXNlOwogCQljcy0+Y29uZl9jYWNoZSA9IC0xOwogCQlzcGlk
ZXYtPmNvbnRyb2xsZXJfc3RhdGUgPSBjczsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
