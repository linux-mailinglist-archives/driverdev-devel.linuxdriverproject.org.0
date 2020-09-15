Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E613C26A4D9
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:16:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A822A866DD;
	Tue, 15 Sep 2020 12:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnF3Sp+xlqbd; Tue, 15 Sep 2020 12:16:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76E97866C3;
	Tue, 15 Sep 2020 12:16:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FB741BF842
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED3302040D
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ze6euZPDtyQc for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:16:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 9EFFC1FDFB
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:16:16 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9FLQ6025454; Tue, 15 Sep 2020 05:32:20 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8dab-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:20 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WJAo017711
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 05:32:19 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 15 Sep
 2020 05:32:28 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:32:28 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vj027664;
 Tue, 15 Sep 2020 05:32:16 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 04/10] iio: adis16260: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:39 +0200
Message-ID: <20200915093345.85614-5-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915093345.85614-1-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_05:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 impostorscore=0 phishscore=0
 mlxlogscore=921 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2009150086
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
 Alexandru Ardelean --dry-run <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VXNlIHRoZSBhZGlzIG1hbmFnZWQgZGV2aWNlIGZ1bmN0aW9ucyB0byBzZXR1cCB0aGUgYnVmZmVy
IGFuZCB0aGUgdHJpZ2dlci4KVGhlIHVsdGltYXRlIGdvYWwgd2lsbCBiZSB0byBjb21wbGV0ZWx5
IGRyb3AgdGhlIG5vbiBkZXZtIHZlcnNpb24gZnJvbQp0aGUgbGliLgoKU2lnbmVkLW9mZi1ieTog
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9neXJvL2FkaXMx
NjI2MC5jIHwgMTUgKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9neXJvL2FkaXMx
NjI2MC5jIGIvZHJpdmVycy9paW8vZ3lyby9hZGlzMTYyNjAuYwppbmRleCBlNjM4ZDU2ZTE1NzQu
LmE1MTU5MjVlMzM1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vZ3lyby9hZGlzMTYyNjAuYwor
KysgYi9kcml2ZXJzL2lpby9neXJvL2FkaXMxNjI2MC5jCkBAIC0zOTAsMzMgKzM5MCwyNCBAQCBz
dGF0aWMgaW50IGFkaXMxNjI2MF9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCWlmIChy
ZXQpCiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBhZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dl
cigmYWRpczE2MjYwLT5hZGlzLCBpbmRpb19kZXYsIE5VTEwpOworCXJldCA9IGRldm1fYWRpc19z
ZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMxNjI2MC0+YWRpcywgaW5kaW9fZGV2LCBOVUxM
KTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCiAJLyogR2V0IHRoZSBkZXZpY2UgaW50byBh
IHNhbmUgaW5pdGlhbCBzdGF0ZSAqLwogCXJldCA9IGFkaXNfaW5pdGlhbF9zdGFydHVwKCZhZGlz
MTYyNjAtPmFkaXMpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXJfdHJp
Z2dlcjsKLQlyZXQgPSBpaW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7Ci0JaWYgKHJldCkK
LQkJZ290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcl90cmlnZ2VyOwotCi0JcmV0dXJuIDA7CisJCXJl
dHVybiByZXQ7CiAKLWVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI6Ci0JYWRpc19jbGVhbnVw
X2J1ZmZlcl9hbmRfdHJpZ2dlcigmYWRpczE2MjYwLT5hZGlzLCBpbmRpb19kZXYpOwotCXJldHVy
biByZXQ7CisJcmV0dXJuIGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2KTsKIH0KIAogc3Rh
dGljIGludCBhZGlzMTYyNjBfcmVtb3ZlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiB7CiAJc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldiA9IHNwaV9nZXRfZHJ2ZGF0YShzcGkpOwotCXN0cnVjdCBh
ZGlzMTYyNjAgKmFkaXMxNjI2MCA9IGlpb19wcml2KGluZGlvX2Rldik7CiAKIAlpaW9fZGV2aWNl
X3VucmVnaXN0ZXIoaW5kaW9fZGV2KTsKIAlhZGlzMTYyNjBfc3RvcF9kZXZpY2UoaW5kaW9fZGV2
KTsKLQlhZGlzX2NsZWFudXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZhZGlzMTYyNjAtPmFkaXMsIGlu
ZGlvX2Rldik7CiAKIAlyZXR1cm4gMDsKIH0KLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
