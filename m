Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AED4C5F297
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 08:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 576142047B;
	Thu,  4 Jul 2019 06:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMb+0Yfx9mO3; Thu,  4 Jul 2019 06:08:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1987B220EF;
	Thu,  4 Jul 2019 06:08:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BE541BF340
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68FF32046F
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAqgsX59-Dk1 for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 06:08:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A8C202044D
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 06:08:21 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 16so4873541ljv.10
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 23:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2rKacEqNLZlH3pkCMNqkZZev5jRQGonkQdhJh46q48g=;
 b=Si3d4G78WkF+dGOrqKME7EsmUB3Q6evaEmrKh5UCNZLAio+mkyR1XPBijRsHFoP1kZ
 W3ocZkyBOpF/vQV6mywe84AJMxIG7OwKtxohL20q9SvnsDuusysfr+lwvZYFuV9KlVAS
 KnDBgfHZCRtUmZ5mWDbvb8rbu2nOuXF+PhcD6qLY+yQA3oMdZoILZVOO5C04fy421f/V
 7u/ZdwwjXy154XaeQtBiW4OdeSj9YecMNh58xM2staH+W0hU0ltwvYfimNS1csZxnAeT
 Pyo4aPiNEf78kvlb8hnpy1CPKKuxXy8sHlNcl9LYr8iO3sKlTf+Cvk/izaJPaNlyH4XN
 2ILQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2rKacEqNLZlH3pkCMNqkZZev5jRQGonkQdhJh46q48g=;
 b=TDljore5zjF1yWLO+kjofJGXFskq4aWmolqakk61cE8pzYiJOWxPVxivRUR2UWlowN
 cCjvsXG63gVctzwU8TSCp7kdZv4Umrj+Qo6eKPtj+Z9sHOFXkQjU8qWV2YcEBP62SN6A
 mkPtWgpCqfv5ey0YFlWQAyV5dpUwmkv5fSW4NvUGzKOnEbwNNAyApBOBBcN0KcTtHVEA
 g3F1vtxj9XeLBjhgwhaHmDzrhrGt2xaJAYRxVS9Z0IvoErWZBNbEBbGg0kAQez1vSXwA
 huIBMaDMuinDV2VAU476WbT4D28gF3bvzy5bDbuolFvmv/Js1nl6/SyOrsZI+yTnPEDj
 CHEg==
X-Gm-Message-State: APjAAAV0TtQLTAHWxMFKE8wyIU5eHxd3NoIyPo0Xyc04txh4THWC+hA1
 3aBIZpvjwFQbs3ixC+Rk+qTa1Q==
X-Google-Smtp-Source: APXvYqy1O+4L1Crris1SidTvWq4YsmTh0R3REhDsfkFpV7kN30vjXSchs1fjY88KZ0Zitu19nZIDrw==
X-Received: by 2002:a2e:981:: with SMTP id 123mr23869157ljj.66.1562220500101; 
 Wed, 03 Jul 2019 23:08:20 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id b4sm710440lfp.33.2019.07.03.23.08.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 23:08:19 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: kpc2000: simplify comparison to NULL in
 kpc2000_spi.c
Date: Thu,  4 Jul 2019 08:08:09 +0200
Message-Id: <20190704060811.10330-2-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704060811.10330-1-simon@nikanor.nu>
References: <20190704060811.10330-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaCB3YXJuaW5nICJDb21wYXJpc29uIHRvIE5VTEwgY291bGQgYmUgd3Jp
dHRlbiBbLi4uXSIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9zcGkuYyBiL2RyaXZlcnMv
c3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMKaW5kZXggMDA5ZGVjMmY0NjQxLi4zNWFjMWQ3
MDcwYjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMK
KysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9zcGkuYwpAQCAtNDM2LDcgKzQz
Niw3IEBAIGtwX3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwbGRldikKIAl9CiAK
IAltYXN0ZXIgPSBzcGlfYWxsb2NfbWFzdGVyKCZwbGRldi0+ZGV2LCBzaXplb2Yoc3RydWN0IGtw
X3NwaSkpOwotCWlmIChtYXN0ZXIgPT0gTlVMTCkgeworCWlmICghbWFzdGVyKSB7CiAJCWRldl9l
cnIoJnBsZGV2LT5kZXYsICIlczogbWFzdGVyIGFsbG9jYXRpb24gZmFpbGVkXG4iLAogCQkJX19m
dW5jX18pOwogCQlyZXR1cm4gLUVOT01FTTsKQEAgLTQ2MCw3ICs0NjAsNyBAQCBrcF9zcGlfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGxkZXYpCiAJCW1hc3Rlci0+YnVzX251bSA9IHBs
ZGV2LT5pZDsKIAogCXIgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGxkZXYsIElPUkVTT1VSQ0Vf
TUVNLCAwKTsKLQlpZiAociA9PSBOVUxMKSB7CisJaWYgKCFyKSB7CiAJCWRldl9lcnIoJnBsZGV2
LT5kZXYsICIlczogVW5hYmxlIHRvIGdldCBwbGF0Zm9ybSByZXNvdXJjZXNcbiIsCiAJCQlfX2Z1
bmNfXyk7CiAJCXN0YXR1cyA9IC1FTk9ERVY7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
