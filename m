Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6694F4283A
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 15:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F1C68772F;
	Wed, 12 Jun 2019 13:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiW6bQGflbBo; Wed, 12 Jun 2019 13:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA598876D1;
	Wed, 12 Jun 2019 13:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BBDC1BF339
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 13:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4784387ECB
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 13:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xqEwJ85OuCkU for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 13:58:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7FDDE87EC5
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 13:58:49 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id q26so12213284lfc.3
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o8cjTTzgU1BuZShGhluhUvn/gIuNeI/1dPftVzArlb4=;
 b=1kg41o7pejzEwVCQwmQNwlFRESAl+8p1OISMOEaRutDSKWF0OmWnucdVBgLy5cNaPm
 Duxft+y78Z23F1GezmhlxSNnXMXkwj0HuZpv9ygTeBRAH0uuTh2meepHu7Ln/o8UKeiS
 Z4YHQ7UFFrX/8KgqvS+Q2FRcBdmAKDNWdfkvrDbXBJbfmbyvYV2tOrzYVEj37KzRFvgc
 Sg/StziPXtatCa1MG/30Y92Ri/ffKeeMGDCyTxe2e9tSBa8l2Ae/Rk0jWCqcMfB22ebT
 AT8AvAinT//R4V/NHLyqgetXMfR43lqEice0HhFzu5QRm1LQx+U10ulfYw8n7NdoOA3u
 vgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o8cjTTzgU1BuZShGhluhUvn/gIuNeI/1dPftVzArlb4=;
 b=PrrhwlWOdZk73Yy0XSbT+b9om/wTSxKCdu+WRs40kSI3vlxigwRkRikKK15dRo0nZ7
 WOYyqnISAO5LVhBqpVM1Yj1tfd0wOoUgqgRowKDbbHJoANPsMd2OK0xkTuutjbnkvHdb
 K7YUFcO5UZSdpWhq+psININ5G9kqTeyxpb0bl4+6U85P+tDLYgLaUHL+3QmieZB+n4qG
 39vu4UwnkLekAx6Y/Bekv6rzO/5w5RwgemDxcspdd6l4L00vt5wGhfhCr3/cZICiL34G
 ua8gtwDhlsCuE2uYnHm8C7VdZFFh6gym1hhwgM6UrkiGNbQsKdYfmCiEZ1kLxgewuFDd
 ccHQ==
X-Gm-Message-State: APjAAAUOREtrmWYz2fDc2+jnxLUKwEa7IPjoAu+lcTs3DigizR99xay9
 V4wsXsfNIbpdoQQeR2jS6BP2LQ==
X-Google-Smtp-Source: APXvYqyjJ7GiWqxfDesRDknJ+PtFKayBgD0Ui4A0cRPWAMtWNbCFAuxs5zr0e87/V0RWBVJTTGNKIA==
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr28268495lfm.61.1560347927201; 
 Wed, 12 Jun 2019 06:58:47 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x194sm2621999lfa.64.2019.06.12.06.58.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 06:58:46 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] staging: kpc2000: improve label names in
 kp2000_pcie_probe
Date: Wed, 12 Jun 2019 15:58:35 +0200
Message-Id: <20190612135836.23009-2-simon@nikanor.nu>
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
