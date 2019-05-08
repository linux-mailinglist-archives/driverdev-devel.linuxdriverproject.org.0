Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFAD1815C
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 May 2019 22:55:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2FDC87277;
	Wed,  8 May 2019 20:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEFgsGIRRoxu; Wed,  8 May 2019 20:55:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28C3C8723B;
	Wed,  8 May 2019 20:55:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED811BF21A
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 20:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7840F22E6E
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 20:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vCkC3lGOoLHx for <devel@linuxdriverproject.org>;
 Wed,  8 May 2019 20:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9CA6622E54
 for <devel@driverdev.osuosl.org>; Wed,  8 May 2019 20:55:44 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m20so138179lji.2
 for <devel@driverdev.osuosl.org>; Wed, 08 May 2019 13:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EdHQ2fN9PmYyyKfWtvF5eYBZ95JotNTRJaQiGnwT22Q=;
 b=nB5PfQEzy7OJ7F4ijNv3ammizGHtT2f6SwnFsNgo1hS/qK94j1nbkEtPpdRPqm0qoS
 UhyFFgLmrWvr/bjASQYCwNGzqZQ7QfTlc7zTsuI04bmZTEIdCbQN+BtGavqQAE4fRSLc
 qWufHDuuvjb83rN7UiVIkSBCOjaj+ai5oLQm6woOtVlGmEEMTj4Q079HJM7SJckKmYeT
 x6QCwhXEOQ0LC7ZxCB7b+Ng7lHhx0sICanN4YAnSNv3pPS22+/SX94ghijuxtVhQebLi
 3E1oNsy+nMBpizNgSMdXKoxxCdQO/9+b62MkJ+uiBAjylV05a6O44414HXkjN5MOiJh8
 qT1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EdHQ2fN9PmYyyKfWtvF5eYBZ95JotNTRJaQiGnwT22Q=;
 b=uaGAEB+fhaaUEmBx8amzeIVKcNYLKjeZDcjM8XLDXpJ3ctZWrGz7ZLgEvBEuGBV7oU
 5/5eGS68qJbMIaQH69nVuPduzpAbvTz7A41Rfl9Ppdl7BHNfbKOWmjdyJ16r0zk7S6d7
 Ojihydh41+Y1zsccLA8rIqV+LvXHQVFe1Er1ZcwmUYns+AK7Fzb0MuOc8wl3Rg0tPgaF
 f6osln+Orl5RrYXCmBnPUaohJdUoJfEn8m7NKs2BpKIQaCfBK2mQjapRfe6F6Hyzt+FG
 JfxhRkJ4J07mQDtHVZpR1h9d7b/OLPStWv4vJRfOBYLk//R847ENOktpdpJHJLARPXCH
 u2Hg==
X-Gm-Message-State: APjAAAUjPNZczdD7QFtX/vub6U0M1k9nGRqbjCq+sCN0ah9ef8Mh+q2C
 qQkIRSkl/vLoo9aZY7V8L94=
X-Google-Smtp-Source: APXvYqxF4bRLmQ0lCdvd24dzL0b5mFPZQZHuqbb41oIPCNbn8ScTXThKxTpVU0p8Ul0YdYCnv6esWg==
X-Received: by 2002:a2e:568b:: with SMTP id k11mr8084177lje.124.1557348942803; 
 Wed, 08 May 2019 13:55:42 -0700 (PDT)
Received: from octofox.cadence.com
 (jcmvbkbc-1-pt.tunnel.tserv24.sto1.ipv6.he.net. [2001:470:27:1fa::2])
 by smtp.gmail.com with ESMTPSA id p18sm4833697ljc.54.2019.05.08.13.55.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 13:55:42 -0700 (PDT)
From: Max Filippov <jcmvbkbc@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drivers/staging/kpc2000: fix build error on xtensa
Date: Wed,  8 May 2019 13:55:13 -0700
Message-Id: <20190508205513.11312-1-jcmvbkbc@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Max Filippov <jcmvbkbc@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

a3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYyBpbmNsdWRlcyBhc20vdWFjY2Vzcy5oIGluc3RlYWQg
b2YKbGludXgvdWFjY2Vzcy5oLCB3aGljaCByZXN1bHRzIGluIHRoZSBmb2xsb3dpbmcgYnVpbGQg
ZXJyb3Igb24geHRlbnNhCmFyY2hpdGVjdHVyZToKCiAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tCiAg
ZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmM6MTE6CiAgYXJjaC94dGVu
c2EvaW5jbHVkZS9hc20vdWFjY2Vzcy5oOgogIEluIGZ1bmN0aW9uIOKAmGNsZWFyX3VzZXLigJk6
CiAgYXJjaC94dGVuc2EvaW5jbHVkZS9hc20vdWFjY2Vzcy5oOjQwOjIyOgogIGVycm9yOiBpbXBs
aWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJh1YWNjZXNzX2tlcm5lbOKAmTsgLi4uCiAg
ICNkZWZpbmUgX19rZXJuZWxfb2sgKHVhY2Nlc3Nfa2VybmVsKCkpCiAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fn5+fn5+CgpJbmNsdWRlIGxpbnV4L3VhY2Nlc3MuaCB0byBmaXggdGhh
dC4KClNpZ25lZC1vZmYtYnk6IE1heCBGaWxpcHBvdiA8amNtdmJrYmNAZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMgYi9kcml2ZXJzL3N0YWdpbmcv
a3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYwppbmRleCA1NzQxZDJiNDlhN2QuLjA4ODZhZDQwOGIw
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMK
KysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMKQEAgLTgsNyAr
OCw3IEBACiAjaW5jbHVkZSA8bGludXgvZXJybm8uaD4gICAgLyogZXJyb3IgY29kZXMgKi8KICNp
bmNsdWRlIDxsaW51eC90eXBlcy5oPiAgICAvKiBzaXplX3QgKi8KICNpbmNsdWRlIDxsaW51eC9j
ZGV2Lmg+Ci0jaW5jbHVkZSA8YXNtL3VhY2Nlc3MuaD4gICAgLyogY29weV8qX3VzZXIgKi8KKyNp
bmNsdWRlIDxsaW51eC91YWNjZXNzLmg+ICAvKiBjb3B5XypfdXNlciAqLwogI2luY2x1ZGUgPGxp
bnV4L2Fpby5oPiAgICAgIC8qIGFpbyBzdHVmZiAqLwogI2luY2x1ZGUgPGxpbnV4L2hpZ2htZW0u
aD4KICNpbmNsdWRlIDxsaW51eC9wYWdlbWFwLmg+Ci0tIAoyLjExLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
