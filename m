Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AF327155
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 23:05:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCC5B87EB2;
	Wed, 22 May 2019 21:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cqw+BnxA-877; Wed, 22 May 2019 21:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 546A785A7B;
	Wed, 22 May 2019 21:05:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 441F91BF280
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F3C430E82
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mb5LPkPYL7Eg for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 21:05:25 +0000 (UTC)
X-Greylist: delayed 00:06:12 by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 7451830D8C
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 21:05:25 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id z1so3434554ljb.3
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 14:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wVzM4niY3zy81NT2oIqGefdVIsRifRFmdGCA5K8Tg8E=;
 b=ZALnQcpZJWxdmxktc+lG6HWKrFJgYqg1MSWtcFQID+vDGms4ojbKoIDiQYoDaGTZwX
 OrC6QUvcTSuuoKlNbj/etZi8Iz/cOmPn3ivI5L0lq1SI2po/vIDwgrKfr7SRhpBhOTwE
 dwMOm0MNKWPT+mFi4henWIG+PDYwANHw51y4mZvAyjnVGbE1LCnCi1KZvu5kP7IRSyBB
 pBBzaAEjJIGqoXeFAq+S047w2dzfEFNks4VZQcNokha6ww1DUb1iUAJKCnjSSFq/WPak
 jnZDi+cuT143W5me8K8ilJMiBcSDE/3no3GAq1ngB6wLq1cAIxdNHPH0F5vGwUm4fLRN
 R3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wVzM4niY3zy81NT2oIqGefdVIsRifRFmdGCA5K8Tg8E=;
 b=g3r58+xIFoeBnmQOOqhUGzwAG/1tDEZgF56FVxu/QFMJPuu+jqE5zzkCURParpTplA
 xuPhQGcbIX255mmTxe5zjzYIck82ebppXgIROx+3u9OMkL0USh3x6kuKLOKwfJPNpi2P
 QjIV0oaysaBf4AtpLW9Gyak9bJmZkbQ17pQPQd8A3PoMD3iqQHq0Y1zIMl0Ij82gAOOR
 ZWdqLrnMzctjCQ8+bnA7BbU3Hat0Trf+mC39Ez43KiYu4ezPsg6rSJqdQLkj7NKfKP5h
 9khno9HpkRblOtB9zTYzb7N/fCAnaf1GCxod8H584xTydjVwOy9WWDsDhLXB2GFVwp5n
 33Ew==
X-Gm-Message-State: APjAAAUEO8rs80ChUE9iEmhfh26b3L9CeOQur4tYkq6JWl/yRmo1PW91
 wbwMNoFI+wOKf5dFkSGNfucYig==
X-Google-Smtp-Source: APXvYqzlDnuezIlpumyRk2FhBGetW1bsvoKFXD8eRP7YxAABh6CrWw+07WX8l81EY0f0OBE8EqBuhw==
X-Received: by 2002:a2e:96da:: with SMTP id d26mr36992761ljj.9.1558558753363; 
 Wed, 22 May 2019 13:59:13 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e12sm5506518lfb.70.2019.05.22.13.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:59:12 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: kpc2000: add spaces around operators in
 cell_probe.c
Date: Wed, 22 May 2019 22:58:47 +0200
Message-Id: <20190522205849.17444-5-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0
IDxvcD4iLgoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5u
dT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDYg
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5j
IGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKaW5kZXggNDc0
MmY5MDlkYjc5Li45YTMyNjYwYTU2ZTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMy
MDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
YzIwMDAvY2VsbF9wcm9iZS5jCkBAIC0zMjAsNyArMzIwLDcgQEAgc3RhdGljIGludCBwcm9iZV9j
b3JlX3Vpbyh1bnNpZ25lZCBpbnQgY29yZV9udW0sIHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2Fy
ZCwKIAogCWt1ZGV2LT51aW9pbmZvLm1lbVswXS5uYW1lID0gInVpb21hcCI7CiAJa3VkZXYtPnVp
b2luZm8ubWVtWzBdLmFkZHIgPSBwY2lfcmVzb3VyY2Vfc3RhcnQocGNhcmQtPnBkZXYsIFJFR19C
QVIpICsgY3RlLm9mZnNldDsKLQlrdWRldi0+dWlvaW5mby5tZW1bMF0uc2l6ZSA9IChjdGUubGVu
Z3RoICsgUEFHRV9TSVpFLTEpICYgfihQQUdFX1NJWkUtMSk7IC8vIFJvdW5kIHVwIHRvIG5lYXJl
c3QgUEFHRV9TSVpFIGJvdW5kYXJ5CisJa3VkZXYtPnVpb2luZm8ubWVtWzBdLnNpemUgPSAoY3Rl
Lmxlbmd0aCArIFBBR0VfU0laRSAtIDEpICYgfihQQUdFX1NJWkUgLSAxKTsgLy8gUm91bmQgdXAg
dG8gbmVhcmVzdCBQQUdFX1NJWkUgYm91bmRhcnkKIAlrdWRldi0+dWlvaW5mby5tZW1bMF0ubWVt
dHlwZSA9IFVJT19NRU1fUEhZUzsKIAogCWt1ZGV2LT5kZXYgPSBkZXZpY2VfY3JlYXRlKGtwY191
aW9fY2xhc3MsICZwY2FyZC0+cGRldi0+ZGV2LCBNS0RFVigwLDApLCBrdWRldiwgIiVzLiVkLiVk
LiVkIiwga3VkZXYtPnVpb2luZm8ubmFtZSwgcGNhcmQtPmNhcmRfbnVtLCBjdGUudHlwZSwga3Vk
ZXYtPmNvcmVfbnVtKTsKQEAgLTM5OSw3ICszOTksNyBAQCBzdGF0aWMgaW50ICBrcDIwMDBfc2V0
dXBfZG1hX2NvbnRyb2xsZXIoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkKQogCWZvciAoaSA9
IDAgOyBpIDwgMzIgOyBpKyspIHsKIAkJY2FwYWJpbGl0aWVzX3JlZyA9IHJlYWRxKCBwY2FyZC0+
ZG1hX2Jhcl9iYXNlICsgS1BDX0RNQV9DMlNfQkFTRV9PRkZTRVQgKyAoS1BDX0RNQV9FTkdJTkVf
U0laRSAqIGkpICk7CiAJCWlmIChjYXBhYmlsaXRpZXNfcmVnICYgRU5HSU5FX0NBUF9QUkVTRU5U
X01BU0spIHsKLQkJCWVyciA9IGNyZWF0ZV9kbWFfZW5naW5lX2NvcmUocGNhcmQsIChLUENfRE1B
X0MyU19CQVNFX09GRlNFVCArIChLUENfRE1BX0VOR0lORV9TSVpFICogaSkpLCAzMitpLCAgcGNh
cmQtPnBkZXYtPmlycSk7CisJCQllcnIgPSBjcmVhdGVfZG1hX2VuZ2luZV9jb3JlKHBjYXJkLCAo
S1BDX0RNQV9DMlNfQkFTRV9PRkZTRVQgKyAoS1BDX0RNQV9FTkdJTkVfU0laRSAqIGkpKSwgMzIg
KyBpLCAgcGNhcmQtPnBkZXYtPmlycSk7CiAJCQlpZiAoZXJyKQogCQkJCWdvdG8gZXJyX291dDsK
IAkJfQpAQCAtNDgxLDcgKzQ4MSw3IEBAIGludCAga3AyMDAwX3Byb2JlX2NvcmVzKHN0cnVjdCBr
cDIwMDBfZGV2aWNlICpwY2FyZCkKIAkvLyBGaW5hbGx5LCBpbnN0YW50aWF0ZSBhIFVJTyBkZXZp
Y2UgZm9yIHRoZSBjb3JlX3RhYmxlLgogCWN0ZS50eXBlICAgICAgICAgICAgICAgID0gMDsgLy8g
Q09SRV9JRF9CT0FSRF9JTkZPCiAJY3RlLm9mZnNldCAgICAgICAgICAgICAgPSAwOyAvLyBib2Fy
ZCBpbmZvIGlzIGFsd2F5cyBhdCB0aGUgYmVnaW5uaW5nCi0JY3RlLmxlbmd0aCAgICAgICAgICAg
ICAgPSA1MTIqODsKKwljdGUubGVuZ3RoICAgICAgICAgICAgICA9IDUxMiAqIDg7CiAJY3RlLnMy
Y19kbWFfcHJlc2VudCAgICAgPSBmYWxzZTsKIAljdGUuczJjX2RtYV9jaGFubmVsX251bSA9IDA7
CiAJY3RlLmMyc19kbWFfcHJlc2VudCAgICAgPSBmYWxzZTsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
