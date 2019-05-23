Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5D227BDC
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B01C488127;
	Thu, 23 May 2019 11:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FA-to9VC-Yk7; Thu, 23 May 2019 11:36:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 488CF880C3;
	Thu, 23 May 2019 11:36:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FBD11BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D2A330FCB
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUrn7frbCc64 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F51030EDE
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:37 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id l26so4116901lfh.13
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N81VduL34DQfMDrcwklUsVpIH+zv/8mLQSEnWzPurkE=;
 b=YUC8gLjRT3RpGd1P5TgxaNiCYI994Q059+IpAjSQEiYFBnlHyMen2ZSJO8DLwhRJd1
 xPdPMZ+fGemuH0rxQCjwq1EuW3H5cdUj95U3jAlAKQ8hV3XGH9IJp51zhDGfoM4pQsrY
 8uyqWEFeYXiznUDqN9D/6Xrl96FI+PjejmIHWZLbcq0Kp+NpBteyg+d+Y3A//NFLnodM
 5rpKLEgSuom6vTsBFE/K5PsLDTKgHJPj7Cl5HxVo4IBgc6n/byyqoAT8TSm6rYlDCE/6
 UFW8hQaI42QgPWM9L9iLWdns0AznlhUFrq2mTSDQbfGPN5LfWYytjBTOS7YA5zz5YEQG
 dIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N81VduL34DQfMDrcwklUsVpIH+zv/8mLQSEnWzPurkE=;
 b=D3zpz+OXP/ofZA4sRAWrkQSG8r8CtA0R65E5TuTgvUsY33FaVejZmBrx69QjBOmA2X
 RCOHy3brZ8/8hYHs5oiSxiHL5KM18SfPw4u35sp1KwJi9aSJ/8I6AnRc+Qk6+2wEPYoK
 Duud+BChx+3+Wa9fq3Gn1o8R0MukZMvhmlVaZNJ/6kpodoj68OlfxzFFP5YggtA3kXQu
 F5xI9xYbUT87uV4wB+yiyjUVrTTpd+pcX187vndfaOxddiQCCY3K3qwrOz6Mn3ErUvw+
 4PFq9IxM7WAKn3x2b4sdn0WxGvWSL8BDmc/5cUqRM4DHxeLiAAWmwzt6iVB+i70CzpVl
 Q9Ew==
X-Gm-Message-State: APjAAAXGLUD9bSOdVOvnmva/kVLNQgOXhX6LtP9PhA2g9lHRfwaWNqhM
 XhvbzpXH1jtMNWTclqE6Xq1LzA==
X-Google-Smtp-Source: APXvYqwXNT8B12ktl98j3v3Ee/yAwsO/8sfKR2XyP5+WPd5PTUnOgcdgXNyeIHpX8wKnDEPlmr/gpw==
X-Received: by 2002:a19:700b:: with SMTP id h11mr1359602lfc.25.1558611395583; 
 Thu, 23 May 2019 04:36:35 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:35 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/8] staging: kpc2000: remove extra blank lines in cell_probe.c
Date: Thu, 23 May 2019 13:36:10 +0200
Message-Id: <20190523113613.28342-6-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523113613.28342-1-simon@nikanor.nu>
References: <20190523113613.28342-1-simon@nikanor.nu>
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
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBi
bGFuayBsaW5lcyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5j
IHwgNCAtLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4IGI2MjFhZGI3MTJmZi4uMGRh
NDFjYTE3ZWI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2Nl
bGxfcHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJv
YmUuYwpAQCAtOTQsNyArOTQsNiBAQCB2b2lkIHBhcnNlX2NvcmVfdGFibGVfZW50cnkoc3RydWN0
IGNvcmVfdGFibGVfZW50cnkgKmN0ZSwgY29uc3QgdTY0IHJlYWRfdmFsLCBjbwogCX0KIH0KIAot
CiBzdGF0aWMgaW50IHByb2JlX2NvcmVfYmFzaWModW5zaWduZWQgaW50IGNvcmVfbnVtLCBzdHJ1
Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQsCiAJCQkgICAgY2hhciAqbmFtZSwgY29uc3Qgc3RydWN0
IGNvcmVfdGFibGVfZW50cnkgY3RlKQogewpAQCAtMTExLDcgKzExMCw2IEBAIHN0YXRpYyBpbnQg
cHJvYmVfY29yZV9iYXNpYyh1bnNpZ25lZCBpbnQgY29yZV9udW0sIHN0cnVjdCBrcDIwMDBfZGV2
aWNlICpwY2FyZCwKIAogCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsICJGb3VuZCBCYXNpYyBj
b3JlOiB0eXBlID0gJTAyZCAgZG1hID0gJTAyeCAvICUwMnggIG9mZnNldCA9IDB4JXggIGxlbmd0
aCA9IDB4JXggKCVkIHJlZ3MpXG4iLCBjdGUudHlwZSwgS1BDX09MRF9TMkNfRE1BX0NIX05VTShj
dGUpLCBLUENfT0xEX0MyU19ETUFfQ0hfTlVNKGN0ZSksIGN0ZS5vZmZzZXQsIGN0ZS5sZW5ndGgs
IGN0ZS5sZW5ndGggLyA4KTsKIAotCiAJY2VsbC5wbGF0Zm9ybV9kYXRhID0gJmNvcmVfcGRhdGE7
CiAJY2VsbC5wZGF0YV9zaXplID0gc2l6ZW9mKHN0cnVjdCBrcGNfY29yZV9kZXZpY2VfcGxhdGRh
dGEpOwogCWNlbGwubnVtX3Jlc291cmNlcyA9IDI7CkBAIC0xMzcsNyArMTM1LDYgQEAgc3RhdGlj
IGludCBwcm9iZV9jb3JlX2Jhc2ljKHVuc2lnbmVkIGludCBjb3JlX251bSwgc3RydWN0IGtwMjAw
MF9kZXZpY2UgKnBjYXJkLAogCQkJICAgICAgIE5VTEwpOyAgICAgICAgICAgICAgICAgIC8vIHN0
cnVjdCBpcnFfZG9tYWluICoKIH0KIAotCiBzdHJ1Y3Qga3BjX3Vpb19kZXZpY2UgewogCXN0cnVj
dCBsaXN0X2hlYWQgbGlzdDsKIAlzdHJ1Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQ7CkBAIC0zNDcs
NyArMzQ0LDYgQEAgc3RhdGljIGludCBwcm9iZV9jb3JlX3Vpbyh1bnNpZ25lZCBpbnQgY29yZV9u
dW0sIHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCwKIAlyZXR1cm4gMDsKIH0KIAotCiBzdGF0
aWMgaW50ICBjcmVhdGVfZG1hX2VuZ2luZV9jb3JlKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2Fy
ZCwgc2l6ZV90IGVuZ2luZV9yZWdzX29mZnNldCwgaW50IGVuZ2luZV9udW0sIGludCBpcnFfbnVt
KQogewogCXN0cnVjdCBtZmRfY2VsbCAgY2VsbCA9IHsgLmlkID0gZW5naW5lX251bSB9OwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
