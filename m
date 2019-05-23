Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E14A827BE8
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED3703102E;
	Thu, 23 May 2019 11:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mbTq5eItMj5b; Thu, 23 May 2019 11:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 799FC30EDE;
	Thu, 23 May 2019 11:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E42071BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E172D88091
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VfK-Ne9lU+xF for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 112FC87FB5
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:34 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id q16so5122394ljj.8
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uczS2eJvsUBeIqufjqAGGrhpIgILdXWM7PJHAl+INQ0=;
 b=JTKvuPUwewVb7Htxx1J62Fww7wlyJ+5AgM1TEPAC+XGlI218KAO66eobowelkww13E
 xSH6Z7McjsZFQca5Dxva+1KwzpJDchsbBYteKBsALyWb581xIfbbvgdApiMl0MZfxy/D
 Q02+1AXRvrStd+fA3FYJK7ZdGcsxjQbOAhTKntWFuEVEwga5v3gyviGeYzKFnfR+tq+n
 WX7OC6zKRwqbwwq+UqHDfxaN/GqA73lSRVT4Fjr0g8MCNXiKcftnqpBfXpb6djcXPApx
 pSHJNXAZ0CkOKFgplHJU3QCbPHxY6Q/RenFl9olZ1YTKqDVi+eelex6kPSmdzOH8I0ZP
 w01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uczS2eJvsUBeIqufjqAGGrhpIgILdXWM7PJHAl+INQ0=;
 b=CbR9yRIzPzsw9yAGhwsNiLtT6R3CiOc61+ZRBKAyATa84dTV7YUyRHWgWBWbshy/yl
 +93MjG/3jno79Kgz4VDSrBZcDWXi+5MU3LnbWmj0iGCXt17DYGoPw3JjtKLMJ23Y/wxA
 dOfHc9eWuacsrDvlmJbTqpY8cAyKQEpHlN7T8TnlF71WVyMb4llkD1vn4NO35fLIjoTE
 TI406hD5j7GLMyKcaTrvgWReyujlOtK+0Z7Uzn9B1HTa5s/8cn8rNBZr3bSWEaCIRzKj
 yjns8W84SbACKlI5f7SoY4/66l8V4jOqnPLPr/Zfil41xBF7lpXT4H52m5ShwWrKdtEB
 SxrQ==
X-Gm-Message-State: APjAAAXadW25S9Evlk7Kuhz+jLa0xd/epLFsptIZiXwNLkUimyuuMkGi
 LUjkWN1UJhIKIuQ87URMNuyYLA==
X-Google-Smtp-Source: APXvYqxQYY5UbK9BuRUvb4+lXuzCqrazAeGbimzmuthBWScDlwfYcOjs3yfRhZZENsPttDCrJ6tFRg==
X-Received: by 2002:a2e:60a:: with SMTP id 10mr3789534ljg.126.1558611392274;
 Thu, 23 May 2019 04:36:32 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:31 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/8] staging: kpc2000: use __func__ in debug messages
Date: Thu, 23 May 2019 13:36:07 +0200
Message-Id: <20190523113613.28342-3-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQcmVmZXIgdXNpbmcgJyIlcy4uLiIsIF9fZnVu
Y19fJyB0byB1c2luZwonPGZ1bmN0aW9uIG5hbWU+JywgdGhpcyBmdW5jdGlvbidzIG5hbWUsIGlu
IGEgc3RyaW5nIi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5pa2Fu
b3IubnU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMg
fCAyMiArKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAv
a3BjMjAwMC9jZWxsX3Byb2JlLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2Nl
bGxfcHJvYmUuYwppbmRleCA5NWJmYmU0YWFlNGQuLjdiODUwZjNlODA4YiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMKQEAgLTI5OSw3ICsyOTksOCBA
QCBzdGF0aWMgaW50IHByb2JlX2NvcmVfdWlvKHVuc2lnbmVkIGludCBjb3JlX251bSwgc3RydWN0
IGtwMjAwMF9kZXZpY2UgKnBjYXJkLAogCiAJa3VkZXYgPSBremFsbG9jKHNpemVvZihzdHJ1Y3Qg
a3BjX3Vpb19kZXZpY2UpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIWt1ZGV2KSB7Ci0JCWRldl9lcnIo
JnBjYXJkLT5wZGV2LT5kZXYsICJwcm9iZV9jb3JlX3VpbzogZmFpbGVkIHRvIGt6YWxsb2Mga3Bj
X3Vpb19kZXZpY2VcbiIpOworCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LCAiJXM6IGZhaWxl
ZCB0byBremFsbG9jIGtwY191aW9fZGV2aWNlXG4iLAorCQkJX19mdW5jX18pOwogCQlyZXR1cm4g
LUVOT01FTTsKIAl9CiAKQEAgLTMyNyw3ICszMjgsOCBAQCBzdGF0aWMgaW50IHByb2JlX2NvcmVf
dWlvKHVuc2lnbmVkIGludCBjb3JlX251bSwgc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJkLAog
CiAJa3VkZXYtPmRldiA9IGRldmljZV9jcmVhdGUoa3BjX3Vpb19jbGFzcywgJnBjYXJkLT5wZGV2
LT5kZXYsIE1LREVWKDAsIDApLCBrdWRldiwgIiVzLiVkLiVkLiVkIiwga3VkZXYtPnVpb2luZm8u
bmFtZSwgcGNhcmQtPmNhcmRfbnVtLCBjdGUudHlwZSwga3VkZXYtPmNvcmVfbnVtKTsKIAlpZiAo
SVNfRVJSKGt1ZGV2LT5kZXYpKSB7Ci0JCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsICJwcm9i
ZV9jb3JlX3VpbyBkZXZpY2VfY3JlYXRlIGZhaWxlZCFcbiIpOworCQlkZXZfZXJyKCZwY2FyZC0+
cGRldi0+ZGV2LCAiJXM6IGRldmljZV9jcmVhdGUgZmFpbGVkIVxuIiwKKwkJCV9fZnVuY19fKTsK
IAkJa2ZyZWUoa3VkZXYpOwogCQlyZXR1cm4gLUVOT0RFVjsKIAl9CkBAIC0zMzUsNyArMzM3LDgg
QEAgc3RhdGljIGludCBwcm9iZV9jb3JlX3Vpbyh1bnNpZ25lZCBpbnQgY29yZV9udW0sIHN0cnVj
dCBrcDIwMDBfZGV2aWNlICpwY2FyZCwKIAogCXJ2ID0gdWlvX3JlZ2lzdGVyX2RldmljZShrdWRl
di0+ZGV2LCAma3VkZXYtPnVpb2luZm8pOwogCWlmIChydikgewotCQlkZXZfZXJyKCZwY2FyZC0+
cGRldi0+ZGV2LCAicHJvYmVfY29yZV91aW8gZmFpbGVkIHVpb19yZWdpc3Rlcl9kZXZpY2U6ICVk
XG4iLCBydik7CisJCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsICIlczogZmFpbGVkIHVpb19y
ZWdpc3Rlcl9kZXZpY2U6ICVkXG4iLAorCQkJX19mdW5jX18sIHJ2KTsKIAkJcHV0X2RldmljZShr
dWRldi0+ZGV2KTsKIAkJa2ZyZWUoa3VkZXYpOwogCQlyZXR1cm4gcnY7CkBAIC00MTAsNyArNDEz
LDggQEAgc3RhdGljIGludCAga3AyMDAwX3NldHVwX2RtYV9jb250cm9sbGVyKHN0cnVjdCBrcDIw
MDBfZGV2aWNlICpwY2FyZCkKIAlyZXR1cm4gMDsKIAogZXJyX291dDoKLQlkZXZfZXJyKCZwY2Fy
ZC0+cGRldi0+ZGV2LCAia3AyMDAwX3NldHVwX2RtYV9jb250cm9sbGVyOiBmYWlsZWQgdG8gYWRk
IGEgRE1BIEVuZ2luZTogJWRcbiIsIGVycik7CisJZGV2X2VycigmcGNhcmQtPnBkZXYtPmRldiwg
IiVzOiBmYWlsZWQgdG8gYWRkIGEgRE1BIEVuZ2luZTogJWRcbiIsCisJCV9fZnVuY19fLCBlcnIp
OwogCXJldHVybiBlcnI7CiB9CiAKQEAgLTQyMyw3ICs0MjcsOCBAQCBpbnQgIGtwMjAwMF9wcm9i
ZV9jb3JlcyhzdHJ1Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQpCiAJdW5zaWduZWQgaW50IGhpZ2hl
c3RfY29yZV9pZCA9IDA7CiAJc3RydWN0IGNvcmVfdGFibGVfZW50cnkgY3RlOwogCi0JZGV2X2Ri
ZygmcGNhcmQtPnBkZXYtPmRldiwgImtwMjAwMF9wcm9iZV9jb3JlcyhwY2FyZCA9ICVwIC8gJWQp
XG4iLCBwY2FyZCwgcGNhcmQtPmNhcmRfbnVtKTsKKwlkZXZfZGJnKCZwY2FyZC0+cGRldi0+ZGV2
LCAiJXMocGNhcmQgPSAlcCAvICVkKVxuIiwgX19mdW5jX18sIHBjYXJkLAorCQlwY2FyZC0+Y2Fy
ZF9udW0pOwogCiAJZXJyID0ga3AyMDAwX3NldHVwX2RtYV9jb250cm9sbGVyKHBjYXJkKTsKIAlp
ZiAoZXJyKQpAQCAtNDcyLDggKzQ3Nyw4IEBAIGludCAga3AyMDAwX3Byb2JlX2NvcmVzKHN0cnVj
dCBrcDIwMDBfZGV2aWNlICpwY2FyZCkKIAkJCX0KIAkJCWlmIChlcnIpIHsKIAkJCQlkZXZfZXJy
KCZwY2FyZC0+cGRldi0+ZGV2LAotCQkJCQkia3AyMDAwX3Byb2JlX2NvcmVzOiBmYWlsZWQgdG8g
YWRkIGNvcmUgJWQ6ICVkXG4iLAotCQkJCQlpLCBlcnIpOworCQkJCQkiJXM6IGZhaWxlZCB0byBh
ZGQgY29yZSAlZDogJWRcbiIsCisJCQkJCV9fZnVuY19fLCBpLCBlcnIpOwogCQkJCWdvdG8gZXJy
b3I7CiAJCQl9CiAJCQljb3JlX251bSsrOwpAQCAtNDkyLDcgKzQ5Nyw4IEBAIGludCAga3AyMDAw
X3Byb2JlX2NvcmVzKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCkKIAljdGUuaXJxX2Jhc2Vf
bnVtICAgICAgICA9IDA7CiAJZXJyID0gcHJvYmVfY29yZV91aW8oMCwgcGNhcmQsICJrcGNfdWlv
IiwgY3RlKTsKIAlpZiAoZXJyKSB7Ci0JCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsICJrcDIw
MDBfcHJvYmVfY29yZXM6IGZhaWxlZCB0byBhZGQgYm9hcmRfaW5mbyBjb3JlOiAlZFxuIiwgZXJy
KTsKKwkJZGV2X2VycigmcGNhcmQtPnBkZXYtPmRldiwgIiVzOiBmYWlsZWQgdG8gYWRkIGJvYXJk
X2luZm8gY29yZTogJWRcbiIsCisJCQlfX2Z1bmNfXywgZXJyKTsKIAkJZ290byBlcnJvcjsKIAl9
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
