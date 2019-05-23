Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E280D27BE0
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E998886724;
	Thu, 23 May 2019 11:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qHfpsjMUwmFS; Thu, 23 May 2019 11:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39B6D866C9;
	Thu, 23 May 2019 11:36:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61E5F1BF969
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5DD83880A7
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dYw3vjkmoQjH for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49E1E88091
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:36 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id z5so5116738lji.10
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ebGkDFqJT6qukVHBMr/0MpW6/cJt0FRWIZVTQsZX7U=;
 b=FKVpadiYCdmYWjUaT0nN1Z9y14mjPw7AZROwtY64MTjbmUps6LPfdAeiu1OFjIPoTu
 CRovGXgevKahtiSyQrTJgX4jYUTm42w0hVpjUpyqI/7TShAmfKj9VRDJmbLKx2fRJPXC
 B+zVB0NFOvCCABJAF1+75+D4cBAuKgKnY0l3ufUBmvhffCp1HTTNV9U6aPTrm7ryOjgH
 hx1JTqfBsy5Sf0Y+qdAYn/2zafkq5K0lxj7Y1B2pgaGAjDQh39Oyr0xvOQegDjOQbITm
 DYSFqApBVB94b/vdwFGBO/c77G1zEAOPWzyttv/Orjt7m3puG2tWoHV/zu02EhCvsHOU
 1Aiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ebGkDFqJT6qukVHBMr/0MpW6/cJt0FRWIZVTQsZX7U=;
 b=luSXQzt0Z1pbnkRrxvEa+y9XISNekKplED8CF5U/stw+i1G9C6sG/ZSTs+rV8Bmkf9
 o7aLPhzD3cngmol6Kp0mnAqT/gg12rMl9Eysdex5lVS9wwnmJgDMEesvsXk3s06LRY9U
 niXmWgoTb4MbKnjY2tj3KklZ4KhPjh+0tomUd3XiIE1VhkQ/sk+0dq4cfThzuHgPOFbN
 ti5Bm9RZodC88Pu39yVOKGqkH3Jlq+qgkttSwP4yos0x5egeE3QEqZT7m6olbXBV8Azt
 MpuqPXbTJWmxvQG5LSvel09kt1s1z0shqeYnHbEUZVCc7WC1D0oubN/PeGuARiPLNxcs
 sc5w==
X-Gm-Message-State: APjAAAULEj7xBs5dzdN8l1vSp+TgEVHI6g0GJ44FUwzAI+lI97tmerfl
 +/+Zpw8DnlifbIJaTSfPatpm7A==
X-Google-Smtp-Source: APXvYqwB1+MUJG0lX8okZaHsaMEL5d2/5QscUnMQWuq8SrgfvxIAc7h4xSEPoPdjkeI2mxxBuMF2Mg==
X-Received: by 2002:a2e:8197:: with SMTP id e23mr2119559ljg.28.1558611394616; 
 Thu, 23 May 2019 04:36:34 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:34 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/8] staging: kpc2000: fix alignment issues in cell_probe.c
Date: Thu, 23 May 2019 13:36:09 +0200
Message-Id: <20190523113613.28342-5-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVu
IHBhcmVudGhlc2lzIgphbmQgIkxpbmVzIHNob3VsZCBub3QgZW5kIHdpdGggYSAnKCciLgoKU2ln
bmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25AbmlrYW5vci5udT4KLS0tCiBkcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYyB8IDM0ICsrKysrKysrKy0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3By
b2JlLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYwppbmRl
eCBjNDAxNWM2MjY4NmYuLmI2MjFhZGI3MTJmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
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
cV9kb21haW4gKgogfQogCiAKQEAgLTM3NCwxNSArMzcyLDEzIEBAIHN0YXRpYyBpbnQgIGNyZWF0
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
a3AyMDAwX2RldmljZSAqcGNhcmQpCkBAIC00NjMsNyArNDU5LDcgQEAgaW50ICBrcDIwMDBfcHJv
YmVfY29yZXMoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkKQogCQkJc3dpdGNoIChjdGUudHlw
ZSkgewogCQkJY2FzZSBLUF9DT1JFX0lEX0kyQzoKIAkJCQllcnIgPSBwcm9iZV9jb3JlX2Jhc2lj
KGNvcmVfbnVtLCBwY2FyZCwKLQkJCQlLUF9EUklWRVJfTkFNRV9JMkMsIGN0ZSk7CisJCQkJCQkg
ICAgICAgS1BfRFJJVkVSX05BTUVfSTJDLCBjdGUpOwogCQkJCWJyZWFrOwogCiAJCQljYXNlIEtQ
X0NPUkVfSURfU1BJOgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
