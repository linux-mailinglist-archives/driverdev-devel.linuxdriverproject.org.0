Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDCE3BD4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 22:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D62BF20454;
	Mon, 10 Jun 2019 20:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zFLXxjzqQ9Gq; Mon, 10 Jun 2019 20:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7164920447;
	Mon, 10 Jun 2019 20:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6D21BF418
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 20:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3842D869CA
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 20:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04Hmm+tTm4Yp for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 20:05:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2B4F86A48
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 20:05:54 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id y17so7553673lfe.0
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 13:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i6UkWvo4qq2S7jvlAE/FczQO1KKUKp1r92y98A8Zr/M=;
 b=Znj2QxthCaqhx2VzkvaSBldO9070FFKsP8Lrjh49lv0fApSK0SSmG2G4Wl6u9Bj8iF
 8BacG46hWoaMEn45oK8f8Tt41+NDAG/g5zItX2RpfNdcBRIQRBoqqRTIPnS5wUCp6rFl
 vs1SYcZE1DBaVD57jRLJRUT/8xuojXC0pqdBcolpmQsVDQC5xzxIGPHNq83ZyXachO3S
 uX60Q4hBTUswiyxwSMx6PaZ67kVLoLGGN4Ahb7Rp7peDw7ODk2GBYDaxZkqJb52pRA1+
 K8AtYwbwfgZ3Y+90D3DGbfy+h3K6w64/llOoP0UFRFlKW8sqPpYqXxnsTfbeVgL0DQnp
 nvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i6UkWvo4qq2S7jvlAE/FczQO1KKUKp1r92y98A8Zr/M=;
 b=cZ9QHfCM2emOSTHncHe7cL3l8rPZi86ob71aw2HZOFiHDwCrsPm0+zlER908FdEn2r
 QQzEbTyOVsowvdqnqURPevunSdlp3XL1QDar+q4FiNFveUdcVpit1BxTnGu5Vzb+9U0x
 7oqEYkQpFS4FR6VYa5/oUj++411CXwj0i+fPx209MpmJNf0Bz3Xr7MHAVz8B7e1RdjmL
 ymY2OA13yI1TgMdMjf5DLqXLpcljF8M5tIp7EOnBRrP+B32GXuzBnMoEHUbqzQ6lJhRa
 qXgaxHf6DGVLkvg/2h9lSVgU+iTtWHxOZvdjsE3+Dc29r/QGVu1WGQctTsUuvdbGXQGa
 6sCQ==
X-Gm-Message-State: APjAAAVjFvFE++dDKHoD2FaCxKepXp13fv2zMYqOT5i9ZCdooy+qBeT8
 XWwvt+EdR9XWi6GYVPsW/BcYrA==
X-Google-Smtp-Source: APXvYqzQIxOij8YtCeQyxWmmN4zIsdheTPbvXAXy+kz0iu2Y/0pPD6WsSW/VrTL8VdW9SXfaxbpqoQ==
X-Received: by 2002:ac2:5ec6:: with SMTP id d6mr38496513lfq.131.1560197152962; 
 Mon, 10 Jun 2019 13:05:52 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id f4sm2157079ljm.13.2019.06.10.13.05.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 13:05:52 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: kpc2000: remove unnecessary comments in
 kp2000_pcie_probe
Date: Mon, 10 Jun 2019 22:05:35 +0200
Message-Id: <20190610200535.31820-3-simon@nikanor.nu>
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
 dan.carpenter@oracle.com,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
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
YzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggZWU2YjliZTcxMjdkLi43ZWM1NGI2NzJjMjAgMTAw
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
dGVyIEJBUgotCSAqLworCS8vIFNldHVwIHRoZSBSZWdpc3RlciBCQVIKIAlyZWdfYmFyX3BoeXNf
YWRkciA9IHBjaV9yZXNvdXJjZV9zdGFydChwY2FyZC0+cGRldiwgUkVHX0JBUik7CiAJcmVnX2Jh
cl9waHlzX2xlbiA9IHBjaV9yZXNvdXJjZV9sZW4ocGNhcmQtPnBkZXYsIFJFR19CQVIpOwogCkBA
IC0zODEsOSArMzcwLDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwKIAkJCQkJICByZWdfYmFyX3BoeXNfbGVuIC0gMTsKIAlwY2FyZC0+cmVnc19i
YXNlX3Jlc291cmNlLmZsYWdzID0gSU9SRVNPVVJDRV9NRU07CiAKLQkvKgotCSAqIFN0ZXAgNTog
U2V0dXAgdGhlIERNQSBCQVIKLQkgKi8KKwkvLyBTZXR1cCB0aGUgRE1BIEJBUgogCWRtYV9iYXJf
cGh5c19hZGRyID0gcGNpX3Jlc291cmNlX3N0YXJ0KHBjYXJkLT5wZGV2LCBETUFfQkFSKTsKIAlk
bWFfYmFyX3BoeXNfbGVuID0gcGNpX3Jlc291cmNlX2xlbihwY2FyZC0+cGRldiwgRE1BX0JBUik7
CiAKQEAgLTQxNSw5ICs0MDIsNyBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVj
dCBwY2lfZGV2ICpwZGV2LAogCQkJCQkgZG1hX2Jhcl9waHlzX2xlbiAtIDE7CiAJcGNhcmQtPmRt
YV9iYXNlX3Jlc291cmNlLmZsYWdzID0gSU9SRVNPVVJDRV9NRU07CiAKLQkvKgotCSAqIFN0ZXAg
NjogU3lzdGVtIFJlZ3MKLQkgKi8KKwkvLyBSZWFkIFN5c3RlbSBSZWdzCiAJcGNhcmQtPnN5c2lu
Zm9fcmVnc19iYXNlID0gcGNhcmQtPnJlZ3NfYmFyX2Jhc2U7CiAJZXJyID0gcmVhZF9zeXN0ZW1f
cmVncyhwY2FyZCk7CiAJaWYgKGVycikKQEAgLTQyNywxMSArNDEyLDkgQEAgc3RhdGljIGludCBr
cDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAl3cml0ZXEoMHhGRkZGRkZG
RkZGRkZGRkZGLAogCSAgICAgICBwY2FyZC0+c3lzaW5mb19yZWdzX2Jhc2UgKyBSRUdfSU5URVJS
VVBUX01BU0spOwogCi0JLyoKLQkgKiBTdGVwIDc6IENvbmZpZ3VyZSBQQ0kgdGhpbmdpZXMKLQkg
Ki8KIAkvLyBsZXQgdGhlIGNhcmQgbWFzdGVyIFBDSWUKIAlwY2lfc2V0X21hc3RlcihwY2FyZC0+
cGRldik7CisKIAkvLyBlbmFibGUgSU8gYW5kIG1lbSBpZiBub3QgYWxyZWFkeSBkb25lCiAJcGNp
X3JlYWRfY29uZmlnX3dvcmQocGNhcmQtPnBkZXYsIFBDSV9DT01NQU5ELCAmcmVndmFsKTsKIAly
ZWd2YWwgfD0gKFBDSV9DT01NQU5EX0lPIHwgUENJX0NPTU1BTkRfTUVNT1JZKTsKQEAgLTQ2Niw5
ICs0NDksNiBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpw
ZGV2LAogCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsCiAJCSJVc2luZyBETUEgbWFzayAlMGxs
eFxuIiwgZG1hX2dldF9tYXNrKFBDQVJEX1RPX0RFVihwY2FyZCkpKTsKIAotCS8qCi0JICogU3Rl
cCA4OiBDb25maWd1cmUgSVJRcwotCSAqLwogCWVyciA9IHBjaV9lbmFibGVfbXNpKHBjYXJkLT5w
ZGV2KTsKIAlpZiAoZXJyIDwgMCkKIAkJZ290byBlcnJfdW5tYXBfZG1hOwpAQCAtNDgxLDI1ICs0
NjEsMTcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRl
diwKIAkJZ290byBlcnJfZGlzYWJsZV9tc2k7CiAJfQogCi0JLyoKLQkgKiBTdGVwIDk6IFNldHVw
IHN5c2ZzIGF0dHJpYnV0ZXMKLQkgKi8KIAllcnIgPSBzeXNmc19jcmVhdGVfZmlsZXMoJnBkZXYt
PmRldi5rb2JqLCBrcF9hdHRyX2xpc3QpOwogCWlmIChlcnIpIHsKIAkJZGV2X2VycigmcGRldi0+
ZGV2LCAiRmFpbGVkIHRvIGFkZCBzeXNmcyBmaWxlczogJWRcbiIsIGVycik7CiAJCWdvdG8gZXJy
X2ZyZWVfaXJxOwogCX0KIAotCS8qCi0JICogU3RlcCAxMDogUHJvYmUgY29yZXMKLQkgKi8KIAll
cnIgPSBrcDIwMDBfcHJvYmVfY29yZXMocGNhcmQpOwogCWlmIChlcnIpCiAJCWdvdG8gZXJyX3Jl
bW92ZV9zeXNmczsKIAotCS8qCi0JICogU3RlcCAxMTogRW5hYmxlIElSUXMgaW4gSFcKLQkgKi8K
KwkvLyBFbmFibGUgSVJRcyBpbiBIVwogCXdyaXRlbChLUENfRE1BX0NBUkRfSVJRX0VOQUJMRSB8
IEtQQ19ETUFfQ0FSRF9VU0VSX0lOVEVSUlVQVF9NT0RFLAogCSAgICAgICBwY2FyZC0+ZG1hX2Nv
bW1vbl9yZWdzKTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
