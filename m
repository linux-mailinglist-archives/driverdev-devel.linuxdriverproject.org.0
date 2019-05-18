Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F1822561
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 538A28671F;
	Sat, 18 May 2019 22:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28Qg4vOij9t2; Sat, 18 May 2019 22:27:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB66D86404;
	Sat, 18 May 2019 22:27:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 305BE1BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DB398598B
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ehKjBiG21CF5 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 981AF855FF
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:27:43 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id z128so6664164qkb.6
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=hy5p245u/hqfnBo05YVJIyRfP8Rg4GNqhBJE2ChmnFU=;
 b=S8YmYgYEIqWloUrBR/fwQpYB01cQKqEWJ52gGf0snm/GKFZGEet2pUE6m6NVS6vTl+
 iJcby4aq70fMsKx/JUjQvZPz6beLW92ERuI90JAtMKFzONo5Hrl88oXLkySDxgS43QqE
 i6MvqcU6eJnhb3WQi2cgqha03yfeFRqqcc8NYax4E3Q876WDD9HIv9KOuCHLVfPdA5Dg
 vRdAMcRhptxZJkP92pRjNQWJJhLbhmQ0Qa1TsLjueSAjCag7KVf6y52nZ4qcrPUatFXU
 M8LCidr1j3mtksIS66hvDdgpQkgqqWWxMuqnJ5Mf1AD1dCN3FhJ06xG4wfkf6P9opDGh
 mH6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=hy5p245u/hqfnBo05YVJIyRfP8Rg4GNqhBJE2ChmnFU=;
 b=EXNjswQQCSZjCvO2GSqknBrJKCxL776RqRVLtSdFAqJ5hXAbFn2J+CAtGpvWiamnwC
 UJ2hWLcXzMMtXT8t60hlAp5g9rP/0Xr/y2LeoNOWSZXVD99sQYWxHegF+UwFiPMGSH6a
 xBmbrJ+XoSeXZScL5YWgNvJCiTCeFjnvb+F8mBHOMgQBVMWKkyFsKQ5aa5EnJTV5oLYi
 i7vQH+QRnITkTOCW4rp4dovJ5K/apBNTazCjhm8EpWCU5FA5zKYfz6wmw3fKWE9IAnVS
 mq0MYLGfZCWOxu6eWE2EqE2KWZWm8rAnEY2+OKVprFB6UcksQBe4Zx8rQzItomGOy3UN
 Zlow==
X-Gm-Message-State: APjAAAWF6FIB8FT/knr7x1LAN1KbdrCCrrkXmiOZNTVQJ7iTaUBu/qTc
 NUMGP+yLVG+1wx39kQdDeGM=
X-Google-Smtp-Source: APXvYqwbh0b5G7fQ/Je9ThH/GFzks8ivtZyyrVjHAZyJWdBrSA2GNyTILBkZKch71UD4lhHvnemmWQ==
X-Received: by 2002:ae9:ed45:: with SMTP id c66mr49545224qkg.86.1558218462666; 
 Sat, 18 May 2019 15:27:42 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id x3sm7201145qtk.75.2019.05.18.15.27.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 May 2019 15:27:42 -0700 (PDT)
Date: Sat, 18 May 2019 19:27:33 -0300
From: =?utf-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: ad7746: add device tree support
Message-ID: <20190518222733.2ttcgvy7fct4awra@smtp.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkIGEgb2ZfZGV2aWNlX2lkIHN0cnVjdCB2YXJpYWJsZSBhbmQgc3Vic2VxdWVudCBjYWxsIHRv
Ck1PRFVMRV9ERVZJQ0VfVEFCTEUgbWFjcm8gdG8gc3VwcG9ydCBkZXZpY2UgdHJlZS4KClNpZ25l
ZC1vZmYtYnk6IEpvw6NvIFNlY2tsZXIgPGpvYW9zZWNrbGVyQGdtYWlsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTHVjYXMgT3NoaXJvIDxsdWNhc3NlaWtpb3NoaXJvQGdtYWlsLmNvbT4KQ28tZGV2ZWxv
cGVkLWJ5OiBMdWNhcyBPc2hpcm8gPGx1Y2Fzc2Vpa2lvc2hpcm9AZ21haWwuY29tPgotLS0KIGRy
aXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzc0Ni5jIHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlv
L2NkYy9hZDc3NDYuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzc0Ni5jCmluZGV4IDQ3
NjEwZDg2MzkwOC4uMjE1MjdkODRmOTQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlv
L2NkYy9hZDc3NDYuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2NkYy9hZDc3NDYuYwpAQCAt
NzQ4LDkgKzc0OCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgYWQ3NzQ2
X2lkW10gPSB7CiAKIE1PRFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBhZDc3NDZfaWQpOwogCitzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBhZDc3NDZfb2ZfbWF0Y2hbXSA9IHsKKwl7IC5j
b21wYXRpYmxlID0gImFkaSxhZDc3NDUiIH0sCisJeyAuY29tcGF0aWJsZSA9ICJhZGksYWQ3NzQ2
IiB9LAorCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzc0NyIgfSwKKwl7IH0sCit9OworCitNT0RV
TEVfREVWSUNFX1RBQkxFKG9mLCBhZDc3NDZfb2ZfbWF0Y2gpOworCiBzdGF0aWMgc3RydWN0IGky
Y19kcml2ZXIgYWQ3NzQ2X2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQkubmFtZSA9IEtCVUlM
RF9NT0ROQU1FLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBhZDc3NDZfb2ZfbWF0Y2gsCiAJfSwKIAku
cHJvYmUgPSBhZDc3NDZfcHJvYmUsCiAJLmlkX3RhYmxlID0gYWQ3NzQ2X2lkLAotLSAKMi4xMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
