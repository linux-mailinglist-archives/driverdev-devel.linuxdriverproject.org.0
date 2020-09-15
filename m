Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB73D26A491
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB31B866D7;
	Tue, 15 Sep 2020 12:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OdWptwno0uZA; Tue, 15 Sep 2020 12:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CCDB86695;
	Tue, 15 Sep 2020 12:01:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D4721BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 077B7204D4
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82d6WKXwRvPL for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id AD160204DE
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:38 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBrOML015678; Tue, 15 Sep 2020 08:01:38 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu85285g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:37 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1adp007787
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 08:01:36 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 15 Sep
 2020 08:01:45 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 08:01:45 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9w004525;
 Tue, 15 Sep 2020 08:01:31 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 05/10] iio: adis16400: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:53 +0200
Message-ID: <20200915120258.161587-6-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915120258.161587-1-nuno.sa@analog.com>
References: <20200915120258.161587-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_08:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=847 spamscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 mlxscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009150103
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
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
NjQwMC5jIHwgMzggKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0MDAuYyBiL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0MDAu
YwppbmRleCAxZWJlM2U1MGQzZTYuLjg4OWM4YzJhMTlmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9p
aW8vaW11L2FkaXMxNjQwMC5jCisrKyBiL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0MDAuYwpAQCAt
MTE2NCw2ICsxMTY0LDEyIEBAIHN0YXRpYyB2b2lkIGFkaXMxNjQwMF9zZXR1cF9jaGFuX21hc2so
c3RydWN0IGFkaXMxNjQwMF9zdGF0ZSAqc3QpCiAJCQlzdC0+YXZhaWxfc2Nhbl9tYXNrWzBdIHw9
IEJJVChjaC0+c2Nhbl9pbmRleCk7CiAJfQogfQorCitzdGF0aWMgdm9pZCBhZGlzMTY0MDBfc3Rv
cCh2b2lkICpkYXRhKQoreworCWFkaXMxNjQwMF9zdG9wX2RldmljZShkYXRhKTsKK30KKwogc3Rh
dGljIGludCBhZGlzMTY0MDBfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIHsKIAlzdHJ1
Y3QgYWRpczE2NDAwX3N0YXRlICpzdDsKQEAgLTEyMDEsMzcgKzEyMDcsMjQgQEAgc3RhdGljIGlu
dCBhZGlzMTY0MDBfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAlpZiAocmV0KQogCQly
ZXR1cm4gcmV0OwogCi0JcmV0ID0gYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5h
ZGlzLCBpbmRpb19kZXYsCi0JCQlhZGlzMTY0MDBfdHJpZ2dlcl9oYW5kbGVyKTsKKwlyZXQgPSBk
ZXZtX2FkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZzdC0+YWRpcywgaW5kaW9fZGV2LCBh
ZGlzMTY0MDBfdHJpZ2dlcl9oYW5kbGVyKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCiAJ
LyogR2V0IHRoZSBkZXZpY2UgaW50byBhIHNhbmUgaW5pdGlhbCBzdGF0ZSAqLwogCXJldCA9IGFk
aXMxNjQwMF9pbml0aWFsX3NldHVwKGluZGlvX2Rldik7CiAJaWYgKHJldCkKLQkJZ290byBlcnJv
cl9jbGVhbnVwX2J1ZmZlcjsKLQlyZXQgPSBpaW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7
Ci0JaWYgKHJldCkKLQkJZ290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcjsKLQotCWFkaXMxNjQwMF9k
ZWJ1Z2ZzX2luaXQoaW5kaW9fZGV2KTsKLQlyZXR1cm4gMDsKLQotZXJyb3JfY2xlYW51cF9idWZm
ZXI6Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigmc3QtPmFkaXMsIGluZGlvX2Rl
dik7Ci0JcmV0dXJuIHJldDsKLX0KLQotc3RhdGljIGludCBhZGlzMTY0MDBfcmVtb3ZlKHN0cnVj
dCBzcGlfZGV2aWNlICpzcGkpCi17Ci0Jc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiA9IHNwaV9n
ZXRfZHJ2ZGF0YShzcGkpOwotCXN0cnVjdCBhZGlzMTY0MDBfc3RhdGUgKnN0ID0gaWlvX3ByaXYo
aW5kaW9fZGV2KTsKKwkJcmV0dXJuIHJldDsKIAotCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRp
b19kZXYpOwotCWFkaXMxNjQwMF9zdG9wX2RldmljZShpbmRpb19kZXYpOworCXJldCA9IGRldm1f
YWRkX2FjdGlvbl9vcl9yZXNldCgmc3BpLT5kZXYsIGFkaXMxNjQwMF9zdG9wLCBpbmRpb19kZXYp
OworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAKLQlhZGlzX2NsZWFudXBfYnVmZmVyX2FuZF90
cmlnZ2VyKCZzdC0+YWRpcywgaW5kaW9fZGV2KTsKKwlyZXQgPSBkZXZtX2lpb19kZXZpY2VfcmVn
aXN0ZXIoJnNwaS0+ZGV2LCBpbmRpb19kZXYpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAK
KwlhZGlzMTY0MDBfZGVidWdmc19pbml0KGluZGlvX2Rldik7CiAJcmV0dXJuIDA7CiB9CiAKQEAg
LTEyNjEsNyArMTI1NCw2IEBAIHN0YXRpYyBzdHJ1Y3Qgc3BpX2RyaXZlciBhZGlzMTY0MDBfZHJp
dmVyID0gewogCX0sCiAJLmlkX3RhYmxlID0gYWRpczE2NDAwX2lkLAogCS5wcm9iZSA9IGFkaXMx
NjQwMF9wcm9iZSwKLQkucmVtb3ZlID0gYWRpczE2NDAwX3JlbW92ZSwKIH07CiBtb2R1bGVfc3Bp
X2RyaXZlcihhZGlzMTY0MDBfZHJpdmVyKTsKIAotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
