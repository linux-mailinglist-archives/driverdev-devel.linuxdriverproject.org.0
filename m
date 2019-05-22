Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD6127157
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 23:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 105FE86432;
	Wed, 22 May 2019 21:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Or5sFwpG6BN; Wed, 22 May 2019 21:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 497EF863E3;
	Wed, 22 May 2019 21:06:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD4401BF280
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E5D330E86
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwoeInOc3VKM for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 21:06:43 +0000 (UTC)
X-Greylist: delayed 00:07:32 by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B28C30E82
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 21:06:42 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id v18so2774209lfi.1
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 14:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nBcwAIJBojrtdqg80WX3GBGuPC1aGkjKfZtc25mU2xI=;
 b=mHwA7YTiRl3tcjY7IZH08jaAw1X6kLH9D401Yd0O6lQofsTlxKhEo1J6LwOih5wH56
 Wf4uXVOyRQZ7QENzezj63OaSZSUyEz5QJ2iFIJ5wsqzLxL03phIRRdzQB8s0LK5kDg6t
 ksH9S5fJi0xyUYiuKPUuro8W3wt0UWrwUJLkZpuDUDiRaH94lX+VOTdg5oR+LaQCIXkp
 4sqfKgKkRJnlwIh6hzUXi2Q0q5E7hUtf51fmn0dYQhPmkpndEz6QRRqV8sAm8Kji0mu0
 XSNZk1LUu+Ips78zGfTUXVpvdndBr5GWKceTI8ZCGmR1vNmZdHxlOBPIMU08k4rROidR
 +ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nBcwAIJBojrtdqg80WX3GBGuPC1aGkjKfZtc25mU2xI=;
 b=TllIHZ8zIfmcjyuSevBeaOnSVZh0bi0qgEFax0/JHeNGBg43ZO5pzvPsaJfACfnBaj
 l4BUHbsPwo97TyOsKlHHO0x07hqc2yJmkMv9Xo9dfhDQcN67YHmJcZDJFJqQ4MVqOErA
 obaHNX/qtxonfcf7qOEjXi8ufLGyBGYFg2hFhrOjHm1ngDO4GT0nUvxXV7vZSwjQXMqG
 60CzTE5f8lp/yUTupUeczB0mK0LEjGE4EJjVzRy1ERwaETbWTMpspOZW1dXmKNMJePiZ
 NtkyTN+YQaDV9E2fc3a0qTqkNz+CxZsQWwOtXf3wBP3EIf8JPQ1ZN1erR9fsEsp8uNTv
 cjhw==
X-Gm-Message-State: APjAAAV7jec42edRYreviUQoBRUhY+EzZMKimt+k7qDCGkb2pmVnIpoJ
 ay4u8YZlzXXMs57QBqdwdpt1Yw==
X-Google-Smtp-Source: APXvYqwD8NEtYyDa9LYguQ9SN+QBu7M7VTzW16Hl6rhwezsrQ7sZDOZafPKbd8reK3iPgYDtd0oCIQ==
X-Received: by 2002:a19:a50b:: with SMTP id o11mr31695834lfe.2.1558558752360; 
 Wed, 22 May 2019 13:59:12 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e12sm5506518lfb.70.2019.05.22.13.59.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:59:11 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: kpc2000: fix invalid linebreaks in cell_probe.c
Date: Wed, 22 May 2019 22:58:46 +0200
Message-Id: <20190522205849.17444-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522205849.17444-1-simon@nikanor.nu>
References: <20190522205849.17444-1-simon@nikanor.nu>
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
 dan.carpenter@oracle.com,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvciAiZWxzZSBzaG91bGQgZm9sbG93IGNsb3NlIGJyYWNl
ICd9JyIgYW5kCiJ0cmFpbGluZyBzdGF0ZW1lbnRzIHNob3VsZCBiZSBvbiBuZXh0IGxpbmUiLgoK
U2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KLS0tCiBk
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDE3ICsrKysrKysr
KysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJv
YmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4
IDUxZDMyOTcwZjAyNS4uNDc0MmY5MDlkYjc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
a3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGMyMDAwL2NlbGxfcHJvYmUuYwpAQCAtODUsOCArODUsMTIgQEAgc3RhdGljCiB2b2lkIHBh
cnNlX2NvcmVfdGFibGVfZW50cnkoc3RydWN0IGNvcmVfdGFibGVfZW50cnkgKmN0ZSwgY29uc3Qg
dTY0IHJlYWRfdmFsLCBjb25zdCB1OCBlbnRyeV9yZXYpCiB7CiAJc3dpdGNoIChlbnRyeV9yZXYp
IHsKLQljYXNlIDA6IHBhcnNlX2NvcmVfdGFibGVfZW50cnlfdjAoY3RlLCByZWFkX3ZhbCk7IGJy
ZWFrOwotCWRlZmF1bHQ6IGN0ZS0+dHlwZSA9IDA7IGJyZWFrOworCWNhc2UgMDoKKwkJcGFyc2Vf
Y29yZV90YWJsZV9lbnRyeV92MChjdGUsIHJlYWRfdmFsKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoK
KwkJY3RlLT50eXBlID0gMDsKKwkJYnJlYWs7CiAJfQogfQogCkBAIC0zODcsNyArMzkxLDggQEAg
c3RhdGljIGludCAga3AyMDAwX3NldHVwX2RtYV9jb250cm9sbGVyKHN0cnVjdCBrcDIwMDBfZGV2
aWNlICpwY2FyZCkKIAkJY2FwYWJpbGl0aWVzX3JlZyA9IHJlYWRxKCBwY2FyZC0+ZG1hX2Jhcl9i
YXNlICsgS1BDX0RNQV9TMkNfQkFTRV9PRkZTRVQgKyAoS1BDX0RNQV9FTkdJTkVfU0laRSAqIGkp
ICk7CiAJCWlmIChjYXBhYmlsaXRpZXNfcmVnICYgRU5HSU5FX0NBUF9QUkVTRU5UX01BU0spIHsK
IAkJCWVyciA9IGNyZWF0ZV9kbWFfZW5naW5lX2NvcmUocGNhcmQsIChLUENfRE1BX1MyQ19CQVNF
X09GRlNFVCArIChLUENfRE1BX0VOR0lORV9TSVpFICogaSkpLCBpLCAgcGNhcmQtPnBkZXYtPmly
cSk7Ci0JCQlpZiAoZXJyKSBnb3RvIGVycl9vdXQ7CisJCQlpZiAoZXJyKQorCQkJCWdvdG8gZXJy
X291dDsKIAkJfQogCX0KIAkvLyBDMlMgRW5naW5lcwpAQCAtMzk1LDcgKzQwMCw4IEBAIHN0YXRp
YyBpbnQgIGtwMjAwMF9zZXR1cF9kbWFfY29udHJvbGxlcihzdHJ1Y3Qga3AyMDAwX2RldmljZSAq
cGNhcmQpCiAJCWNhcGFiaWxpdGllc19yZWcgPSByZWFkcSggcGNhcmQtPmRtYV9iYXJfYmFzZSAr
IEtQQ19ETUFfQzJTX0JBU0VfT0ZGU0VUICsgKEtQQ19ETUFfRU5HSU5FX1NJWkUgKiBpKSApOwog
CQlpZiAoY2FwYWJpbGl0aWVzX3JlZyAmIEVOR0lORV9DQVBfUFJFU0VOVF9NQVNLKSB7CiAJCQll
cnIgPSBjcmVhdGVfZG1hX2VuZ2luZV9jb3JlKHBjYXJkLCAoS1BDX0RNQV9DMlNfQkFTRV9PRkZT
RVQgKyAoS1BDX0RNQV9FTkdJTkVfU0laRSAqIGkpKSwgMzIraSwgIHBjYXJkLT5wZGV2LT5pcnEp
OwotCQkJaWYgKGVycikgZ290byBlcnJfb3V0OworCQkJaWYgKGVycikKKwkJCQlnb3RvIGVycl9v
dXQ7CiAJCX0KIAl9CiAKQEAgLTQxOCw3ICs0MjQsOCBAQCBpbnQgIGtwMjAwMF9wcm9iZV9jb3Jl
cyhzdHJ1Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQpCiAJZGV2X2RiZygmcGNhcmQtPnBkZXYtPmRl
diwgImtwMjAwMF9wcm9iZV9jb3JlcyhwY2FyZCA9ICVwIC8gJWQpXG4iLCBwY2FyZCwgcGNhcmQt
PmNhcmRfbnVtKTsKIAogCWVyciA9IGtwMjAwMF9zZXR1cF9kbWFfY29udHJvbGxlcihwY2FyZCk7
Ci0JaWYgKGVycikgcmV0dXJuIGVycjsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJSU5J
VF9MSVNUX0hFQUQoJnBjYXJkLT51aW9fZGV2aWNlc19saXN0KTsKIAotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
