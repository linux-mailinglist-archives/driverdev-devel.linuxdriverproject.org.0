Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 836683B114
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:45:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC90284F8B;
	Mon, 10 Jun 2019 08:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mikDeqddRYIX; Mon, 10 Jun 2019 08:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D41C84A33;
	Mon, 10 Jun 2019 08:45:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1263E1BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08BBF86D41
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xsff18rFOOXv for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:44:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 395B583668
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:44:53 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 136so6024819lfa.8
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9pHoNwA6p3prwHBUsOArztRsZNohgEg95rwPndspSpc=;
 b=vVKhK3Z/9oUDrWOnijqul3sgVLBAZtHkrf0+/0H58vpn8/4+XDVOD9r7rLBrsrE0nv
 r348ZzWoLlWN1m4qW9vRFh8hi6LiUJde/q/6D14G3DJtxsfoeBSI+1Dh4gXUbVjLPnMR
 GZpKqGDVT3nosshMJQmk6dNLGi8+YI3+fAVt9ae8V8ybQTLAYKt05uLFfauyPcN6Cg59
 qqYWeOrREnbUV/pY/wAWzpUOj3GxSwL1MO/Mj5qa7PoMxfGKClkrMadKm7whQWfE/Dh7
 oaezOSdJHK7xPeOjYE8PWg6HSL9317hdXm5MkQ0Q158lLdzNfJks+wR9uPLFi4AWo4d7
 36fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9pHoNwA6p3prwHBUsOArztRsZNohgEg95rwPndspSpc=;
 b=bkBRBuMVptHeqGpS1Yy9bl/O2xtg2Dbb7q2EyrNS9qgyiytvf9woQvFHVJzrcUMAiY
 JcQh0+LaLaRttLBox138YdAAp2+gYT3nyr8sjl9fcTm0NmcLm/tbqi/E+iFIvFno5iom
 e201/5l7mv4hzDpnargXAx2Fge7kr1lprddx/5u1AojNbsfeooz7uODHrsB4SqEE756m
 uitRckIFdVYjm4an3AnBerSVQH4ASL4FPklA/mXXra/50hxelAKbrOFEZxkPR/5Dt6Ol
 UgQWQ2MGO+t+Vi+0HpKvKu0QB2qKQOulEVXuXyyYEE6AyGUCYtqbfXTMPujlQVIB4fXL
 vKLA==
X-Gm-Message-State: APjAAAUIeAyvyeDiAAHFlKzerCUYPpzo/uWnR1DZ3HXqjBOObG4T/US8
 SQYtBbhBWMQGVW1Q24Bcp5To0g==
X-Google-Smtp-Source: APXvYqyAE/NrAnQ15xTIjzj6+th6UYKbDJ8+TOXJjiw6JXen5CJB050fGT04FuerdSbjsUHnoHrBWg==
X-Received: by 2002:ac2:528e:: with SMTP id q14mr7036944lfm.17.1560156292107; 
 Mon, 10 Jun 2019 01:44:52 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e26sm1826486ljl.33.2019.06.10.01.44.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:44:51 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: kpc2000: remove unnecessary debug prints in dma.c
Date: Mon, 10 Jun 2019 10:44:30 +0200
Message-Id: <20190610084432.12597-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610084432.12597-1-simon@nikanor.nu>
References: <20190610084432.12597-1-simon@nikanor.nu>
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
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>, =simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVidWcgcHJpbnRzIHRoYXQgYXJlIHVzZWQgb25seSB0byBpbmZvcm0gYWJvdXQgZnVuY3Rpb24g
ZW50cnkgb3IgZXhpdApjYW4gYmUgcmVtb3ZlZCBhcyBmdHJhY2UgY2FuIGJlIHVzZWQgdG8gZ2V0
IHRoaXMgaW5mb3JtYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZG1hLmMg
fCA0IC0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZG1hLmMgYi9kcml2ZXJzL3N0YWdpbmcva3Bj
MjAwMC9rcGNfZG1hL2RtYS5jCmluZGV4IDA1OTkzMmFiNTkwNy4uODA5MmQwY2Y0YTRhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2RtYS5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZG1hLmMKQEAgLTkyLDggKzkyLDYgQEAgaW50ICBz
ZXR1cF9kbWFfZW5naW5lKHN0cnVjdCBrcGNfZG1hX2RldmljZSAqZW5nLCB1MzIgZGVzY19jbnQp
CiAJdW5zaWduZWQgaW50IGk7CiAJaW50IHJ2OwogCi0JZGV2X2RiZygmZW5nLT5wbGRldi0+ZGV2
LCAiU2V0dGluZyB1cCBETUEgZW5naW5lIFslcF1cbiIsIGVuZyk7Ci0KIAljYXBzID0gR2V0RW5n
aW5lQ2FwYWJpbGl0aWVzKGVuZyk7CiAKIAlpZiAoV0FSTighKGNhcHMgJiBFTkdfQ0FQX1BSRVNF
TlQpLCAiJXMoKSBjYWxsZWQgZm9yIERNQSBFbmdpbmUgYXQgJXAgd2hpY2ggaXNuJ3QgcHJlc2Vu
dCBpbiBoYXJkd2FyZSFcbiIsIF9fZnVuY19fLCBlbmcpKQpAQCAtMTYxLDggKzE1OSw2IEBAIHZv
aWQgIHN0b3BfZG1hX2VuZ2luZShzdHJ1Y3Qga3BjX2RtYV9kZXZpY2UgKmVuZykKIHsKIAl1bnNp
Z25lZCBsb25nIHRpbWVvdXQ7CiAKLQlkZXZfZGJnKCZlbmctPnBsZGV2LT5kZXYsICJEZXN0cm95
aW5nIERNQSBlbmdpbmUgWyVwXVxuIiwgZW5nKTsKLQogCS8vIERpc2FibGUgdGhlIGRlc2NyaXB0
b3IgZW5naW5lCiAJV3JpdGVFbmdpbmVDb250cm9sKGVuZywgMCk7CiAKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
