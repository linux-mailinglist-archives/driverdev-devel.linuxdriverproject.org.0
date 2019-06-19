Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B604B22E
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 08:36:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9BC585F4B;
	Wed, 19 Jun 2019 06:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYbPNouwPXDM; Wed, 19 Jun 2019 06:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D315C857BC;
	Wed, 19 Jun 2019 06:36:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC0371BF577
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 06:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A03EB853F2
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 06:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NyB0W6V36MRN for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 06:36:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E64784C5F
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 06:36:15 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id b11so11185201lfa.5
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 23:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tw9Y/vwN/nARE1RA9Z2C9HCqwYacrU1B+FDIn0dtVZQ=;
 b=1auTgZY3XXASfEB5dbWR7cin7TUrizNMayAe8EJtU+g2xVhoj90JKlrRoa7NhUs96r
 cIZ/6gso0BtyhVAysHmSYMPB53TJC9qwJmi2HuUwAlhqGILlA7rWM+u+ORxfRfEDUzUM
 ztcLvl6IiYfLhcWUpgDogw0rmQqBRURhPoNLV7/bfnWNBWkpHZ3t/N1WmRC3ZUBYajib
 96vS8sUYOsSzRsNui60qrgQMlRkkcu5fLtYt9vvU3b/pXUqS0P1DRDEOuIVwtkr3pvSc
 AXU4YluwYPU6RJ1/Vyd5SVa4fJIHhTMzdl1pOPPu7EfPSxyeuOzQ7VYGRNnIMOWLfHHe
 Jhvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tw9Y/vwN/nARE1RA9Z2C9HCqwYacrU1B+FDIn0dtVZQ=;
 b=i/sMfNMVGC4mNBY70R41vKJLNgtT/30EUWd7vYL2ywIT0P+k+h9wvQ0WMZcNGKdO5l
 dTnK/9dQ/fhz2mJlp1CaaO1TLYUK9pohacfQt2wJVfUkaz68hcFIZ2QdrWcSFuMECANK
 zr68uYnBOF98pY5KOBuGs+AAiYpNpQnGB8ySKPrSq1J+JpX0LJzb6pynpi0U52U0rxRw
 8zZXjsNhi5pIgT0PKKzKEEGjLUBYd0T6O+Sm1zAkW3bWLpNKidlymlRPI0MBsw4wvyG0
 SAyfZb6u1pMMK2Ij0wAAHyKU/BjZh3vl6qFKyJA0iQ3sS4vjr/qvZ3NrZnMmsAUtYzmt
 MulQ==
X-Gm-Message-State: APjAAAXZ+thCWMyo2pyfizM1DJQfstswo6HjDE99yOovps+Bam67HAU4
 /LuUPVDYyXceN/IVPmdhMKlDFQ==
X-Google-Smtp-Source: APXvYqy+AzgrU3SgLVZV/xfKl7uw0PejMMFf2xkI77ypcplvwpkZ2YdESYQkxrOcTs8eRRvafxeqPg==
X-Received: by 2002:ac2:5189:: with SMTP id u9mr60649520lfi.189.1560926173626; 
 Tue, 18 Jun 2019 23:36:13 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id k82sm2933092ljb.84.2019.06.18.23.36.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 23:36:13 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: simplify error handling in kp2000_pcie_probe
Date: Wed, 19 Jun 2019 08:36:07 +0200
Message-Id: <20190619063607.20722-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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

V2UgY2FuIGdldCByaWQgb2YgYSBmZXcgaW91bm1hcHMgaW4gdGhlIG1pZGRsZSBvZiB0aGUgZnVu
Y3Rpb24gYnkKcmUtb3JkZXJpbmcgdGhlIGVycm9yIGhhbmRsaW5nIGxhYmVscyBhbmQgYWRkaW5n
IHR3byBuZXcgbGFiZWxzLgoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2FuZHN0csO2bSA8c2ltb25A
bmlrYW5vci5udT4KLS0tCgpUaGlzIGNoYW5nZSBoYXMgbm90IGJlZW4gdGVzdGVkIGJlc2lkZXMg
YnkgY29tcGlsaW5nLiBJdCBtaWdodCBiZSBnb29kCnRvb2sgdGFrZSBhbiBleHRyYSBsb29rIHRv
IG1ha2Ugc3VyZSB0aGF0IEkgZ290IGV2ZXJ5dGhpbmcgcmlnaHQuCgpBbHNvLCB0aGlzIGNoYW5n
ZSB3YXMgcHJvcG9zZWQgYnkgRGFuIENhcnBlbnRlci4gU2hvdWxkIEkgYWRkIGFueXRoaW5nCmlu
IHRoZSBjb21taXQgbWVzc2FnZSB0byBzaG93IHRoaXM/CgotIFNpbW9uCgogZHJpdmVycy9zdGFn
aW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgfCAyMiArKysrKysrKysrLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgYi9kcml2ZXJzL3N0
YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYwppbmRleCA2MTBlYTU0OWQyNDAuLmNiMDVjY2E2
ODdlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMK
KysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKQEAgLTM1MSwxMiAr
MzUxLDExIEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsCiAKIAllcnIgPSBwY2lfcmVxdWVzdF9yZWdpb24ocGNhcmQtPnBkZXYsIFJFR19CQVIsIEtQ
X0RSSVZFUl9OQU1FX0tQMjAwMCk7CiAJaWYgKGVycikgewotCQlpb3VubWFwKHBjYXJkLT5yZWdz
X2Jhcl9iYXNlKTsKIAkJZGV2X2VycigmcGNhcmQtPnBkZXYtPmRldiwKIAkJCSJwcm9iZTogZmFp
bGVkIHRvIGFjcXVpcmUgUENJIHJlZ2lvbiAoJWQpXG4iLAogCQkJZXJyKTsKIAkJZXJyID0gLUVO
T0RFVjsKLQkJZ290byBlcnJfZGlzYWJsZV9kZXZpY2U7CisJCWdvdG8gZXJyX3VubWFwX3JlZ3M7
CiAJfQogCiAJcGNhcmQtPnJlZ3NfYmFzZV9yZXNvdXJjZS5zdGFydCA9IHJlZ19iYXJfcGh5c19h
ZGRyOwpAQCAtMzc0LDcgKzM3Myw3IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsCiAJCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsCiAJCQkicHJv
YmU6IERNQV9CQVIgY291bGQgbm90IHJlbWFwIG1lbW9yeSB0byB2aXJ0dWFsIHNwYWNlXG4iKTsK
IAkJZXJyID0gLUVOT0RFVjsKLQkJZ290byBlcnJfdW5tYXBfcmVnczsKKwkJZ290byBlcnJfcmVs
ZWFzZV9yZWdzOwogCX0KIAlkZXZfZGJnKCZwY2FyZC0+cGRldi0+ZGV2LAogCQkicHJvYmU6IERN
QV9CQVIgdmlydCBoYXJkd2FyZSBhZGRyZXNzIHN0YXJ0IFslcF1cbiIsCkBAIC0zODQsMTEgKzM4
MywxMCBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2
LAogCiAJZXJyID0gcGNpX3JlcXVlc3RfcmVnaW9uKHBjYXJkLT5wZGV2LCBETUFfQkFSLCAia3Ay
MDAwX3BjaWUiKTsKIAlpZiAoZXJyKSB7Ci0JCWlvdW5tYXAocGNhcmQtPmRtYV9iYXJfYmFzZSk7
CiAJCWRldl9lcnIoJnBjYXJkLT5wZGV2LT5kZXYsCiAJCQkicHJvYmU6IGZhaWxlZCB0byBhY3F1
aXJlIFBDSSByZWdpb24gKCVkKVxuIiwgZXJyKTsKIAkJZXJyID0gLUVOT0RFVjsKLQkJZ290byBl
cnJfdW5tYXBfcmVnczsKKwkJZ290byBlcnJfdW5tYXBfZG1hOwogCX0KIAogCXBjYXJkLT5kbWFf
YmFzZV9yZXNvdXJjZS5zdGFydCA9IGRtYV9iYXJfcGh5c19hZGRyOwpAQCAtNDAwLDcgKzM5OCw3
IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJ
cGNhcmQtPnN5c2luZm9fcmVnc19iYXNlID0gcGNhcmQtPnJlZ3NfYmFyX2Jhc2U7CiAJZXJyID0g
cmVhZF9zeXN0ZW1fcmVncyhwY2FyZCk7CiAJaWYgKGVycikKLQkJZ290byBlcnJfdW5tYXBfZG1h
OworCQlnb3RvIGVycl9yZWxlYXNlX2RtYTsKIAogCS8vIERpc2FibGUgYWxsICJ1c2VyIiBpbnRl
cnJ1cHRzIGJlY2F1c2UgdGhleSdyZSBub3QgdXNlZCB5ZXQuCiAJd3JpdGVxKDB4RkZGRkZGRkZG
RkZGRkZGRiwKQEAgLTQzOCwxNCArNDM2LDE0IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJv
YmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJaWYgKGVycikgewogCQlkZXZfZXJyKCZwY2FyZC0+
cGRldi0+ZGV2LAogCQkJIkNBTk5PVCB1c2UgRE1BIG1hc2sgJTBsbHhcbiIsIERNQV9CSVRfTUFT
Syg2NCkpOwotCQlnb3RvIGVycl91bm1hcF9kbWE7CisJCWdvdG8gZXJyX3JlbGVhc2VfZG1hOwog
CX0KIAlkZXZfZGJnKCZwY2FyZC0+cGRldi0+ZGV2LAogCQkiVXNpbmcgRE1BIG1hc2sgJTBsbHhc
biIsIGRtYV9nZXRfbWFzayhQQ0FSRF9UT19ERVYocGNhcmQpKSk7CiAKIAllcnIgPSBwY2lfZW5h
YmxlX21zaShwY2FyZC0+cGRldik7CiAJaWYgKGVyciA8IDApCi0JCWdvdG8gZXJyX3VubWFwX2Rt
YTsKKwkJZ290byBlcnJfcmVsZWFzZV9kbWE7CiAKIAlydiA9IHJlcXVlc3RfaXJxKHBjYXJkLT5w
ZGV2LT5pcnEsIGtwMjAwMF9pcnFfaGFuZGxlciwgSVJRRl9TSEFSRUQsCiAJCQkgcGNhcmQtPm5h
bWUsIHBjYXJkKTsKQEAgLTQ3OCwxNCArNDc2LDE0IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVf
cHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJZnJlZV9pcnEocGNhcmQtPnBkZXYtPmlycSwg
cGNhcmQpOwogZXJyX2Rpc2FibGVfbXNpOgogCXBjaV9kaXNhYmxlX21zaShwY2FyZC0+cGRldik7
CitlcnJfcmVsZWFzZV9kbWE6CisJcGNpX3JlbGVhc2VfcmVnaW9uKHBkZXYsIERNQV9CQVIpOwog
ZXJyX3VubWFwX2RtYToKIAlpb3VubWFwKHBjYXJkLT5kbWFfYmFyX2Jhc2UpOwotCXBjaV9yZWxl
YXNlX3JlZ2lvbihwZGV2LCBETUFfQkFSKTsKLQlwY2FyZC0+ZG1hX2Jhcl9iYXNlID0gTlVMTDsK
K2Vycl9yZWxlYXNlX3JlZ3M6CisJcGNpX3JlbGVhc2VfcmVnaW9uKHBkZXYsIFJFR19CQVIpOwog
ZXJyX3VubWFwX3JlZ3M6CiAJaW91bm1hcChwY2FyZC0+cmVnc19iYXJfYmFzZSk7Ci0JcGNpX3Jl
bGVhc2VfcmVnaW9uKHBkZXYsIFJFR19CQVIpOwotCXBjYXJkLT5yZWdzX2Jhcl9iYXNlID0gTlVM
TDsKIGVycl9kaXNhYmxlX2RldmljZToKIAlwY2lfZGlzYWJsZV9kZXZpY2UocGNhcmQtPnBkZXYp
OwogZXJyX3JlbW92ZV9pZGE6Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
