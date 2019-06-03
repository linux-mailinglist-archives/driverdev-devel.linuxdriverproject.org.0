Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC5133B3D
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEE1188DC0;
	Mon,  3 Jun 2019 22:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id krXE03rcpJfA; Mon,  3 Jun 2019 22:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 287FC88DB2;
	Mon,  3 Jun 2019 22:29:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 693DE1BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66632896C1
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X1WBfqNXArYR for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 18067896BF
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:22 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id r15so14827721lfm.11
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BH9FichXxL+rVylSY90H19dLcsYWaCyFQpGIdwFhPgI=;
 b=DhaQnSuBhmhxnY8bZTi10h2KLowVNKRl26Y+A+2/AR3/ArSy1srERye6QR3F+1e/ud
 dKsmMkIawwDNrbstXC2MU0GjHFh9mJUj9H5u/yw23AkaDDdW7qXDVb3XFj8UhKqBPVV2
 y3CmwuVbOGxNwDb3MXRIDB3uuwdwNrBeuqJFpXJ5HHAK6xIg62OERS9XFCrRLgDBk+y0
 QkxhV4p+G7FG7OZd1shfbrl4Y81+lZI/rakFijcAM6p0+N/+ajCV12BMduDQIYPcqL+K
 JT4wcf5VwpqZ/5ylzNgemKBkCmNSJJ9EEl2YaMoTUH7AO0XcriLLC7/buTPTn/CJN0JK
 fRgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BH9FichXxL+rVylSY90H19dLcsYWaCyFQpGIdwFhPgI=;
 b=H/Nc+gBPJnB6IY6QFOW5HdugRIUgjmattTyF2UBAlTwjQb9qYva6QFQrsMLdCa8KBi
 jlyj4QVWAm00dTyETEVbZMPGimtfnaH5lZbP6OJu/QgoHHA1l/G2bom9mKidutxKAS/U
 bYxsE7zm7Al/U9M2HAGf5CkN/NZS2jgjYzIUjvqsNDLdNTwtZXjOHJKylOnlNC5HaBfP
 KL/yA0zfxY1KUl8FKzMhko9jxGGKYSud68Kmt7micqecenwyI7dq8iuWcWJr9+E3CiE3
 hsh5KUm48C8Kcb4OxF327hQfXzJYQMU3eL0pU0UYp6VnUxb6ySSUlG2k0mjlRLkpUvaI
 wrkA==
X-Gm-Message-State: APjAAAWrqMuZN5B2D5RGsH81HF+DLdvgtwhASLuCwsly9FrslGEAxhx5
 orJkmbqcTu/ZY6Uhhn9ICnkg4A==
X-Google-Smtp-Source: APXvYqxdLz7Zar6/3D06FTw0PHYT9px9YJQH/Yc4u6Vmmn2DRJmsUWiHtXFROsbHEFNsym2PD72b9g==
X-Received: by 2002:a19:9f84:: with SMTP id
 i126mr14839014lfe.142.1559600960788; 
 Mon, 03 Jun 2019 15:29:20 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:20 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/7] staging: kpc2000: simplify comparisons to NULL in core.c
Date: Tue,  4 Jun 2019 00:29:10 +0200
Message-Id: <20190603222916.20698-2-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603222916.20698-1-simon@nikanor.nu>
References: <20190603222916.20698-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxkIGJl
IHdyaXR0ZW4gWy4uLl0iCmFuZCAiQ29tcGFyaXNvbnMgc2hvdWxkIHBsYWNlIHRoZSBjb25zdGFu
dCBvbiB0aGUgcmlnaHQgc2lkZSBvZiB0aGUKdGVzdCIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBT
YW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAw
L2twYzIwMDAvY29yZS5jIHwgMTIgKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9r
cGMyMDAwL2twYzIwMDAvY29yZS5jIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9j
b3JlLmMKaW5kZXggN2YyNTdjMjFlMGNjLi4zNTZhMjcyYzBiOWMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9r
cGMyMDAwL2twYzIwMDAvY29yZS5jCkBAIC0zMTksNyArMzE5LDcgQEAgc3RhdGljIGludCBrcDIw
MDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkgKiBTdGVwIDE6IEFsbG9jYXRl
IGEgc3RydWN0IGZvciB0aGUgcGNhcmQKIAkgKi8KIAlwY2FyZCA9IGt6YWxsb2Moc2l6ZW9mKHN0
cnVjdCBrcDIwMDBfZGV2aWNlKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKE5VTEwgPT0gcGNhcmQpIHsK
KwlpZiAoIXBjYXJkKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwKIAkJCSJwcm9iZTogZmFpbGVk
IHRvIGFsbG9jYXRlIHByaXZhdGUgY2FyZCBkYXRhXG4iKTsKIAkJcmV0dXJuIC1FTk9NRU07CkBA
IC0zNjMsNyArMzYzLDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwKIAlyZWdfYmFyX3BoeXNfbGVuID0gcGNpX3Jlc291cmNlX2xlbihwY2FyZC0+
cGRldiwgUkVHX0JBUik7CiAKIAlwY2FyZC0+cmVnc19iYXJfYmFzZSA9IGlvcmVtYXBfbm9jYWNo
ZShyZWdfYmFyX3BoeXNfYWRkciwgUEFHRV9TSVpFKTsKLQlpZiAoTlVMTCA9PSBwY2FyZC0+cmVn
c19iYXJfYmFzZSkgeworCWlmICghcGNhcmQtPnJlZ3NfYmFyX2Jhc2UpIHsKIAkJZGV2X2Vycigm
cGNhcmQtPnBkZXYtPmRldiwKIAkJCSJwcm9iZTogUkVHX0JBUiBjb3VsZCBub3QgcmVtYXAgbWVt
b3J5IHRvIHZpcnR1YWwgc3BhY2VcbiIpOwogCQllcnIgPSAtRU5PREVWOwpAQCAtMzk2LDcgKzM5
Niw3IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYs
CiAKIAlwY2FyZC0+ZG1hX2Jhcl9iYXNlID0gaW9yZW1hcF9ub2NhY2hlKGRtYV9iYXJfcGh5c19h
ZGRyLAogCQkJCQkgICAgICBkbWFfYmFyX3BoeXNfbGVuKTsKLQlpZiAoTlVMTCA9PSBwY2FyZC0+
ZG1hX2Jhcl9iYXNlKSB7CisJaWYgKCFwY2FyZC0+ZG1hX2Jhcl9iYXNlKSB7CiAJCWRldl9lcnIo
JnBjYXJkLT5wZGV2LT5kZXYsCiAJCQkicHJvYmU6IERNQV9CQVIgY291bGQgbm90IHJlbWFwIG1l
bW9yeSB0byB2aXJ0dWFsIHNwYWNlXG4iKTsKIAkJZXJyID0gLUVOT0RFVjsKQEAgLTU0Niw3ICs1
NDYsNyBAQCBzdGF0aWMgdm9pZCBrcDIwMDBfcGNpZV9yZW1vdmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYpCiAKIAlkZXZfZGJnKCZwZGV2LT5kZXYsICJrcDIwMDBfcGNpZV9yZW1vdmUocGRldj0lcClc
biIsIHBkZXYpOwogCi0JaWYgKHBjYXJkID09IE5VTEwpCisJaWYgKCFwY2FyZCkKIAkJcmV0dXJu
OwogCiAJbXV0ZXhfbG9jaygmcGNhcmQtPnNlbSk7CkBAIC01NTUsMTIgKzU1NSwxMiBAQCBzdGF0
aWMgdm9pZCBrcDIwMDBfcGNpZV9yZW1vdmUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCiAJc3lzZnNf
cmVtb3ZlX2ZpbGVzKCYocGRldi0+ZGV2LmtvYmopLCBrcF9hdHRyX2xpc3QpOwogCWZyZWVfaXJx
KHBjYXJkLT5wZGV2LT5pcnEsIHBjYXJkKTsKIAlwY2lfZGlzYWJsZV9tc2kocGNhcmQtPnBkZXYp
OwotCWlmIChwY2FyZC0+ZG1hX2Jhcl9iYXNlICE9IE5VTEwpIHsKKwlpZiAocGNhcmQtPmRtYV9i
YXJfYmFzZSkgewogCQlpb3VubWFwKHBjYXJkLT5kbWFfYmFyX2Jhc2UpOwogCQlwY2lfcmVsZWFz
ZV9yZWdpb24ocGRldiwgRE1BX0JBUik7CiAJCXBjYXJkLT5kbWFfYmFyX2Jhc2UgPSBOVUxMOwog
CX0KLQlpZiAocGNhcmQtPnJlZ3NfYmFyX2Jhc2UgIT0gTlVMTCkgeworCWlmIChwY2FyZC0+cmVn
c19iYXJfYmFzZSkgewogCQlpb3VubWFwKHBjYXJkLT5yZWdzX2Jhcl9iYXNlKTsKIAkJcGNpX3Jl
bGVhc2VfcmVnaW9uKHBkZXYsIFJFR19CQVIpOwogCQlwY2FyZC0+cmVnc19iYXJfYmFzZSA9IE5V
TEw7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
