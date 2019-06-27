Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D38157E3F
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 10:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93AEF85D56;
	Thu, 27 Jun 2019 08:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q32-WKzidsAZ; Thu, 27 Jun 2019 08:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98C3485C4A;
	Thu, 27 Jun 2019 08:34:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0D41BF3A3
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 08:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 429D686BB7
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 08:33:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEFkagG2OCQF for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 08:33:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B3C2786BAD
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 08:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1561624422;
 bh=v9IXSbIiVGRRWMpAUNdEZIILYsiZ+tvHSdo7MoRM1ac=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SXzO8Msv7iMJqbR3UIP+dVyQxI/DfWx8BwFgrOjMeB3S1+GxYtr3uEGxIfRayv8bT
 HTTAEzOU0lMQDd7CFiEp3bfu4swkawNQ8fem5772oJftn9LWYMCaXi5vqTRbw3E9i6
 TBF13rbkeWgv/zXpEIy2dLB/iaKlyaP9DbQrmXTg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from lab-pc08.sra.uni-hannover.de ([130.75.33.87]) by smtp.web.de
 (mrweb103 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LecRm-1iLjbs35W2-00qRZW; Thu, 27 Jun 2019 10:33:42 +0200
From: =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] drivers/staging/rtl8192u: style nonstyled comments
Date: Thu, 27 Jun 2019 10:33:36 +0200
Message-Id: <20190627083336.3897-2-muellerch-privat@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190627083336.3897-1-muellerch-privat@web.de>
References: <20190626015301.GA30966@kroah.com>
 <20190627083336.3897-1-muellerch-privat@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Fq22YNdqP3Q/Mz6bF5i7fBPgfCqJYEbrYnWYesndMAUDMAbkbwJ
 nitnIvPaqJDNlEszNy4+hYbZQEmZj6FIMTmdNbFk8JrGiRvbTFYiwV1eQZaWxLWIjHCC+gG
 cW89R/sZzSewcKKGGLkSZiNgFa2OkiqBiykvbZ6999+2oncjkj5u7pzONwikti9d5QRKgQ2
 Z3WLOEvN0fwk+8b40F5Ww==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GPMiKzP/3SQ=:nxn9jRTtfAyUWs28IJa9+S
 oxntDf7JW7ZmO59PT3G4wgJxmqAZU85ECDeDGfcZk0mKrl08UgxDYFBkudHoOk8Q9I7V1wHBq
 7BKJO5qM8Z+NSXocdi3xvzNO9qf7cD2P76siefYR2YJ2gkY4BuYIh1bDTTKBRUAsb0C8QEzFv
 24jcGJQpXTn3l98gXNcMWMQFVEKK5zoHmN+DOI/yt8IIQKHl6DfcaQa8qjrvhFzrC3cYbqSSA
 AlyhGvH/A5E5c6KEdVJ+Nmj2QkTa8XTSldfI6AUZdlXZF+sY/amgvGgDQnULsPYWv7LhGgZV2
 GjQ4QcZhUz4AEw8ItX+ZuTO2IFCpWs/Q1wSlcL52lBuihpWKncLSF/iGnKyVVwYvRpRqaUZcc
 LQYC9Ugj3viCAlE3fuKOGKQY3nV90k/rLMrgGASyADnC4AcM9I/yZn55sT9d81X2IU4u1lTt5
 TvOOfkP93DvJAYHwfIndkhn1WnAZEQKnd9blPB9Xg8ZmfhzFE891bhMpDgZoz2usVPErnxas0
 eDSsrGTShSU7LzIvepAfuoIOvdDAg8wh6uU0VMmNXvDwlr6DO5mBaKCrKbTl9qDZA9km5JovH
 PlUJ2saTh7Ajj7GZeLlllDfXSUlmY/r+RbjMjMJPKC1RnVzRzi67u++qY62zfDj3Zhss6eAp3
 B5FUDZmLFrc8Lw1BqJiGWDH7JaWpGsdAjSWLvT1e7ZLlYxicwnRtIhGYcpzUlI8/GaLkAmw26
 1hSpXL1rbLj99brOMtw5dw5USnF02L8H/V+KshUgnwRRk9KZhp2mP4T1KoKeaPQMRFG+Mmtb7
 WV+F99pCzvYYrETRstxwTVKgjW8uE5ausAahtbOlsxig3o8zYkgPBjlj4ASa4U6zmlZEBj06I
 S8XhM6Op9FRHl+zb0hms8BTQfDo0UUvzTTDZSPx6gStSd/VSjEuXnreUTPN6cl0ZtbLZkm/TO
 BWOPT4sKpLVkBsYMqGXJE3XKGE7UuKwtHFVzcScm6iS3YUb63PYdP
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
Cc: devel@driverdev.osuosl.org, Felix Trommer <felix.trommer@hotmail.de>,
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
