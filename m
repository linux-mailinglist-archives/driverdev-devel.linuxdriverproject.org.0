Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E09569FC9
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 02:25:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A92A386B49;
	Tue, 16 Jul 2019 00:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umWibom5lbnk; Tue, 16 Jul 2019 00:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9368286B50;
	Tue, 16 Jul 2019 00:25:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A53971BF97A
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 00:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A1FCA86B49
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 00:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2joh5lvpP4zD for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 00:25:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy1.45ru.net.au (anchovy1.45ru.net.au [203.30.46.145])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5EB4A843DB
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 00:25:07 +0000 (UTC)
Received: (qmail 9912 invoked by uid 5089); 16 Jul 2019 00:25:04 -0000
Received: by simscan 1.2.0 ppid: 9861, pid: 9862, t: 0.0496s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL: $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy1.45ru.net.au with ESMTPA; 16 Jul 2019 00:25:04 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
 id E9AA7200A395F; Tue, 16 Jul 2019 08:24:59 +0800 (AWST)
From: Phil Reid <preid@electromag.com.au>
To: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com,
 leobras.c@gmail.com, nsaenzjulienne@suse.de, nishadkamdar@gmail.com,
 preid@electromag.com.au, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH v2 1/2] Staging: fbtft: Fix probing of gpio descriptor
Date: Tue, 16 Jul 2019 08:24:36 +0800
Message-Id: <1563236677-5045-2-git-send-email-preid@electromag.com.au>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1563236677-5045-1-git-send-email-preid@electromag.com.au>
References: <1563236677-5045-1-git-send-email-preid@electromag.com.au>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q29udmVyc2lvbiB0byB1c2UgZ3BpbyBkZXNjcmlwdG9ycyBicm9rZSBhbGwgZ3BpbyBsb29rdXBz
IGFzCmRldm1fZ3Bpb2RfZ2V0X2luZGV4IHdhcyBjb252ZXJ0ZWQgdG8gdXNlIGRldi0+ZHJpdmVy
LT5uYW1lIGZvcgp0aGUgZ3BpbyBuYW1lIGxvb2t1cC4gRml4IHRoaXMgYnkgdXNpbmcgdGhlIG5h
bWUgcGFyYW0uIEluCmFkZGl0aW9uIGdwaW9kX2dldCBwb3N0LWZpeGVzIHRoZSAtZ3Bpb3MgdG8g
dGhlIG5hbWUgc28gdGhhdApzaG91bGRuJ3QgYmUgaW5jbHVkZWQgaW4gdGhlIGNhbGwuIEhvd2V2
ZXIgdGhpcyB0aGVuIGJyZWFrcyB0aGUKb2ZfZmluZF9wcm9wZXJ0eSBjYWxsIHRvIHNlZSBpZiB0
aGUgZ3BpbyBlbnRyeSBleGlzdHMgYXMgYWxsCmZidGZ0IHRyZWF0cyBhbGwgZ3Bpb3MgYXMgb3B0
aW9uYWwuIFNvIHVzZSBkZXZtX2dwaW9kX2dldF9pbmRleF9vcHRpb25hbAppbnN0ZWFkIHdoaWNo
IGFjaGlldmVzIHRoZSBzYW1lIHRoaW5nIGFuZCBpcyBzaW1wbGVyLgoKTmlzaGFkIGNvbmZpcm1l
ZCB0aGUgY2hhbmdlcyB3aGVyZSBvbmx5IGV2ZXIgY29tcGlsZSB0ZXN0ZWQuCgpGaXhlczogYzQ0
MGVlZTFhN2ExICgiU3RhZ2luZzogZmJ0ZnQ6IFN3aXRjaCB0byB0aGUgZ3BpbyBkZXNjcmlwdG9y
IGludGVyZmFjZSIpClJldmlld2VkLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2Flbnpq
dWxpZW5uZUBzdXNlLmRlPgpUZXN0ZWQtYnk6IE5pY29sYXMgU2FlbnogSnVsaWVubmUgPG5zYWVu
emp1bGllbm5lQHN1c2UuZGU+ClRlc3RlZC1ieTogSmFuIFNlYmFzdGlhbiBHw7Z0dGUgPGxpbnV4
QGphc2VnLm5ldD4KU2lnbmVkLW9mZi1ieTogUGhpbCBSZWlkIDxwcmVpZEBlbGVjdHJvbWFnLmNv
bS5hdT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jIHwgMzkgKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
ZmJ0ZnQvZmJ0ZnQtY29yZS5jIGIvZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYwpp
bmRleCA5YjA3YmFkLi40NGI4MDc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQv
ZmJ0ZnQtY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3JlLmMKQEAg
LTc2LDIxICs3NiwxOCBAQCBzdGF0aWMgaW50IGZidGZ0X3JlcXVlc3Rfb25lX2dwaW8oc3RydWN0
IGZidGZ0X3BhciAqcGFyLAogCQkJCSAgc3RydWN0IGdwaW9fZGVzYyAqKmdwaW9wKQogewogCXN0
cnVjdCBkZXZpY2UgKmRldiA9IHBhci0+aW5mby0+ZGV2aWNlOwotCXN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbm9kZSA9IGRldi0+b2Zfbm9kZTsKIAlpbnQgcmV0ID0gMDsKIAotCWlmIChvZl9maW5kX3By
b3BlcnR5KG5vZGUsIG5hbWUsIE5VTEwpKSB7Ci0JCSpncGlvcCA9IGRldm1fZ3Bpb2RfZ2V0X2lu
ZGV4KGRldiwgZGV2LT5kcml2ZXItPm5hbWUsIGluZGV4LAotCQkJCQkgICAgICBHUElPRF9PVVRf
SElHSCk7Ci0JCWlmIChJU19FUlIoKmdwaW9wKSkgewotCQkJcmV0ID0gUFRSX0VSUigqZ3Bpb3Ap
OwotCQkJZGV2X2VycihkZXYsCi0JCQkJIkZhaWxlZCB0byByZXF1ZXN0ICVzIEdQSU86JWRcbiIs
IG5hbWUsIHJldCk7Ci0JCQlyZXR1cm4gcmV0OwotCQl9Ci0JCWZidGZ0X3Bhcl9kYmcoREVCVUdf
UkVRVUVTVF9HUElPUywgcGFyLCAiJXM6ICclcycgR1BJT1xuIiwKLQkJCSAgICAgIF9fZnVuY19f
LCBuYW1lKTsKKwkqZ3Bpb3AgPSBkZXZtX2dwaW9kX2dldF9pbmRleF9vcHRpb25hbChkZXYsIG5h
bWUsIGluZGV4LAorCQkJCQkgICAgICAgR1BJT0RfT1VUX0hJR0gpOworCWlmIChJU19FUlIoKmdw
aW9wKSkgeworCQlyZXQgPSBQVFJfRVJSKCpncGlvcCk7CisJCWRldl9lcnIoZGV2LAorCQkJIkZh
aWxlZCB0byByZXF1ZXN0ICVzIEdQSU86ICVkXG4iLCBuYW1lLCByZXQpOworCQlyZXR1cm4gcmV0
OwogCX0KKwlmYnRmdF9wYXJfZGJnKERFQlVHX1JFUVVFU1RfR1BJT1MsIHBhciwgIiVzOiAnJXMn
IEdQSU9cbiIsCisJCSAgICAgIF9fZnVuY19fLCBuYW1lKTsKIAogCXJldHVybiByZXQ7CiB9CkBA
IC0xMDMsMzQgKzEwMCwzNCBAQCBzdGF0aWMgaW50IGZidGZ0X3JlcXVlc3RfZ3Bpb3NfZHQoc3Ry
dWN0IGZidGZ0X3BhciAqcGFyKQogCWlmICghcGFyLT5pbmZvLT5kZXZpY2UtPm9mX25vZGUpCiAJ
CXJldHVybiAtRUlOVkFMOwogCi0JcmV0ID0gZmJ0ZnRfcmVxdWVzdF9vbmVfZ3BpbyhwYXIsICJy
ZXNldC1ncGlvcyIsIDAsICZwYXItPmdwaW8ucmVzZXQpOworCXJldCA9IGZidGZ0X3JlcXVlc3Rf
b25lX2dwaW8ocGFyLCAicmVzZXQiLCAwLCAmcGFyLT5ncGlvLnJlc2V0KTsKIAlpZiAocmV0KQog
CQlyZXR1cm4gcmV0OwotCXJldCA9IGZidGZ0X3JlcXVlc3Rfb25lX2dwaW8ocGFyLCAiZGMtZ3Bp
b3MiLCAwLCAmcGFyLT5ncGlvLmRjKTsKKwlyZXQgPSBmYnRmdF9yZXF1ZXN0X29uZV9ncGlvKHBh
ciwgImRjIiwgMCwgJnBhci0+Z3Bpby5kYyk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKLQly
ZXQgPSBmYnRmdF9yZXF1ZXN0X29uZV9ncGlvKHBhciwgInJkLWdwaW9zIiwgMCwgJnBhci0+Z3Bp
by5yZCk7CisJcmV0ID0gZmJ0ZnRfcmVxdWVzdF9vbmVfZ3BpbyhwYXIsICJyZCIsIDAsICZwYXIt
PmdwaW8ucmQpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7Ci0JcmV0ID0gZmJ0ZnRfcmVxdWVz
dF9vbmVfZ3BpbyhwYXIsICJ3ci1ncGlvcyIsIDAsICZwYXItPmdwaW8ud3IpOworCXJldCA9IGZi
dGZ0X3JlcXVlc3Rfb25lX2dwaW8ocGFyLCAid3IiLCAwLCAmcGFyLT5ncGlvLndyKTsKIAlpZiAo
cmV0KQogCQlyZXR1cm4gcmV0OwotCXJldCA9IGZidGZ0X3JlcXVlc3Rfb25lX2dwaW8ocGFyLCAi
Y3MtZ3Bpb3MiLCAwLCAmcGFyLT5ncGlvLmNzKTsKKwlyZXQgPSBmYnRmdF9yZXF1ZXN0X29uZV9n
cGlvKHBhciwgImNzIiwgMCwgJnBhci0+Z3Bpby5jcyk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJl
dDsKLQlyZXQgPSBmYnRmdF9yZXF1ZXN0X29uZV9ncGlvKHBhciwgImxhdGNoLWdwaW9zIiwgMCwg
JnBhci0+Z3Bpby5sYXRjaCk7CisJcmV0ID0gZmJ0ZnRfcmVxdWVzdF9vbmVfZ3BpbyhwYXIsICJs
YXRjaCIsIDAsICZwYXItPmdwaW8ubGF0Y2gpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAJ
Zm9yIChpID0gMDsgaSA8IDE2OyBpKyspIHsKLQkJcmV0ID0gZmJ0ZnRfcmVxdWVzdF9vbmVfZ3Bp
byhwYXIsICJkYi1ncGlvcyIsIGksCisJCXJldCA9IGZidGZ0X3JlcXVlc3Rfb25lX2dwaW8ocGFy
LCAiZGIiLCBpLAogCQkJCQkgICAgICZwYXItPmdwaW8uZGJbaV0pOwogCQlpZiAocmV0KQogCQkJ
cmV0dXJuIHJldDsKLQkJcmV0ID0gZmJ0ZnRfcmVxdWVzdF9vbmVfZ3BpbyhwYXIsICJsZWQtZ3Bp
b3MiLCBpLAorCQlyZXQgPSBmYnRmdF9yZXF1ZXN0X29uZV9ncGlvKHBhciwgImxlZCIsIGksCiAJ
CQkJCSAgICAgJnBhci0+Z3Bpby5sZWRbaV0pOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsK
LQkJcmV0ID0gZmJ0ZnRfcmVxdWVzdF9vbmVfZ3BpbyhwYXIsICJhdXgtZ3Bpb3MiLCBpLAorCQly
ZXQgPSBmYnRmdF9yZXF1ZXN0X29uZV9ncGlvKHBhciwgImF1eCIsIGksCiAJCQkJCSAgICAgJnBh
ci0+Z3Bpby5hdXhbaV0pOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKLS0gCjEuOC4zLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
