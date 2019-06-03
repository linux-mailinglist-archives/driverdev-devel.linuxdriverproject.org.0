Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF71933B3C
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 87CD92DF88;
	Mon,  3 Jun 2019 22:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gCmHY8UQdMU7; Mon,  3 Jun 2019 22:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A2E32CB21;
	Mon,  3 Jun 2019 22:29:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FCF41BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 766622CB8B
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boGvAw0DETz7 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id A373E2C2CE
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:21 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 131so5229497ljf.4
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=plB+0yc0ip4AMYAM0GIJuNCdbr5+mAuBnyJ3DTHcuxw=;
 b=vMhCvc5eyn6iXsQBFthHqsIE7KKBreLhSg98Niv7pKdrCZhzVGZGxFv6i1SFR1nWPh
 SGg1uA1nPALEXtKbQS0OinPliW+OTPuesLpBphxSx6fgwe/uUZHX2ae/lpEv2KOpo1HH
 Y5tXOUGXz6ntnvkDAwahbchvRKps2hu2d8HMVPO6FM0dLB1xg0KZvTDG8CSUsoKrdmzs
 OFOYp7T8v+3TdFAeaI83SxYuZQzs5KUL8s2efrkL9ISscha58EDDBE7fz7iNHc6wccHW
 R7zJkFWGfQxUJRW0Ibw1Yw52jl6z2++SvAt63RjJfi//XepzGumhysUtnMx+upajWlCB
 2+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=plB+0yc0ip4AMYAM0GIJuNCdbr5+mAuBnyJ3DTHcuxw=;
 b=nGAwq/dy1K8u8sh85QuP/8MRUbittcC6hombb2RXkN6OsqV/Lk5sxgEODQFyCe7fHA
 3JfxE7ntUPZTb/YiV8RzkYxGwq2aJVaPxgflTsQk1AAol45cXS2nR0l76ujbLQ/TSIgD
 yaxqt3X97DnCRCosikDC61UasRYS5sx5kVqAfAESPGnuEQYpqOjpeiCWFImcKQNKEAXy
 5y+A6XYavoI+gXEIdq5UlifCMowUmpKC2VjN6/sMEdqi/zLXNFX/EdtWOAlJkGWhT7W2
 /LU6RG1Uu3QFbp9Dp8f9qQFKxLY4/ERU+VM4Xl+JFgUTl7a96q9/DAi9xOIDjF2jjDn8
 +Qpg==
X-Gm-Message-State: APjAAAWrelmFQsJLZnoGXelh4afD969iLlSrtUjHNViECCS0oxInzGAu
 BiwerAUPObYP3M2vyhEI/hAxmg==
X-Google-Smtp-Source: APXvYqwrvesoOhScXD4D/ySVRVl7oOgY45yO9rbfO0Mhp38j9TQypwrzRSWWhQ1fSp2PL6ew1JrxzQ==
X-Received: by 2002:a2e:2f13:: with SMTP id v19mr6633612ljv.203.1559600959964; 
 Mon, 03 Jun 2019 15:29:19 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:18 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/7] staging: kpc2000: various minor checkpatch fixes
Date: Tue,  4 Jun 2019 00:29:09 +0200
Message-Id: <20190603222916.20698-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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

SGVyZSBpcyBhIGJ1bmNoIG9mIGNoZWNrcGF0Y2ggZml4ZXMgZm9yIGNvcmUuYyBpbiBzdGFnaW5n
L2twYzIwMDAuCgpTb21lIG9mIHRoZXNlIHdlcmUgc2VudCBlYXJsaWVyIGJ1dCBub3QgYXBwbGll
ZC4gTm93IHJlYmFzZWQgb24gdG9wIG9mCnN0YWdpbmctdGVzdGluZyAoaW5jbC4gSmVyZW15J3Mg
a3BjMjAwMCBtaXNjIGRldmljZSByZW1vdmFsIGNvbW1pdHMpLgoKCi0gU2ltb24KClNpbW9uIFNh
bmRzdHLDtm0gKDcpOgogIHN0YWdpbmc6IGtwYzIwMDA6IHNpbXBsaWZ5IGNvbXBhcmlzb25zIHRv
IE5VTEwgaW4gY29yZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IHBh
cmVudGhlc2VzIGluIGNvcmUuYwogIHN0YWdpbmc6IGtwYzIwMDA6IHJlbW92ZSB1bm5lY2Vzc2Fy
eSBvb20gbWVzc2FnZSBpbiBjb3JlLmMKICBzdGFnaW5nOiBrcGMyMDAwOiB1c2UgX19mdW5jX18g
aW4gZGVidWcgbWVzc2FnZXMgaW4gY29yZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVu
bmVjZXNzYXJ5IGluY2x1ZGUgaW4gY29yZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogdXNlIHNpemVv
Zih2YXIpIGluIGt6YWxsb2MgY2FsbAogIHN0YWdpbmc6IGtwYzIwMDA6IGZpeCBpbmNvcnJlY3Qg
Y29kZSBjb21tZW50IGluIGNvcmUuYwoKIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAv
Y29yZS5jIHwgMzYgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
NiBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
