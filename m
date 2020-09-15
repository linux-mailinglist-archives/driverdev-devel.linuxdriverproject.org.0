Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A01C26A490
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA3C2871C9;
	Tue, 15 Sep 2020 12:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gi4O8XBZ+zpS; Tue, 15 Sep 2020 12:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E72887051;
	Tue, 15 Sep 2020 12:01:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13E891BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10D2A87048
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8rz9LB1fK5w8 for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 815E087168
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:42 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBtDRB002277; Tue, 15 Sep 2020 08:01:42 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8s4r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:42 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1ekc051586
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:40 -0400
Received: from SCSQCASHYB7.ad.analog.com (10.77.17.133) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:48 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB7.ad.analog.com (10.77.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:48 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:48 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1KA0004525;
 Tue, 15 Sep 2020 08:01:35 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 07/10] iio: adis16480: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:55 +0200
Message-ID: <20200915120258.161587-8-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915120258.161587-1-nuno.sa@analog.com>
References: <20200915120258.161587-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_08:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 impostorscore=0 phishscore=0
 mlxlogscore=999 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2009150103
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
 Knaack <knaack.h@gmx.de>, Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VXNlIHRoZSBhZGlzIG1hbmFnZWQgZGV2aWNlIGZ1bmN0aW9ucyB0byBzZXR1cCB0aGUgYnVmZmVy
IGFuZCB0aGUgdHJpZ2dlci4KVGhlIHVsdGltYXRlIGdvYWwgd2lsbCBiZSB0byBjb21wbGV0ZWx5
IGRyb3AgdGhlIG5vbiBkZXZtIHZlcnNpb24gZnJvbQp0aGUgbGliLgoKU2luY2Ugd2UgYXJlIGhl
cmUsIGRyb3AgdGhlIGAucmVtb3ZlYCBjYWxsYmFjayBieSBmdXJ0aGVyIHVzaW5nIGRldm0KZnVu
Y3Rpb25zLgoKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0t
CgpDaGFuZ2VzIGluIHYyOgoqIEZ1cnRoZXIgdXNlIGRldm0gZnVuY3Rpb25zIHRvIGtlZXAgY2xl
YW51cCBvcmRlciBhbmQgdG8gZHJvcCBgLnJlbW92ZWAuCgogZHJpdmVycy9paW8vaW11L2FkaXMx
NjQ4MC5jIHwgNTUgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0ODAuYyBiL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0ODAu
YwppbmRleCAxZWI0Zjk4MDc2ZjEuLmRmZTg2YzU4OTMyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9p
aW8vaW11L2FkaXMxNjQ4MC5jCisrKyBiL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0ODAuYwpAQCAt
MTIxMiw2ICsxMjEyLDE2IEBAIHN0YXRpYyBpbnQgYWRpczE2NDgwX2dldF9leHRfY2xvY2tzKHN0
cnVjdCBhZGlzMTY0ODAgKnN0KQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBhZGlzMTY0
ODBfc3RvcCh2b2lkICpkYXRhKQoreworCWFkaXMxNjQ4MF9zdG9wX2RldmljZShkYXRhKTsKK30K
Kworc3RhdGljIHZvaWQgYWRpczE2NDgwX2Nsa19kaXNhYmxlKHZvaWQgKmRhdGEpCit7CisJY2xr
X2Rpc2FibGVfdW5wcmVwYXJlKGRhdGEpOworfQorCiBzdGF0aWMgaW50IGFkaXMxNjQ4MF9wcm9i
ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogewogCWNvbnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lk
ICppZCA9IHNwaV9nZXRfZGV2aWNlX2lkKHNwaSk7CkBAIC0xMjQ1LDE4ICsxMjU1LDI2IEBAIHN0
YXRpYyBpbnQgYWRpczE2NDgwX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJaWYgKHJl
dCkKIAkJcmV0dXJuIHJldDsKIAorCXJldCA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgmc3Bp
LT5kZXYsIGFkaXMxNjQ4MF9zdG9wLCBpbmRpb19kZXYpOworCWlmIChyZXQpCisJCXJldHVybiBy
ZXQ7CisKIAlyZXQgPSBhZGlzMTY0ODBfY29uZmlnX2lycV9waW4oc3BpLT5kZXYub2Zfbm9kZSwg
c3QpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3Jfc3RvcF9kZXZpY2U7CisJCXJldHVybiByZXQ7
CiAKIAlyZXQgPSBhZGlzMTY0ODBfZ2V0X2V4dF9jbG9ja3Moc3QpOwogCWlmIChyZXQpCi0JCWdv
dG8gZXJyb3Jfc3RvcF9kZXZpY2U7CisJCXJldHVybiByZXQ7CiAKIAlpZiAoIUlTX0VSUl9PUl9O
VUxMKHN0LT5leHRfY2xrKSkgewogCQlyZXQgPSBhZGlzMTY0ODBfZXh0X2Nsa19jb25maWcoc3Qs
IHNwaS0+ZGV2Lm9mX25vZGUsIHRydWUpOwogCQlpZiAocmV0KQotCQkJZ290byBlcnJvcl9zdG9w
X2RldmljZTsKKwkJCXJldHVybiByZXQ7CisKKwkJcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jl
c2V0KCZzcGktPmRldiwgYWRpczE2NDgwX2Nsa19kaXNhYmxlLCBzdC0+ZXh0X2Nsayk7CisJCWlm
IChyZXQpCisJCQlyZXR1cm4gcmV0OwogCiAJCXN0LT5jbGtfZnJlcSA9IGNsa19nZXRfcmF0ZShz
dC0+ZXh0X2Nsayk7CiAJCXN0LT5jbGtfZnJlcSAqPSAxMDAwOyAvKiBtaWNybyAqLwpAQCAtMTI2
NCwzOCArMTI4MiwxNiBAQCBzdGF0aWMgaW50IGFkaXMxNjQ4MF9wcm9iZShzdHJ1Y3Qgc3BpX2Rl
dmljZSAqc3BpKQogCQlzdC0+Y2xrX2ZyZXEgPSBzdC0+Y2hpcF9pbmZvLT5pbnRfY2xrOwogCX0K
IAotCXJldCA9IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZzdC0+YWRpcywgaW5kaW9f
ZGV2LCBOVUxMKTsKKwlyZXQgPSBkZXZtX2FkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZz
dC0+YWRpcywgaW5kaW9fZGV2LCBOVUxMKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycm9yX2Nsa19k
aXNhYmxlX3VucHJlcGFyZTsKKwkJcmV0dXJuIHJldDsKIAotCXJldCA9IGlpb19kZXZpY2VfcmVn
aXN0ZXIoaW5kaW9fZGV2KTsKKwlyZXQgPSBkZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoJnNwaS0+
ZGV2LCBpbmRpb19kZXYpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXI7
CisJCXJldHVybiByZXQ7CiAKIAlhZGlzMTY0ODBfZGVidWdmc19pbml0KGluZGlvX2Rldik7CiAK
LQlyZXR1cm4gMDsKLQotZXJyb3JfY2xlYW51cF9idWZmZXI6Ci0JYWRpc19jbGVhbnVwX2J1ZmZl
cl9hbmRfdHJpZ2dlcigmc3QtPmFkaXMsIGluZGlvX2Rldik7Ci1lcnJvcl9jbGtfZGlzYWJsZV91
bnByZXBhcmU6Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHN0LT5leHRfY2xrKTsKLWVycm9yX3N0
b3BfZGV2aWNlOgotCWFkaXMxNjQ4MF9zdG9wX2RldmljZShpbmRpb19kZXYpOwotCXJldHVybiBy
ZXQ7Ci19Ci0KLXN0YXRpYyBpbnQgYWRpczE2NDgwX3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAq
c3BpKQotewotCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYgPSBzcGlfZ2V0X2RydmRhdGEoc3Bp
KTsKLQlzdHJ1Y3QgYWRpczE2NDgwICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7Ci0KLQlpaW9f
ZGV2aWNlX3VucmVnaXN0ZXIoaW5kaW9fZGV2KTsKLQlhZGlzMTY0ODBfc3RvcF9kZXZpY2UoaW5k
aW9fZGV2KTsKLQotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBp
bmRpb19kZXYpOwotCWNsa19kaXNhYmxlX3VucHJlcGFyZShzdC0+ZXh0X2Nsayk7Ci0KIAlyZXR1
cm4gMDsKIH0KIApAQCAtMTMzOCw3ICsxMzM0LDYgQEAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVy
IGFkaXMxNjQ4MF9kcml2ZXIgPSB7CiAJfSwKIAkuaWRfdGFibGUgPSBhZGlzMTY0ODBfaWRzLAog
CS5wcm9iZSA9IGFkaXMxNjQ4MF9wcm9iZSwKLQkucmVtb3ZlID0gYWRpczE2NDgwX3JlbW92ZSwK
IH07CiBtb2R1bGVfc3BpX2RyaXZlcihhZGlzMTY0ODBfZHJpdmVyKTsKIAotLSAKMi4yOC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
