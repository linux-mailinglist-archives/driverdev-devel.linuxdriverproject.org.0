Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423C27D39
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C9DD31446;
	Thu, 23 May 2019 12:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vu9l3rqPceuc; Thu, 23 May 2019 12:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FB67313AE;
	Thu, 23 May 2019 12:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA2C1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 865733137E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i3D1YXuPgnbz for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E3D25313AE
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:51 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id w1so5384086ljw.0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ddLsiPPlKYPqW2Yby2eWqxRHzPEpKsPV3+wkowCsdyY=;
 b=b6bRhEXzVgbOx5K9R9pU2BNCVNbwrPs53JANGU/s7do77nBoNf2Eogll37DyiI3d7x
 8IcjnRciLa8+8VRE3UkC16LAaLVT62NrJyGwPqYDQhf9jbVTwSaGGuvaLtyu0WIv4qxi
 R8Mw1Rn9zgmMLoKuQvra+PVTmOhDEm8gZ/zseT1xwCurwLRNz5NjSlhNYzTs086mOa1f
 UGkITa9BG+dfBCwLZko3T7nEBWJJVK6QDEwk/F+f4lA7iABXv+dJyeMLI//+OwQXePhY
 63ZpiNvqUz+wZtFuMFXlRDTqGzMD41QjAa2HVBvO0rVPR9Yggpcc+ugl3COcXBY41hty
 X1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ddLsiPPlKYPqW2Yby2eWqxRHzPEpKsPV3+wkowCsdyY=;
 b=hXoE5gWJN5rYfSHDzRDx2/b1PcqduJQ98rsbCfUy2pAuLamG22MJRhsISZVK1F7FUQ
 P2mlSXLyaU0dF9UnDGSDIVkJGyF07RHldL09LSjbGqdjBGkFhKPg38GNFnS7VeEQINtW
 o/tvbhhNmiWF568aPhi9+XI8CcIoALvmp7vMhcqt2y/9LGV56zYysRPQcpJBkfN5c5tw
 z6HOvrB5QZZ6gsGgBJzQQ1znXE/AJaL/TaT//3o0Z4qk1W+JSWFDLZAQr7FbdWjKfD+K
 CrZWQ2qYuF21xGwgKOIYrL1TC6mwcAczUq9exlF8XbJWi9hLYn98WsfrrcQMNvhY6l68
 xsMA==
X-Gm-Message-State: APjAAAXiRjV073rk+DhXEHnbxahEqQ7cA+Oz5OMMhR99QRemZVk699DV
 qEUcLP9BCccaSbrUzO88D6cLFw==
X-Google-Smtp-Source: APXvYqwdvnBv/jd5U+HTO/R5bwSc0+253jnFz/eDpjqAYngSUxeGY+h58mhevhId1G4p4Tt426LDyg==
X-Received: by 2002:a2e:89cc:: with SMTP id c12mr41892922ljk.90.1558615910243; 
 Thu, 23 May 2019 05:51:50 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:49 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/9] staging: kpc2000: fix alignment issues in cell_probe.c
Date: Thu, 23 May 2019 14:51:38 +0200
Message-Id: <20190523125143.32511-5-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523125143.32511-1-simon@nikanor.nu>
References: <20190523125143.32511-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVu
IHBhcmVudGhlc2lzIgphbmQgIkxpbmVzIHNob3VsZCBub3QgZW5kIHdpdGggYSAnKCciLgoKU2ln
bmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KLS0tCiBkcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDM0ICsrKysrKysrKy0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3By
b2JlLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYwppbmRl
eCA5NDVkOGU0ZTdiYTUuLjViODg1MDRiMDBlYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIw
MDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKQEAgLTEyOCwxNSArMTI4LDEzIEBAIHN0YXRpYyBpbnQg
cHJvYmVfY29yZV9iYXNpYyh1bnNpZ25lZCBpbnQgY29yZV9udW0sIHN0cnVjdCBrcDIwMDBfZGV2
aWNlICpwY2FyZCwKIAogCWNlbGwucmVzb3VyY2VzID0gcmVzb3VyY2VzOwogCi0JcmV0dXJuIG1m
ZF9hZGRfZGV2aWNlcygKLQkJUENBUkRfVE9fREVWKHBjYXJkKSwgICAgLy8gcGFyZW50Ci0JCXBj
YXJkLT5jYXJkX251bSAqIDEwMCwgIC8vIGlkCi0JCSZjZWxsLCAgICAgICAgICAgICAgICAgIC8v
IHN0cnVjdCBtZmRfY2VsbCAqCi0JCTEsICAgICAgICAgICAgICAgICAgICAgIC8vIG5kZXZzCi0J
CSZwY2FyZC0+cmVnc19iYXNlX3Jlc291cmNlLAotCQkwLCAgICAgICAgICAgICAgICAgICAgICAv
LyBpcnFfYmFzZQotCQlOVUxMICAgICAgICAgICAgICAgICAgICAvLyBzdHJ1Y3QgaXJxX2RvbWFp
biAqCi0JKTsKKwlyZXR1cm4gbWZkX2FkZF9kZXZpY2VzKFBDQVJEX1RPX0RFVihwY2FyZCksICAg
IC8vIHBhcmVudAorCQkJICAgICAgIHBjYXJkLT5jYXJkX251bSAqIDEwMCwgIC8vIGlkCisJCQkg
ICAgICAgJmNlbGwsICAgICAgICAgICAgICAgICAgLy8gc3RydWN0IG1mZF9jZWxsICoKKwkJCSAg
ICAgICAxLCAgICAgICAgICAgICAgICAgICAgICAvLyBuZGV2cworCQkJICAgICAgICZwY2FyZC0+
cmVnc19iYXNlX3Jlc291cmNlLAorCQkJICAgICAgIDAsICAgICAgICAgICAgICAgICAgICAgIC8v
IGlycV9iYXNlCisJCQkgICAgICAgTlVMTCk7ICAgICAgICAgICAgICAgICAgLy8gc3RydWN0IGly
cV9kb21haW4gKgogfQogCiAKQEAgLTM3MywxNSArMzcxLDEzIEBAIHN0YXRpYyBpbnQgIGNyZWF0
ZV9kbWFfZW5naW5lX2NvcmUoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkLCBzaXplX3QgZW5n
aW5lX3JlCiAKIAljZWxsLnJlc291cmNlcyA9IHJlc291cmNlczsKIAotCXJldHVybiBtZmRfYWRk
X2RldmljZXMoCi0JCVBDQVJEX1RPX0RFVihwY2FyZCksICAgIC8vIHBhcmVudAotCQlwY2FyZC0+
Y2FyZF9udW0gKiAxMDAsICAvLyBpZAotCQkmY2VsbCwgICAgICAgICAgICAgICAgICAvLyBzdHJ1
Y3QgbWZkX2NlbGwgKgotCQkxLCAgICAgICAgICAgICAgICAgICAgICAvLyBuZGV2cwotCQkmcGNh
cmQtPmRtYV9iYXNlX3Jlc291cmNlLAotCQkwLCAgICAgICAgICAgICAgICAgICAgICAvLyBpcnFf
YmFzZQotCQlOVUxMICAgICAgICAgICAgICAgICAgICAvLyBzdHJ1Y3QgaXJxX2RvbWFpbiAqCi0J
KTsKKwlyZXR1cm4gbWZkX2FkZF9kZXZpY2VzKFBDQVJEX1RPX0RFVihwY2FyZCksICAgIC8vIHBh
cmVudAorCQkJICAgICAgIHBjYXJkLT5jYXJkX251bSAqIDEwMCwgIC8vIGlkCisJCQkgICAgICAg
JmNlbGwsICAgICAgICAgICAgICAgICAgLy8gc3RydWN0IG1mZF9jZWxsICoKKwkJCSAgICAgICAx
LCAgICAgICAgICAgICAgICAgICAgICAvLyBuZGV2cworCQkJICAgICAgICZwY2FyZC0+ZG1hX2Jh
c2VfcmVzb3VyY2UsCisJCQkgICAgICAgMCwgICAgICAgICAgICAgICAgICAgICAgLy8gaXJxX2Jh
c2UKKwkJCSAgICAgICBOVUxMKTsgICAgICAgICAgICAgICAgICAvLyBzdHJ1Y3QgaXJxX2RvbWFp
biAqCiB9CiAKIHN0YXRpYyBpbnQgIGtwMjAwMF9zZXR1cF9kbWFfY29udHJvbGxlcihzdHJ1Y3Qg
a3AyMDAwX2RldmljZSAqcGNhcmQpCkBAIC00NjIsNyArNDU4LDcgQEAgaW50ICBrcDIwMDBfcHJv
YmVfY29yZXMoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkKQogCQkJc3dpdGNoIChjdGUudHlw
ZSkgewogCQkJY2FzZSBLUF9DT1JFX0lEX0kyQzoKIAkJCQllcnIgPSBwcm9iZV9jb3JlX2Jhc2lj
KGNvcmVfbnVtLCBwY2FyZCwKLQkJCQlLUF9EUklWRVJfTkFNRV9JMkMsIGN0ZSk7CisJCQkJCQkg
ICAgICAgS1BfRFJJVkVSX05BTUVfSTJDLCBjdGUpOwogCQkJCWJyZWFrOwogCiAJCQljYXNlIEtQ
X0NPUkVfSURfU1BJOgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
