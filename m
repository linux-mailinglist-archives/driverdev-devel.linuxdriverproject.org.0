Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA1433B41
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 269352EDE9;
	Mon,  3 Jun 2019 22:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imUPBzhueg-b; Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C61282CC5B;
	Mon,  3 Jun 2019 22:29:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2461BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05FED2D785
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJRJeLdy3o+F for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A44202CDF6
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:25 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id m15so9484244ljg.13
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qz773NbN9VGUdRz2W+Q9CTxauKIYzxumLCEO0NWgoxg=;
 b=F0SGbaULaPAPf/lhvvVE0Wpw/BPfvHCV8/LlOGQ+M+S32MC1HIM9eLKcPY9b0YwcCw
 /QJw5nhnagMmkBHPRpXlPeujOqL/87DPxvE7+hdB8AWZIpNCqAXFIJ1RztzkPF2jhlrc
 PGwC+wLqk52+Jo8TMqV1xYPYJMvoAvmyFSBkuZs31Z3LjWzVR0TTliHuK7NHSpy1nhAV
 TiC/ExWJac9wdzwHbrf829Pn/M2lEMbN9QZqTTjHdcbTIv6Bn6OJqj2xGqd70enPlt3G
 bfiCOjRrJwT5WCHOTeSOZhsUyxxNM049/6HRCVTVN8NAgtaDVNqIFKZ6/UlRtgKRI1VN
 lfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qz773NbN9VGUdRz2W+Q9CTxauKIYzxumLCEO0NWgoxg=;
 b=MSOymBNPzPeqHXVNukOq3ys9z+Eofr7HSJPCtLXpaVCIAVRvzeVkn7slTFG8qDZwlu
 XhgGYANb8aiRt3Dn/mZ1ytZ9x4PnV+vWcnnYBOADg0nfGFvqT0kHDGYZ/uLway+5mNVE
 OJ43l6uUMJ0GY38ClXKEKuK4/e86k4P5e653BFrJvmlEsAQy5guRi09o/TXDLlBa8gV1
 nDWZ/AfVNlYeFyOrZzDz/edozzjJEZk0K75cxWWx8ws45a2VFuCdmuAvv0dgaQnT3qL+
 c+KSfbEy51lxIgFKINIn4NAYLahi8bQmiALUIM/nVDk9UVt8wt+0Jcluw7tf9I4jHeKc
 YSbA==
X-Gm-Message-State: APjAAAXOOo6MRqu6a+a6z2SepCYOYEjWUkklcUEkJWcmL2PN3GWhPRO9
 Qz9mAxIW05R1NcnrnOT3uDVANLBNs1d1sg==
X-Google-Smtp-Source: APXvYqw3OxjW0YGAZox0GDRk6sa8aCCl/xX9Zi7b+TuGB4FKLa/1+f4JDNXqNKOkQtP64SZNBtUsHA==
X-Received: by 2002:a05:651c:d7:: with SMTP id 23mr3065196ljr.50.1559600963916; 
 Mon, 03 Jun 2019 15:29:23 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:23 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/7] staging: kpc2000: use __func__ in debug messages in core.c
Date: Tue,  4 Jun 2019 00:29:13 +0200
Message-Id: <20190603222916.20698-5-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIgdXNpbmcgJyIlcy4uLiIsIF9fZnVu
Y19fJyB0byB1c2luZwonPGZ1bmN0aW9uIG5hbWU+JywgdGhpcyBmdW5jdGlvbidzIG5hbWUsIGlu
IGEgc3RyaW5nIi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fu
b3IubnU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgfCAxMCAr
KysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIv
ZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggYTcwNjY1YTIwMmMz
Li42ZDRmYzFmMzdjOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIw
MDAvY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBA
IC0zMTIsOCArMzEyLDggQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwKIAl1bnNpZ25lZCBsb25nIGRtYV9iYXJfcGh5c19sZW47CiAJdTE2IHJlZ3Zh
bDsKIAotCWRldl9kYmcoJnBkZXYtPmRldiwgImtwMjAwMF9wY2llX3Byb2JlKHBkZXYgPSBbJXBd
LCBpZCA9IFslcF0pXG4iLAotCQlwZGV2LCBpZCk7CisJZGV2X2RiZygmcGRldi0+ZGV2LCAiJXMo
cGRldiA9IFslcF0sIGlkID0gWyVwXSlcbiIsCisJCV9fZnVuY19fLCBwZGV2LCBpZCk7CiAKIAkv
KgogCSAqIFN0ZXAgMTogQWxsb2NhdGUgYSBzdHJ1Y3QgZm9yIHRoZSBwY2FyZApAQCAtNDgxLDcg
KzQ4MSw3IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsCiAJCQkgcGNhcmQtPm5hbWUsIHBjYXJkKTsKIAlpZiAocnYpIHsKIAkJZGV2X2VycigmcGNh
cmQtPnBkZXYtPmRldiwKLQkJCSJrcDIwMDBfcGNpZV9wcm9iZTogZmFpbGVkIHRvIHJlcXVlc3Rf
aXJxOiAlZFxuIiwgcnYpOworCQkJIiVzOiBmYWlsZWQgdG8gcmVxdWVzdF9pcnE6ICVkXG4iLCBf
X2Z1bmNfXywgcnYpOwogCQlnb3RvIG91dDhiOwogCX0KIApAQCAtNTA3LDcgKzUwNyw3IEBAIHN0
YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJd3JpdGVs
KEtQQ19ETUFfQ0FSRF9JUlFfRU5BQkxFIHwgS1BDX0RNQV9DQVJEX1VTRVJfSU5URVJSVVBUX01P
REUsCiAJICAgICAgIHBjYXJkLT5kbWFfY29tbW9uX3JlZ3MpOwogCi0JZGV2X2RiZygmcGNhcmQt
PnBkZXYtPmRldiwgImtwMjAwMF9wY2llX3Byb2JlKCkgY29tcGxldGUhXG4iKTsKKwlkZXZfZGJn
KCZwY2FyZC0+cGRldi0+ZGV2LCAiJXMoKSBjb21wbGV0ZSFcbiIsIF9fZnVuY19fKTsKIAltdXRl
eF91bmxvY2soJnBjYXJkLT5zZW0pOwogCXJldHVybiAwOwogCkBAIC01NDEsNyArNTQxLDcgQEAg
c3RhdGljIHZvaWQga3AyMDAwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQogewog
CXN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsKIAot
CWRldl9kYmcoJnBkZXYtPmRldiwgImtwMjAwMF9wY2llX3JlbW92ZShwZGV2PSVwKVxuIiwgcGRl
dik7CisJZGV2X2RiZygmcGRldi0+ZGV2LCAiJXMocGRldj0lcClcbiIsIF9fZnVuY19fLCBwZGV2
KTsKIAogCWlmICghcGNhcmQpCiAJCXJldHVybjsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
