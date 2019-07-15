Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D4B69DAA
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 23:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 589CA86FD1;
	Mon, 15 Jul 2019 21:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oc4E+UwWhs3n; Mon, 15 Jul 2019 21:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D886E86ECA;
	Mon, 15 Jul 2019 21:21:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 487411BF35C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 21:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44DCD85F53
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 21:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9bn9KZRHbD7 for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 21:21:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8705585F50
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 21:21:27 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id p184so8008221pfp.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 14:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fmsNiLEERXvMNEkMF4DKaj6uDO68SFZu7uOSDCmxCzo=;
 b=uslUty3yGjg45QbsWNdTPjfTC4X9/T3RQMzsVcI+VFvMtueaB9HdsYsSP1gtUjjUtx
 te+oGYG2IrFlVrfgHC3FO6A5OFRxslrG+xNUgUexhcW4DvG3locEGsWA73tgfebT3w7p
 xW2apE1Uafk5uyPD0DTHKmGUupF1kxPNTuD9KGw8pPK2gCq22JXaTsPZAvjnIKB9nbJv
 VWhkJkFUYNhWFjuKvDAnvEcUSb4Ea8H21jTBZpc8pCFx0VSC3mHARGsmSg/36H5/tRDD
 +PLCVwdJw4VC8WRtuRURg3izngjSd0+Rl4iSRMJjjuFgNkGjR0VQO131hKumxddQf6XZ
 FlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fmsNiLEERXvMNEkMF4DKaj6uDO68SFZu7uOSDCmxCzo=;
 b=PP878cYAnj43CMauwfOXGmtLsU6nukQZRcYOPdeKHB6ESWi9RTSesz2gBgZUvc/EFu
 SeYoIC1jFAU+9WQvhLidv6JgOhmKON2WoWmT43hgvDuEQW42TdfpxHomSNk1rDEVQNdo
 mL9OeZ1MWOhv/WpNMWvNam4ibWk+4W9X2GPcyzmoiuCf13zTBUe8I6ELcnqBp/EzAA32
 eJk0McOfXthhxJMrT9SV/BqYlgdqHJNjg4H1NwvH76jh2UAOqgBRRVe7mT/JNRKdwTPS
 mkE6dx6rOHHVrndwOcAxVUQ2SDuik8PaNG4J5Mbr3cnOZooRN1OFn0JqELi/wPKJ4n5t
 zVgg==
X-Gm-Message-State: APjAAAXHJYfuNGEtxMqjnhwKW/Ycg3BL2iIkvMwqjwnI0wq8U+wUwuho
 3O/hSYZQV6zNjVTjTbPpDoOg83AP
X-Google-Smtp-Source: APXvYqy3idPED1nlqnc1hI1fzbHolrg3a8piOv3LPqasFqJ8bSvq5eRyEJEK0+yeTa5iVonyKcU/Wg==
X-Received: by 2002:a65:6256:: with SMTP id q22mr28908488pgv.408.1563225687129; 
 Mon, 15 Jul 2019 14:21:27 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 b6sm16820322pgq.26.2019.07.15.14.21.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 14:21:26 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH 0/1] staging: kpc2000: whitespace and line length cleanup
Date: Mon, 15 Jul 2019 14:21:22 -0700
Message-Id: <20190715212123.432-1-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-NVConfidentiality: public
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
Cc: devel@driverdev.osuosl.org, Vandana BN <bnvandana@gmail.com>,
 Geordan Neukum <gneukum1@gmail.com>, Bharath Vedartham <linux.bhar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Hubbard <jhubbard@nvidia.com>, LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKSGkgZXZlcnlvbmUsCgpU
aGlzIGlzIGFuIGVhc3ksIGRyaXZlLWJ5IGNsZWFudXAgdGhhdCBJIGRpZCB3aGlsZSByZXZpZXdp
bmcgQmhhcmF0aCdzCmNoYW5nZXMgdG8gY29udmVydCBvdmVyIHRvIHB1dF91c2VyX3BhZ2UoKS4g
SXQgc2hvdWxkIG1ha2UgdGhlIGNvZGUgbGVzcwpvYnZpb3VzbHkgbm9uLWNvbmZvcm1pbmcsIGFu
ZCB0aGVyZWZvcmUgaGVscCBmdXR1cmUgcmV2aWV3cyBhbmQgY2xlYW51cHMuCgpUaGlzIGlzIG9u
IHRvcCBvZiBsYXRlc3QgbGludXguZ2l0LCBjb21taXQgZmVjODhhYjBhZjk3ICgiTWVyZ2UgdGFn
Cidmb3ItbGludXMtaG1tJyBvZiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvcmRtYS9yZG1hIiksCmFuZCBpdCBkb2VzIE5PVCBoYXZlIEJoYXJhdGgncyBwYXRj
aCBhcHBsaWVkLCBzbyBpdCBjb25mbGljdHMgKGJ1dCBzaG91bGQKYmUgdHJpdmlhbCB0byByZXNv
bHZlLCByZWdhcmRsZXNzIG9mIHdoaWNoIGlzIGFwcGxpZWQgZmlyc3QsIGFzIGl0J3MganVzdAp3
aGl0ZXNwYWNlKS4KCkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPgpDYzogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KQ2M6IEdlb3Jk
YW4gTmV1a3VtIDxnbmV1a3VtMUBnbWFpbC5jb20+CkNjOiBKZXJlbXkgU293ZGVuIDxqZXJlbXlA
YXphemVsLm5ldD4KQ2M6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4K
Q2M6IFZhbmRhbmEgQk4gPGJudmFuZGFuYUBnbWFpbC5jb20+CkNjOiBkZXZlbEBkcml2ZXJkZXYu
b3N1b3NsLm9yZwpDYzogQmhhcmF0aCBWZWRhcnRoYW0gPGxpbnV4LmJoYXJAZ21haWwuY29tPgoK
Sm9obiBIdWJiYXJkICgxKToKICBzdGFnaW5nOiBrcGMyMDAwOiB3aGl0ZXNwYWNlIGFuZCBsaW5l
IGxlbmd0aCBjbGVhbnVwCgogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9pMmMuYyAg
ICAgICAgIHwgMTg5ICsrKysrKysrKysrLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwX3NwaS5jICAgICAgICAgfCAxMTYgKysrKystLS0tLQogZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjX2RtYS9kbWEuYyAgICAgICAgIHwgMTA5ICsrKysrKy0tLS0KIGRyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jICAgICB8IDE5OSArKysrKysrKysrKy0tLS0t
LS0KIC4uLi9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9rcGNfZG1hX2RyaXZlci5jICB8IDExMyAr
KysrKy0tLS0tCiAuLi4vc3RhZ2luZy9rcGMyMDAwL2twY19kbWEva3BjX2RtYV9kcml2ZXIuaCAg
fCAxNTQgKysrKysrKy0tLS0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgNTA3IGluc2VydGlvbnMoKyks
IDM3MyBkZWxldGlvbnMoLSkKCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
