Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CF527D3D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D9BB87D45;
	Thu, 23 May 2019 12:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yq3qk-bR56Gy; Thu, 23 May 2019 12:52:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 910C287CE4;
	Thu, 23 May 2019 12:52:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63FAF1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5DEB687CA9
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hfPg1ajxGlJJ for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 079FC87CA4
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:54 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id u27so4303542lfg.10
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cmxGKCFyPergLFN6my5Zqlqk+0D5Lu46awJGNCLYahs=;
 b=RTWvTOJuIsuOMDqYjM8ums32pA/hz/JGZqBD17Mh/2WaYfUICKi90NVmmOaTu4A3Vr
 oWVhkqn1UhRT1yhrplmPeF2ib5RRln1nMfiDjAKzDFNmXbuj5x6KrEd+/+qtblenIIfX
 Ek3cWYtJzwr4aFvzfkf/GPnJkUl/nVVPpUC3jlm8sUMRmOKy+F7H5D55gmINVaq3fEb/
 AL4vmabWOCTuUB46lex1MjsU2zhFAO7bascxfOSB/ii8pWXrDbBoU0ZIRV8bwnPKzXbt
 dFL8TPCQ9kzSpVLV6Lcq/KHkz06SJnQ0yjhyYV4B5ItIefm+WzC+nqI15GgxKZubws/d
 5AIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cmxGKCFyPergLFN6my5Zqlqk+0D5Lu46awJGNCLYahs=;
 b=KFt4ZN83BHjjp5hxPkUiR5wnWAO+DmaNWbum+LPVgfh50j2bVVgyxGoW4VTNL3iFqf
 vuUAjt81SHM9PL5VBcvao6ZuRnuEeuRvqumT8A0pqoxNnQHeSJSZ0pW8WFOVwLqrIKgE
 Lv6sIRkYyP6JN7FKch1BOU5CBvQcgy0UH9p6XWTKklz1hgpy9U9Ddv1M0vMaGjLtXlZe
 lx2cRr5KAuF83J9pvFQ3a09qyfm2zDQL1W9EfmOCrFZxtGpQ9hAVb/hWeGR2s2gR0Msq
 nCm4kV9LaqsJD50YNWYkSQBKrOmMJ9fsGv9PEsl5uDnE8ekPwG226dd5Yy0A+w2Ehzks
 6LXg==
X-Gm-Message-State: APjAAAUDMJ1bdif4qXu5/FNjZ41eZcIO7bmHXTH90WHFv5ms1TqfedBN
 BDsxKht1m86OT2WFWewaGhMRvQ==
X-Google-Smtp-Source: APXvYqzz+UTMWVRnZkCdQghH+qd6irHIR5rssJgu3cTwEzdxUXlnohTCCxg7G3eoswqgazxw1vr1Jw==
X-Received: by 2002:ac2:5935:: with SMTP id v21mr5765891lfi.117.1558615913165; 
 Thu, 23 May 2019 05:51:53 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:52 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 7/9] staging: kpc2000: remove unnecessary braces in
 cell_probe.c
Date: Thu, 23 May 2019 14:51:41 +0200
Message-Id: <20190523125143.32511-8-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiYnJhY2VzIHt9IGFyZSBub3QgbmVjZXNzYXJ5
IGZvciBzaW5nbGUKc3RhdGVtZW50IGJsb2NrcyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5k
c3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
YzIwMDAvY2VsbF9wcm9iZS5jIHwgMTEgKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NlbGxfcHJvYmUuYwppbmRleCBjYWY0ODI1NmFhMmUuLjY4MmQ2MWRhNTM2OSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKKysr
IGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKQEAgLTI3Mywx
MSArMjczLDEwIEBAIGludCBrdWlvX2lycWNvbnRyb2woc3RydWN0IHVpb19pbmZvICp1aW9pbmZv
LCBzMzIgaXJxX29uKQogCiAJbXV0ZXhfbG9jaygmcGNhcmQtPnNlbSk7CiAJbWFzayA9IHJlYWRx
KHBjYXJkLT5zeXNpbmZvX3JlZ3NfYmFzZSArIFJFR19JTlRFUlJVUFRfTUFTSyk7Ci0JaWYgKGly
cV9vbikgeworCWlmIChpcnFfb24pCiAJCW1hc2sgJj0gfigxIDw8IChrdWRldi0+Y3RlLmlycV9i
YXNlX251bSkpOwotCX0gZWxzZSB7CisJZWxzZQogCQltYXNrIHw9ICgxIDw8IChrdWRldi0+Y3Rl
LmlycV9iYXNlX251bSkpOwotCX0KIAl3cml0ZXEobWFzaywgcGNhcmQtPnN5c2luZm9fcmVnc19i
YXNlICsgUkVHX0lOVEVSUlVQVF9NQVNLKTsKIAltdXRleF91bmxvY2soJnBjYXJkLT5zZW0pOwog
CkBAIC00MzIsMTIgKzQzMSwxMCBAQCBpbnQgIGtwMjAwMF9wcm9iZV9jb3JlcyhzdHJ1Y3Qga3Ay
MDAwX2RldmljZSAqcGNhcmQpCiAJCXJlYWRfdmFsID0gcmVhZHEocGNhcmQtPnN5c2luZm9fcmVn
c19iYXNlICsgKChwY2FyZC0+Y29yZV90YWJsZV9vZmZzZXQgKyBpKSAqIDgpKTsKIAkJcGFyc2Vf
Y29yZV90YWJsZV9lbnRyeSgmY3RlLCByZWFkX3ZhbCwgcGNhcmQtPmNvcmVfdGFibGVfcmV2KTsK
IAkJZGJnX2N0ZShwY2FyZCwgJmN0ZSk7Ci0JCWlmIChjdGUudHlwZSA+IGhpZ2hlc3RfY29yZV9p
ZCkgeworCQlpZiAoY3RlLnR5cGUgPiBoaWdoZXN0X2NvcmVfaWQpCiAJCQloaWdoZXN0X2NvcmVf
aWQgPSBjdGUudHlwZTsKLQkJfQotCQlpZiAoY3RlLnR5cGUgPT0gS1BfQ09SRV9JRF9JTlZBTElE
KSB7CisJCWlmIChjdGUudHlwZSA9PSBLUF9DT1JFX0lEX0lOVkFMSUQpCiAJCQlkZXZfaW5mbygm
cGNhcmQtPnBkZXYtPmRldiwgIkZvdW5kIEludmFsaWQgY29yZTogJTAxNmxseFxuIiwgcmVhZF92
YWwpOwotCQl9CiAJfQogCS8vIFRoZW4sIGl0ZXJhdGUgb3ZlciB0aGUgcG9zc2libGUgY29yZSB0
eXBlcy4KIAlmb3IgKGN1cnJlbnRfdHlwZV9pZCA9IDEgOyBjdXJyZW50X3R5cGVfaWQgPD0gaGln
aGVzdF9jb3JlX2lkIDsgY3VycmVudF90eXBlX2lkKyspIHsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
