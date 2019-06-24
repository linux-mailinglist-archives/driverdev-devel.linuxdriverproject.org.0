Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E60ED50610
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 11:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A086D844D4;
	Mon, 24 Jun 2019 09:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jvPWOmyRx9y; Mon, 24 Jun 2019 09:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09324844E0;
	Mon, 24 Jun 2019 09:47:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 135301BF40D
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 09:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E140844E0
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 09:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wz7_jgpb05EE for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 09:47:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1E2D844D4
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 09:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1561369632;
 bh=v9IXSbIiVGRRWMpAUNdEZIILYsiZ+tvHSdo7MoRM1ac=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gGqbMZjgglQ2rnqmzY11Gklzz5Ngl1jTDCCKrGr6Qsk612av43RQG/gVhX9aCwVFa
 Ro0m2gVmMuqD6pnqGo1ipZN5fCOOAsgczueG7CSDLZu9rYqk/jhwifIQsccqLeh2fD
 iTwvgiSeyVlggFf62V9UEW3hesgDCp3Nu38hH5AM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from lab-pc08.sra.uni-hannover.de ([130.75.33.87]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MTPn1-1i7lwN1sdb-00SQR9; Mon, 24 Jun 2019 11:47:12 +0200
From: =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] drivers/staging/rtl8192u: adjust block comments
Date: Mon, 24 Jun 2019 11:46:40 +0200
Message-Id: <20190624094640.5459-3-muellerch-privat@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624094640.5459-1-muellerch-privat@web.de>
References: <20190620113308.GA16195@kroah.com>
 <20190624094640.5459-1-muellerch-privat@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:e149tY6k836nlGBWHz92KE8e9eBplRZ2XBv1pgTb/uCRLbNtqz/
 I+QYm3t6Oseza5qyWVTMRrpGoNLKjF3qEija3q+ITH6HzpHGnVme5KartN2UTYGvn5JZs8q
 hv2Maihj9iPEAmwGh7pzvZrHY9LjuIZtmzuMPQVzr2FpbFVgLCA6a01ExgJjJON8kFGfSlJ
 mlbauFp0k+nanVk7D0gFg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LnGiBRdn9N4=:dI/cVEJgJPSrvdV6ReSJZ2
 fUHw4tnnCSUKZH/z2v0YfpAt+zoCkf1B0Dds6MvqVGyypwzTLQjDXO3s3iVQ9wBuLPIFtSc/r
 3Gc31T7s99Q30OvYapTGlzLnXz2K7YCNHu+epLfzCybtMfOniPzKyal9EafbMInP2jCcoei20
 D65kRaFNDQRQoGgeSwkAaq8jCoKFqjs3YzIsXk4vnijhgQA/u9jcSccy7f9oWNpHBUckfNJ1+
 8iZCdowQ6zYf4N+epGmNTckYC5xboz0cdlGX4iPe4/eTgvHSO+UZRSMX1l6DMvifj+zbUyqe7
 EjwDAY5rSea+DB1Kz8I4F6j//i8Jx1CPSGDFrDTBcn+IcmgeBxmYqfZwXt8N1ttksMeRboJTe
 32nhDqP7Hw7TG5d4Ihmd08efvYZpSodtlYmnYmBTqmvuSbHb1baHDdCoSdiyqfzw/aNsrQHfK
 iPxl3x6NuVKFI3gIo7w765V47zkm0zwgVEscleixhSiP0dteAoE7lXN6c/BarER0G9n6jgzrj
 vww82cqQDXespBDFIU0GatP/hZXKgv7upWIx/g5FHMrlF7aykvZNF0UzfGI0cv2Oq8pJO61y/
 l30t8QxKK8Vj0b5otQAzz9dMEryo0jLNAq1zjNeZChVasvj72DbcpLUyEy1SqKwH+TyP+BxnW
 mNwRi6qKLkYD1rDu6HrmAqW+578sul8LP4uvNFBgP/W4J6JRQraczkIpeaNx+JaviG5woZTw4
 h+bdVTlRFigYlzjk+Yn6XdKcJHlw/4fg0ZlkewTv+QkFK5xflNhhl/gSSvr7yxRpYn+7hR//U
 2SGIxzboPmH0PTXQvnbulH9+New2MDss5Ort7KFP7+uCDVzO+oom2abzQHZbIEtz+NrVG0tyX
 vm85Xkk0wUzFMKKafyA/QegSYVMJG9P0WLy8P48J7y0PiAsTyMTLztbmmHzahjojVst9jswdG
 eK1uqWTW5ycvHfVEgSjhYRW8KU4ifaMkbtARCnXi86X8F2ww74b02
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org,
 johnfwhitmore@gmail.com,
 =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlIGNvZGluZy1zdHlsZXMucnN0IHN0YXRlcywgdGhhdCBtdWx0aWxpbmUgY29tbWVudHMgc2hv
dWxkCmFsbHdheXMgY29udGFpbiBhIGxlYWRpbmcgIioiIGluIGVhY2ggbGluZS4KRm9yIG11bHRp
bGluZSBjb21tZW50cyBpbiBnZW5lcmFsIHRoZXkKCi8qCiAqIHNob3VsZCBsb29rCiAqIGxpa2Ug
dGhpcy4KICovCgpGb3IgbXVsdGlsaW5lIGNvbW1lbnRzIGluIGVpdGhlciBuZXQvIG9yIGRyaXZl
cnMvbmV0LyBob3dldmVyLAp0aGV5IHNob3VsZAoKLyogb21pdAogKiB0aGUgZmlyc3QKICogZW1w
dHkgbGluZS4KICovCgpTaW5jZSB0aGlzIGZpbGUgaXMgcGFydCBvZiBhIG5ldHdvcmtpbmcgZHJp
dmVyLCB0aGUgZ29hbCBmb3IgaXQgd291bGQKYmUgdG8gcmVzaWRlIGluIGRyaXZlcnMvbmV0LyBv
bmUgZGF5LgoKVGhpcyBwYXRjaCBjaGFuZ2VzIGNvbW1lbnRzLCB0aGF0IHdlcmUgaW4gbmVpdGhl
ciBmb3JtIG9mIHRoZSB0d28gbGlzdGVkCmFib3ZlLCB0byBoYXZlIHRoZSBzdHlsZSB0aGF0IGlz
IHNwZWNpZmllZCBmb3IgZHJpdmVycy9uZXQvLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIE3D
vGxsZXIgPG11ZWxsZXJjaC1wcml2YXRAd2ViLmRlPgpTaWduZWQtb2ZmLWJ5OiBGZWxpeCBUcm9t
bWVyIDxmZWxpeC50cm9tbWVyQGhvdG1haWwuZGU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3J0bDgx
OTJ1L3I4MTkyVV9kbS5jIHwgMjggKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfZG0uYyBiL2RyaXZlcnMvc3RhZ2luZy9y
dGw4MTkydS9yODE5MlVfZG0uYwppbmRleCA4NjIxNWZlZThmMGIuLmNiNmM2NTNlNjI0ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4MTkyVV9kbS5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9ydGw4MTkydS9yODE5MlVfZG0uYwpAQCAtMzMyLDkgKzMzMiwxMCBAQCBzdGF0
aWMgdm9pZCBkbV9jaGVja19yYXRlX2FkYXB0aXZlKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCiAJ
CQkJKChic2hvcnRfZ2lfZW5hYmxlZCkgPyBCSVQoMzEpIDogMCk7CgogCQkvKiAyMDA3LzEwLzA4
IE1IIFdlIHN1cHBvcnQgUkEgc21vb3RoIHNjaGVtZSBub3cuIFdoZW4gaXQgaXMgdGhlIGZpcnN0
Ci0JCSAgIHRpbWUgdG8gbGluayB3aXRoIEFQLiBXZSB3aWxsIG5vdCBjaGFuZ2UgdXBwZXIvbG93
ZXIgdGhyZXNob2xkLiBJZgotCQkgICBTVEEgc3RheSBpbiBoaWdoIG9yIGxvdyBsZXZlbCwgd2Ug
bXVzdCBjaGFuZ2UgdHdvIGRpZmZlcmVudCB0aHJlc2hvbGQKLQkJICAgdG8gcHJldmVudCBqdW1w
aW5nIGZyZXF1ZW50bHkuICovCisJCSAqIHRpbWUgdG8gbGluayB3aXRoIEFQLiBXZSB3aWxsIG5v
dCBjaGFuZ2UgdXBwZXIvbG93ZXIgdGhyZXNob2xkLiBJZgorCQkgKiBTVEEgc3RheSBpbiBoaWdo
IG9yIGxvdyBsZXZlbCwgd2UgbXVzdCBjaGFuZ2UgdHdvIGRpZmZlcmVudCB0aHJlc2hvbGQKKwkJ
ICogdG8gcHJldmVudCBqdW1waW5nIGZyZXF1ZW50bHkuCisJCSAqLwogCQlpZiAocHJhLT5yYXRy
X3N0YXRlID09IERNX1JBVFJfU1RBX0hJR0gpIHsKIAkJCUhpZ2hSU1NJVGhyZXNoRm9yUkEJPSBw
cmEtPmhpZ2gybG93X3Jzc2lfdGhyZXNoX2Zvcl9yYTsKIAkJCUxvd1JTU0lUaHJlc2hGb3JSQQk9
IChwcml2LT5DdXJyZW50Q2hhbm5lbEJXICE9IEhUX0NIQU5ORUxfV0lEVEhfMjApID8KQEAgLTE3
MzgsMTAgKzE3MzksMTIgQEAgc3RhdGljIHZvaWQgZG1fY3RybF9pbml0Z2Fpbl9ieXJzc2lfYnlf
ZndmYWxzZV9hbGFybSgKIAlwSGFsRGF0YS0+VW5kZWNvcmF0ZWRTbW9vdGhlZFBXREIsIERNX0Rp
Z1RhYmxlLlJzc2lMb3dUaHJlc2gsCiAJRE1fRGlnVGFibGUuUnNzaUhpZ2hUaHJlc2gsIERNX0Rp
Z1RhYmxlLkRpZ19TdGF0ZSk7Ki8KIAkvKiAxLiBXaGVuIFJTU0kgZGVjcmVhc2UsIFdlIGhhdmUg
dG8ganVkZ2UgaWYgaXQgaXMgc21hbGxlciB0aGFuIGEgdGhyZXNob2xkCi0JCSAgYW5kIHRoZW4g
ZXhlY3V0ZSB0aGUgc3RlcCBiZWxvdy4gKi8KKwkgKiBhbmQgdGhlbiBleGVjdXRlIHRoZSBzdGVw
IGJlbG93LgorCSAqLwogCWlmIChwcml2LT51bmRlY29yYXRlZF9zbW9vdGhlZF9wd2RiIDw9IGRt
X2RpZ3RhYmxlLnJzc2lfbG93X3RocmVzaCkgewogCQkvKiAyMDA4LzAyLzA1IE1IIFdoZW4gd2Ug
ZXhlY3V0ZSBzaWxlbnQgcmVzZXQsIHRoZSBESUcgUEhZIHBhcmFtZXRlcnMKLQkJICAgd2lsbCBi
ZSByZXNldCB0byBpbml0IHZhbHVlLiBXZSBtdXN0IHByZXZlbnQgdGhlIGNvbmRpdGlvbi4gKi8K
KwkJICogd2lsbCBiZSByZXNldCB0byBpbml0IHZhbHVlLiBXZSBtdXN0IHByZXZlbnQgdGhlIGNv
bmRpdGlvbi4KKwkJICovCiAJCWlmIChkbV9kaWd0YWJsZS5kaWdfc3RhdGUgPT0gRE1fU1RBX0RJ
R19PRkYgJiYKIAkJICAgIChwcml2LT5yZXNldF9jb3VudCA9PSByZXNldF9jbnQpKSB7CiAJCQly
ZXR1cm47CkBAIC0xNzg2LDcgKzE3ODksOCBAQCBzdGF0aWMgdm9pZCBkbV9jdHJsX2luaXRnYWlu
X2J5cnNzaV9ieV9md2ZhbHNlX2FsYXJtKAogCX0KCiAJLyogMi4gV2hlbiBSU1NJIGluY3JlYXNl
LCBXZSBoYXZlIHRvIGp1ZGdlIGlmIGl0IGlzIGxhcmdlciB0aGFuIGEgdGhyZXNob2xkCi0JCSAg
YW5kIHRoZW4gZXhlY3V0ZSB0aGUgc3RlcCBiZWxvdy4gICovCisJICogYW5kIHRoZW4gZXhlY3V0
ZSB0aGUgc3RlcCBiZWxvdy4KKwkgKi8KIAlpZiAocHJpdi0+dW5kZWNvcmF0ZWRfc21vb3RoZWRf
cHdkYiA+PSBkbV9kaWd0YWJsZS5yc3NpX2hpZ2hfdGhyZXNoKSB7CiAJCXU4IHJlc2V0X2ZsYWcg
PSAwOwoKQEAgLTIyNTIsMTEgKzIyNTYsMTAgQEAgc3RhdGljIHZvaWQgZG1fY3RzdG9zZWxmKHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYpCiAJCXBIVEluZm8tPklPVEFjdGlvbiAmPSB+SFRfSU9UX0FD
VF9GT1JDRURfQ1RTMlNFTEY7CiAJCXJldHVybjsKIAl9Ci0JLyoKLQkxLiBVcGxpbmsKLQkyLiBM
aW5rc3lzMzUwL0xpbmtzeXMzMDBOCi0JMy4gPDUwIGRpc2FibGUsID41NSBlbmFibGUKLQkqLwor
CS8qIDEuIFVwbGluaworCSAqIDIuIExpbmtzeXMzNTAvTGlua3N5czMwME4KKwkgKiAzLiA8NTAg
ZGlzYWJsZSwgPjU1IGVuYWJsZQorCSAqLwoKIAlpZiAocEhUSW5mby0+SU9UUGVlciA9PSBIVF9J
T1RfUEVFUl9CUk9BRENPTSkgewogCQljdXJUeE9rQ250ID0gcHJpdi0+c3RhdHMudHhieXRlc3Vu
aWNhc3QgLSBsYXN0VHhPa0NudDsKQEAgLTIzMzMsNyArMjMzNiw4IEBAIHZvaWQgZG1fcmZfcGF0
aGNoZWNrX3dvcmtpdGVtY2FsbGJhY2soc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCXU4IHJm
cGF0aCA9IDAsIGk7CgogCS8qIDIwMDgvMDEvMzAgTUggQWZ0ZXIgZGlzY3Vzc2luZyB3aXRoIFNE
MyBKZXJyeSwgMHhjMDQvMHhkMDQgcmVnaXN0ZXIgd2lsbAotCSAgIGFsd2F5cyBiZSB0aGUgc2Ft
ZS4gV2Ugb25seSByZWFkIDB4YzA0IG5vdy4gKi8KKwkgKiBhbHdheXMgYmUgdGhlIHNhbWUuIFdl
IG9ubHkgcmVhZCAweGMwNCBub3cuCisJICovCiAJcmVhZF9uaWNfYnl0ZShkZXYsIDB4YzA0LCAm
cmZwYXRoKTsKCiAJLyogQ2hlY2sgQml0IDAtMywgaXQgbWVhbnMgaWYgUkYgQS1EIGlzIGVuYWJs
ZWQuICovCi0tCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
