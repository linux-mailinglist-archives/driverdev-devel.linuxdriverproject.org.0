Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898BE2257B
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:49:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B4F087C69;
	Sat, 18 May 2019 22:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0PInSEjhOTT; Sat, 18 May 2019 22:49:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C495487823;
	Sat, 18 May 2019 22:49:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABA641BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:49:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A242D860BE
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:49:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Prl8R3YSOlkV for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:49:02 +0000 (UTC)
X-Greylist: delayed 00:07:14 by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A5A8085C50
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:49:02 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id h1so12238625qtp.1
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eO6mO59GQBmOS/DlZnxdkxlS21xeFUZXbaBYNCMZMIU=;
 b=iMQQQuPNdWSowS10fp7KXUOV7QV+ye+/Y7mbyrwE1CNpcnTqZ93Szn0szcUOu6qGfS
 c31HNJcdPRoLO7kn3rIyHmb00NxIlheW/2It7nOouMH+HO5Munr8g9d8HAMwPDMkpCI4
 /uyZ6cZXCo81Ogh4QNWIbI+if76+zx8AECxsVAE+zWbx+ZVnco/swyc0EB4gSH8yWHR0
 9he7583KcqHFZwQCLCMn8iihXRLVY7S0o65DZV1DFw4/lVY9VNkZQ6xcH7lsoeg/Gyge
 wgCo8LoTTGhxNIz9R9T2eXXwP67UsVMA2ZdchQDMeInvBnRA2ZgL8r2GEZ9v4NRTF7AJ
 K9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eO6mO59GQBmOS/DlZnxdkxlS21xeFUZXbaBYNCMZMIU=;
 b=JAEJiJbkQZfk6xqZoGzNTkrKRvr+uVOMt3YvAIrwXWExCbhcq86A3hr1m26q+OYaFX
 26wzQKbddkjQxph5j94Bg1MIH8eg+D6iWUPuDutHZQAtBX1VFSJaIm2Tp2nRNVDFfx4e
 TkD/n5IhL8crWHI/ya4rGsnj88TBOlNDmVZTufsoQLI8d2d48utN5B5WmUiI7plAG0af
 U8XD846WFTK+VEEljujz6BAdroazvUe0m2uG5xQxfrGSPlQEfclHPrdAP4P9wVPtR9M7
 RlS5X/R1hpEF+1RZ+Gmn7QmaYAm//ipKpZWdC60C+lXe4cjQG4AmbMieyX126SaB1SBK
 zZ3Q==
X-Gm-Message-State: APjAAAW/SjlScleqyFHKIPtLgrflxnNZmiv8cYQ7T51cTh7SAsEbpVKA
 iGMj0f/hOvwyyNoN6Upjv8zZHw==
X-Google-Smtp-Source: APXvYqxuURr2hxU2QOxPsPBOesZOTga1YQIBXTqdf8EFG4ggK8/H7A4p9X0nZ2l1g7DLSX/yEpxirQ==
X-Received: by 2002:aed:2b44:: with SMTP id p62mr27078963qtd.308.1558219421796; 
 Sat, 18 May 2019 15:43:41 -0700 (PDT)
Received: from greta.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id j62sm4834234qte.89.2019.05.18.15.43.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 15:43:41 -0700 (PDT)
From: =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH] staging: iio: adt7316: create of_device_id array
Date: Sat, 18 May 2019 19:43:33 -0300
Message-Id: <20190518224333.18067-1-barbara.fernandes@usp.br>
X-Mailer: git-send-email 2.22.0.rc0.1.g337bb99195.dirty
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 Wilson Sales <spoonm@spoonm.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q3JlYXRlIHN0cnVjdHVyZSBvZiB0eXBlIG9mX2RldmljZV9pZCBpbiBvcmRlciB0byByZWdpc3Rl
ciBhbGwgZGV2aWNlcwp0aGUgZHJpdmVyIGlzIGFibGUgdG8gbWFuYWdlLgoKU2lnbmVkLW9mZi1i
eTogQsOhcmJhcmEgRmVybmFuZGVzIDxiYXJiYXJhLmZlcm5hbmRlc0B1c3AuYnI+ClNpZ25lZC1v
ZmYtYnk6IFdpbHNvbiBTYWxlcyA8c3Bvb25tQHNwb29ubS5vcmc+CkNvLWRldmVsb3BlZC1ieTog
V2lsc29uIFNhbGVzIDxzcG9vbm1Ac3Bvb25tLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvaWlv
L2FkZGFjL2FkdDczMTYtc3BpLmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMv
YWR0NzMxNi1zcGkuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi1zcGkuYwpp
bmRleCA4Mjk0YjljMWUzYzIuLjk5Njg3NzVmMWQyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFn
aW5nL2lpby9hZGRhYy9hZHQ3MzE2LXNwaS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRk
YWMvYWR0NzMxNi1zcGkuYwpAQCAtMTI3LDkgKzEyNywyMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHNwaV9kZXZpY2VfaWQgYWR0NzMxNl9zcGlfaWRbXSA9IHsKIAogTU9EVUxFX0RFVklDRV9UQUJM
RShzcGksIGFkdDczMTZfc3BpX2lkKTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgYWR0NzMxNl9vZl9zcGlfbWF0Y2hbXSA9IHsKKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZHQ3
MzE2IiB9LAorCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkdDczMTciIH0sCisJeyAuY29tcGF0aWJs
ZSA9ICJhZGksYWR0NzMxOCIgfSwKKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZHQ3NTE2IiB9LAor
CXsgLmNvbXBhdGlibGUgPSAiYWRpLGFkdDc1MTciIH0sCisJeyAuY29tcGF0aWJsZSA9ICJhZGks
YWR0NzUxOSIgfSwKKwl7IH0KK307CisKK01PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGFkdDczMTZf
b2Zfc3BpX21hdGNoKTsKKwogc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGFkdDczMTZfZHJpdmVy
ID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gImFkdDczMTYiLAorCQkub2ZfbWF0Y2hfdGFi
bGUgPSBhZHQ3MzE2X29mX3NwaV9tYXRjaCwKIAkJLnBtID0gQURUNzMxNl9QTV9PUFMsCiAJfSwK
IAkucHJvYmUgPSBhZHQ3MzE2X3NwaV9wcm9iZSwKLS0gCjIuMjIuMC5yYzAuMS5nMzM3YmI5OTE5
NS5kaXJ0eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
