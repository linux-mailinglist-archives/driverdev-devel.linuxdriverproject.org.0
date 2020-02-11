Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAC8158CC0
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:35:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D8B2855B5;
	Tue, 11 Feb 2020 10:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knUXjnRkH1Tf; Tue, 11 Feb 2020 10:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB19285569;
	Tue, 11 Feb 2020 10:35:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A87D31BF831
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5A1220447
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hWt2f2DU9Ajy for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id A7934204BC
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GzgB3DDSz204;
 Tue, 11 Feb 2020 11:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417302; bh=pM3kHma+Yvip/GLz2vbupcyRhREUkJGO1ZAbFLVGKU0=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=o6WsPurwin5fAaNOs8xOSe39rwq7VCDL8BRIpeupmWcrGT3UUVq7C295xB2OqqIK9
 YtyugyBobgVjLJfkP8Gz9/COu2sOtMFj/MQ85/p7BE+SHLlj2v/FFcb4cT7YLxRuw5
 WoKLDk/MhMhXaKxFXDKb0MxQVTZIL7R+jgmVEV1UVctj6VYLnpU8m75dLiZqMXVAQI
 x4YNlv9whNIIF2g2xuFt4REcayXPw+AwEIpSC8PfJL9JdVySBDiB/wWJqmEfvmcqms
 Nf56LrQNu1suABUD6fmawP/SZQGTdPoUz1EDPs3qtNksS24WBd9bEDLCRl4kyoL4OF
 cVWMLBjvFKsZQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:35:02 +0100
Message-Id: <0e6dda06f145676861860f073a53dc95987c7ab5.1581416843.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 3/6] staging: wfx: add proper "compatible" string
MIME-Version: 1.0
To: =?UTF-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkICJjb21wYXRpYmxlIiBzdHJpbmcgbWF0Y2hpbmcgInZlbmRvcixjaGlwIiB0ZW1wbGF0ZSBh
bmQgcHJvcGVyCkdQSU8gZmxhZ3MgaGFuZGxpbmcuIEtlZXAgc3VwcG9ydCBmb3Igb2xkIG5hbWUg
YW5kIHJlc2V0IHBvbGFyaXR5CmZvciBvbGRlciBkZXZpY2V0cmVlcy4KCkNjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnICAgIyBkM2E1YmNiNGExN2YgKCJncGlvOiBhZGQgZ3Bpb2RfdG9nZ2xlX2Fj
dGl2ZV9sb3coKSIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCkZpeGVzOiAwMDk2MjE0YTU5
YTcgKCJzdGFnaW5nOiB3Zng6IGFkZCBzdXBwb3J0IGZvciBJL08gYWNjZXNzIikKU2lnbmVkLW9m
Zi1ieTogTWljaGHFgiBNaXJvc8WCYXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIC4u
Li9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0ICAgICAgICAgIHwgIDcgKysr
Ky0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMgICAgICAgICAgICAgICAgICAgICAg
fCAxNCArKysrKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9zaWxpYWJzLHdmeC50eHQgYi9k
cml2ZXJzL3N0YWdpbmcvd2Z4L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
d2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0CmluZGV4IDI2ZGU2NzYyYjk0Mi4uNTJmOTc2NzNkYTFl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0CisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9z
aWxpYWJzLHdmeC50eHQKQEAgLTYsNyArNiw3IEBAIFNQSQogWW91IGhhdmUgdG8gZGVjbGFyZSB0
aGUgV0Z4eHggY2hpcCBpbiB5b3VyIGRldmljZSB0cmVlLgogCiBSZXF1aXJlZCBwcm9wZXJ0aWVz
OgotIC0gY29tcGF0aWJsZTogU2hvdWxkIGJlICJzaWxhYnMsd2Z4LXNwaSIKKyAtIGNvbXBhdGli
bGU6IFNob3VsZCBiZSAic2lsYWJzLHdmMjAwIgogIC0gcmVnOiBDaGlwIHNlbGVjdCBhZGRyZXNz
IG9mIGRldmljZQogIC0gc3BpLW1heC1mcmVxdWVuY3k6IE1heGltdW0gU1BJIGNsb2NraW5nIHNw
ZWVkIG9mIGRldmljZSBpbiBIegogIC0gaW50ZXJydXB0cy1leHRlbmRlZDogU2hvdWxkIGNvbnRh
aW4gaW50ZXJydXB0IGxpbmUgKGludGVycnVwdC1wYXJlbnQgKwpAQCAtMTUsNiArMTUsNyBAQCBS
ZXF1aXJlZCBwcm9wZXJ0aWVzOgogT3B0aW9uYWwgcHJvcGVydGllczoKICAtIHJlc2V0LWdwaW9z
OiBwaGFuZGxlIG9mIGdwaW8gdGhhdCB3aWxsIGJlIHVzZWQgdG8gcmVzZXQgY2hpcCBkdXJpbmcg
cHJvYmUuCiAgICBXaXRob3V0IHRoaXMgcHJvcGVydHksIHlvdSBtYXkgZW5jb3VudGVyIGlzc3Vl
cyB3aXRoIHdhcm0gYm9vdC4KKyAgIChMZWdhY3k6IHdoZW4gY29tcGF0aWJsZSA9PSAic2lsYWJz
LHdmeC1zcGkiLCB0aGUgZ3BpbyBpcyBpbnZlcnRlZC4pCiAKIFBsZWFzZSBjb25zdWx0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLWJ1cy50eHQgZm9yIG9wdGlvbmFs
CiBTUEkgY29ubmVjdGlvbiByZWxhdGVkIHByb3BlcnRpZXMsCkBAIC0yMywxMiArMjQsMTIgQEAg
RXhhbXBsZToKIAogJnNwaTEgewogCXdmeCB7Ci0JCWNvbXBhdGlibGUgPSAic2lsYWJzLHdmeC1z
cGkiOworCQljb21wYXRpYmxlID0gInNpbGFicyx3ZjIwMCI7CiAJCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7CiAJCXBpbmN0cmwtMCA9IDwmd2Z4X2lycSAmd2Z4X2dwaW9zPjsKIAkJaW50ZXJy
dXB0cy1leHRlbmRlZCA9IDwmZ3BpbyAxNiBJUlFfVFlQRV9FREdFX1JJU0lORz47CiAJCXdha2V1
cC1ncGlvcyA9IDwmZ3BpbyAxMiBHUElPX0FDVElWRV9ISUdIPjsKLQkJcmVzZXQtZ3Bpb3MgPSA8
JmdwaW8gMTMgR1BJT19BQ1RJVkVfSElHSD47CisJCXJlc2V0LWdwaW9zID0gPCZncGlvIDEzIEdQ
SU9fQUNUSVZFX0xPVz47CiAJCXJlZyA9IDwwPjsKIAkJc3BpLW1heC1mcmVxdWVuY3kgPSA8NDIw
MDAwMDA+OwogCX07CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYyBi
L2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCmluZGV4IDYwNWFkNzQwNjhiNy4uZDZhNzVi
ZDYxNTk1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYworKysgYi9k
cml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYwpAQCAtMjcsNiArMjcsOCBAQCBNT0RVTEVfUEFS
TV9ERVNDKGdwaW9fcmVzZXQsICJncGlvIG51bWJlciBmb3IgcmVzZXQuIC0xIGZvciBub25lLiIp
OwogI2RlZmluZSBTRVRfV1JJVEUgMHg3RkZGICAgICAgICAvKiB1c2FnZTogYW5kIG9wZXJhdGlv
biAqLwogI2RlZmluZSBTRVRfUkVBRCAweDgwMDAgICAgICAgICAvKiB1c2FnZTogb3Igb3BlcmF0
aW9uICovCiAKKyNkZWZpbmUgV0ZYX1JFU0VUX0lOVkVSVEVEIDEKKwogc3RhdGljIGNvbnN0IHN0
cnVjdCB3ZnhfcGxhdGZvcm1fZGF0YSB3Znhfc3BpX3BkYXRhID0gewogCS5maWxlX2Z3ID0gIndm
bV93ZjIwMCIsCiAJLmZpbGVfcGRzID0gIndmMjAwLnBkcyIsCkBAIC0yMDYsOSArMjA4LDExIEBA
IHN0YXRpYyBpbnQgd2Z4X3NwaV9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqZnVuYykKIAlpZiAo
IWJ1cy0+Z3Bpb19yZXNldCkgewogCQlkZXZfd2FybigmZnVuYy0+ZGV2LCAidHJ5IHRvIGxvYWQg
ZmlybXdhcmUgYW55d2F5XG4iKTsKIAl9IGVsc2UgewotCQlncGlvZF9zZXRfdmFsdWUoYnVzLT5n
cGlvX3Jlc2V0LCAwKTsKLQkJdWRlbGF5KDEwMCk7CisJCWlmIChzcGlfZ2V0X2RldmljZV9pZChm
dW5jKS0+ZHJpdmVyX2RhdGEgJiBXRlhfUkVTRVRfSU5WRVJURUQpCisJCQlncGlvZF90b2dnbGVf
YWN0aXZlX2xvdyhidXMtPmdwaW9fcmVzZXQpOwogCQlncGlvZF9zZXRfdmFsdWUoYnVzLT5ncGlv
X3Jlc2V0LCAxKTsKKwkJdWRlbGF5KDEwMCk7CisJCWdwaW9kX3NldF92YWx1ZShidXMtPmdwaW9f
cmVzZXQsIDApOwogCQl1ZGVsYXkoMjAwMCk7CiAJfQogCkBAIC0yNDUsMTQgKzI0OSwxNiBAQCBz
dGF0aWMgaW50IHdmeF9zcGlfcmVtb3ZlKHN0cnVjdCBzcGlfZGV2aWNlICpmdW5jKQogICogc3Ry
aXBwZWQuCiAgKi8KIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3BpX2RldmljZV9pZCB3Znhfc3BpX2lk
W10gPSB7Ci0JeyAid2Z4LXNwaSIsIDAgfSwKKwl7ICJ3Zngtc3BpIiwgV0ZYX1JFU0VUX0lOVkVS
VEVEIH0sCisJeyAid2YyMDAiLCAwIH0sCiAJeyB9LAogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUo
c3BpLCB3Znhfc3BpX2lkKTsKIAogI2lmZGVmIENPTkZJR19PRgogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgd2Z4X3NwaV9vZl9tYXRjaFtdID0gewotCXsgLmNvbXBhdGlibGUgPSAi
c2lsYWJzLHdmeC1zcGkiIH0sCisJeyAuY29tcGF0aWJsZSA9ICJzaWxhYnMsd2Z4LXNwaSIsIC5k
YXRhID0gKHZvaWQgKilXRlhfUkVTRVRfSU5WRVJURUQgfSwKKwl7IC5jb21wYXRpYmxlID0gInNp
bGFicyx3ZjIwMCIgfSwKIAl7IH0sCiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgd2Z4X3Nw
aV9vZl9tYXRjaCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
