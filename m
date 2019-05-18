Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 497D6224ED
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 22:48:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBA7E844CC;
	Sat, 18 May 2019 20:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ohxpw7xOBu_J; Sat, 18 May 2019 20:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBC0B84514;
	Sat, 18 May 2019 20:48:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE9C51BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 20:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E855422056
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 20:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQvIJtQD9TcH for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 20:48:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 3024A21FA8
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 20:48:30 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id t1so11965947qtc.12
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 13:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=WciszLrf+StkjFt3IBn6hpgp/9AF96pJ0rNKW3jR/+M=;
 b=HLb5TpL2OZK9F+Sws7GtcM0fcYy2Fpa0ZMJdNhCMtOLZMVEY+ElJpjmIm0P8JJRbD2
 Prrlb0Mh4QB6LBxWpjojlXoIr2Bo7FvtQpL1unzh7VBbRxCMs0NjXu25uVay1W2blkQ1
 xJ51654h0C+9hGDdq1Exe/Oy0rtqGvn2DvKV8U8QuPksMetMWUY+cYb8Ybxf0eNqnmKC
 AW1G+Csw9mchDYubTetAqRvAwyxXC0kEQ1tNjHyClhCLecElOVZ3Ao6Bm9p1MZ1+JXMU
 0CK/vflRyF3sKzM/DJc2QTy1JfdwxVqLU8I8VcZ17pekXd6QTC3fNAKQxthAFKZb5JHW
 ARYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=WciszLrf+StkjFt3IBn6hpgp/9AF96pJ0rNKW3jR/+M=;
 b=Tp6osoqltvF72Z5OwwRZ3MrOyT4L0Bw0cfb/v+9nRZw+vSsnJ5117Il/pwERbn/2a/
 OEGtZio5CBt6onRSpgCcXxUxDR9fA2Tq8DMoE58P1Rnhq8phHjn988Y8H0lGf8vMIrLZ
 m/YbLBwG7axLDUe82UIwyC2DpZj6kerKAD8UrJiZzBcxlSSMix1EGwBIdPOskUnlLuMY
 C02+JpiCE4/OvrN6xn3A55ZsltNLhGu/0Wu6gsmmvH1R0/z0em+i0IClcvbINdWQ+0cE
 rYCkMi0XnKvnd8TxQ0wJidQuRwmsYmE0Rfv6SgGYdKyg+6SLH3+W8IFgyGbKwX3rruC0
 6u+A==
X-Gm-Message-State: APjAAAX68vU9+BkaFwmufzOBRy7qnrKR1o5eKNKx+h3IRyo5GdH6VIN6
 QuKDybqKaJTqxzhAE8td/aE=
X-Google-Smtp-Source: APXvYqy2gfnMW7/yiWdNTqPE4nLkdak6PNML06Ce9ea32BPPhxLwoi2G0Zob0InNNm7XJjBrCJh9jw==
X-Received: by 2002:a0c:9523:: with SMTP id l32mr54285129qvl.75.1558212509186; 
 Sat, 18 May 2019 13:48:29 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id d15sm5528204qko.77.2019.05.18.13.48.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 May 2019 13:48:28 -0700 (PDT)
Date: Sat, 18 May 2019 17:48:25 -0300
From: =?utf-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: ad9832: Add device tree support
Message-ID: <20190518204825.4kh5qkqo2e5q2se6@smtp.gmail.com>
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
Zi1ieTogQW5kZXJzb24gUmVpcyA8YW5kZXJzb25yZWlzcm9zYUBnbWFpbC5jb20+CkNvLWRldmVs
b3BlZC1ieTogQW5kZXJzb24gUmVpcyAgPGFuZGVyc29ucmVpc3Jvc2FAZ21haWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZSBUYWRldSBkZSBDYXJ2YWxobyA8YW5kcmUudGFkZXUuZGUuY2FydmFs
aG9AZ21haWwuY29tPgpDby1kZXZlbG9wZWQtYnk6IEFuZHJlIFRhZGV1IGRlIENhcnZhbGhvIDxh
bmRyZS50YWRldS5kZS5jYXJ2YWxob0BnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2lp
by9mcmVxdWVuY3kvYWQ5ODMyLmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1ZW5jeS9hZDk4
MzIuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vZnJlcXVlbmN5L2FkOTgzMi5jCmluZGV4IDc0MzA4
YTJlNzJkYi4uNTFlOTdjNzRjNmIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2Zy
ZXF1ZW5jeS9hZDk4MzIuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1ZW5jeS9hZDk4
MzIuYwpAQCAtNDUxLDYgKzQ1MSwxMyBAQCBzdGF0aWMgaW50IGFkOTgzMl9yZW1vdmUoc3RydWN0
IHNwaV9kZXZpY2UgKnNwaSkKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgYWQ5ODMyX29mX21hdGNoW10gPSB7CisJeyAuY29tcGF0aWJsZSA9ICJhZGks
YWQ5ODMyIiwgfSwKKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDk4MzUiLCB9LAorCXsgLyogc2Vu
dGluZWwgKi8gfSwKK307CitNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBhZDk4MzJfb2ZfbWF0Y2gp
OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IHNwaV9kZXZpY2VfaWQgYWQ5ODMyX2lkW10gPSB7CiAJ
eyJhZDk4MzIiLCAwfSwKIAl7ImFkOTgzNSIsIDB9LAotLSAKMi4xMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
