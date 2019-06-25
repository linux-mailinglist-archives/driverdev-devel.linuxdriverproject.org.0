Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A63526EA
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 10:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F24FE879EF;
	Tue, 25 Jun 2019 08:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLwuaaLks5T8; Tue, 25 Jun 2019 08:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E3C68798F;
	Tue, 25 Jun 2019 08:41:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5AF51BF319
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A2F6285DF5
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7RqUs2TGvqWy for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 08:41:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF80D85DF2
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 08:41:38 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id t28so15358981lje.9
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 01:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rd250VDhsjPLUwA1a42kw4RNZnyxND2ZxMWmtg0lvNo=;
 b=WcVfJ0X0LUHLM0e/G6nd/vLI+BGUCKQWYKotmqkmKz+bpFDdiBnvJ8jEt09JC6Jw8Q
 1FWXOrrHi9NET4XQMT/spR6M1nzKZcrV8L2Vcxn38bAoHJNXtKWj85EJ7PZoB16UqAjM
 PRmqvrLoSKWAUIEdxfcr06a6iAPOykZhM3eggXl7TD3T5uiifP5VNTZkhApb8jNfAriw
 Kt2K3b1M/7RG7jw7qTSF8bzq62CpWR6slmgyqXI/rYvl30WhT3sSgsERYvFoeO90Fyrn
 wF67T/7T1kYcM2slwppbIWXSJCGEqHPJhDYuWPZFU33Eka4iEw4wME5xliWeCgGR774B
 MqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rd250VDhsjPLUwA1a42kw4RNZnyxND2ZxMWmtg0lvNo=;
 b=LmpEcoLZ2DkGwysjUC9yaQnzToQpnThI+HvnuPFuMpn+sLHpXQ5wDN2feKiOJhlOYA
 FEAN+1ZWLa3NnIaS0KA+HXdO7SfI8fV6oPFKkPcaY+GC/AemjRwYj/l0yFfR/7dl+Ixb
 NjnlBIiLl4DdU7STYpC+oGaRnCPw9uabk+yOK5OjfAtKFjPWDwxpp1RXAv8PjFipQSZx
 RNHtD8zlf2cgKUs3lXNgfQaUCBfEOfKr5cP86Ppm+VTr5f3rYUfCwC/tWMXBb44fBccx
 dK280GKJokwgWNnz9dAVzr0g0PZgt7A2unKGEruZ69QdnIc5VKBkwPewVYkT31TKNa4p
 cLEg==
X-Gm-Message-State: APjAAAXGZOwVWX0z/U90y7dcbEsqlV6aKnGIzxhl94FsMkNpP2FpiqjM
 m3GPxAWv9jZgvIf7NnILQIFGtw==
X-Google-Smtp-Source: APXvYqxlEa2qcgRTrBKbmMGD0WUI4gNzVSn1EmnChp9trqvT5sEKRzwQR4wR12wpCpwZY/aiwZNdWg==
X-Received: by 2002:a2e:3a05:: with SMTP id h5mr73942952lja.114.1561452096735; 
 Tue, 25 Jun 2019 01:41:36 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id h78sm341564ljf.88.2019.06.25.01.41.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 01:41:35 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: kpc2000: add missing spaces in kpc2000_spi.c
Date: Tue, 25 Jun 2019 10:41:28 +0200
Message-Id: <20190625084130.1107-3-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaCBlcnJvcnM6Ci0gc3BhY2VzIHJlcXVpcmVkIGFyb3VuZCB0aGF0ICc9
JyAoY3R4OlZ4VikKLSBzcGFjZSByZXF1aXJlZCBiZWZvcmUgdGhlIG9wZW4gcGFyZW50aGVzaXMg
JygnCi0gc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnLScgKGN0eDpWeFYpCi0gc3BhY2Ug
cmVxdWlyZWQgYmVmb3JlIHRoZSBvcGVuIGJyYWNlICd7JwoKU2lnbmVkLW9mZi1ieTogU2ltb24g
U2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGMyMDAwX3NwaS5jIHwgMTQgKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L2twYzIwMDAva3BjMjAwMF9zcGkuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBf
c3BpLmMKaW5kZXggYzNlNWMxODQ4ZjUzLi45ODQ4NGZiYjlkMmUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjMjAwMF9zcGkuYwpAQCAtMTY0LDcgKzE2NCw3IEBAIGtwX3NwaV9yZWFkX3JlZyhz
dHJ1Y3Qga3Bfc3BpX2NvbnRyb2xsZXJfc3RhdGUgKmNzLCBpbnQgaWR4KQogCXU2NCB2YWw7CiAK
IAlhZGRyICs9IGlkeDsKLQlpZiAoKGlkeCA9PSBLUF9TUElfUkVHX0NPTkZJRykgJiYgKGNzLT5j
b25mX2NhY2hlID49IDApKXsKKwlpZiAoKGlkeCA9PSBLUF9TUElfUkVHX0NPTkZJRykgJiYgKGNz
LT5jb25mX2NhY2hlID49IDApKSB7CiAJCXJldHVybiBjcy0+Y29uZl9jYWNoZTsKIAl9CiAJdmFs
ID0gcmVhZHEoYWRkcik7CkBAIC0yMjMsOSArMjIzLDkgQEAga3Bfc3BpX3R4cnhfcGlvKHN0cnVj
dCBzcGlfZGV2aWNlICpzcGlkZXYsIHN0cnVjdCBzcGlfdHJhbnNmZXIgKnRyYW5zZmVyKQogCQkJ
cHJvY2Vzc2VkKys7CiAJCX0KIAl9Ci0JZWxzZSBpZihyeCkgeworCWVsc2UgaWYgKHJ4KSB7CiAJ
CWZvciAoaSA9IDAgOyBpIDwgYyA7IGkrKykgewotCQkJY2hhciB0ZXN0PTA7CisJCQljaGFyIHRl
c3QgPSAwOwogCiAJCQlrcF9zcGlfd3JpdGVfcmVnKGNzLCBLUF9TUElfUkVHX1RYREFUQSwgMHgw
MCk7CiAKQEAgLTI2MSw3ICsyNjEsNyBAQCBrcF9zcGlfc2V0dXAoc3RydWN0IHNwaV9kZXZpY2Ug
KnNwaWRldikKIAljcyA9IHNwaWRldi0+Y29udHJvbGxlcl9zdGF0ZTsKIAlpZiAoIWNzKSB7CiAJ
CWNzID0ga3phbGxvYyhzaXplb2YoKmNzKSwgR0ZQX0tFUk5FTCk7Ci0JCWlmKCFjcykgeworCQlp
ZiAoIWNzKSB7CiAJCQlyZXR1cm4gLUVOT01FTTsKIAkJfQogCQljcy0+YmFzZSA9IGtwc3BpLT5i
YXNlOwpAQCAtMzY0LDcgKzM2NCw3IEBAIGtwX3NwaV90cmFuc2Zlcl9vbmVfbWVzc2FnZShzdHJ1
Y3Qgc3BpX21hc3RlciAqbWFzdGVyLCBzdHJ1Y3Qgc3BpX21lc3NhZ2UgKm0pCiAJCQlpZiAodHJh
bnNmZXItPmJpdHNfcGVyX3dvcmQpIHsKIAkJCQl3b3JkX2xlbiA9IHRyYW5zZmVyLT5iaXRzX3Bl
cl93b3JkOwogCQkJfQotCQkJc2MuYml0ZmllbGQud2wgPSB3b3JkX2xlbi0xOworCQkJc2MuYml0
ZmllbGQud2wgPSB3b3JkX2xlbiAtIDE7CiAKIAkJCS8qIC4uLmNoaXAgc2VsZWN0ICovCiAJCQlz
Yy5iaXRmaWVsZC5jcyA9IHNwaWRldi0+Y2hpcF9zZWxlY3Q7CkBAIC00MjUsNyArNDI1LDcgQEAg
a3Bfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBsZGV2KQogCWludCBpOwogCiAJ
ZHJ2ZGF0YSA9IHBsZGV2LT5kZXYucGxhdGZvcm1fZGF0YTsKLQlpZiAoIWRydmRhdGEpeworCWlm
ICghZHJ2ZGF0YSkgewogCQlkZXZfZXJyKCZwbGRldi0+ZGV2LCAia3Bfc3BpX3Byb2JlOiBwbGF0
Zm9ybV9kYXRhIGlzIE5VTEwhXG4iKTsKIAkJcmV0dXJuIC1FTk9ERVY7CiAJfQpAQCAtNDc2LDcg
KzQ3Niw3IEBAIGtwX3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwbGRldikKIAkJ
c3BpX25ld19kZXZpY2UobWFzdGVyLCAmKHRhYmxlW2ldKSk7IFwKIAl9CiAKLQlzd2l0Y2ggKChk
cnZkYXRhLT5jYXJkX2lkICYgMHhGRkZGMDAwMCkgPj4gMTYpeworCXN3aXRjaCAoKGRydmRhdGEt
PmNhcmRfaWQgJiAweEZGRkYwMDAwKSA+PiAxNikgewogCWNhc2UgUENJX0RFVklDRV9JRF9EQUtU
Uk9OSUNTX0tBRE9LQV9QMktSMDoKIAkJTkVXX1NQSV9ERVZJQ0VfRlJPTV9CT0FSRF9JTkZPX1RB
QkxFKHAya3IwX2JvYXJkX2luZm8pOwogCQlicmVhazsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
