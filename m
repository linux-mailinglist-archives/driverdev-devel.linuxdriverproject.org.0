Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 636FB42839
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 15:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48C34861A3;
	Wed, 12 Jun 2019 13:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iwk7iNN_-41; Wed, 12 Jun 2019 13:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C1AA861AF;
	Wed, 12 Jun 2019 13:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CECE01BF339
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 13:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF7F6876C3
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 13:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2qK307Ef56mP for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 13:58:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 02FA1876B8
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 13:58:50 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id y198so12210471lfa.1
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3VrHMiNNbPTpWcXJEeQwNkvaq+Iwwq0qawqb4RHXlZg=;
 b=VEZqKjqwL6+iGHJMAO9xlj3d1SX01w/7pyFL9dXh8yuSKwAUYA37V51u/JS7ckbvMn
 eD/8yWhCsa2aQga2YnMxNvYlPMtH5otRHbBCy1h5zzF0Kmr8ONEx5w6sESk/AhoPdbiB
 dyWTPncbg48IX7710iugaLLcuBMPDaK0X7utC1sNJc2S/7V+FSpjBpEsF+K+gL0s70yv
 BzturJ1jvXB35VGtNQMFuKq1X9F+EhgpldO8dF5ZCgVwKPBArP0kHMuXUAmm0yzZgNgH
 8Kkku8YrFVIGbxkvaQfDm4uQ3HvssFNHU2B5TFTsEtE8q3bLulTUxZ8COEN51yBqc2HF
 bGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3VrHMiNNbPTpWcXJEeQwNkvaq+Iwwq0qawqb4RHXlZg=;
 b=tJfHa/n2GqR98P9IunbJ7QW5ajp1NoV7uguAAisM8awG0MxW8CiGx+YGd/ttYb2GhA
 nYOuZkLxR5rOxkzPk/IAhYBYVMSoHtt9/b8r/icBank4EIyzPy3z5QGOnuDEsI0WVNzz
 vScW3Rz1QEK/Hbye2K0R2bv4AKFUORBEtUyczU+iNLKgrLUp6p2gjVZ8eKxhfCKn3Nts
 1A0MzSAPQWXbRcsR8QKKOmAml6OssmpTz24vFnAgqfCqz2zZdu58R0P1j6sIsp1J1gQG
 nKmSW4IvR4byZTTX++ynSWcHF5+JjukLfr85u7JSFQ2ykCLLlUqWCa+DV2SNdDeouqHD
 aWTQ==
X-Gm-Message-State: APjAAAWF96m+U9s/QRU008X/SNRUOrvHFnbskNXi5wew9jhZE3DvfHoK
 zOAhEPWkIkAdBpt6kb1xqegjcA==
X-Google-Smtp-Source: APXvYqzLqFzvEPkn8L8PgSefW0hP124LbXZGSbsWsOcTf6PCECAZ/sgmSq8nsRIpXj1UjsblJoYDcg==
X-Received: by 2002:a05:6512:4c5:: with SMTP id
 w5mr2277429lfq.171.1560347928315; 
 Wed, 12 Jun 2019 06:58:48 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x194sm2621999lfa.64.2019.06.12.06.58.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 06:58:47 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: kpc2000: remove unnecessary comments in
 kp2000_pcie_probe
Date: Wed, 12 Jun 2019 15:58:36 +0200
Message-Id: <20190612135836.23009-3-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610200535.31820-1-simon@nikanor.nu>
References: <20190610200535.31820-1-simon@nikanor.nu>
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

TXVjaCBvZiB0aGUgY29kZSBjb21tZW50cyBpbiBrcDIwMDBfcGNpZV9wcm9iZSBqdXN0IHJlcGVh
dHMgdGhlIGNvZGUgYW5kCmRvZXMgbm90IGFkZCBhbnkgYWRkaXRpb25hbCBpbmZvcm1hdGlvbi4g
RGVsZXRlIHRoZW0gYW5kIG1ha2Ugc3VyZSB0aGF0CmNvbW1lbnRzIHN0aWxsIGxlZnQgaW4gdGhl
IGZ1bmN0aW9uIGFsbCB1c2UgdGhlIHNhbWUgc3R5bGUuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBT
YW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAw
L2twYzIwMDAvY29yZS5jIHwgMzggKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggZWU2YjliZTcxMjdkLi42YTU5OTllOGZmNGUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBAIC0zMTEsMTggKzMxMSwxMiBA
QCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCXVu
c2lnbmVkIGxvbmcgZG1hX2Jhcl9waHlzX2xlbjsKIAl1MTYgcmVndmFsOwogCi0JLyoKLQkgKiBT
dGVwIDE6IEFsbG9jYXRlIGEgc3RydWN0IGZvciB0aGUgcGNhcmQKLQkgKi8KIAlwY2FyZCA9IGt6
YWxsb2Moc2l6ZW9mKCpwY2FyZCksIEdGUF9LRVJORUwpOwogCWlmICghcGNhcmQpCiAJCXJldHVy
biAtRU5PTUVNOwogCWRldl9kYmcoJnBkZXYtPmRldiwgInByb2JlOiBhbGxvY2F0ZWQgc3RydWN0
IGtwMjAwMF9kZXZpY2UgQCAlcFxuIiwKIAkJcGNhcmQpOwogCi0JLyoKLQkgKiBTdGVwIDI6IElu
aXRpYWxpemUgdHJpdmlhbCBwY2FyZCBlbGVtZW50cwotCSAqLwogCWVyciA9IGlkYV9zaW1wbGVf
Z2V0KCZjYXJkX251bV9pZGEsIDEsIElOVF9NQVgsIEdGUF9LRVJORUwpOwogCWlmIChlcnIgPCAw
KSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgInByb2JlOiBmYWlsZWQgdG8gZ2V0IGNhcmQgbnVt
YmVyICglZClcbiIsCkBAIC0zMzgsOSArMzMyLDYgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9w
cm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAlwY2FyZC0+cGRldiA9IHBkZXY7CiAJcGNpX3Nl
dF9kcnZkYXRhKHBkZXYsIHBjYXJkKTsKIAotCS8qCi0JICogU3RlcCAzOiBFbmFibGUgUENJIGRl
dmljZQotCSAqLwogCWVyciA9IHBjaV9lbmFibGVfZGV2aWNlKHBjYXJkLT5wZGV2KTsKIAlpZiAo
ZXJyKSB7CiAJCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsCkBAIC0zNDksOSArMzQwLDcgQEAg
c3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJZ290
byBlcnJfcmVtb3ZlX2lkYTsKIAl9CiAKLQkvKgotCSAqIFN0ZXAgNDogU2V0dXAgdGhlIFJlZ2lz
dGVyIEJBUgotCSAqLworCS8qIFNldHVwIHRoZSBSZWdpc3RlciBCQVIgKi8KIAlyZWdfYmFyX3Bo
eXNfYWRkciA9IHBjaV9yZXNvdXJjZV9zdGFydChwY2FyZC0+cGRldiwgUkVHX0JBUik7CiAJcmVn
X2Jhcl9waHlzX2xlbiA9IHBjaV9yZXNvdXJjZV9sZW4ocGNhcmQtPnBkZXYsIFJFR19CQVIpOwog
CkBAIC0zODEsOSArMzcwLDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3Qg
cGNpX2RldiAqcGRldiwKIAkJCQkJICByZWdfYmFyX3BoeXNfbGVuIC0gMTsKIAlwY2FyZC0+cmVn
c19iYXNlX3Jlc291cmNlLmZsYWdzID0gSU9SRVNPVVJDRV9NRU07CiAKLQkvKgotCSAqIFN0ZXAg
NTogU2V0dXAgdGhlIERNQSBCQVIKLQkgKi8KKwkvKiBTZXR1cCB0aGUgRE1BIEJBUiAqLwogCWRt
YV9iYXJfcGh5c19hZGRyID0gcGNpX3Jlc291cmNlX3N0YXJ0KHBjYXJkLT5wZGV2LCBETUFfQkFS
KTsKIAlkbWFfYmFyX3BoeXNfbGVuID0gcGNpX3Jlc291cmNlX2xlbihwY2FyZC0+cGRldiwgRE1B
X0JBUik7CiAKQEAgLTQxNSw5ICs0MDIsNyBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2Jl
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCQkJCQkgZG1hX2Jhcl9waHlzX2xlbiAtIDE7CiAJcGNh
cmQtPmRtYV9iYXNlX3Jlc291cmNlLmZsYWdzID0gSU9SRVNPVVJDRV9NRU07CiAKLQkvKgotCSAq
IFN0ZXAgNjogU3lzdGVtIFJlZ3MKLQkgKi8KKwkvKiBSZWFkIFN5c3RlbSBSZWdzICovCiAJcGNh
cmQtPnN5c2luZm9fcmVnc19iYXNlID0gcGNhcmQtPnJlZ3NfYmFyX2Jhc2U7CiAJZXJyID0gcmVh
ZF9zeXN0ZW1fcmVncyhwY2FyZCk7CiAJaWYgKGVycikKQEAgLTQyNywxMSArNDEyLDkgQEAgc3Rh
dGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAl3cml0ZXEo
MHhGRkZGRkZGRkZGRkZGRkZGLAogCSAgICAgICBwY2FyZC0+c3lzaW5mb19yZWdzX2Jhc2UgKyBS
RUdfSU5URVJSVVBUX01BU0spOwogCi0JLyoKLQkgKiBTdGVwIDc6IENvbmZpZ3VyZSBQQ0kgdGhp
bmdpZXMKLQkgKi8KIAkvLyBsZXQgdGhlIGNhcmQgbWFzdGVyIFBDSWUKIAlwY2lfc2V0X21hc3Rl
cihwY2FyZC0+cGRldik7CisKIAkvLyBlbmFibGUgSU8gYW5kIG1lbSBpZiBub3QgYWxyZWFkeSBk
b25lCiAJcGNpX3JlYWRfY29uZmlnX3dvcmQocGNhcmQtPnBkZXYsIFBDSV9DT01NQU5ELCAmcmVn
dmFsKTsKIAlyZWd2YWwgfD0gKFBDSV9DT01NQU5EX0lPIHwgUENJX0NPTU1BTkRfTUVNT1JZKTsK
QEAgLTQ2Niw5ICs0NDksNiBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVjdCBw
Y2lfZGV2ICpwZGV2LAogCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsCiAJCSJVc2luZyBETUEg
bWFzayAlMGxseFxuIiwgZG1hX2dldF9tYXNrKFBDQVJEX1RPX0RFVihwY2FyZCkpKTsKIAotCS8q
Ci0JICogU3RlcCA4OiBDb25maWd1cmUgSVJRcwotCSAqLwogCWVyciA9IHBjaV9lbmFibGVfbXNp
KHBjYXJkLT5wZGV2KTsKIAlpZiAoZXJyIDwgMCkKIAkJZ290byBlcnJfdW5tYXBfZG1hOwpAQCAt
NDgxLDI1ICs0NjEsMTcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwKIAkJZ290byBlcnJfZGlzYWJsZV9tc2k7CiAJfQogCi0JLyoKLQkgKiBTdGVw
IDk6IFNldHVwIHN5c2ZzIGF0dHJpYnV0ZXMKLQkgKi8KIAllcnIgPSBzeXNmc19jcmVhdGVfZmls
ZXMoJnBkZXYtPmRldi5rb2JqLCBrcF9hdHRyX2xpc3QpOwogCWlmIChlcnIpIHsKIAkJZGV2X2Vy
cigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIGFkZCBzeXNmcyBmaWxlczogJWRcbiIsIGVycik7CiAJ
CWdvdG8gZXJyX2ZyZWVfaXJxOwogCX0KIAotCS8qCi0JICogU3RlcCAxMDogUHJvYmUgY29yZXMK
LQkgKi8KIAllcnIgPSBrcDIwMDBfcHJvYmVfY29yZXMocGNhcmQpOwogCWlmIChlcnIpCiAJCWdv
dG8gZXJyX3JlbW92ZV9zeXNmczsKIAotCS8qCi0JICogU3RlcCAxMTogRW5hYmxlIElSUXMgaW4g
SFcKLQkgKi8KKwkvKiBFbmFibGUgSVJRcyBpbiBIVyAqLwogCXdyaXRlbChLUENfRE1BX0NBUkRf
SVJRX0VOQUJMRSB8IEtQQ19ETUFfQ0FSRF9VU0VSX0lOVEVSUlVQVF9NT0RFLAogCSAgICAgICBw
Y2FyZC0+ZG1hX2NvbW1vbl9yZWdzKTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
