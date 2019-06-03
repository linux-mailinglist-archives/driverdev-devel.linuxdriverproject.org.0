Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBD733B3F
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 680318985A;
	Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xRbWsTmzSTyT; Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4E81896BF;
	Mon,  3 Jun 2019 22:29:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4A961BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D203B87AB4
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qCSAgQHepRF8 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7E1F87AB6
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:28 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id m15so14834939lfh.4
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UjUSFd7aQdKxToFSdaPtLUOkedKCOVjOL48MGdTc4nI=;
 b=kST1sHwc64ZSCs8SYnRlC3eRj16PK7btR3jYrcwuilOwjcsztbqLtKLD3+CtwDyx9s
 K6KNfpNEC0gCI/s3YToyLuNjfH63GwcUvKFPkUermd6Vl1Z8GqETllQ3hcGGmSQFOAhU
 DhpWPuZ82sOKug8DSzqCEnnrbcPaWEgGiQciw+AnI90SEFpaQ9fjyqi+CyEj0Oj75DdW
 2uGQrFe0ImOZftzhrb22eBuyt1SEAv6wxg5/n74NtOHqxCVwEAKUL+2fTt5l4gKSS2Px
 x7L4AblI3Up3nzOK+VmGIeRO9rn+nYsMAFgabYzDocZQIJOphziEcvJx6GwFJOMTpI2/
 SnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UjUSFd7aQdKxToFSdaPtLUOkedKCOVjOL48MGdTc4nI=;
 b=g0RqWxyf/ABeBW/i6SJ8RzddefpZE8A0zNjuAlAfH8zCG/ZY+UdCkmJFVA+SEeRuBw
 RVeYjjaIlk6wC9MUkflzCdG/26sCO4gZ/1M/rY+C/oLSccrIXgV87Nh+p6vr/Y6bzO1h
 66riGw3Hidnz3442OBT6bFtY2VImkfoh0gU/S2WSV/43kZ/PgXDwbPtU6oFM1t6h3MOk
 yFlAAXuepvkNFN2/CLqTb9WRTW9jzeHAjTNUDYc9Zl7mqUvsT3GnJRDiTykL/NRtsB88
 xUx0i/dnpFA1Ano8Z4DtVQ4eg/76Oxrz+jPkbAcMTC2sRv8JL7CfBsoIOPVpq1eLaW/p
 C/2w==
X-Gm-Message-State: APjAAAX7Wuxf6BIhthAg3hlOa/caFIrSWiJLA0EowCYRoTvxvuELcQ5C
 YI2Mg5KBy03BBWF99SiUaC4PsQ==
X-Google-Smtp-Source: APXvYqw0ku2LIOk5AxJvPbEv/l1A40D7B8/99dV/mebt5NJDDFkoBATB9Xq5OFMTEtiGTclTd3OPRw==
X-Received: by 2002:ac2:5938:: with SMTP id v24mr4612177lfi.161.1559600966162; 
 Mon, 03 Jun 2019 15:29:26 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:25 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/7] staging: kpc2000: use sizeof(var) in kzalloc call
Date: Tue,  4 Jun 2019 00:29:15 +0200
Message-Id: <20190603222916.20698-7-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIga3phbGxvYyhzaXplb2YoKnBjYXJk
KS4uLikgb3ZlcgpremFsbG9jKHNpemVvZihzdHJ1Y3Qga3AyMDAwX2RldmljZSkuLi4pIi4KClNp
Z25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fub3IubnU+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
YzIwMDAvY29yZS5jCmluZGV4IDNmMTc1NjZhOWQwMy4uMmQ4ZDE4ODYyNGY3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYworKysgYi9kcml2ZXJzL3N0
YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYwpAQCAtMzE3LDcgKzMxNyw3IEBAIHN0YXRpYyBp
bnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJLyoKIAkgKiBTdGVw
IDE6IEFsbG9jYXRlIGEgc3RydWN0IGZvciB0aGUgcGNhcmQKIAkgKi8KLQlwY2FyZCA9IGt6YWxs
b2Moc2l6ZW9mKHN0cnVjdCBrcDIwMDBfZGV2aWNlKSwgR0ZQX0tFUk5FTCk7CisJcGNhcmQgPSBr
emFsbG9jKHNpemVvZigqcGNhcmQpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXBjYXJkKQogCQlyZXR1
cm4gLUVOT01FTTsKIAlkZXZfZGJnKCZwZGV2LT5kZXYsICJwcm9iZTogYWxsb2NhdGVkIHN0cnVj
dCBrcDIwMDBfZGV2aWNlIEAgJXBcbiIsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
