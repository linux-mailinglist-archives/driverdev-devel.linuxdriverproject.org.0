Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1075974E5F
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 14:44:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 336CF844EA;
	Thu, 25 Jul 2019 12:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ln1wdL9gcPKv; Thu, 25 Jul 2019 12:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 124FA840B9;
	Thu, 25 Jul 2019 12:44:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABC371BF3CD
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 12:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A83EA220E5
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 12:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsVxkyG0zfe3 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 12:44:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E1E402038F
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 12:44:31 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t132so22985806pgb.9
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YtTD1zW4DFFiIXNHW0lcZtx2P/QwbKs4fO50xTY7/Rw=;
 b=M/Voi5AdNRJuu0f0xVFvWhBGojmOjd9MpiuUS35IZonb5vauyAmAVyzUK52ayLrBN3
 SgiKz3juyYSfNnGjkkTgz45hx6I04HFDTNBTt5UcmCB10eN9SXlRz8/eDLc4EkW0+xea
 qo1zB+JSSfmtRWicQU+daV9QinrXpqhhLHr+xUIW8CaIOt43tAjHH7qysSd5oYOW6T9T
 2yf1t8gNceqUK0rD0LtilyNSrWzlAtQOEy8VPDKVPXoW7btTLsu5WKhZLl21/LpxSyWd
 7/BEc0333JvmoowXxOmujyOVAzCT4EcfNujLbgdwtJxCnHFPG6L1VN/dvmBYNBtSVDVa
 BKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YtTD1zW4DFFiIXNHW0lcZtx2P/QwbKs4fO50xTY7/Rw=;
 b=ADyDG3Z90VSmzFgCG+bzOh99HB7HE0w08sP9LO5p7o5OOIkWITRG5r8GEbUoD+K06U
 FbMFpFXydEED5kRWUee8Nz9C05Xu2tG3NqYzLCNkEiiLICxxSTpWNsYPo/HiKHutXBIn
 n29rpqmzeXJyvMubRGrVgaza9j20GDjBpV84gfor33LBcjfjKW2NwDdGrllULg8av1B5
 MtHmRIrlhM+n0MB/pTGPjoWiVtaXEv7ShU3a1GjoMQOqaQDH3ZMmFauo7/OIt0gGNbmv
 rSrze1FeD3zNtRCRfycrH8F7vUBiVwsTCOd9JLmtehTMN5TDOWYvBDJ594ELbg9Lnu0b
 Ru1w==
X-Gm-Message-State: APjAAAV+9jAqnLIsZ0Gxof8iTqelSSZqIt/DcBib14s6pNPweP2gGdbq
 QJQOwLmo/3r+S5a32HxBCCI=
X-Google-Smtp-Source: APXvYqw8t1BcANx6QWJK3Ufj5nZnJSHUkXSuUFta0coSy0Mzsvx9vA+JC+8xkN6Rom4g6ZLvZYhrkg==
X-Received: by 2002:aa7:8b11:: with SMTP id f17mr16520924pfd.19.1564058671500; 
 Thu, 25 Jul 2019 05:44:31 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.34])
 by smtp.gmail.com with ESMTPSA id 195sm86924983pfu.75.2019.07.25.05.44.30
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 25 Jul 2019 05:44:30 -0700 (PDT)
From: Bharath Vedartham <linux.bhar@gmail.com>
To: gregkh@linuxfoundation.org,
	Matt.Sickler@daktronics.com
Subject: [PATCH v4] staging: kpc2000: Convert put_page() to put_user_page*()
Date: Thu, 25 Jul 2019 18:14:18 +0530
Message-Id: <1564058658-3551-1-git-send-email-linux.bhar@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Bharath Vedartham <linux.bhar@gmail.com>, devel@driverdev.osuosl.org,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rm9yIHBhZ2VzIHRoYXQgd2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVh
c2UgdGhvc2UgcGFnZXMKdmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5z
dGVhZCBvZiB2aWEgcHV0X3BhZ2UoKS4KClRoaXMgaXMgcGFydCBhIHRyZWUtd2lkZSBjb252ZXJz
aW9uLCBhcyBkZXNjcmliZWQgaW4gY29tbWl0IGZjMWQ4ZTdjY2EyZAooIm1tOiBpbnRyb2R1Y2Ug
cHV0X3VzZXJfcGFnZSooKSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KCkNjOiBJcmEgV2Vpbnkg
PGlyYS53ZWlueUBpbnRlbC5jb20+CkNjOiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5j
b20+CkNjOiBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VAcmVkaGF0LmNvbT4KQ2M6IEdyZWcgS3Jv
YWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CkNjOiBNYXR0IFNpY2tsZXIg
PE1hdHQuU2lja2xlckBkYWt0cm9uaWNzLmNvbT4KQ2M6IGRldmVsQGRyaXZlcmRldi5vc3Vvc2wu
b3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1tbUBrdmFjay5v
cmcKUmV2aWV3ZWQtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KU2lnbmVk
LW9mZi1ieTogQmhhcmF0aCBWZWRhcnRoYW0gPGxpbnV4LmJoYXJAZ21haWwuY29tPgotLS0KQ2hh
bmdlcyBzaW5jZSB2MQogICAgICAgIC0gSW1wcm92ZWQgY2hhbmdlbG9nIGJ5IEpvaG4ncyBzdWdn
ZXN0aW9uLgogICAgICAgIC0gTW92ZWQgbG9naWMgdG8gZGlydHkgcGFnZXMgYmVsb3cgc2dfZG1h
X3VubWFwCiAgICAgICAgIGFuZCByZW1vdmVkIFBhZ2VSZXNlcnZlZCBjaGVjay4KQ2hhbmdlcyBz
aW5jZSB2MgogICAgICAgIC0gQWRkZWQgYmFjayBQYWdlUmVzZXZlcmVkIGNoZWNrIGFzCiAgICAg
ICAgc3VnZ2VzdGVkIGJ5IEpvaG4gSHViYmFyZC4KQ2hhbmdlcyBzaW5jZSB2MwogICAgICAgIC0g
Q2hhbmdlZCB0aGUgY2hhbmdlbG9nIGFzIHN1Z2dlc3RlZCBieSBKb2huLgogICAgICAgIC0gQWRk
ZWQgSm9obidzIFJldmlld2VkLUJ5IHRhZy4KQ2hhbmdlcyBzaW5jZSB2NAogICAgICAgIC0gUmVi
YXNlZCB0aGUgcGF0Y2ggb24gdGhlIHN0YWdpbmcgdHJlZS4KICAgICAgICAtIEltcHJvdmVkIGNv
bW1pdCBsb2cgYnkgZml4aW5nIGEgbGluZSB3cmFwLgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMy
MDAwL2twY19kbWEvZmlsZW9wcy5jIHwgMTcgKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjX2RtYS9maWxlb3BzLmMKaW5kZXggNDhjYTg4Yi4uZjE1ZTI5MiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMKQEAgLTE5MCw5ICsxOTAsNyBAQCBz
dGF0aWMgaW50IGtwY19kbWFfdHJhbnNmZXIoc3RydWN0IGRldl9wcml2YXRlX2RhdGEgKnByaXYs
CiAJc2dfZnJlZV90YWJsZSgmYWNkLT5zZ3QpOwogIGVycl9kbWFfbWFwX3NnOgogIGVycl9hbGxv
Y19zZ190YWJsZToKLQlmb3IgKGkgPSAwIDsgaSA8IGFjZC0+cGFnZV9jb3VudCA7IGkrKykgewot
CQlwdXRfcGFnZShhY2QtPnVzZXJfcGFnZXNbaV0pOwotCX0KKwlwdXRfdXNlcl9wYWdlcyhhY2Qt
PnVzZXJfcGFnZXMsIGFjZC0+cGFnZV9jb3VudCk7CiAgZXJyX2dldF91c2VyX3BhZ2VzOgogCWtm
cmVlKGFjZC0+dXNlcl9wYWdlcyk7CiAgZXJyX2FsbG9jX3VzZXJwYWdlczoKQEAgLTIxMSwxNiAr
MjA5LDEzIEBAIHZvaWQgIHRyYW5zZmVyX2NvbXBsZXRlX2NiKHN0cnVjdCBhaW9fY2JfZGF0YSAq
YWNkLCBzaXplX3QgeGZyX2NvdW50LCB1MzIgZmxhZ3MpCiAJQlVHX09OKGFjZC0+bGRldiA9PSBO
VUxMKTsKIAlCVUdfT04oYWNkLT5sZGV2LT5wbGRldiA9PSBOVUxMKTsKIAotCWZvciAoaSA9IDAg
OyBpIDwgYWNkLT5wYWdlX2NvdW50IDsgaSsrKSB7Ci0JCWlmICghUGFnZVJlc2VydmVkKGFjZC0+
dXNlcl9wYWdlc1tpXSkpIHsKLQkJCXNldF9wYWdlX2RpcnR5KGFjZC0+dXNlcl9wYWdlc1tpXSk7
Ci0JCX0KLQl9Ci0KIAlkbWFfdW5tYXBfc2coJmFjZC0+bGRldi0+cGxkZXYtPmRldiwgYWNkLT5z
Z3Quc2dsLCBhY2QtPnNndC5uZW50cywgYWNkLT5sZGV2LT5kaXIpOwogCi0JZm9yIChpID0gMCA7
IGkgPCBhY2QtPnBhZ2VfY291bnQgOyBpKyspIHsKLQkJcHV0X3BhZ2UoYWNkLT51c2VyX3BhZ2Vz
W2ldKTsKKwlmb3IgKGkgPSAwOyBpIDwgYWNkLT5wYWdlX2NvdW50OyBpKyspIHsKKwkJaWYgKCFQ
YWdlUmVzZXJ2ZWQoYWNkLT51c2VyX3BhZ2VzW2ldKSkKKwkJCXB1dF91c2VyX3BhZ2VzX2RpcnR5
KCZhY2QtPnVzZXJfcGFnZXNbaV0sIDEpOworCQllbHNlCisJCQlwdXRfdXNlcl9wYWdlKGFjZC0+
dXNlcl9wYWdlc1tpXSk7CiAJfQogCiAJc2dfZnJlZV90YWJsZSgmYWNkLT5zZ3QpOwotLSAKMi43
LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
