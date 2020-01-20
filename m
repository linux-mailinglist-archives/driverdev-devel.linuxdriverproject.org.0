Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 414F8142D2F
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jan 2020 15:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3010855FF;
	Mon, 20 Jan 2020 14:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EnAkfqPVzaM0; Mon, 20 Jan 2020 14:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D46284D8E;
	Mon, 20 Jan 2020 14:21:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC0BC1BF30D
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 14:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D66B3845D9
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 14:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNXPXDyK0EOv for <devel@linuxdriverproject.org>;
 Mon, 20 Jan 2020 14:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 752958454E
 for <devel@driverdev.osuosl.org>; Mon, 20 Jan 2020 14:21:09 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00KEEsdH027028; Mon, 20 Jan 2020 09:21:08 -0500
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 2xkvrbctvv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Jan 2020 09:21:08 -0500
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 00KEL6VA044576
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Mon, 20 Jan 2020 09:21:06 -0500
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 20 Jan 2020 06:21:04 -0800
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Mon, 20 Jan 2020 06:21:04 -0800
Received: from saturn.ad.analog.com ([10.48.65.124])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 00KEKwid024435;
 Mon, 20 Jan 2020 09:21:02 -0500
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/4] iio: adis16480: Make use of __adis_initial_startup
Date: Mon, 20 Jan 2020 16:20:50 +0200
Message-ID: <20200120142051.28533-3-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200120142051.28533-1-alexandru.ardelean@analog.com>
References: <20200120142051.28533-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-20_02:2020-01-20,
 2020-01-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-2001200123
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
Cc: devel@driverdev.osuosl.org, dragos.bogdan@analog.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org,
 nuno.sa@analog.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KCkFsbCBhY3Rpb25zIGRvbmUgaW4g
YGFkaXMxNjQ4MF9pbml0aWFsX3NldHVwKClgIGFyZSBub3cgZG9uZSBpbgpgX19hZGlzX2luaXRp
YWxfc3RhcnR1cCgpYCBzbywgdGhlcmUncyBubyBuZWVkIGZvciBjb2RlIGR1cGxpY2F0aW9uLgpG
dXJ0aGVybW9yZSwgdGhlIGNhbGwgdG8gYGFkaXMxNjQ4MF9pbml0aWFsX3NldHVwKClgIGlzIGRv
bmUgYmVmb3JlIGFueQpkZXZpY2UgY29uZmlndXJhdGlvbiBzaW5jZSB0aGUgZGV2aWNlIHdpbGwg
YmUgcmVzZXQgaWYgbm90IGFscmVhZHkgKHZpYQpyc3QgcGluKS4gVGhpcyBpcyBhY3R1YWxseSBm
aXhpbmcgYSBwb3RlbnRpYWwgYnVnIHNpbmNlIGBhZGlzX3Jlc2V0KClgIHdhcwpiZWluZyBjYWxs
ZWQgYWZ0ZXIgY29uZmlndXJpbmcgdGhlIGRldmljZSB3aGljaCBpcyBvYnZpb3VzbHkgYSBwcm9i
bGVtLgoKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KU2lnbmVk
LW9mZi1ieTogQWxleGFuZHJ1IEFyZGVsZWFuIDxhbGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNv
bT4KLS0tCiBkcml2ZXJzL2lpby9pbXUvYWRpczE2NDgwLmMgfCA1NSArKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwg
NDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ4MC5j
IGIvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ4MC5jCmluZGV4IGUxZGUyNWYxOGUyZS4uMzY5NzM2
NjJhMzFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9pbXUvYWRpczE2NDgwLmMKKysrIGIvZHJp
dmVycy9paW8vaW11L2FkaXMxNjQ4MC5jCkBAIC0xMDE0LDQwICsxMDE0LDYgQEAgc3RhdGljIGlu
dCBhZGlzMTY0ODBfZW5hYmxlX2lycShzdHJ1Y3QgYWRpcyAqYWRpcywgYm9vbCBlbmFibGUpCiAJ
cmV0dXJuIF9fYWRpc193cml0ZV9yZWdfMTYoYWRpcywgQURJUzE2NDgwX1JFR19GTkNUSU9fQ1RS
TCwgdmFsKTsKIH0KIAotc3RhdGljIGludCBhZGlzMTY0ODBfaW5pdGlhbF9zZXR1cChzdHJ1Y3Qg
aWlvX2RldiAqaW5kaW9fZGV2KQotewotCXN0cnVjdCBhZGlzMTY0ODAgKnN0ID0gaWlvX3ByaXYo
aW5kaW9fZGV2KTsKLQl1aW50MTZfdCBwcm9kX2lkOwotCXVuc2lnbmVkIGludCBkZXZpY2VfaWQ7
Ci0JaW50IHJldDsKLQotCWFkaXNfcmVzZXQoJnN0LT5hZGlzKTsKLQltc2xlZXAoNzApOwotCi0J
cmV0ID0gYWRpc193cml0ZV9yZWdfMTYoJnN0LT5hZGlzLCBBRElTMTY0ODBfUkVHX0dMT0JfQ01E
LCBCSVQoMSkpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0JbXNsZWVwKDMwKTsKLQotCXJl
dCA9IGFkaXNfY2hlY2tfc3RhdHVzKCZzdC0+YWRpcyk7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJl
dDsKLQotCXJldCA9IGFkaXNfcmVhZF9yZWdfMTYoJnN0LT5hZGlzLCBBRElTMTY0ODBfUkVHX1BS
T0RfSUQsICZwcm9kX2lkKTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JcmV0ID0gc3Nj
YW5mKGluZGlvX2Rldi0+bmFtZSwgImFkaXMldVxuIiwgJmRldmljZV9pZCk7Ci0JaWYgKHJldCAh
PSAxKQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCWlmIChwcm9kX2lkICE9IGRldmljZV9pZCkKLQkJ
ZGV2X3dhcm4oJmluZGlvX2Rldi0+ZGV2LCAiRGV2aWNlIElEKCV1KSBhbmQgcHJvZHVjdCBJRCgl
dSkgZG8gbm90IG1hdGNoLiIsCi0JCQkJZGV2aWNlX2lkLCBwcm9kX2lkKTsKLQotCXJldHVybiAw
OwotfQotCiAjZGVmaW5lIEFESVMxNjQ4MF9ESUFHX1NUQVRfWEdZUk9fRkFJTCAwCiAjZGVmaW5l
IEFESVMxNjQ4MF9ESUFHX1NUQVRfWUdZUk9fRkFJTCAxCiAjZGVmaW5lIEFESVMxNjQ4MF9ESUFH
X1NUQVRfWkdZUk9fRkFJTCAyCkBAIC0xMDc1LDYgKzEwNDEsNyBAQCBzdGF0aWMgY29uc3QgY2hh
ciAqIGNvbnN0IGFkaXMxNjQ4MF9zdGF0dXNfZXJyb3JfbXNnc1tdID0gewogc3RhdGljIGNvbnN0
IHN0cnVjdCBhZGlzX2RhdGEgYWRpczE2NDgwX2RhdGEgPSB7CiAJLmRpYWdfc3RhdF9yZWcgPSBB
RElTMTY0ODBfUkVHX0RJQUdfU1RTLAogCS5nbG9iX2NtZF9yZWcgPSBBRElTMTY0ODBfUkVHX0dM
T0JfQ01ELAorCS5wcm9kX2lkX3JlZyA9IEFESVMxNjQ4MF9SRUdfUFJPRF9JRCwKIAkuaGFzX3Bh
Z2luZyA9IHRydWUsCiAKIAkucmVhZF9kZWxheSA9IDUsCkBAIC0xMjk2LDE4ICsxMjYzLDIyIEBA
IHN0YXRpYyBpbnQgYWRpczE2NDgwX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJaWYg
KHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXJldCA9IGFkaXMxNjQ4MF9jb25maWdfaXJxX3Bpbihz
cGktPmRldi5vZl9ub2RlLCBzdCk7CisJcmV0ID0gX19hZGlzX2luaXRpYWxfc3RhcnR1cCgmc3Qt
PmFkaXMpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwlyZXQgPSBhZGlzMTY0ODBfY29u
ZmlnX2lycV9waW4oc3BpLT5kZXYub2Zfbm9kZSwgc3QpOworCWlmIChyZXQpCisJCWdvdG8gZXJy
b3Jfc3RvcF9kZXZpY2U7CisKIAlyZXQgPSBhZGlzMTY0ODBfZ2V0X2V4dF9jbG9ja3Moc3QpOwog
CWlmIChyZXQpCi0JCXJldHVybiByZXQ7CisJCWdvdG8gZXJyb3Jfc3RvcF9kZXZpY2U7CiAKIAlp
ZiAoIUlTX0VSUl9PUl9OVUxMKHN0LT5leHRfY2xrKSkgewogCQlyZXQgPSBhZGlzMTY0ODBfZXh0
X2Nsa19jb25maWcoc3QsIHNwaS0+ZGV2Lm9mX25vZGUsIHRydWUpOwogCQlpZiAocmV0KQotCQkJ
cmV0dXJuIHJldDsKKwkJCWdvdG8gZXJyb3Jfc3RvcF9kZXZpY2U7CiAKIAkJc3QtPmNsa19mcmVx
ID0gY2xrX2dldF9yYXRlKHN0LT5leHRfY2xrKTsKIAkJc3QtPmNsa19mcmVxICo9IDEwMDA7IC8q
IG1pY3JvICovCkBAIC0xMzE5LDI0ICsxMjkwLDIwIEBAIHN0YXRpYyBpbnQgYWRpczE2NDgwX3By
b2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJaWYgKHJldCkKIAkJZ290byBlcnJvcl9jbGtf
ZGlzYWJsZV91bnByZXBhcmU7CiAKLQlyZXQgPSBhZGlzMTY0ODBfaW5pdGlhbF9zZXR1cChpbmRp
b19kZXYpOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXI7Ci0KIAlyZXQg
PSBpaW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7CiAJaWYgKHJldCkKLQkJZ290byBlcnJv
cl9zdG9wX2RldmljZTsKKwkJZ290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcjsKIAogCWFkaXMxNjQ4
MF9kZWJ1Z2ZzX2luaXQoaW5kaW9fZGV2KTsKIAogCXJldHVybiAwOwogCi1lcnJvcl9zdG9wX2Rl
dmljZToKLQlhZGlzMTY0ODBfc3RvcF9kZXZpY2UoaW5kaW9fZGV2KTsKIGVycm9yX2NsZWFudXBf
YnVmZmVyOgogCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBpbmRp
b19kZXYpOwogZXJyb3JfY2xrX2Rpc2FibGVfdW5wcmVwYXJlOgogCWNsa19kaXNhYmxlX3VucHJl
cGFyZShzdC0+ZXh0X2Nsayk7CitlcnJvcl9zdG9wX2RldmljZToKKwlhZGlzMTY0ODBfc3RvcF9k
ZXZpY2UoaW5kaW9fZGV2KTsKIAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
