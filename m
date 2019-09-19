Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A18B764D
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 11:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1DB88693D;
	Thu, 19 Sep 2019 09:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYHjXhiB1txy; Thu, 19 Sep 2019 09:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C30C586912;
	Thu, 19 Sep 2019 09:30:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48D0A1BF27E
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 37DE820429
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id toly48sSL2RY for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 09:30:38 +0000 (UTC)
X-Greylist: delayed 00:05:02 by SQLgrey-1.7.6
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be
 [195.130.132.51])
 by silver.osuosl.org (Postfix) with ESMTPS id AD5BE20130
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 09:30:37 +0000 (UTC)
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id 3MRT2100F05gfCL01MRTpJ; Thu, 19 Sep 2019 11:25:32 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iAsgp-0003ph-6D; Thu, 19 Sep 2019 11:25:27 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iAsgp-0007BK-3i; Thu, 19 Sep 2019 11:25:27 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Matthew Wilcox <willy@infradead.org>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCH -net] staging: octeon: se "(uintptr_t)" to cast from pointer
 to int
Date: Thu, 19 Sep 2019 11:25:26 +0200
Message-Id: <20190919092526.27564-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMzItYml0OgoKICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL3N0YWdpbmcvb2N0
ZW9uL29jdGVvbi1ldGhlcm5ldC5oOjQxLAoJCSAgICAgZnJvbSBkcml2ZXJzL3N0YWdpbmcvb2N0
ZW9uL2V0aGVybmV0LXR4LmM6MjU6CiAgICBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL29jdGVvbi1z
dHVicy5oOiBJbiBmdW5jdGlvbiDigJhjdm14X3BoeXNfdG9fcHRy4oCZOgogICAgZHJpdmVycy9z
dGFnaW5nL29jdGVvbi9vY3Rlb24tc3R1YnMuaDoxMjA1Ojk6IHdhcm5pbmc6IGNhc3QgdG8gcG9p
bnRlciBmcm9tIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XaW50LXRvLXBvaW50ZXItY2Fz
dF0KICAgICAgcmV0dXJuICh2b2lkICopKHBoeXNpY2FsX2FkZHJlc3MpOwoJICAgICBeCiAgICBk
cml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LXR4LmM6IEluIGZ1bmN0aW9uIOKAmGN2bV9v
Y3RfeG1pdOKAmToKICAgIGRyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQtdHguYzoyNjQ6
Mzc6IHdhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNp
emUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICAgICAgIGh3X2J1ZmZlci5zLmFkZHIgPSBYS1BI
WVNfVE9fUEhZUygodTY0KXNrYi0+ZGF0YSk7CgkJCQkJIF4KICAgIGRyaXZlcnMvc3RhZ2luZy9v
Y3Rlb24vb2N0ZW9uLXN0dWJzLmg6MjozMDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDi
gJhYS1BIWVNfVE9fUEhZU+KAmQogICAgICNkZWZpbmUgWEtQSFlTX1RPX1BIWVMocCkgICAocCkK
CQkJCSAgXgogICAgZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC10eC5jOjI2ODozNzog
d2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdwb2ludGVyLXRvLWludC1jYXN0XQogICAgICAgaHdfYnVmZmVyLnMuYWRkciA9IFhLUEhZU19U
T19QSFlTKCh1NjQpc2tiLT5kYXRhKTsKCQkJCQkgXgogICAgZHJpdmVycy9zdGFnaW5nL29jdGVv
bi9vY3Rlb24tc3R1YnMuaDoyOjMwOiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmFhL
UEhZU19UT19QSFlT4oCZCiAgICAgI2RlZmluZSBYS1BIWVNfVE9fUEhZUyhwKSAgIChwKQoJCQkJ
ICBeCiAgICBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LXR4LmM6Mjc2OjIwOiB3YXJu
aW5nOiBjYXN0IGZyb20gcG9pbnRlciB0byBpbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXplIFstV3Bv
aW50ZXItdG8taW50LWNhc3RdCgkgWEtQSFlTX1RPX1BIWVMoKHU2NClza2JfZnJhZ19hZGRyZXNz
KGZzKSk7CgkJCV4KICAgIGRyaXZlcnMvc3RhZ2luZy9vY3Rlb24vb2N0ZW9uLXN0dWJzLmg6Mjoz
MDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhYS1BIWVNfVE9fUEhZU+KAmQogICAg
ICNkZWZpbmUgWEtQSFlTX1RPX1BIWVMocCkgICAocCkKCQkJCSAgXgogICAgZHJpdmVycy9zdGFn
aW5nL29jdGVvbi9ldGhlcm5ldC10eC5jOjI4MDozNzogd2FybmluZzogY2FzdCBmcm9tIHBvaW50
ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBbLVdwb2ludGVyLXRvLWludC1jYXN0XQog
ICAgICAgaHdfYnVmZmVyLnMuYWRkciA9IFhLUEhZU19UT19QSFlTKCh1NjQpQ1ZNX09DVF9TS0Jf
Q0Ioc2tiKSk7CgkJCQkJIF4KICAgIGRyaXZlcnMvc3RhZ2luZy9vY3Rlb24vb2N0ZW9uLXN0dWJz
Lmg6MjozMDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhYS1BIWVNfVE9fUEhZU+KA
mQogICAgICNkZWZpbmUgWEtQSFlTX1RPX1BIWVMocCkgICAocCkKCQkJCSAgXgoKRml4IHRoaXMg
YnkgcmVwbGFjaW5nIGNhc3RzIHRvICJ1NjQiIGJ5IGNhc3RzIHRvICJ1aW50cHRyX3QiLCB3aGlj
aCBpcwplaXRoZXIgMzItYml0IG9yIDY0LWJpdCwgYW5kIGFkZGluZyBhbiBpbnRlcm1lZGlhdGUg
Y2FzdCB0byAidWludHB0cl90Igp3aGVyZSBuZWVkZWQuCgpFeHBvc2VkIGJ5IGNvbW1pdCAxNzFh
OWJhZTY4YzcyZjJkICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRlc3QgYnVpbGQgb24KIU1JUFMi
KS4KClNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5v
cmc+Ci0tLQogZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC10eC5jICB8IDkgKysrKyst
LS0tCiBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL29jdGVvbi1zdHVicy5oIHwgMiArLQogMiBmaWxl
cyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC10eC5jIGIvZHJpdmVycy9zdGFnaW5nL29j
dGVvbi9ldGhlcm5ldC10eC5jCmluZGV4IGM2NDcyOGZjMjFmMjI5ZDguLjcwMjFmZjA3YmEyYTBi
NzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQtdHguYworKysg
Yi9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LXR4LmMKQEAgLTI2MSwxMSArMjYxLDEx
IEBAIGludCBjdm1fb2N0X3htaXQoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IG5ldF9kZXZp
Y2UgKmRldikKIAkvKiBCdWlsZCB0aGUgUEtPIGJ1ZmZlciBwb2ludGVyICovCiAJaHdfYnVmZmVy
LnU2NCA9IDA7CiAJaWYgKHNrYl9zaGluZm8oc2tiKS0+bnJfZnJhZ3MgPT0gMCkgewotCQlod19i
dWZmZXIucy5hZGRyID0gWEtQSFlTX1RPX1BIWVMoKHU2NClza2ItPmRhdGEpOworCQlod19idWZm
ZXIucy5hZGRyID0gWEtQSFlTX1RPX1BIWVMoKHVpbnRwdHJfdClza2ItPmRhdGEpOwogCQlod19i
dWZmZXIucy5wb29sID0gMDsKIAkJaHdfYnVmZmVyLnMuc2l6ZSA9IHNrYi0+bGVuOwogCX0gZWxz
ZSB7Ci0JCWh3X2J1ZmZlci5zLmFkZHIgPSBYS1BIWVNfVE9fUEhZUygodTY0KXNrYi0+ZGF0YSk7
CisJCWh3X2J1ZmZlci5zLmFkZHIgPSBYS1BIWVNfVE9fUEhZUygodWludHB0cl90KXNrYi0+ZGF0
YSk7CiAJCWh3X2J1ZmZlci5zLnBvb2wgPSAwOwogCQlod19idWZmZXIucy5zaXplID0gc2tiX2hl
YWRsZW4oc2tiKTsKIAkJQ1ZNX09DVF9TS0JfQ0Ioc2tiKVswXSA9IGh3X2J1ZmZlci51NjQ7CkBA
IC0yNzMsMTEgKzI3MywxMiBAQCBpbnQgY3ZtX29jdF94bWl0KHN0cnVjdCBza19idWZmICpza2Is
IHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCiAJCQlza2JfZnJhZ190ICpmcyA9IHNrYl9zaGluZm8o
c2tiKS0+ZnJhZ3MgKyBpOwogCiAJCQlod19idWZmZXIucy5hZGRyID0KLQkJCQlYS1BIWVNfVE9f
UEhZUygodTY0KXNrYl9mcmFnX2FkZHJlc3MoZnMpKTsKKwkJCQlYS1BIWVNfVE9fUEhZUygodWlu
dHB0cl90KXNrYl9mcmFnX2FkZHJlc3MoZnMpKTsKIAkJCWh3X2J1ZmZlci5zLnNpemUgPSBza2Jf
ZnJhZ19zaXplKGZzKTsKIAkJCUNWTV9PQ1RfU0tCX0NCKHNrYilbaSArIDFdID0gaHdfYnVmZmVy
LnU2NDsKIAkJfQotCQlod19idWZmZXIucy5hZGRyID0gWEtQSFlTX1RPX1BIWVMoKHU2NClDVk1f
T0NUX1NLQl9DQihza2IpKTsKKwkJaHdfYnVmZmVyLnMuYWRkciA9CisJCQlYS1BIWVNfVE9fUEhZ
UygodWludHB0cl90KUNWTV9PQ1RfU0tCX0NCKHNrYikpOwogCQlod19idWZmZXIucy5zaXplID0g
c2tiX3NoaW5mbyhza2IpLT5ucl9mcmFncyArIDE7CiAJCXBrb19jb21tYW5kLnMuc2VncyA9IHNr
Yl9zaGluZm8oc2tiKS0+bnJfZnJhZ3MgKyAxOwogCQlwa29fY29tbWFuZC5zLmdhdGhlciA9IDE7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL29jdGVvbi1zdHVicy5oIGIvZHJp
dmVycy9zdGFnaW5nL29jdGVvbi9vY3Rlb24tc3R1YnMuaAppbmRleCBhNGFjM2JmYjYyYTg1ZTY1
Li5iNzhjZTllYWFiODVkMzEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL29j
dGVvbi1zdHVicy5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vb2N0ZW9uLXN0dWJzLmgK
QEAgLTEyMDIsNyArMTIwMiw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGN2bXhfd3FlX2dldF9ncnAo
Y3ZteF93cWVfdCAqd29yaykKIAogc3RhdGljIGlubGluZSB2b2lkICpjdm14X3BoeXNfdG9fcHRy
KHVpbnQ2NF90IHBoeXNpY2FsX2FkZHJlc3MpCiB7Ci0JcmV0dXJuICh2b2lkICopKHBoeXNpY2Fs
X2FkZHJlc3MpOworCXJldHVybiAodm9pZCAqKSh1aW50cHRyX3QpKHBoeXNpY2FsX2FkZHJlc3Mp
OwogfQogCiBzdGF0aWMgaW5saW5lIHVpbnQ2NF90IGN2bXhfcHRyX3RvX3BoeXModm9pZCAqcHRy
KQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
