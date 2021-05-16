Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4DC381E3E
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11A3040228;
	Sun, 16 May 2021 10:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIKKJEpPE34m; Sun, 16 May 2021 10:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 759FC40133;
	Sun, 16 May 2021 10:54:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FD0F1BF97D
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C10740226
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYjnYivkuqFY for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F20A4021C
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F2971611C2;
 Sun, 16 May 2021 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=6OJg+K2TbVrabosKaDhINUNxeweXhLVzeNm4qRXzVlA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KDHxZiC8syfSVl4jRHZlSzHvDQIDBni7K+kT4T9s82fFYgHZ7jnBe2PJn5MzGhn65
 N7tOeVPifZsQx/TUSf7MKrL0FFjyTS+3P7h9pZSUE7Y1VLrZNp+UOnRVQuh5stYIgO
 gKBdI/sQIrf5LF6VvWQLZOvUN7Jpo/Kmd8qEjEQP+xKWHjTn4M0lkL+CLVJKTgZbD5
 nXIyhsZH6sfTunkLEgvY01IO+33//imp6086zZgyHal0Jn4xuCTYeOyfn8RS63gH+j
 VXXXK1obvZ8M5o+HeQcXcdn52X/8Nupw3SemWqbRxsVXeka7aJMIHAm1xGGSdGqfRJ
 HH9DLn+Zxm/QQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s8a-23; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/17] staging: nuc-wmi: get rid of an unused variable
Date: Sun, 16 May 2021 12:53:38 +0200
Message-Id: <e032b4e902d7a5466457b54b9f779d5378ab35f8.1621161037.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1621161037.git.mchehab+huawei@kernel.org>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CWRyaXZlcnMvc3RhZ2luZy9udWMtbGVkL251Yy13bWkuYzogSW4gZnVuY3Rpb24g4oCYbnVjX25t
aV9jbWTigJk6Cglkcml2ZXJzL3N0YWdpbmcvbnVjLWxlZC9udWMtd21pLmM6MjQyOjY6IHdhcm5p
bmc6IHZhcmlhYmxlIOKAmHNpemXigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNl
dC12YXJpYWJsZV0KCSAgMjQyIHwgIGludCBzaXplLCByZXQ7CgkgICAgICB8ICAgICAgXn5+fgoK
U2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJu
ZWwub3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9udWMtbGVkL251Yy13bWkuYyB8IDQgKy0tLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9udWMtbGVkL251Yy13bWkuYyBiL2RyaXZlcnMvc3RhZ2luZy9u
dWMtbGVkL251Yy13bWkuYwppbmRleCA4OTY3YzhkNTRkYWMuLjc4YjBhMzI3OWYyNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL251Yy1sZWQvbnVjLXdtaS5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy9udWMtbGVkL251Yy13bWkuYwpAQCAtMjM5LDcgKzIzOSw3IEBAIHN0YXRpYyBpbnQgbnVj
X25taV9jbWQoc3RydWN0IGRldmljZSAqZGV2LAogCXN0cnVjdCBhY3BpX2J1ZmZlciBpbnB1dDsK
IAl1bmlvbiBhY3BpX29iamVjdCAqb2JqOwogCWFjcGlfc3RhdHVzIHN0YXR1czsKLQlpbnQgc2l6
ZSwgcmV0OworCWludCByZXQ7CiAJdTggKnA7CiAKIAlpbnB1dC5sZW5ndGggPSBOVU1fSU5QVVRf
QVJHUzsKQEAgLTI4MSw4ICsyODEsNiBAQCBzdGF0aWMgaW50IG51Y19ubWlfY21kKHN0cnVjdCBk
ZXZpY2UgKmRldiwKIAkJZ290byBlcnI7CiAJfQogCi0Jc2l6ZSA9IE5VTV9PVVRQVVRfQVJHUyAr
IDE7Ci0KIAlpZiAob3V0cHV0X2FyZ3MpIHsKIAkJbWVtY3B5KG91dHB1dF9hcmdzLCBwICsgMSwg
TlVNX09VVFBVVF9BUkdTKTsKIAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
