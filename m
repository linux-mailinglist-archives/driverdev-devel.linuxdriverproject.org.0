Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 476E026A492
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3A23860C2;
	Tue, 15 Sep 2020 12:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fbt8nqDn95Pk; Tue, 15 Sep 2020 12:01:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 367628584A;
	Tue, 15 Sep 2020 12:01:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 164201BF977
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB06C204B0
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVI3m5ajWWMb for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BC672076E
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:40 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBrPtI015685; Tue, 15 Sep 2020 08:01:39 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu85285j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:39 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1bX4007801
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:38 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:46 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:45 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9x004525;
 Tue, 15 Sep 2020 08:01:34 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 06/10] iio: adis16460: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:54 +0200
Message-ID: <20200915120258.161587-7-nuno.sa@analog.com>
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
 adultscore=0 priorityscore=1501 mlxlogscore=984 spamscore=0
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
NjQ2MC5jIHwgMjUgKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8v
aW11L2FkaXMxNjQ2MC5jIGIvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ2MC5jCmluZGV4IGIyNmE1
ZjFiYzUxYS4uNzRhMTYxZTM5NzMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9pbXUvYWRpczE2
NDYwLmMKKysrIGIvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ2MC5jCkBAIC00MDMsNyArNDAzLDcg
QEAgc3RhdGljIGludCBhZGlzMTY0NjBfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAlp
ZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0ID0gYWRpc19zZXR1cF9idWZmZXJfYW5kX3Ry
aWdnZXIoJnN0LT5hZGlzLCBpbmRpb19kZXYsIE5VTEwpOworCXJldCA9IGRldm1fYWRpc19zZXR1
cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBpbmRpb19kZXYsIE5VTEwpOwogCWlmIChy
ZXQpCiAJCXJldHVybiByZXQ7CiAKQEAgLTQxMSwzMCArNDExLDE0IEBAIHN0YXRpYyBpbnQgYWRp
czE2NDYwX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAKIAlyZXQgPSBfX2FkaXNfaW5p
dGlhbF9zdGFydHVwKCZzdC0+YWRpcyk7CiAJaWYgKHJldCkKLQkJZ290byBlcnJvcl9jbGVhbnVw
X2J1ZmZlcjsKKwkJcmV0dXJuIHJldDsKIAotCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5k
aW9fZGV2KTsKKwlyZXQgPSBkZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoJnNwaS0+ZGV2LCBpbmRp
b19kZXYpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXI7CisJCXJldHVy
biByZXQ7CiAKIAlhZGlzMTY0NjBfZGVidWdmc19pbml0KGluZGlvX2Rldik7CiAKLQlyZXR1cm4g
MDsKLQotZXJyb3JfY2xlYW51cF9idWZmZXI6Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJp
Z2dlcigmc3QtPmFkaXMsIGluZGlvX2Rldik7Ci0JcmV0dXJuIHJldDsKLX0KLQotc3RhdGljIGlu
dCBhZGlzMTY0NjBfcmVtb3ZlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCi17Ci0Jc3RydWN0IGlp
b19kZXYgKmluZGlvX2RldiA9IHNwaV9nZXRfZHJ2ZGF0YShzcGkpOwotCXN0cnVjdCBhZGlzMTY0
NjAgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKLQotCWlpb19kZXZpY2VfdW5yZWdpc3Rlcihp
bmRpb19kZXYpOwotCi0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigmc3QtPmFkaXMs
IGluZGlvX2Rldik7Ci0KIAlyZXR1cm4gMDsKIH0KIApAQCAtNDU3LDcgKzQ0MSw2IEBAIHN0YXRp
YyBzdHJ1Y3Qgc3BpX2RyaXZlciBhZGlzMTY0NjBfZHJpdmVyID0gewogCX0sCiAJLmlkX3RhYmxl
ID0gYWRpczE2NDYwX2lkcywKIAkucHJvYmUgPSBhZGlzMTY0NjBfcHJvYmUsCi0JLnJlbW92ZSA9
IGFkaXMxNjQ2MF9yZW1vdmUsCiB9OwogbW9kdWxlX3NwaV9kcml2ZXIoYWRpczE2NDYwX2RyaXZl
cik7CiAKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
