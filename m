Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA3B26A2BB
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 12:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FBFF86686;
	Tue, 15 Sep 2020 10:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSU+-jPgpBYX; Tue, 15 Sep 2020 10:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8A5286655;
	Tue, 15 Sep 2020 10:06:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B30841BF275
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA06B864F4
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 10:06:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ykgXRckA0ziR for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 10:06:56 +0000 (UTC)
X-Greylist: delayed 00:34:42 by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12B51864DA
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 10:06:56 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9VaDm016290; Tue, 15 Sep 2020 05:32:32 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu851uyb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:32 -0400
Received: from ASHBMBX9.ad.analog.com (ashbmbx9.ad.analog.com [10.64.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WVqX017761
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 05:32:31 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:32:40 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:32:40 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:32:40 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vp027664;
 Tue, 15 Sep 2020 05:32:27 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 10/10] iio: adis: Drop non Managed device functions
Date: Tue, 15 Sep 2020 11:33:45 +0200
Message-ID: <20200915093345.85614-11-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915093345.85614-1-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_05:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=2 bulkscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=800 spamscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 mlxscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009150087
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut
 Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean --dry-run <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHJvcCBgYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoKWAuIEFsbCB1c2VycyB3ZXJlIHVw
ZGF0ZWQgdG8gdXNlCnRoZSBkZXZtIHZlcnNpb24gb2YgdGhpcyBmdW5jdGlvbi4gVGhpcyBhdm9p
ZHMgaGF2aW5nIGFsbW9zdCB0aGUgc2FtZQpjb2RlIHJlcGVhdGVkLgoKU2lnbmVkLW9mZi1ieTog
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9pbXUvYWRpc19i
dWZmZXIuYyAgfCA2NCArKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJz
L2lpby9pbXUvYWRpc190cmlnZ2VyLmMgfCA2MCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCiBpbmNsdWRlL2xpbnV4L2lpby9pbXUvYWRpcy5oICAgfCAyNyAtLS0tLS0tLS0tLS0tLQog
MyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDE0NyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2lpby9pbXUvYWRpc19idWZmZXIuYyBiL2RyaXZlcnMvaWlvL2ltdS9h
ZGlzX2J1ZmZlci5jCmluZGV4IDViNDIyNWVlMDliOS4uZGY2MTQ0Mjg1NDcwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2lpby9pbXUvYWRpc19idWZmZXIuYworKysgYi9kcml2ZXJzL2lpby9pbXUvYWRp
c19idWZmZXIuYwpAQCAtMTY5LDQ4ICsxNjksNiBAQCBzdGF0aWMgdm9pZCBhZGlzX2J1ZmZlcl9j
bGVhbnVwKHZvaWQgKmFyZykKIAlrZnJlZShhZGlzLT54ZmVyKTsKIH0KIAotLyoqCi0gKiBhZGlz
X3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigpIC0gU2V0cyB1cCBidWZmZXIgYW5kIHRyaWdnZXIg
Zm9yIHRoZSBhZGlzIGRldmljZQotICogQGFkaXM6IFRoZSBhZGlzIGRldmljZS4KLSAqIEBpbmRp
b19kZXY6IFRoZSBJSU8gZGV2aWNlLgotICogQHRyaWdnZXJfaGFuZGxlcjogT3B0aW9uYWwgdHJp
Z2dlciBoYW5kbGVyLCBtYXkgYmUgTlVMTC4KLSAqCi0gKiBSZXR1cm5zIDAgb24gc3VjY2Vzcywg
YSBuZWdhdGl2ZSBlcnJvciBjb2RlIG90aGVyd2lzZS4KLSAqCi0gKiBUaGlzIGZ1bmN0aW9uIHNl
dHMgdXAgdGhlIGJ1ZmZlciBhbmQgdHJpZ2dlciBmb3IgYSBhZGlzIGRldmljZXMuICBJZgotICog
J3RyaWdnZXJfaGFuZGxlcicgaXMgTlVMTCB0aGUgZGVmYXVsdCB0cmlnZ2VyIGhhbmRsZXIgd2ls
bCBiZSB1c2VkLiBUaGUKLSAqIGRlZmF1bHQgdHJpZ2dlciBoYW5kbGVyIHdpbGwgc2ltcGx5IHJl
YWQgdGhlIHJlZ2lzdGVycyBhc3NpZ25lZCB0byB0aGUKLSAqIGN1cnJlbnRseSBhY3RpdmUgY2hh
bm5lbHMuCi0gKgotICogYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigpIHNob3VsZCBi
ZSBjYWxsZWQgdG8gZnJlZSB0aGUgcmVzb3VyY2VzCi0gKiBhbGxvY2F0ZWQgYnkgdGhpcyBmdW5j
dGlvbi4KLSAqLwotaW50IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0cnVjdCBhZGlz
ICphZGlzLCBzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAotCWlycXJldHVybl90ICgqdHJpZ2dl
cl9oYW5kbGVyKShpbnQsIHZvaWQgKikpCi17Ci0JaW50IHJldDsKLQotCWlmICghdHJpZ2dlcl9o
YW5kbGVyKQotCQl0cmlnZ2VyX2hhbmRsZXIgPSBhZGlzX3RyaWdnZXJfaGFuZGxlcjsKLQotCXJl
dCA9IGlpb190cmlnZ2VyZWRfYnVmZmVyX3NldHVwKGluZGlvX2RldiwgJmlpb19wb2xsZnVuY19z
dG9yZV90aW1lLAotCQl0cmlnZ2VyX2hhbmRsZXIsIE5VTEwpOwotCWlmIChyZXQpCi0JCXJldHVy
biByZXQ7Ci0KLQlpZiAoYWRpcy0+c3BpLT5pcnEpIHsKLQkJcmV0ID0gYWRpc19wcm9iZV90cmln
Z2VyKGFkaXMsIGluZGlvX2Rldik7Ci0JCWlmIChyZXQpCi0JCQlnb3RvIGVycm9yX2J1ZmZlcl9j
bGVhbnVwOwotCX0KLQlyZXR1cm4gMDsKLQotZXJyb3JfYnVmZmVyX2NsZWFudXA6Ci0JaWlvX3Ry
aWdnZXJlZF9idWZmZXJfY2xlYW51cChpbmRpb19kZXYpOwotCXJldHVybiByZXQ7Ci19Ci1FWFBP
UlRfU1lNQk9MX0dQTChhZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcik7Ci0KIC8qKgogICog
ZGV2bV9hZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigpIC0gU2V0cyB1cCBidWZmZXIgYW5k
IHRyaWdnZXIgZm9yCiAgKgkJCQkJICB0aGUgbWFuYWdlZCBhZGlzIGRldmljZQpAQCAtMjIwLDcg
KzE3OCwxMCBAQCBFWFBPUlRfU1lNQk9MX0dQTChhZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dl
cik7CiAgKgogICogUmV0dXJucyAwIG9uIHN1Y2Nlc3MsIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBv
dGhlcndpc2UuCiAgKgotICogVGhpcyBmdW5jdGlvbiBwZXJmb21zIGV4YWN0bHkgdGhlIHNhbWUg
YXMgYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoKQorICogVGhpcyBmdW5jdGlvbiBzZXRz
IHVwIHRoZSBidWZmZXIgYW5kIHRyaWdnZXIgZm9yIGEgYWRpcyBkZXZpY2VzLiAgSWYKKyAqICd0
cmlnZ2VyX2hhbmRsZXInIGlzIE5VTEwgdGhlIGRlZmF1bHQgdHJpZ2dlciBoYW5kbGVyIHdpbGwg
YmUgdXNlZC4gVGhlCisgKiBkZWZhdWx0IHRyaWdnZXIgaGFuZGxlciB3aWxsIHNpbXBseSByZWFk
IHRoZSByZWdpc3RlcnMgYXNzaWduZWQgdG8gdGhlCisgKiBjdXJyZW50bHkgYWN0aXZlIGNoYW5u
ZWxzLgogICovCiBpbnQKIGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoc3RydWN0
IGFkaXMgKmFkaXMsIHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCkBAIC0yNDgsMjAgKzIwOSwz
IEBAIGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoc3RydWN0IGFkaXMgKmFkaXMs
IHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkZXZtX2Fk
aXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKTsKIAotLyoqCi0gKiBhZGlzX2NsZWFudXBfYnVm
ZmVyX2FuZF90cmlnZ2VyKCkgLSBGcmVlIGJ1ZmZlciBhbmQgdHJpZ2dlciByZXNvdXJjZXMKLSAq
IEBhZGlzOiBUaGUgYWRpcyBkZXZpY2UuCi0gKiBAaW5kaW9fZGV2OiBUaGUgSUlPIGRldmljZS4K
LSAqCi0gKiBGcmVlcyByZXNvdXJjZXMgYWxsb2NhdGVkIGJ5IGFkaXNfc2V0dXBfYnVmZmVyX2Fu
ZF90cmlnZ2VyKCkKLSAqLwotdm9pZCBhZGlzX2NsZWFudXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0
cnVjdCBhZGlzICphZGlzLAotCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCi17Ci0JaWYgKGFk
aXMtPnNwaS0+aXJxKQotCQlhZGlzX3JlbW92ZV90cmlnZ2VyKGFkaXMpOwotCWtmcmVlKGFkaXMt
PmJ1ZmZlcik7Ci0Ja2ZyZWUoYWRpcy0+eGZlcik7Ci0JaWlvX3RyaWdnZXJlZF9idWZmZXJfY2xl
YW51cChpbmRpb19kZXYpOwotfQotRVhQT1JUX1NZTUJPTF9HUEwoYWRpc19jbGVhbnVwX2J1ZmZl
cl9hbmRfdHJpZ2dlcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9pbXUvYWRpc190cmlnZ2Vy
LmMgYi9kcml2ZXJzL2lpby9pbXUvYWRpc190cmlnZ2VyLmMKaW5kZXggOGFmZTcxOTQ3YzAwLi42
NGUwYmE1MWNiMTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2ltdS9hZGlzX3RyaWdnZXIuYwor
KysgYi9kcml2ZXJzL2lpby9pbXUvYWRpc190cmlnZ2VyLmMKQEAgLTU1LDUzICs1NSw2IEBAIHN0
YXRpYyBpbnQgYWRpc192YWxpZGF0ZV9pcnFfZmxhZyhzdHJ1Y3QgYWRpcyAqYWRpcykKIAogCXJl
dHVybiAwOwogfQotLyoqCi0gKiBhZGlzX3Byb2JlX3RyaWdnZXIoKSAtIFNldHMgdXAgdHJpZ2dl
ciBmb3IgYSBhZGlzIGRldmljZQotICogQGFkaXM6IFRoZSBhZGlzIGRldmljZQotICogQGluZGlv
X2RldjogVGhlIElJTyBkZXZpY2UKLSAqCi0gKiBSZXR1cm5zIDAgb24gc3VjY2VzcyBvciBhIG5l
Z2F0aXZlIGVycm9yIGNvZGUKLSAqCi0gKiBhZGlzX3JlbW92ZV90cmlnZ2VyKCkgc2hvdWxkIGJl
IHVzZWQgdG8gZnJlZSB0aGUgdHJpZ2dlci4KLSAqLwotaW50IGFkaXNfcHJvYmVfdHJpZ2dlcihz
dHJ1Y3QgYWRpcyAqYWRpcywgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKLXsKLQlpbnQgcmV0
OwotCi0JYWRpcy0+dHJpZyA9IGlpb190cmlnZ2VyX2FsbG9jKCIlcy1kZXYlZCIsIGluZGlvX2Rl
di0+bmFtZSwKLQkJCQkJaW5kaW9fZGV2LT5pZCk7Ci0JaWYgKGFkaXMtPnRyaWcgPT0gTlVMTCkK
LQkJcmV0dXJuIC1FTk9NRU07Ci0KLQlhZGlzX3RyaWdnZXJfc2V0dXAoYWRpcyk7Ci0KLQlyZXQg
PSBhZGlzX3ZhbGlkYXRlX2lycV9mbGFnKGFkaXMpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7
Ci0KLQlyZXQgPSByZXF1ZXN0X2lycShhZGlzLT5zcGktPmlycSwKLQkJCSAgJmlpb190cmlnZ2Vy
X2dlbmVyaWNfZGF0YV9yZHlfcG9sbCwKLQkJCSAgYWRpcy0+aXJxX2ZsYWcsCi0JCQkgIGluZGlv
X2Rldi0+bmFtZSwKLQkJCSAgYWRpcy0+dHJpZyk7Ci0JaWYgKHJldCkKLQkJZ290byBlcnJvcl9m
cmVlX3RyaWc7Ci0KLQlyZXQgPSBpaW9fdHJpZ2dlcl9yZWdpc3RlcihhZGlzLT50cmlnKTsKLQot
CWluZGlvX2Rldi0+dHJpZyA9IGlpb190cmlnZ2VyX2dldChhZGlzLT50cmlnKTsKLQlpZiAocmV0
KQotCQlnb3RvIGVycm9yX2ZyZWVfaXJxOwotCi0JcmV0dXJuIDA7Ci0KLWVycm9yX2ZyZWVfaXJx
OgotCWZyZWVfaXJxKGFkaXMtPnNwaS0+aXJxLCBhZGlzLT50cmlnKTsKLWVycm9yX2ZyZWVfdHJp
ZzoKLQlpaW9fdHJpZ2dlcl9mcmVlKGFkaXMtPnRyaWcpOwotCXJldHVybiByZXQ7Ci19Ci1FWFBP
UlRfU1lNQk9MX0dQTChhZGlzX3Byb2JlX3RyaWdnZXIpOwogCiAvKioKICAqIGRldm1fYWRpc19w
cm9iZV90cmlnZ2VyKCkgLSBTZXRzIHVwIHRyaWdnZXIgZm9yIGEgbWFuYWdlZCBhZGlzIGRldmlj
ZQpAQCAtMTM3LDE2ICs5MCwzIEBAIGludCBkZXZtX2FkaXNfcHJvYmVfdHJpZ2dlcihzdHJ1Y3Qg
YWRpcyAqYWRpcywgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKIH0KIEVYUE9SVF9TWU1CT0xf
R1BMKGRldm1fYWRpc19wcm9iZV90cmlnZ2VyKTsKIAotLyoqCi0gKiBhZGlzX3JlbW92ZV90cmln
Z2VyKCkgLSBSZW1vdmUgdHJpZ2dlciBmb3IgYSBhZGlzIGRldmljZXMKLSAqIEBhZGlzOiBUaGUg
YWRpcyBkZXZpY2UKLSAqCi0gKiBSZW1vdmVzIHRoZSB0cmlnZ2VyIHByZXZpb3VzbHkgcmVnaXN0
ZXJlZCB3aXRoIGFkaXNfcHJvYmVfdHJpZ2dlcigpLgotICovCi12b2lkIGFkaXNfcmVtb3ZlX3Ry
aWdnZXIoc3RydWN0IGFkaXMgKmFkaXMpCi17Ci0JaWlvX3RyaWdnZXJfdW5yZWdpc3RlcihhZGlz
LT50cmlnKTsKLQlmcmVlX2lycShhZGlzLT5zcGktPmlycSwgYWRpcy0+dHJpZyk7Ci0JaWlvX3Ry
aWdnZXJfZnJlZShhZGlzLT50cmlnKTsKLX0KLUVYUE9SVF9TWU1CT0xfR1BMKGFkaXNfcmVtb3Zl
X3RyaWdnZXIpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9paW8vaW11L2FkaXMuaCBiL2lu
Y2x1ZGUvbGludXgvaWlvL2ltdS9hZGlzLmgKaW5kZXggMmRmNjc0NDhmMGQxLi4wMWJhNjkxZGEy
ZjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvaWlvL2ltdS9hZGlzLmgKKysrIGIvaW5jbHVk
ZS9saW51eC9paW8vaW11L2FkaXMuaApAQCAtNTE3LDE0ICs1MTcsOCBAQCBzdHJ1Y3QgYWRpc19i
dXJzdCB7CiBpbnQKIGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoc3RydWN0IGFk
aXMgKmFkaXMsIHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJCQkJICAgaXJxX2hhbmRsZXJf
dCB0cmlnZ2VyX2hhbmRsZXIpOwotaW50IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0
cnVjdCBhZGlzICphZGlzLAotCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsIGlycXJldHVybl90
ICgqdHJpZ2dlcl9oYW5kbGVyKShpbnQsIHZvaWQgKikpOwotdm9pZCBhZGlzX2NsZWFudXBfYnVm
ZmVyX2FuZF90cmlnZ2VyKHN0cnVjdCBhZGlzICphZGlzLAotCXN0cnVjdCBpaW9fZGV2ICppbmRp
b19kZXYpOwogCiBpbnQgZGV2bV9hZGlzX3Byb2JlX3RyaWdnZXIoc3RydWN0IGFkaXMgKmFkaXMs
IHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpOwotaW50IGFkaXNfcHJvYmVfdHJpZ2dlcihzdHJ1
Y3QgYWRpcyAqYWRpcywgc3RydWN0IGlpb19kZXYgKmluZGlvX2Rldik7Ci12b2lkIGFkaXNfcmVt
b3ZlX3RyaWdnZXIoc3RydWN0IGFkaXMgKmFkaXMpOwogCiBpbnQgYWRpc191cGRhdGVfc2Nhbl9t
b2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJY29uc3QgdW5zaWduZWQgbG9uZyAqc2Nh
bl9tYXNrKTsKQEAgLTUzOCwzMyArNTMyLDEyIEBAIGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5k
X3RyaWdnZXIoc3RydWN0IGFkaXMgKmFkaXMsIHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJ
cmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbmxpbmUgaW50IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90
cmlnZ2VyKHN0cnVjdCBhZGlzICphZGlzLAotCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsIGly
cXJldHVybl90ICgqdHJpZ2dlcl9oYW5kbGVyKShpbnQsIHZvaWQgKikpCi17Ci0JcmV0dXJuIDA7
Ci19Ci0KLXN0YXRpYyBpbmxpbmUgdm9pZCBhZGlzX2NsZWFudXBfYnVmZmVyX2FuZF90cmlnZ2Vy
KHN0cnVjdCBhZGlzICphZGlzLAotCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCi17Ci19Ci0K
IHN0YXRpYyBpbmxpbmUgaW50IGRldm1fYWRpc19wcm9iZV90cmlnZ2VyKHN0cnVjdCBhZGlzICph
ZGlzLAogCQkJCQkgIHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiB7CiAJcmV0dXJuIDA7CiB9
CiAKLXN0YXRpYyBpbmxpbmUgaW50IGFkaXNfcHJvYmVfdHJpZ2dlcihzdHJ1Y3QgYWRpcyAqYWRp
cywKLQlzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQotewotCXJldHVybiAwOwotfQotCi1zdGF0
aWMgaW5saW5lIHZvaWQgYWRpc19yZW1vdmVfdHJpZ2dlcihzdHJ1Y3QgYWRpcyAqYWRpcykKLXsK
LX0KLQogI2RlZmluZSBhZGlzX3VwZGF0ZV9zY2FuX21vZGUgTlVMTAogCiAjZW5kaWYgLyogQ09O
RklHX0lJT19CVUZGRVIgKi8KLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
