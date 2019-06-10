Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3713BD4E
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 22:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2322A87A77;
	Mon, 10 Jun 2019 20:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1YuYWNJKaDtI; Mon, 10 Jun 2019 20:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 318E986FBB;
	Mon, 10 Jun 2019 20:06:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 912031BF418
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 20:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E2EA86A1E
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 20:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pMhERD4azI6S for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 20:05:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 878A6869CA
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 20:05:53 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id m15so7546551lfh.4
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 13:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o8cjTTzgU1BuZShGhluhUvn/gIuNeI/1dPftVzArlb4=;
 b=QYdj7V4lP67FJgVpeGUaqygtpHvJiO4mMIPYjzAIll4ccqt4MgSXVwiwXDcQA+48gb
 o4mrlI34lAQLvFrAoDerkSZHg/11DIreaNfD12EjORoLsEwtNXEPYqEiOZGZI7jHR9Be
 /X0DaYQG4hiMqj3oe99awt+DoR2rUhqr9M6VoILd3SIOvAK1P6PJK++PQ9kcjf5OYUuC
 gywlYFHjiEmZ3vZvIDnbd0LbDmIhHezNtsLaQXmErGNYan2lnXZpnaOY8/cnjB7RWlck
 C3pINPXcBTZbWGZiL3bnl4wJ9M5la5e8FW2gNd/gPuQrbFZh3G/ni8KjseneeSFbG34l
 3J1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o8cjTTzgU1BuZShGhluhUvn/gIuNeI/1dPftVzArlb4=;
 b=b05buxnmeD9xKyZCgDB2rauFcfxCHY34cbx825Fnvj9F9levLdgJHB3EPkCcVCRQ8J
 8X3WFLNJqnbYgvLFT2x1OCX/s/iPmXoYtf2DqbSzSmw6TC+r+i5afKDCdXvkWOOPctAA
 m9lWHzrKZji5NN7bOvpPbwBwzF+6/tqQJA7nUT4cn5aNWURxFxzCX9eoXXrRLpVoI6gD
 7YOWxq4OBMS/9bxst1WZOb7HoM4cnTGrbK4Fuqfn7XTrsb83tOs4SC8HdPP7kk5ezUqn
 t8EYDSLMJZoYFX82TIV1obvgXHDSQZa13EyV8RXXqJGIIMNq27I6DD+VEXqqv2ujgfkO
 2gWQ==
X-Gm-Message-State: APjAAAUOT45VvXuS1ArLtVmUc0lhYRDXRi2rGZNhLs9NXBwvcgV8MTXC
 FIHB+q8yCKeuTFL+xQ/phsUkmg==
X-Google-Smtp-Source: APXvYqwFcZoOa+Z0ZKunqM+Xn+r1CTxCIDoyomv6c1ohnEh/lyKdnoXRCTxExq82c+O8DiKOVyx+cg==
X-Received: by 2002:ac2:5337:: with SMTP id f23mr37040948lfh.15.1560197151945; 
 Mon, 10 Jun 2019 13:05:51 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id f4sm2157079ljm.13.2019.06.10.13.05.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 13:05:51 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: kpc2000: improve label names in kp2000_pcie_probe
Date: Mon, 10 Jun 2019 22:05:34 +0200
Message-Id: <20190610200535.31820-2-simon@nikanor.nu>
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

VXNlIHNlbGYtZXhwbGFuYXRvcnkgbGFiZWwgbmFtZXMgaW5zdGVhZCBvZiB0aGUgZ2VuZXJpYyBu
dW1iZXJlZCBvbmVzLAp0byBtYWtlIGl0IGVhc2llciB0byBmb2xsb3cgYW5kIHVuZGVyc3RhbmQg
dGhlIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9y
Lm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIHwgNDIgKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCsp
LCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NvcmUuYyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCmlu
ZGV4IDliOWIyOWFjOTBjNS4uZWU2YjliZTcxMjdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NvcmUuYwpAQCAtMzI3LDcgKzMyNyw3IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVf
cHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJaWYgKGVyciA8IDApIHsKIAkJZGV2X2Vycigm
cGRldi0+ZGV2LCAicHJvYmU6IGZhaWxlZCB0byBnZXQgY2FyZCBudW1iZXIgKCVkKVxuIiwKIAkJ
CWVycik7Ci0JCWdvdG8gb3V0MjsKKwkJZ290byBlcnJfZnJlZV9wY2FyZDsKIAl9CiAJcGNhcmQt
PmNhcmRfbnVtID0gZXJyOwogCXNjbnByaW50ZihwY2FyZC0+bmFtZSwgMTYsICJrcGNhcmQldSIs
IHBjYXJkLT5jYXJkX251bSk7CkBAIC0zNDYsNyArMzQ2LDcgQEAgc3RhdGljIGludCBrcDIwMDBf
cGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJZGV2X2VycigmcGNhcmQtPnBkZXYt
PmRldiwKIAkJCSJwcm9iZTogZmFpbGVkIHRvIGVuYWJsZSBQQ0lFMjAwMCBQQ0llIGRldmljZSAo
JWQpXG4iLAogCQkJZXJyKTsKLQkJZ290byBvdXQzOworCQlnb3RvIGVycl9yZW1vdmVfaWRhOwog
CX0KIAogCS8qCkBAIC0zNjAsNyArMzYwLDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9i
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJZGV2X2VycigmcGNhcmQtPnBkZXYtPmRldiwKIAkJ
CSJwcm9iZTogUkVHX0JBUiBjb3VsZCBub3QgcmVtYXAgbWVtb3J5IHRvIHZpcnR1YWwgc3BhY2Vc
biIpOwogCQllcnIgPSAtRU5PREVWOwotCQlnb3RvIG91dDQ7CisJCWdvdG8gZXJyX2Rpc2FibGVf
ZGV2aWNlOwogCX0KIAlkZXZfZGJnKCZwY2FyZC0+cGRldi0+ZGV2LAogCQkicHJvYmU6IFJFR19C
QVIgdmlydCBoYXJkd2FyZSBhZGRyZXNzIHN0YXJ0IFslcF1cbiIsCkBAIC0zNzMsNyArMzczLDcg
QEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJ
CSJwcm9iZTogZmFpbGVkIHRvIGFjcXVpcmUgUENJIHJlZ2lvbiAoJWQpXG4iLAogCQkJZXJyKTsK
IAkJZXJyID0gLUVOT0RFVjsKLQkJZ290byBvdXQ0OworCQlnb3RvIGVycl9kaXNhYmxlX2Rldmlj
ZTsKIAl9CiAKIAlwY2FyZC0+cmVnc19iYXNlX3Jlc291cmNlLnN0YXJ0ID0gcmVnX2Jhcl9waHlz
X2FkZHI7CkBAIC0zOTMsNyArMzkzLDcgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkJZGV2X2VycigmcGNhcmQtPnBkZXYtPmRldiwKIAkJCSJw
cm9iZTogRE1BX0JBUiBjb3VsZCBub3QgcmVtYXAgbWVtb3J5IHRvIHZpcnR1YWwgc3BhY2VcbiIp
OwogCQllcnIgPSAtRU5PREVWOwotCQlnb3RvIG91dDU7CisJCWdvdG8gZXJyX3VubWFwX3JlZ3M7
CiAJfQogCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsCiAJCSJwcm9iZTogRE1BX0JBUiB2aXJ0
IGhhcmR3YXJlIGFkZHJlc3Mgc3RhcnQgWyVwXVxuIiwKQEAgLTQwNyw3ICs0MDcsNyBAQCBzdGF0
aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCQlkZXZfZXJy
KCZwY2FyZC0+cGRldi0+ZGV2LAogCQkJInByb2JlOiBmYWlsZWQgdG8gYWNxdWlyZSBQQ0kgcmVn
aW9uICglZClcbiIsIGVycik7CiAJCWVyciA9IC1FTk9ERVY7Ci0JCWdvdG8gb3V0NTsKKwkJZ290
byBlcnJfdW5tYXBfcmVnczsKIAl9CiAKIAlwY2FyZC0+ZG1hX2Jhc2VfcmVzb3VyY2Uuc3RhcnQg
PSBkbWFfYmFyX3BoeXNfYWRkcjsKQEAgLTQyMSw3ICs0MjEsNyBAQCBzdGF0aWMgaW50IGtwMjAw
MF9wY2llX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCXBjYXJkLT5zeXNpbmZvX3JlZ3Nf
YmFzZSA9IHBjYXJkLT5yZWdzX2Jhcl9iYXNlOwogCWVyciA9IHJlYWRfc3lzdGVtX3JlZ3MocGNh
cmQpOwogCWlmIChlcnIpCi0JCWdvdG8gb3V0NjsKKwkJZ290byBlcnJfdW5tYXBfZG1hOwogCiAJ
Ly8gRGlzYWJsZSBhbGwgInVzZXIiIGludGVycnVwdHMgYmVjYXVzZSB0aGV5J3JlIG5vdCB1c2Vk
IHlldC4KIAl3cml0ZXEoMHhGRkZGRkZGRkZGRkZGRkZGLApAQCAtNDYxLDcgKzQ2MSw3IEBAIHN0
YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJaWYgKGVy
cikgewogCQlkZXZfZXJyKCZwY2FyZC0+cGRldi0+ZGV2LAogCQkJIkNBTk5PVCB1c2UgRE1BIG1h
c2sgJTBsbHhcbiIsIERNQV9CSVRfTUFTSyg2NCkpOwotCQlnb3RvIG91dDc7CisJCWdvdG8gZXJy
X3VubWFwX2RtYTsKIAl9CiAJZGV2X2RiZygmcGNhcmQtPnBkZXYtPmRldiwKIAkJIlVzaW5nIERN
QSBtYXNrICUwbGx4XG4iLCBkbWFfZ2V0X21hc2soUENBUkRfVE9fREVWKHBjYXJkKSkpOwpAQCAt
NDcxLDE0ICs0NzEsMTQgQEAgc3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwKIAkgKi8KIAllcnIgPSBwY2lfZW5hYmxlX21zaShwY2FyZC0+cGRldik7CiAJ
aWYgKGVyciA8IDApCi0JCWdvdG8gb3V0OGE7CisJCWdvdG8gZXJyX3VubWFwX2RtYTsKIAogCXJ2
ID0gcmVxdWVzdF9pcnEocGNhcmQtPnBkZXYtPmlycSwga3AyMDAwX2lycV9oYW5kbGVyLCBJUlFG
X1NIQVJFRCwKIAkJCSBwY2FyZC0+bmFtZSwgcGNhcmQpOwogCWlmIChydikgewogCQlkZXZfZXJy
KCZwY2FyZC0+cGRldi0+ZGV2LAogCQkJIiVzOiBmYWlsZWQgdG8gcmVxdWVzdF9pcnE6ICVkXG4i
LCBfX2Z1bmNfXywgcnYpOwotCQlnb3RvIG91dDhiOworCQlnb3RvIGVycl9kaXNhYmxlX21zaTsK
IAl9CiAKIAkvKgpAQCAtNDg3LDcgKzQ4Nyw3IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJv
YmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJZXJyID0gc3lzZnNfY3JlYXRlX2ZpbGVzKCZwZGV2
LT5kZXYua29iaiwga3BfYXR0cl9saXN0KTsKIAlpZiAoZXJyKSB7CiAJCWRldl9lcnIoJnBkZXYt
PmRldiwgIkZhaWxlZCB0byBhZGQgc3lzZnMgZmlsZXM6ICVkXG4iLCBlcnIpOwotCQlnb3RvIG91
dDk7CisJCWdvdG8gZXJyX2ZyZWVfaXJxOwogCX0KIAogCS8qCkBAIC00OTUsNyArNDk1LDcgQEAg
c3RhdGljIGludCBrcDIwMDBfcGNpZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAkgKi8K
IAllcnIgPSBrcDIwMDBfcHJvYmVfY29yZXMocGNhcmQpOwogCWlmIChlcnIpCi0JCWdvdG8gb3V0
MTA7CisJCWdvdG8gZXJyX3JlbW92ZV9zeXNmczsKIAogCS8qCiAJICogU3RlcCAxMTogRW5hYmxl
IElSUXMgaW4gSFcKQEAgLTUwNiwyOCArNTA2LDI2IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVf
cHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJbXV0ZXhfdW5sb2NrKCZwY2FyZC0+c2VtKTsK
IAlyZXR1cm4gMDsKIAotb3V0MTA6CitlcnJfcmVtb3ZlX3N5c2ZzOgogCXN5c2ZzX3JlbW92ZV9m
aWxlcygmcGRldi0+ZGV2LmtvYmosIGtwX2F0dHJfbGlzdCk7Ci1vdXQ5OgorZXJyX2ZyZWVfaXJx
OgogCWZyZWVfaXJxKHBjYXJkLT5wZGV2LT5pcnEsIHBjYXJkKTsKLW91dDhiOgorZXJyX2Rpc2Fi
bGVfbXNpOgogCXBjaV9kaXNhYmxlX21zaShwY2FyZC0+cGRldik7Ci1vdXQ4YToKLW91dDc6Ci1v
dXQ2OgorZXJyX3VubWFwX2RtYToKIAlpb3VubWFwKHBjYXJkLT5kbWFfYmFyX2Jhc2UpOwogCXBj
aV9yZWxlYXNlX3JlZ2lvbihwZGV2LCBETUFfQkFSKTsKIAlwY2FyZC0+ZG1hX2Jhcl9iYXNlID0g
TlVMTDsKLW91dDU6CitlcnJfdW5tYXBfcmVnczoKIAlpb3VubWFwKHBjYXJkLT5yZWdzX2Jhcl9i
YXNlKTsKIAlwY2lfcmVsZWFzZV9yZWdpb24ocGRldiwgUkVHX0JBUik7CiAJcGNhcmQtPnJlZ3Nf
YmFyX2Jhc2UgPSBOVUxMOwotb3V0NDoKK2Vycl9kaXNhYmxlX2RldmljZToKIAlwY2lfZGlzYWJs
ZV9kZXZpY2UocGNhcmQtPnBkZXYpOwotb3V0MzoKK2Vycl9yZW1vdmVfaWRhOgogCW11dGV4X3Vu
bG9jaygmcGNhcmQtPnNlbSk7CiAJaWRhX3NpbXBsZV9yZW1vdmUoJmNhcmRfbnVtX2lkYSwgcGNh
cmQtPmNhcmRfbnVtKTsKLW91dDI6CitlcnJfZnJlZV9wY2FyZDoKIAlrZnJlZShwY2FyZCk7CiAJ
cmV0dXJuIGVycjsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
