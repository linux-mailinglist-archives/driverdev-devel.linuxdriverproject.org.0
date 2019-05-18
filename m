Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E742257A
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A70C87937;
	Sat, 18 May 2019 22:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lcivKAhAL04f; Sat, 18 May 2019 22:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A435187823;
	Sat, 18 May 2019 22:48:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 283FA1BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24A7F87823
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9myi3FmTgAYN for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:48:48 +0000 (UTC)
X-Greylist: delayed 00:06:55 by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B4DF8781C
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:48:48 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id j1so6635061qkk.12
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HjafOF3we2ISgKmws+AAmSPCOfvoMlLfEcLpwFAOH20=;
 b=hZ4gxLpg6e+HdwfQ1NXXRXfPKNh09IvaB2r/AWlEKTZFEOStyNY7rBeDbJe6CnaQ3Q
 UaR1WbRUT9HhSIT2GZshGU5CmTP46jiP/ZpxgKvNwwznxCDNWAys9BL+DXLLH7trevO+
 g5ahNdjbPGvFwrZ4cOxY7e+VsQy6uTF5ET2N/T1jZje7SH/dHL3NeYwuCXx6JIdHYsmd
 LKwC4D/zcDzCvNO3pD79ItH1bdGXVBwM2G1vAeL9p6ll8P7YWDSCd3yw+olCwj0BPVgN
 ym7wqa2PpNPaeyfuUijgm1dMLd/0su+PQenVezSJnZJ3IDkmWojRSFFjNmHr5r3pT/mJ
 f6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HjafOF3we2ISgKmws+AAmSPCOfvoMlLfEcLpwFAOH20=;
 b=hs5tXSiyAZWDCx6eshozSPfiustI5xekMyadyxW41TVY6LGBL5qYriEnSEKIrh65L4
 bcb+X4nCxkOnyfamz5HrPNAn12FB+MzgabnfT1p9cCz7/h5UtRpB0hPH5YOu+aWq9g2I
 XkobMONPdQkt8ifxfJToNtuB0CiLT8cydze4VLRdmS4vIPK2vPytVJHLKL2B6FmwmuQk
 JxCNlLKHxwPNSdAwihalW6GqxLXUfpGEDKD+6kNJI31wCgsvZeQxbCaR+YlaZVlraHAi
 6SDT25M6ANeEURS+xelrkMtrpHuVVIvgw0Eogwe0YqGediIydXwMPoOW/XCfmrfjCn4K
 +wpA==
X-Gm-Message-State: APjAAAVhlBxcjOkk22rJGLhkqneqAmv0/JfVu4/wfXDhKOSLYNHs284F
 kG1YDT1fM3Yki8muavfQPGf9bg==
X-Google-Smtp-Source: APXvYqws6NF4t7YOPS1d8LkVgLg7sYRMajLfSLBfYLOL1vQBd5nqSp7jevx1MMGLFOVwau3R4HRHnQ==
X-Received: by 2002:a37:7fc3:: with SMTP id a186mr50951745qkd.65.1558219312472; 
 Sat, 18 May 2019 15:41:52 -0700 (PDT)
Received: from greta.semfio.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id d32sm7348992qtk.0.2019.05.18.15.41.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 15:41:52 -0700 (PDT)
From: =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: iio: cdc: ad7150: create of_device_id array
Date: Sat, 18 May 2019 19:41:35 -0300
Message-Id: <20190518224136.16942-2-barbara.fernandes@usp.br>
X-Mailer: git-send-email 2.22.0.rc0.1.g337bb99195.dirty
In-Reply-To: <20190518224136.16942-1-barbara.fernandes@usp.br>
References: <20190518224136.16942-1-barbara.fernandes@usp.br>
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Melissa Wen <melissa.srw@gmail.com>,
 =?UTF-8?q?B=C3=A1rbara=20Fernandes?= <barbara.fernandes@usp.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q3JlYXRlIHN0cnVjdHVyZSBvZiB0eXBlIG9mX2RldmljZV9pZCBpbiBvcmRlciB0byByZWdpc3Rl
ciBhbGwgZGV2aWNlcwp0aGUgZHJpdmVyIGlzIGFibGUgdG8gbWFuYWdlLgoKU2lnbmVkLW9mZi1i
eTogQsOhcmJhcmEgRmVybmFuZGVzIDxiYXJiYXJhLmZlcm5hbmRlc0B1c3AuYnI+ClNpZ25lZC1v
ZmYtYnk6IE1lbGlzc2EgV2VuIDxtZWxpc3NhLnNyd0BnbWFpbC5jb20+CkNvLWRldmVsb3BlZC1i
eTogTWVsaXNzYSBXZW4gPG1lbGlzc2Euc3J3QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogV2ls
c29uIFNhbGVzIDxzcG9vbm1Ac3Bvb25tLm9yZz4KQ28tZGV2ZWxvcGVkLWJ5OiBXaWxzb24gU2Fs
ZXMgPHNwb29ubUBzcG9vbm0ub3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9paW8vY2RjL2FkNzE1
MC5jIHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2NkYy9hZDcxNTAuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9paW8vY2RjL2FkNzE1MC5jCmluZGV4IDRiMWM5MGUxYjBlYS4uMDcyMDk0MjI3ZTFiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2NkYy9hZDcxNTAuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvaWlvL2NkYy9hZDcxNTAuYwpAQCAtNjU1LDExICs2NTUsMjEgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGFkNzE1MF9pZFtdID0gewogCXt9CiB9OwogCitzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBhZDcxNTBfb2ZfaTJjX21hdGNoW10gPSB7CisJ
eyAuY29tcGF0aWJsZSA9ICJhZGksYWQ3MTUwIiB9LAorCXsgLmNvbXBhdGlibGUgPSAiYWRpLGFk
NzE1MSIgfSwKKwl7IC5jb21wYXRpYmxlID0gImFkaSxhZDcxNTYiIH0sCisJe30KK307CisKK01P
RFVMRV9ERVZJQ0VfVEFCTEUob2YsIGFkNzE1MF9vZl9pMmNfbWF0Y2gpOworCiBNT0RVTEVfREVW
SUNFX1RBQkxFKGkyYywgYWQ3MTUwX2lkKTsKIAogc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVyIGFk
NzE1MF9kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSAiYWQ3MTUwIiwKKwkJLm9m
X21hdGNoX3RhYmxlID0gYWQ3MTUwX29mX2kyY19tYXRjaAogCX0sCiAJLnByb2JlID0gYWQ3MTUw
X3Byb2JlLAogCS5pZF90YWJsZSA9IGFkNzE1MF9pZCwKLS0gCjIuMjIuMC5yYzAuMS5nMzM3YmI5
OTE5NS5kaXJ0eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
