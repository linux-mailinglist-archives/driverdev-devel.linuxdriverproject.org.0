Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FE027BDD
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8230888143;
	Thu, 23 May 2019 11:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yS7KHGyjKqZL; Thu, 23 May 2019 11:36:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12330880D4;
	Thu, 23 May 2019 11:36:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE7E51BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ABE1E30FCB
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqS1V-j7FrSe for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0702A30EDE
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id c17so4150710lfi.2
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MJHlb98iV+GM9XlIrpWxfJz2ZoU6bw1KMTEUx+60/Yg=;
 b=TMvdn7xctw+9ZYYFLSHI5X0IPHuS6ULfXL6OGJpp7YKerduzsasgHRvoV8YSzH7pLi
 DcdyM0mwYfqJ2Kz1YEE2cgNhpdOlvXrpZg2+8oQFsl71kRtA4qdNY/NzxDVNaOcCBKga
 Q/h+nAe1YbMOj3z7ykwVkiWoNl/IueieBMtQZd40eROgRErJ8e1n0VkO4+hKzIG9s+xw
 WT2Tzo5YFU8LeIZ9k12syB2oChn75iFCkFHr7BRhObEfR5xZIxiTa97P8MRDjqMzCNVg
 JNlksdByIAwYwNXrSqmN7TiQVJ0TNn7Vt6K37mFbG/2tCJ3JX+9MU1W7b4dlsdb/mSXd
 eYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MJHlb98iV+GM9XlIrpWxfJz2ZoU6bw1KMTEUx+60/Yg=;
 b=FRnApYHWKYgS8Ch76n06ivqA5u1lCXvdPpD7uJT8VI6zZ3s2uWZONFh6LG0RabetxE
 rMmWsrYWWDkfOeT3K2L0LqKlLRnU00F+rrFGMwW8ngmSAqX+D2GKc9GmB8bgjE89gnI/
 QgHKVFSgzMqgwfgb1JyrKzbRt0uLsyi+V1nKSoQlmpDlN1XhWdDQ/O12KxGv2Jd1xwBt
 hWNUW3UPqIc+lY83CXitmgUI6a5dqI4zSXJryLh29TPPdHUP4HgpyaAurbv4nf7VLngP
 6vkV/TSe/317yZv8TOgEOFUP6f0CyrGy8kIwPwmZQleaiD0fDxOpM3brHYpXZFLT7KQf
 R49w==
X-Gm-Message-State: APjAAAU7reS+xJPGE11JOV+2HSSty2fNUTjIxlYzwSaoI+a8jH6XUKYp
 rrYMtlcW1H9lUWaEbPaeexWzYg==
X-Google-Smtp-Source: APXvYqyr+o5eF9TWfPRRhx6N2bZ5E0N4BNK0RwpISn93FvemTxAYrG3szTxF/4PK/BT8rFJp2EC/lQ==
X-Received: by 2002:ac2:48ad:: with SMTP id u13mr17873682lfg.60.1558611397360; 
 Thu, 23 May 2019 04:36:37 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:36 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/8] staging: kpc2000: remove unnecessary braces in
 cell_probe.c
Date: Thu, 23 May 2019 13:36:12 +0200
Message-Id: <20190523113613.28342-8-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5ncyAiYnJhY2VzIHt9IGFyZSBub3QgbmVjZXNzYXJ5
IGZvciBzaW5nbGUKc3RhdGVtZW50IGJsb2NrcyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5k
c3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
YzIwMDAvY2VsbF9wcm9iZS5jIHwgMTEgKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NlbGxfcHJvYmUuYwppbmRleCA4ZDkyNTRkYjk0OTguLmIxY2UxZTcxNWQ5YSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKKysr
IGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKQEAgLTI3Mywx
MSArMjczLDEwIEBAIGludCBrdWlvX2lycWNvbnRyb2woc3RydWN0IHVpb19pbmZvICp1aW9pbmZv
LCBzMzIgaXJxX29uKQogCiAJbXV0ZXhfbG9jaygmcGNhcmQtPnNlbSk7CiAJbWFzayA9IHJlYWRx
KHBjYXJkLT5zeXNpbmZvX3JlZ3NfYmFzZSArIFJFR19JTlRFUlJVUFRfTUFTSyk7Ci0JaWYgKGly
cV9vbikgeworCWlmIChpcnFfb24pCiAJCW1hc2sgJj0gfigxIDw8IChrdWRldi0+Y3RlLmlycV9i
YXNlX251bSkpOwotCX0gZWxzZSB7CisJZWxzZQogCQltYXNrIHw9ICgxIDw8IChrdWRldi0+Y3Rl
LmlycV9iYXNlX251bSkpOwotCX0KIAl3cml0ZXEobWFzaywgcGNhcmQtPnN5c2luZm9fcmVnc19i
YXNlICsgUkVHX0lOVEVSUlVQVF9NQVNLKTsKIAltdXRleF91bmxvY2soJnBjYXJkLT5zZW0pOwog
CkBAIC00MzMsMTIgKzQzMiwxMCBAQCBpbnQgIGtwMjAwMF9wcm9iZV9jb3JlcyhzdHJ1Y3Qga3Ay
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
