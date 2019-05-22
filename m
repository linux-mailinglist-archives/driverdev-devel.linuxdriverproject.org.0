Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC85A27158
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 23:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52B6230EDE;
	Wed, 22 May 2019 21:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfMtoVNFT48F; Wed, 22 May 2019 21:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BD1130E92;
	Wed, 22 May 2019 21:06:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 068B21BF280
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 015BD87220
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 21:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Lyfkc6j1MC6 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 21:06:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F1FA870C7
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 21:06:42 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m15so3389610ljg.13
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 14:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uqCPCoACDLrIdM2VOYCKs6C/ASVTEPrZ/Yn9ydg742c=;
 b=WzoZBkJGbm5qEiA84+al1JaNL937RHDrIzHIaDa+oIzzgavjzI3SIWy1BnK3DnnZjr
 yS7hceBfhWvsTxQdJSwWfu82DMyyBpIZlrjUQjWn4FbNHpWFI3vEkMYZxISorNAsP22H
 s6v2VJ+BfyEFYA8/AMmCtLEinMpOfkUi//ygzs5lgCCVG7hfSJPKSvAC4b+SrK8l1hiH
 Hc7qcVm6oAg/xMY6sOcSTNldk+Uql19kWIbjwNAMYp497mCWBV7iRyErNNgDtTgepBSS
 g2S+jOALtneoHm8KCcDcAqjW1FrQncom+ufUWBuipr2rtwPUVujnmQW+A+TBywLkolnz
 b2yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uqCPCoACDLrIdM2VOYCKs6C/ASVTEPrZ/Yn9ydg742c=;
 b=SDTkMubTGeQrBm+BU+lZy8anTPQmvbJbHCQs5Ryipo4ySKvD7H84mArX6rjWBJmdJi
 YpdhUF20JvCqV6HdzNZK3gZlwVCZFLaT9TgPFElabFUyzShrGgt5KSYVwm8ArTubEcOT
 0fTZnyeBQiirtaP1uYuEpRpCjVZZLWzpAz7WmJA5NwxE+rhTqRlE1KhlGWHkpeAVc9xB
 x1jQNBVJZpFZpsg1XhJ/b67659EIsHo4kMFvj9YTHq7VPrNNYk5+jFoQc2HTpZU9eEmj
 DrLUcSLw1Tput2q8tPh1tMkrfc/oVUq5pwerWN5CAd/SEOrOPsGzpM3rMUG67RrdWnqM
 83+Q==
X-Gm-Message-State: APjAAAVpIFFWVzNSzfpFIUaAErjg6dqE6C3lyhwrrY+20gUqB3Rx8UPM
 Z2NsnhYeRt3VYwjoN0U1Hvrqbg==
X-Google-Smtp-Source: APXvYqxdqwcnA4Gt04dhqh8/LTKwWjx/XQP8Sw0q0xNbi8DWVzr6YGYmpbMRVZ39CmrD3Ty60zI1SA==
X-Received: by 2002:a2e:8796:: with SMTP id n22mr35380065lji.75.1558558755267; 
 Wed, 22 May 2019 13:59:15 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e12sm5506518lfb.70.2019.05.22.13.59.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:59:14 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: kpc2000: remove invalid spaces in cell_probe.c
Date: Wed, 22 May 2019 22:58:49 +0200
Message-Id: <20190522205849.17444-7-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvciAic3BhY2UgcHJvaGliaXRlZCBiZWZvcmUvYWZ0ZXIg
dGhhdApwYXJlbnRoZXNpcyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9w
cm9iZS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2Vs
bF9wcm9iZS5jIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMK
aW5kZXggN2Q0OTg2NTAyMDEzLi45OGE3YTMxOTQ1MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9r
cGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCkBAIC0zODgsNyArMzg4LDcgQEAgc3RhdGljIGlu
dCAga3AyMDAwX3NldHVwX2RtYV9jb250cm9sbGVyKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2Fy
ZCkKIAogCS8vIFMyQyBFbmdpbmVzCiAJZm9yIChpID0gMCA7IGkgPCAzMiA7IGkrKykgewotCQlj
YXBhYmlsaXRpZXNfcmVnID0gcmVhZHEoIHBjYXJkLT5kbWFfYmFyX2Jhc2UgKyBLUENfRE1BX1My
Q19CQVNFX09GRlNFVCArIChLUENfRE1BX0VOR0lORV9TSVpFICogaSkgKTsKKwkJY2FwYWJpbGl0
aWVzX3JlZyA9IHJlYWRxKHBjYXJkLT5kbWFfYmFyX2Jhc2UgKyBLUENfRE1BX1MyQ19CQVNFX09G
RlNFVCArIChLUENfRE1BX0VOR0lORV9TSVpFICogaSkpOwogCQlpZiAoY2FwYWJpbGl0aWVzX3Jl
ZyAmIEVOR0lORV9DQVBfUFJFU0VOVF9NQVNLKSB7CiAJCQllcnIgPSBjcmVhdGVfZG1hX2VuZ2lu
ZV9jb3JlKHBjYXJkLCAoS1BDX0RNQV9TMkNfQkFTRV9PRkZTRVQgKyAoS1BDX0RNQV9FTkdJTkVf
U0laRSAqIGkpKSwgaSwgIHBjYXJkLT5wZGV2LT5pcnEpOwogCQkJaWYgKGVycikKQEAgLTM5Nyw3
ICszOTcsNyBAQCBzdGF0aWMgaW50ICBrcDIwMDBfc2V0dXBfZG1hX2NvbnRyb2xsZXIoc3RydWN0
IGtwMjAwMF9kZXZpY2UgKnBjYXJkKQogCX0KIAkvLyBDMlMgRW5naW5lcwogCWZvciAoaSA9IDAg
OyBpIDwgMzIgOyBpKyspIHsKLQkJY2FwYWJpbGl0aWVzX3JlZyA9IHJlYWRxKCBwY2FyZC0+ZG1h
X2Jhcl9iYXNlICsgS1BDX0RNQV9DMlNfQkFTRV9PRkZTRVQgKyAoS1BDX0RNQV9FTkdJTkVfU0la
RSAqIGkpICk7CisJCWNhcGFiaWxpdGllc19yZWcgPSByZWFkcShwY2FyZC0+ZG1hX2Jhcl9iYXNl
ICsgS1BDX0RNQV9DMlNfQkFTRV9PRkZTRVQgKyAoS1BDX0RNQV9FTkdJTkVfU0laRSAqIGkpKTsK
IAkJaWYgKGNhcGFiaWxpdGllc19yZWcgJiBFTkdJTkVfQ0FQX1BSRVNFTlRfTUFTSykgewogCQkJ
ZXJyID0gY3JlYXRlX2RtYV9lbmdpbmVfY29yZShwY2FyZCwgKEtQQ19ETUFfQzJTX0JBU0VfT0ZG
U0VUICsgKEtQQ19ETUFfRU5HSU5FX1NJWkUgKiBpKSksIDMyICsgaSwgIHBjYXJkLT5wZGV2LT5p
cnEpOwogCQkJaWYgKGVycikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
