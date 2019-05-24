Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DFB296A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 13:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1DE61220A9;
	Fri, 24 May 2019 11:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R00CbAVClDIE; Fri, 24 May 2019 11:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5109F318FB;
	Fri, 24 May 2019 11:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E45F31BF30F
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E1A008842C
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KT2wb4pBKdMK for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 11:08:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20EFD88409
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:08:13 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m15so8251232ljg.13
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 04:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8BrNHORCd/DxvHapwA+VYnwfAJG4jUky2f2ZEQG38ko=;
 b=UKvbwE9kCp1HUEQTbws9yp/ghVEvXHBxX1y0F1mIrRD5nq3qdJeFGlU9L68XEwET9P
 8xFU/86adUUBycbF8UadcPfCWOKgILWKlrSqOd4tPvaspIACy2oZv39q5oip7ykFGw7A
 SWba1i93yBWZk8WheaSFX1Ob30bDxdGw7XezhYohapdWIDylLY1474zHsALWYGRliM1z
 fV3Wsod9hqyVqqY+94R/VGAt46fhATrfHU2WigSMV9QGbdSovw0YeDs8JhUKul7Ut4TF
 uuL1dmHrS6FiB16COb9BnXLhgIs7TWxbKxwoGGzc1n9lO0nbxdYQfvT2OSyM803LjK2e
 d6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8BrNHORCd/DxvHapwA+VYnwfAJG4jUky2f2ZEQG38ko=;
 b=pbFrG+4FRyYpEJpoFd4QmcFxE4ixhTy/YYNSFXTlokPB/BFTGBGPEehETFGrYxsY76
 dIbdsG0tOQl7GuykqTRtw2TmXNPFMsCQbruvBWgvpMK5eRbQdqMdX6Let1Arz3to4EwV
 Q2otrjdjr4NF2H6k7pLHuBotGGOsug4tZ5KcaZxO7br2rIhMvczrdJstVpAOF9uO12c2
 mXerAb88o/MpX4ne2c5wDr2NryAFMyJ94iFKXyktMYTOcwWLv28eE+uDQeMYFqLmVtq4
 PjjIqbiH4WfDHwGWmvNW6PmZSKH7B99UTKHAGBT5jL+c3TipmLgL0NllvfUfWFNJeiiM
 xaAA==
X-Gm-Message-State: APjAAAU5KQpjyLnUeufJC6xgRjkTTDM/F6upd8dPYbjdTJRnsTorFtWl
 JQyrzx5Bsqh5GVU4jHN3tyFAnw==
X-Google-Smtp-Source: APXvYqyrecsKqyGlJQlmylwAOIU++VYjUMqUOgeIFIWDM4P26pdc1cdLK+UT6ovGhvV82YASFPv+Iw==
X-Received: by 2002:a2e:301a:: with SMTP id w26mr38744971ljw.153.1558696092014; 
 Fri, 24 May 2019 04:08:12 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x21sm446234ljj.43.2019.05.24.04.08.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 04:08:11 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: kpc2000: add missing spaces in core.c
Date: Fri, 24 May 2019 13:08:01 +0200
Message-Id: <20190524110802.2953-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524110802.2953-1-simon@nikanor.nu>
References: <20190524110802.2953-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvcnMgInNwYWNlIHJlcXVpcmVkIGJlZm9yZSB0aGUgb3Bl
biBicmFjZSAneyciCmFuZCAiKGZvbyopIiBzaG91bGQgYmUgIihmb28gKikiLgoKU2lnbmVkLW9m
Zi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KLS0tCiBkcml2ZXJzL3N0
YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIw
MDAvY29yZS5jCmluZGV4IDQwZjY1Zjk2OTg2Yi4uYmIzYjQyN2E3MmIxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYworKysgYi9kcml2ZXJzL3N0YWdp
bmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYwpAQCAtMzA4LDcgKzMwOCw3IEBAIHN0YXRpYyBsb25n
IGtwMjAwMF9jZGV2X2lvY3RsKHN0cnVjdCBmaWxlICpmaWxwLCB1bnNpZ25lZCBpbnQgaW9jdGxf
bnVtLAogCiAJZGV2X2RiZygmcGNhcmQtPnBkZXYtPmRldiwgImtwMjAwMF9jZGV2X2lvY3RsKGZp
bHAgPSBbJXBdLCBpb2N0bF9udW0gPSAweCUwOHgsIGlvY3RsX3BhcmFtID0gMHglMDE2bHgpIHBj
YXJkID0gWyVwXVxuIiwgZmlscCwgaW9jdGxfbnVtLCBpb2N0bF9wYXJhbSwgcGNhcmQpOwogCi0J
c3dpdGNoIChpb2N0bF9udW0peworCXN3aXRjaCAoaW9jdGxfbnVtKSB7CiAJY2FzZSBLUDIwMDBf
SU9DVExfR0VUX0NQTERfUkVHOiAgICAgICAgICAgICByZXR1cm4gcmVhZHEocGNhcmQtPnN5c2lu
Zm9fcmVnc19iYXNlICsgUkVHX0NQTERfQ09ORklHKTsKIAljYXNlIEtQMjAwMF9JT0NUTF9HRVRf
UENJRV9FUlJPUl9SRUc6ICAgICAgIHJldHVybiByZWFkcShwY2FyZC0+c3lzaW5mb19yZWdzX2Jh
c2UgKyBSRUdfUENJRV9FUlJPUl9DT1VOVCk7CiAKQEAgLTMyNiw3ICszMjYsNyBAQCBzdGF0aWMg
bG9uZyBrcDIwMDBfY2Rldl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlscCwgdW5zaWduZWQgaW50IGlv
Y3RsX251bSwKIAkJdGVtcC5kZG5hID0gcGNhcmQtPmRkbmE7CiAJCXRlbXAuY3BsZF9yZWcgPSBy
ZWFkcShwY2FyZC0+c3lzaW5mb19yZWdzX2Jhc2UgKyBSRUdfQ1BMRF9DT05GSUcpOwogCi0JCXJl
dCA9IGNvcHlfdG9fdXNlcigodm9pZCopaW9jdGxfcGFyYW0sICh2b2lkKikmdGVtcCwgc2l6ZW9m
KHRlbXApKTsKKwkJcmV0ID0gY29weV90b191c2VyKCh2b2lkICopaW9jdGxfcGFyYW0sICh2b2lk
ICopJnRlbXAsIHNpemVvZih0ZW1wKSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gLUVGQVVMVDsK
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
