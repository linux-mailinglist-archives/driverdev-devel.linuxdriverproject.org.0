Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 303DA296A2
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 13:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DCAF22794;
	Fri, 24 May 2019 11:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMiLnZ7E6nIn; Fri, 24 May 2019 11:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C7A6220A9;
	Fri, 24 May 2019 11:08:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C216D1BF30F
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF14C84D62
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyk2iyS5DQ-B for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 11:08:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF23B835F2
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:08:12 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y10so6835926lfl.3
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 04:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=atMxjy9C7OQe8GpIdLJBQm8m+GFrGLxyYvK8iCvKAkM=;
 b=L/bL+9Z8mZNNx+wl9m98wo7ZK+zr37ugLt5TV7nnKt6uGIBbJFF0/TeWU8Pp7SEjuQ
 B68D6NNM65F9KwR6tbKSIg4S1YTISVzWxrq08LMtuhu/pgSPeT0OeEoGSz0HoIXVxyaN
 /3G2RaHyeLjSSJcEnO4aly7WO7qEGHRlSi54cAWtxRcteau5BfyZnY3i7GPzNOFdTJfr
 tRncjpwajX6jtDBaQ2L63Tgf+f/4hOIX3NnkNIyho/H5KD9zwYegHW7cK2hO/fqRVSDR
 WcQYiVyhlHhHRyDEvz9Mcn8xN/F9Fm3JBRD4MFuPT2KMjEuoZpw4AY059zawd3WksfLV
 uryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=atMxjy9C7OQe8GpIdLJBQm8m+GFrGLxyYvK8iCvKAkM=;
 b=gjVvUhIp1X3or1dz728Yk+mBs3xBHc7pP8BJWbmTFrX91kI7VL/WKG9as2fuwuD8Ca
 luTDhcTD2ZIpQlcZVJpFvDlPbdS8InSLWzRbNyyrBcShs5jVc+HJcmsual86QsbiDKA5
 LKL7H0D0U79xVKKej16GZs2lxs0B54bF+uEG6eXb3f1/fb4WEad6Qrt2wgrPMkBBbUjL
 uHU5LEe2eXkd067gI2+ufeGL4vfcdi2LjOiCMfnKiocoADDUB8WIyEN5Lc7XbV2cS7+U
 v9Ynz8iDfks4Hl4sfwxY07g6nvQ6UzWR+D9WBr1HL0gdhaydUq0yxn0Zbp2oqQIYqiSF
 dF/g==
X-Gm-Message-State: APjAAAUcZluWyI1Szf73q8XLZlGGiZhW5OJ87AJHTNL2Uob9UZlO289v
 Z8RdLnv42S5+ektLeQbziVUPJhHSfwtfyw==
X-Google-Smtp-Source: APXvYqyr0iuyuv6cZDN1lY/dPIGjPQ9/in/uZeJ9teIO4j6Z9AEA6St3vAvqSRW1cfTePD0qHmXROA==
X-Received: by 2002:ac2:482a:: with SMTP id 10mr1204546lft.51.1558696090033;
 Fri, 24 May 2019 04:08:10 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x21sm446234ljj.43.2019.05.24.04.08.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 04:08:09 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: kpc2000: add spaces around operators in core.c
Date: Fri, 24 May 2019 13:07:59 +0200
Message-Id: <20190524110802.2953-2-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524110802.2953-1-simon@nikanor.nu>
References: <20190524110802.2953-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCBjaGVjayAic3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCA8
b3A+Ii4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fub3IubnU+
Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgfCAyNCArKysrKysr
KysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAw
L2NvcmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCmluZGV4IDQx
MTAwMzJkMGNiYi4uYjQ2NDk3M2QxMmFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3Bj
MjAwMC9rcGMyMDAwL2NvcmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAw
L2NvcmUuYwpAQCAtMjc2LDE4ICsyNzYsMTggQEAgc3RhdGljIHNzaXplX3Qga3AyMDAwX2NkZXZf
cmVhZChzdHJ1Y3QgZmlsZSAqZmlscCwgY2hhciBfX3VzZXIgKmJ1ZiwKIAlpZiAoV0FSTihOVUxM
ID09IGJ1ZiwgImtwMjAwMF9jZGV2X3JlYWQ6IGJ1ZiBpcyBhIE5VTEwgcG9pbnRlciFcbiIpKQog
CQlyZXR1cm4gLUVJTlZBTDsKIAotCWNudCArPSBzY25wcmludGYoYnVmZitjbnQsIEJVRkZfQ05U
LWNudCwgIkNhcmQgSUQgICAgICAgICAgICAgICAgIDogMHglMDh4XG4iLCBwY2FyZC0+Y2FyZF9p
ZCk7Ci0JY250ICs9IHNjbnByaW50ZihidWZmK2NudCwgQlVGRl9DTlQtY250LCAiQnVpbGQgVmVy
c2lvbiAgICAgICAgICAgOiAweCUwOHhcbiIsIHBjYXJkLT5idWlsZF92ZXJzaW9uKTsKLQljbnQg
Kz0gc2NucHJpbnRmKGJ1ZmYrY250LCBCVUZGX0NOVC1jbnQsICJCdWlsZCBEYXRlICAgICAgICAg
ICAgICA6IDB4JTA4eFxuIiwgcGNhcmQtPmJ1aWxkX2RhdGVzdGFtcCk7Ci0JY250ICs9IHNjbnBy
aW50ZihidWZmK2NudCwgQlVGRl9DTlQtY250LCAiQnVpbGQgVGltZSAgICAgICAgICAgICAgOiAw
eCUwOHhcbiIsIHBjYXJkLT5idWlsZF90aW1lc3RhbXApOwotCWNudCArPSBzY25wcmludGYoYnVm
ZitjbnQsIEJVRkZfQ05ULWNudCwgIkNvcmUgVGFibGUgT2Zmc2V0ICAgICAgIDogMHglMDh4XG4i
LCBwY2FyZC0+Y29yZV90YWJsZV9vZmZzZXQpOwotCWNudCArPSBzY25wcmludGYoYnVmZitjbnQs
IEJVRkZfQ05ULWNudCwgIkNvcmUgVGFibGUgTGVuZ3RoICAgICAgIDogMHglMDh4XG4iLCBwY2Fy
ZC0+Y29yZV90YWJsZV9sZW5ndGgpOwotCWNudCArPSBzY25wcmludGYoYnVmZitjbnQsIEJVRkZf
Q05ULWNudCwgIkhhcmR3YXJlIFJldmlzaW9uICAgICAgIDogMHglMDh4XG4iLCBwY2FyZC0+aGFy
ZHdhcmVfcmV2aXNpb24pOwotCWNudCArPSBzY25wcmludGYoYnVmZitjbnQsIEJVRkZfQ05ULWNu
dCwgIlNTSUQgICAgICAgICAgICAgICAgICAgIDogMHglMDE2bGx4XG4iLCBwY2FyZC0+c3NpZCk7
Ci0JY250ICs9IHNjbnByaW50ZihidWZmK2NudCwgQlVGRl9DTlQtY250LCAiREROQSAgICAgICAg
ICAgICAgICAgICAgOiAweCUwMTZsbHhcbiIsIHBjYXJkLT5kZG5hKTsKLQljbnQgKz0gc2NucHJp
bnRmKGJ1ZmYrY250LCBCVUZGX0NOVC1jbnQsICJJUlEgTWFzayAgICAgICAgICAgICAgICA6IDB4
JTAxNmxseFxuIiwgcmVhZHEocGNhcmQtPnN5c2luZm9fcmVnc19iYXNlICsgUkVHX0lOVEVSUlVQ
VF9NQVNLKSk7Ci0JY250ICs9IHNjbnByaW50ZihidWZmK2NudCwgQlVGRl9DTlQtY250LCAiSVJR
IEFjdGl2ZSAgICAgICAgICAgICAgOiAweCUwMTZsbHhcbiIsIHJlYWRxKHBjYXJkLT5zeXNpbmZv
X3JlZ3NfYmFzZSArIFJFR19JTlRFUlJVUFRfQUNUSVZFKSk7Ci0JY250ICs9IHNjbnByaW50Zihi
dWZmK2NudCwgQlVGRl9DTlQtY250LCAiQ1BMRCAgICAgICAgICAgICAgICAgICAgOiAweCUwMTZs
bHhcbiIsIHJlYWRxKHBjYXJkLT5zeXNpbmZvX3JlZ3NfYmFzZSArIFJFR19DUExEX0NPTkZJRykp
OworCWNudCArPSBzY25wcmludGYoYnVmZiArIGNudCwgQlVGRl9DTlQgLSBjbnQsICJDYXJkIElE
ICAgICAgICAgICAgICAgICA6IDB4JTA4eFxuIiwgcGNhcmQtPmNhcmRfaWQpOworCWNudCArPSBz
Y25wcmludGYoYnVmZiArIGNudCwgQlVGRl9DTlQgLSBjbnQsICJCdWlsZCBWZXJzaW9uICAgICAg
ICAgICA6IDB4JTA4eFxuIiwgcGNhcmQtPmJ1aWxkX3ZlcnNpb24pOworCWNudCArPSBzY25wcmlu
dGYoYnVmZiArIGNudCwgQlVGRl9DTlQgLSBjbnQsICJCdWlsZCBEYXRlICAgICAgICAgICAgICA6
IDB4JTA4eFxuIiwgcGNhcmQtPmJ1aWxkX2RhdGVzdGFtcCk7CisJY250ICs9IHNjbnByaW50Zihi
dWZmICsgY250LCBCVUZGX0NOVCAtIGNudCwgIkJ1aWxkIFRpbWUgICAgICAgICAgICAgIDogMHgl
MDh4XG4iLCBwY2FyZC0+YnVpbGRfdGltZXN0YW1wKTsKKwljbnQgKz0gc2NucHJpbnRmKGJ1ZmYg
KyBjbnQsIEJVRkZfQ05UIC0gY250LCAiQ29yZSBUYWJsZSBPZmZzZXQgICAgICAgOiAweCUwOHhc
biIsIHBjYXJkLT5jb3JlX3RhYmxlX29mZnNldCk7CisJY250ICs9IHNjbnByaW50ZihidWZmICsg
Y250LCBCVUZGX0NOVCAtIGNudCwgIkNvcmUgVGFibGUgTGVuZ3RoICAgICAgIDogMHglMDh4XG4i
LCBwY2FyZC0+Y29yZV90YWJsZV9sZW5ndGgpOworCWNudCArPSBzY25wcmludGYoYnVmZiArIGNu
dCwgQlVGRl9DTlQgLSBjbnQsICJIYXJkd2FyZSBSZXZpc2lvbiAgICAgICA6IDB4JTA4eFxuIiwg
cGNhcmQtPmhhcmR3YXJlX3JldmlzaW9uKTsKKwljbnQgKz0gc2NucHJpbnRmKGJ1ZmYgKyBjbnQs
IEJVRkZfQ05UIC0gY250LCAiU1NJRCAgICAgICAgICAgICAgICAgICAgOiAweCUwMTZsbHhcbiIs
IHBjYXJkLT5zc2lkKTsKKwljbnQgKz0gc2NucHJpbnRmKGJ1ZmYgKyBjbnQsIEJVRkZfQ05UIC0g
Y250LCAiREROQSAgICAgICAgICAgICAgICAgICAgOiAweCUwMTZsbHhcbiIsIHBjYXJkLT5kZG5h
KTsKKwljbnQgKz0gc2NucHJpbnRmKGJ1ZmYgKyBjbnQsIEJVRkZfQ05UIC0gY250LCAiSVJRIE1h
c2sgICAgICAgICAgICAgICAgOiAweCUwMTZsbHhcbiIsIHJlYWRxKHBjYXJkLT5zeXNpbmZvX3Jl
Z3NfYmFzZSArIFJFR19JTlRFUlJVUFRfTUFTSykpOworCWNudCArPSBzY25wcmludGYoYnVmZiAr
IGNudCwgQlVGRl9DTlQgLSBjbnQsICJJUlEgQWN0aXZlICAgICAgICAgICAgICA6IDB4JTAxNmxs
eFxuIiwgcmVhZHEocGNhcmQtPnN5c2luZm9fcmVnc19iYXNlICsgUkVHX0lOVEVSUlVQVF9BQ1RJ
VkUpKTsKKwljbnQgKz0gc2NucHJpbnRmKGJ1ZmYgKyBjbnQsIEJVRkZfQ05UIC0gY250LCAiQ1BM
RCAgICAgICAgICAgICAgICAgICAgOiAweCUwMTZsbHhcbiIsIHJlYWRxKHBjYXJkLT5zeXNpbmZv
X3JlZ3NfYmFzZSArIFJFR19DUExEX0NPTkZJRykpOwogCiAJaWYgKCpmX3BvcyA+PSBjbnQpCiAJ
CXJldHVybiAwOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
