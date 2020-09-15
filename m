Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F1926A48D
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 56E36204F4;
	Tue, 15 Sep 2020 12:01:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xz17dPJOb3LQ; Tue, 15 Sep 2020 12:01:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4FEC7204DD;
	Tue, 15 Sep 2020 12:01:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5AD1BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8BE258584A
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1MI31yg2_VHX for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 576068583F
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:31 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBrORs015681; Tue, 15 Sep 2020 08:01:30 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu85284x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:30 -0400
Received: from ASHBMBX9.ad.analog.com (ashbmbx9.ad.analog.com [10.64.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1TSX051497
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 08:01:29 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 08:01:37 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 08:01:37 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 08:01:37 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9s004525;
 Tue, 15 Sep 2020 08:01:24 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 01/10] iio: adis16201: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:49 +0200
Message-ID: <20200915120258.161587-2-nuno.sa@analog.com>
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
 adultscore=0 priorityscore=1501 mlxlogscore=883 spamscore=0
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
YW51cCBvcmRlciBhbmQgdG8gZHJvcCBgLnJlbW92ZWAuCgogZHJpdmVycy9paW8vYWNjZWwvYWRp
czE2MjAxLmMgfCAyNiArKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9p
aW8vYWNjZWwvYWRpczE2MjAxLmMgYi9kcml2ZXJzL2lpby9hY2NlbC9hZGlzMTYyMDEuYwppbmRl
eCA1OWEyNGMzNTVhMWEuLmY5NTVjY2NiM2U3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vYWNj
ZWwvYWRpczE2MjAxLmMKKysrIGIvZHJpdmVycy9paW8vYWNjZWwvYWRpczE2MjAxLmMKQEAgLTI4
MSwzNCArMjgxLDE1IEBAIHN0YXRpYyBpbnQgYWRpczE2MjAxX3Byb2JlKHN0cnVjdCBzcGlfZGV2
aWNlICpzcGkpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXJldCA9IGFkaXNfc2V0dXBf
YnVmZmVyX2FuZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYsIE5VTEwpOworCXJldCA9IGRldm1fYWRp
c19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlvX2RldiwgTlVMTCk7CiAJaWYgKHJl
dCkKIAkJcmV0dXJuIHJldDsKIAogCXJldCA9IGFkaXNfaW5pdGlhbF9zdGFydHVwKHN0KTsKIAlp
ZiAocmV0KQotCQlnb3RvIGVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI7Ci0KLQlyZXQgPSBp
aW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7Ci0JaWYgKHJldCA8IDApCi0JCWdvdG8gZXJy
b3JfY2xlYW51cF9idWZmZXJfdHJpZ2dlcjsKLQotCXJldHVybiAwOwotCi1lcnJvcl9jbGVhbnVw
X2J1ZmZlcl90cmlnZ2VyOgotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoc3QsIGlu
ZGlvX2Rldik7Ci0JcmV0dXJuIHJldDsKLX0KLQotc3RhdGljIGludCBhZGlzMTYyMDFfcmVtb3Zl
KHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCi17Ci0Jc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiA9
IHNwaV9nZXRfZHJ2ZGF0YShzcGkpOwotCXN0cnVjdCBhZGlzICpzdCA9IGlpb19wcml2KGluZGlv
X2Rldik7Ci0KLQlpaW9fZGV2aWNlX3VucmVnaXN0ZXIoaW5kaW9fZGV2KTsKLQlhZGlzX2NsZWFu
dXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYpOworCQlyZXR1cm4gcmV0OwogCi0J
cmV0dXJuIDA7CisJcmV0dXJuIGRldm1faWlvX2RldmljZV9yZWdpc3Rlcigmc3BpLT5kZXYsIGlu
ZGlvX2Rldik7CiB9CiAKIHN0YXRpYyBzdHJ1Y3Qgc3BpX2RyaXZlciBhZGlzMTYyMDFfZHJpdmVy
ID0gewpAQCAtMzE2LDcgKzI5Nyw2IEBAIHN0YXRpYyBzdHJ1Y3Qgc3BpX2RyaXZlciBhZGlzMTYy
MDFfZHJpdmVyID0gewogCQkubmFtZSA9ICJhZGlzMTYyMDEiLAogCX0sCiAJLnByb2JlID0gYWRp
czE2MjAxX3Byb2JlLAotCS5yZW1vdmUgPSBhZGlzMTYyMDFfcmVtb3ZlLAogfTsKIG1vZHVsZV9z
cGlfZHJpdmVyKGFkaXMxNjIwMV9kcml2ZXIpOwogCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
