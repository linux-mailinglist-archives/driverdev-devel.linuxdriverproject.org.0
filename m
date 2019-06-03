Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5D033B3E
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 534B52C2CE;
	Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32dr4fbI8OJM; Mon,  3 Jun 2019 22:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D77692CB21;
	Mon,  3 Jun 2019 22:29:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24A331BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 204C7896BF
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHREmaGD+-yR for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5FE03896C0
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:23 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 131so5229536ljf.4
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YUw6e+dM1SFz4LeXvxWXBqLHb/4EQFux2poSTpQulfs=;
 b=1cEQIfCIKJfVCTos3XMuSoqM2U+PvoPD7LC7s6YoZfoxGpkDY9eXGkU/Th/FXYTUVF
 5XC2sFEp7cNyN73zx/nz3xzU8Tz/QzjeBXE0O7LL2DW3XM2bFjCG/bXF2mx8/KCshYbX
 PUW760UiVlfCTVCQS4DuofV6W2ZG3gp+gJNTpGggKTwdYwUFOPtbXIrxmSNeNDwW408k
 UXeTb2PDO4g8q1gFCe5rqyxU4+MfoFqOO319qY7HWKYnjHCCZkaVDvaGPPhKIfauJIgc
 qK5Bgog3ZeIbRLvc4KAvnAYYIp8AXJ+4Qu5X87QZcuSE0zhGuVPum3a0J7Ba0Dta1PS/
 YSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YUw6e+dM1SFz4LeXvxWXBqLHb/4EQFux2poSTpQulfs=;
 b=W5i1qjpZsf8l79J8T5XTSRHfLcSarY+2iviuAb+mPeM0z2juYhkAP0SirP/QevE7Nr
 dqYS3jQlNA6sASI9rYkihOQBwpLueOfdl5YmPGjzsEKe6yO6tH968x+QTlI+B8piFTfK
 RXp/ZbZBB12+JOTx4SlukkuGD8jvETxCGBMPb3yyxDRR9IuvoEjNoGhdUKGjbIGuxXXv
 SP011YLPXqaip+YzLJkqLuvkuDO1Qw+EdV3N1ztEZX4sqqQSt7MVkriuTTfP9fx2Uhzo
 sCSbCFZ5XKqmwjo0a36Yq36bEsk1+xMHrFWhw4GyxXFX8ui+EvDVPxiyN9caLC4ssLCK
 X92A==
X-Gm-Message-State: APjAAAWmzktD+MklNIpadpDNW7q0QiJg5Hmo9M5dGiSuaUsMMdqJM11P
 dQ+485SqmGvyfmkxV3F5D78gTw==
X-Google-Smtp-Source: APXvYqwuNbQDJm9cbNb24r/eoLAKrjnQfU3R0fDqZHb/fRAksALPYf2adShFQXQ0CIZQgQ8ImcBe9g==
X-Received: by 2002:a2e:9185:: with SMTP id f5mr12072389ljg.51.1559600961696; 
 Mon, 03 Jun 2019 15:29:21 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:21 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/7] staging: kpc2000: remove unnecessary parentheses in core.c
Date: Tue,  4 Jun 2019 00:29:11 +0200
Message-Id: <20190603222916.20698-3-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCBjaGVjayAiVW5uZWNlc3NhcnkgcGFyZW50aGVzZXMgYXJvdW5k
CnBkZXYtPmRldi5rb2JqIi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9u
QG5pa2Fub3IubnU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMg
fCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYyBi
L2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCmluZGV4IDM1NmEyNzJjMGI5
Yy4uZGM2OTQwZTZjMzIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMy
MDAwL2NvcmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYwpA
QCAtNDkxLDcgKzQ5MSw3IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBj
aV9kZXYgKnBkZXYsCiAJLyoKIAkgKiBTdGVwIDk6IFNldHVwIHN5c2ZzIGF0dHJpYnV0ZXMKIAkg
Ki8KLQllcnIgPSBzeXNmc19jcmVhdGVfZmlsZXMoJihwZGV2LT5kZXYua29iaiksIGtwX2F0dHJf
bGlzdCk7CisJZXJyID0gc3lzZnNfY3JlYXRlX2ZpbGVzKCZwZGV2LT5kZXYua29iaiwga3BfYXR0
cl9saXN0KTsKIAlpZiAoZXJyKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0byBh
ZGQgc3lzZnMgZmlsZXM6ICVkXG4iLCBlcnIpOwogCQlnb3RvIG91dDk7CkBAIC01MTUsNyArNTE1
LDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwK
IAlyZXR1cm4gMDsKIAogb3V0MTA6Ci0Jc3lzZnNfcmVtb3ZlX2ZpbGVzKCYocGRldi0+ZGV2Lmtv
YmopLCBrcF9hdHRyX2xpc3QpOworCXN5c2ZzX3JlbW92ZV9maWxlcygmcGRldi0+ZGV2LmtvYmos
IGtwX2F0dHJfbGlzdCk7CiBvdXQ5OgogCWZyZWVfaXJxKHBjYXJkLT5wZGV2LT5pcnEsIHBjYXJk
KTsKIG91dDhiOgpAQCAtNTUyLDcgKzU1Miw3IEBAIHN0YXRpYyB2b2lkIGtwMjAwMF9wY2llX3Jl
bW92ZShzdHJ1Y3QgcGNpX2RldiAqcGRldikKIAltdXRleF9sb2NrKCZwY2FyZC0+c2VtKTsKIAlr
cDIwMDBfcmVtb3ZlX2NvcmVzKHBjYXJkKTsKIAltZmRfcmVtb3ZlX2RldmljZXMoUENBUkRfVE9f
REVWKHBjYXJkKSk7Ci0Jc3lzZnNfcmVtb3ZlX2ZpbGVzKCYocGRldi0+ZGV2LmtvYmopLCBrcF9h
dHRyX2xpc3QpOworCXN5c2ZzX3JlbW92ZV9maWxlcygmcGRldi0+ZGV2LmtvYmosIGtwX2F0dHJf
bGlzdCk7CiAJZnJlZV9pcnEocGNhcmQtPnBkZXYtPmlycSwgcGNhcmQpOwogCXBjaV9kaXNhYmxl
X21zaShwY2FyZC0+cGRldik7CiAJaWYgKHBjYXJkLT5kbWFfYmFyX2Jhc2UpIHsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
