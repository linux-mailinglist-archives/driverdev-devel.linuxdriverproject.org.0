Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD553B116
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:45:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F012486DA3;
	Mon, 10 Jun 2019 08:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sY0eMmkIgxrS; Mon, 10 Jun 2019 08:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5334A83CBF;
	Mon, 10 Jun 2019 08:45:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 548F31BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EC0C83668
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6inYqzVkvah for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:44:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F0DD6858EE
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:44:54 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id r15so6023012lfm.11
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YwBLl66NqeKEJLREj2TUkgvnSGnVe+6R0g0OhEgqv+c=;
 b=ZpmXYIEpLDdxcfpn9XFd+WFwmB1ZRxjmQVdaWhMtgZZvd6JSoLfvm3w0NTlitm/h2C
 UIpTmsTsNoERASK3xQL4JXKJjJYLZTlsuKMKWa9uFOyJ9Dxr6oznPJS3O6PbQYTUgcvy
 74xfegqTtxiUpdEm52E4nDS59fgGrlZyK+HHvj/l+e9pT7CY5GRPhZtoonqZVwfkc9OT
 f3qEWJh8AXL+BXQJ1UZ2o0Cx1jfIZ/BglNRkmTfP5Wl+UDp42aQIuxvp4iTRsZfkqvVC
 bcdI/q/AdxM9einXcxQWNkVjoQHVNPmuwygB1OKxvoOF+782pGO+yOtHORvHwH+o6Ak/
 5yPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YwBLl66NqeKEJLREj2TUkgvnSGnVe+6R0g0OhEgqv+c=;
 b=OtWFrlkTQnszKz/YqbQAoKOVT51kIxste7ar7qD4lxSgE9ZWijVNXpRAPP9/gUE5/p
 jgd7pzxqVcIKEmDirz1ofGX0/FosC8fWfmYJBJzjhlgrd8IKcMGeNA3FWE4PyUgWD5H+
 nxuJhxtUinFB6CvLZW+lZu53tk7DP5qwZCZBD4XgrCpef4tAsWIy1DdQMeZ94epwP51m
 DrUmJm0PcZ6rqZDnolf+Uh+uSSODCIJFyxBVY7ptB67gpff8dp9dnTwRBJCYvLTYVC30
 m86CJQabjj4EGvQuBpzYbL6WYpnO70QV4lZZ6gPIJv/U+J8yenfcp6kU6Ts35Aq/BYhH
 IRiA==
X-Gm-Message-State: APjAAAU0IWu6/Ea/z8MkNFsbqvyiySfkCh4ncpK31DoiqNZ4EH8Ue7q1
 Hxbu9qdtjLWH+WEHFZp2YRy+EA==
X-Google-Smtp-Source: APXvYqx2KQnSI4tF/BTeGX3NLsV99u+r5qrRxAwuBoESku4zqxNNvCW5Ib68szvs0vuOhG30/T2O4A==
X-Received: by 2002:a05:6512:dc:: with SMTP id
 c28mr33376734lfp.105.1560156293204; 
 Mon, 10 Jun 2019 01:44:53 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e26sm1826486ljl.33.2019.06.10.01.44.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:44:52 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: kpc2000: remove unnecessary debug prints in
 fileops.c
Date: Mon, 10 Jun 2019 10:44:31 +0200
Message-Id: <20190610084432.12597-5-simon@nikanor.nu>
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
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9w
cy5jIHwgMTcgLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMu
YyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jCmluZGV4IGZkZWMx
YWIyNWRmZC4uZjgwYjAxNzE1ZDkzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGNfZG1hL2ZpbGVvcHMuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1h
L2ZpbGVvcHMuYwpAQCAtNTQsOCArNTQsNiBAQCBpbnQgIGtwY19kbWFfdHJhbnNmZXIoc3RydWN0
IGRldl9wcml2YXRlX2RhdGEgKnByaXYsIHN0cnVjdCBraW9jYiAqa2NiLCB1bnNpZ25lZAogCWxk
ZXYgPSBwcml2LT5sZGV2OwogCUJVR19PTihsZGV2ID09IE5VTEwpOwogCi0JZGV2X2RiZygmcHJp
di0+bGRldi0+cGxkZXYtPmRldiwgIiVzKHByaXYgPSBbJXBdLCBrY2IgPSBbJXBdLCBpb3ZfYmFz
ZSA9IFslcF0sIGlvdl9sZW4gPSAlenUpIGxkZXYgPSBbJXBdXG4iLCBfX2Z1bmNfXywgcHJpdiwg
a2NiLCAodm9pZCAqKWlvdl9iYXNlLCBpb3ZfbGVuLCBsZGV2KTsKLQogCWFjZCA9IGt6YWxsb2Mo
c2l6ZW9mKCphY2QpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIWFjZCkgewogCQlkZXZfZXJyKCZwcml2
LT5sZGV2LT5wbGRldi0+ZGV2LCAiQ291bGRuJ3Qga21hbGxvYyBzcGFjZSBmb3IgZm9yIHRoZSBh
aW8gZGF0YVxuIik7CkBAIC0yMTgsOCArMjE2LDYgQEAgdm9pZCAgdHJhbnNmZXJfY29tcGxldGVf
Y2Ioc3RydWN0IGFpb19jYl9kYXRhICphY2QsIHNpemVfdCB4ZnJfY291bnQsIHUzMiBmbGFncykK
IAlCVUdfT04oYWNkLT5sZGV2ID09IE5VTEwpOwogCUJVR19PTihhY2QtPmxkZXYtPnBsZGV2ID09
IE5VTEwpOwogCi0JZGV2X2RiZygmYWNkLT5sZGV2LT5wbGRldi0+ZGV2LCAiJXMoYWNkID0gWyVw
XSlcbiIsIF9fZnVuY19fLCBhY2QpOwotCiAJZm9yIChpID0gMCA7IGkgPCBhY2QtPnBhZ2VfY291
bnQgOyBpKyspIHsKIAkJaWYgKCFQYWdlUmVzZXJ2ZWQoYWNkLT51c2VyX3BhZ2VzW2ldKSkgewog
CQkJc2V0X3BhZ2VfZGlydHkoYWNkLT51c2VyX3BhZ2VzW2ldKTsKQEAgLTI3NSw3ICsyNzEsNiBA
QCBpbnQgIGtwY19kbWFfb3BlbihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmls
cCkKIAlwcml2LT5sZGV2ID0gbGRldjsKIAlmaWxwLT5wcml2YXRlX2RhdGEgPSBwcml2OwogCi0J
ZGV2X2RiZygmcHJpdi0+bGRldi0+cGxkZXYtPmRldiwgIiVzKGlub2RlID0gWyVwXSwgZmlscCA9
IFslcF0pIHByaXYgPSBbJXBdIGxkZXYgPSBbJXBdXG4iLCBfX2Z1bmNfXywgaW5vZGUsIGZpbHAs
IHByaXYsIHByaXYtPmxkZXYpOwogCXJldHVybiAwOwogfQogCkBAIC0yODYsOCArMjgxLDYgQEAg
aW50ICBrcGNfZG1hX2Nsb3NlKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxw
KQogCXN0cnVjdCBkZXZfcHJpdmF0ZV9kYXRhICpwcml2ID0gKHN0cnVjdCBkZXZfcHJpdmF0ZV9k
YXRhICopZmlscC0+cHJpdmF0ZV9kYXRhOwogCXN0cnVjdCBrcGNfZG1hX2RldmljZSAqZW5nID0g
cHJpdi0+bGRldjsKIAotCWRldl9kYmcoJnByaXYtPmxkZXYtPnBsZGV2LT5kZXYsICIlcyhpbm9k
ZSA9IFslcF0sIGZpbHAgPSBbJXBdKSBwcml2ID0gWyVwXSwgbGRldiA9IFslcF1cbiIsIF9fZnVu
Y19fLCBpbm9kZSwgZmlscCwgcHJpdiwgcHJpdi0+bGRldik7Ci0KIAlsb2NrX2VuZ2luZShlbmcp
OwogCiAJc3RvcF9kbWFfZW5naW5lKGVuZyk7CkBAIC0zMzAsOCArMzIzLDYgQEAgc3NpemVfdCAg
IGtwY19kbWFfYWlvX3JlYWQoc3RydWN0IGtpb2NiICprY2IsIGNvbnN0IHN0cnVjdCBpb3ZlYyAq
aW92LCB1bnNpZ25lZAogewogCXN0cnVjdCBkZXZfcHJpdmF0ZV9kYXRhICpwcml2ID0gKHN0cnVj
dCBkZXZfcHJpdmF0ZV9kYXRhICopa2NiLT5raV9maWxwLT5wcml2YXRlX2RhdGE7CiAKLQlkZXZf
ZGJnKCZwcml2LT5sZGV2LT5wbGRldi0+ZGV2LCAiJXMoa2NiID0gWyVwXSwgaW92ID0gWyVwXSwg
aW92X2NvdW50ID0gJWxkLCBwb3MgPSAlbGxkKSBwcml2ID0gWyVwXSwgbGRldiA9IFslcF1cbiIs
IF9fZnVuY19fLCBrY2IsIGlvdiwgaW92X2NvdW50LCBwb3MsIHByaXYsIHByaXYtPmxkZXYpOwot
CiAJaWYgKHByaXYtPmxkZXYtPmRpciAhPSBETUFfRlJPTV9ERVZJQ0UpCiAJCXJldHVybiAtRU1F
RElVTVRZUEU7CiAKQEAgLTM1MCw4ICszNDEsNiBAQCBzc2l6ZV90ICBrcGNfZG1hX2Fpb193cml0
ZShzdHJ1Y3Qga2lvY2IgKmtjYiwgY29uc3Qgc3RydWN0IGlvdmVjICppb3YsIHVuc2lnbmVkCiB7
CiAJc3RydWN0IGRldl9wcml2YXRlX2RhdGEgKnByaXYgPSAoc3RydWN0IGRldl9wcml2YXRlX2Rh
dGEgKilrY2ItPmtpX2ZpbHAtPnByaXZhdGVfZGF0YTsKIAotCWRldl9kYmcoJnByaXYtPmxkZXYt
PnBsZGV2LT5kZXYsICIlcyhrY2IgPSBbJXBdLCBpb3YgPSBbJXBdLCBpb3ZfY291bnQgPSAlbGQs
IHBvcyA9ICVsbGQpIHByaXYgPSBbJXBdLCBsZGV2ID0gWyVwXVxuIiwgX19mdW5jX18sIGtjYiwg
aW92LCBpb3ZfY291bnQsIHBvcywgcHJpdiwgcHJpdi0+bGRldik7Ci0KIAlpZiAocHJpdi0+bGRl
di0+ZGlyICE9IERNQV9UT19ERVZJQ0UpCiAJCXJldHVybiAtRU1FRElVTVRZUEU7CiAKQEAgLTM3
MSw4ICszNjAsNiBAQCBzc2l6ZV90ICBrcGNfZG1hX3JlYWQoc3RydWN0IGZpbGUgKmZpbHAsICAg
ICAgIGNoYXIgX191c2VyICp1c2VyX2J1Ziwgc2l6ZV90IGNvdQogewogCXN0cnVjdCBkZXZfcHJp
dmF0ZV9kYXRhICpwcml2ID0gKHN0cnVjdCBkZXZfcHJpdmF0ZV9kYXRhICopZmlscC0+cHJpdmF0
ZV9kYXRhOwogCi0JZGV2X2RiZygmcHJpdi0+bGRldi0+cGxkZXYtPmRldiwgIiVzKGZpbHAgPSBb
JXBdLCB1c2VyX2J1ZiA9IFslcF0sIGNvdW50ID0gJXp1LCBwcG9zID0gWyVwXSkgcHJpdiA9IFsl
cF0sIGxkZXYgPSBbJXBdXG4iLCBfX2Z1bmNfXywgZmlscCwgdXNlcl9idWYsIGNvdW50LCBwcG9z
LCBwcml2LCBwcml2LT5sZGV2KTsKLQogCWlmIChwcml2LT5sZGV2LT5kaXIgIT0gRE1BX0ZST01f
REVWSUNFKQogCQlyZXR1cm4gLUVNRURJVU1UWVBFOwogCkBAIC0zODQsOCArMzcxLDYgQEAgc3Np
emVfdCAga3BjX2RtYV93cml0ZShzdHJ1Y3QgZmlsZSAqZmlscCwgY29uc3QgY2hhciBfX3VzZXIg
KnVzZXJfYnVmLCBzaXplX3QgY28KIHsKIAlzdHJ1Y3QgZGV2X3ByaXZhdGVfZGF0YSAqcHJpdiA9
IChzdHJ1Y3QgZGV2X3ByaXZhdGVfZGF0YSAqKWZpbHAtPnByaXZhdGVfZGF0YTsKIAotCWRldl9k
YmcoJnByaXYtPmxkZXYtPnBsZGV2LT5kZXYsICIlcyhmaWxwID0gWyVwXSwgdXNlcl9idWYgPSBb
JXBdLCBjb3VudCA9ICV6dSwgcHBvcyA9IFslcF0pIHByaXYgPSBbJXBdLCBsZGV2ID0gWyVwXVxu
IiwgX19mdW5jX18sIGZpbHAsIHVzZXJfYnVmLCBjb3VudCwgcHBvcywgcHJpdiwgcHJpdi0+bGRl
dik7Ci0KIAlpZiAocHJpdi0+bGRldi0+ZGlyICE9IERNQV9UT19ERVZJQ0UpCiAJCXJldHVybiAt
RU1FRElVTVRZUEU7CiAKQEAgLTM5Nyw4ICszODIsNiBAQCBsb25nICBrcGNfZG1hX2lvY3RsKHN0
cnVjdCBmaWxlICpmaWxwLCB1bnNpZ25lZCBpbnQgaW9jdGxfbnVtLCB1bnNpZ25lZCBsb25nIGlv
YwogewogCXN0cnVjdCBkZXZfcHJpdmF0ZV9kYXRhICpwcml2ID0gKHN0cnVjdCBkZXZfcHJpdmF0
ZV9kYXRhICopZmlscC0+cHJpdmF0ZV9kYXRhOwogCi0JZGV2X2RiZygmcHJpdi0+bGRldi0+cGxk
ZXYtPmRldiwgIiVzKGZpbHAgPSBbJXBdLCBpb2N0bF9udW0gPSAweCV4LCBpb2N0bF9wYXJhbSA9
IDB4JWx4KSBwcml2ID0gWyVwXSwgbGRldiA9IFslcF1cbiIsIF9fZnVuY19fLCBmaWxwLCBpb2N0
bF9udW0sIGlvY3RsX3BhcmFtLCBwcml2LCBwcml2LT5sZGV2KTsKLQogCXN3aXRjaCAoaW9jdGxf
bnVtKSB7CiAJY2FzZSBLTkRfSU9DVExfU0VUX0NBUkRfQUREUjoKIAkJcHJpdi0+Y2FyZF9hZGRy
ICA9IGlvY3RsX3BhcmFtOyByZXR1cm4gcHJpdi0+Y2FyZF9hZGRyOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
