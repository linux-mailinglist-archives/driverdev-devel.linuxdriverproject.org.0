Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E2E26A48E
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E631B2076E;
	Tue, 15 Sep 2020 12:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iSM8gGRZ178w; Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDF69204D4;
	Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 058531BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 022F88584A
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CmcwLqZLRHb for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7FD298583F
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:34 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBtH2w002650; Tue, 15 Sep 2020 08:01:34 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8s4b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:34 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1W9N007743
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:32 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:40 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:40 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9u004525;
 Tue, 15 Sep 2020 08:01:28 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 03/10] iio: adis16136: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:51 +0200
Message-ID: <20200915120258.161587-4-nuno.sa@analog.com>
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
YW51cCBvcmRlciBhbmQgdG8gZHJvcCBgLnJlbW92ZWAuCgogZHJpdmVycy9paW8vZ3lyby9hZGlz
MTYxMzYuYyB8IDM3ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2d5cm8vYWRpczE2MTM2LmMgYi9kcml2ZXJzL2lpby9neXJvL2FkaXMxNjEz
Ni5jCmluZGV4IGQ4YTk2ZjZiYmFlMi4uYTExYWU5ZGIwZDExIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2lpby9neXJvL2FkaXMxNjEzNi5jCisrKyBiL2RyaXZlcnMvaWlvL2d5cm8vYWRpczE2MTM2LmMK
QEAgLTUyMyw2ICs1MjMsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhZGlzMTYxMzZfY2hpcF9p
bmZvIGFkaXMxNjEzNl9jaGlwX2luZm9bXSA9IHsKIAl9LAogfTsKIAorc3RhdGljIHZvaWQgYWRp
czE2MTM2X3N0b3Aodm9pZCAqZGF0YSkKK3sKKwlhZGlzMTYxMzZfc3RvcF9kZXZpY2UoZGF0YSk7
Cit9CisKIHN0YXRpYyBpbnQgYWRpczE2MTM2X3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkp
CiB7CiAJY29uc3Qgc3RydWN0IHNwaV9kZXZpY2VfaWQgKmlkID0gc3BpX2dldF9kZXZpY2VfaWQo
c3BpKTsKQEAgLTU1MiwzOCArNTU3LDIzIEBAIHN0YXRpYyBpbnQgYWRpczE2MTM2X3Byb2JlKHN0
cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXJldCA9
IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZhZGlzMTYxMzYtPmFkaXMsIGluZGlvX2Rl
diwgTlVMTCk7CisJcmV0ID0gZGV2bV9hZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigmYWRp
czE2MTM2LT5hZGlzLCBpbmRpb19kZXYsIE5VTEwpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7
CiAKIAlyZXQgPSBhZGlzMTYxMzZfaW5pdGlhbF9zZXR1cChpbmRpb19kZXYpOwogCWlmIChyZXQp
Ci0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXI7CisJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBp
aW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7CisJcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29y
X3Jlc2V0KCZzcGktPmRldiwgYWRpczE2MTM2X3N0b3AsIGluZGlvX2Rldik7CiAJaWYgKHJldCkK
LQkJZ290byBlcnJvcl9zdG9wX2RldmljZTsKLQotCWFkaXMxNjEzNl9kZWJ1Z2ZzX2luaXQoaW5k
aW9fZGV2KTsKLQotCXJldHVybiAwOwotCi1lcnJvcl9zdG9wX2RldmljZToKLQlhZGlzMTYxMzZf
c3RvcF9kZXZpY2UoaW5kaW9fZGV2KTsKLWVycm9yX2NsZWFudXBfYnVmZmVyOgotCWFkaXNfY2xl
YW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMxNjEzNi0+YWRpcywgaW5kaW9fZGV2KTsKLQly
ZXR1cm4gcmV0OwotfQotCi1zdGF0aWMgaW50IGFkaXMxNjEzNl9yZW1vdmUoc3RydWN0IHNwaV9k
ZXZpY2UgKnNwaSkKLXsKLQlzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2ID0gc3BpX2dldF9kcnZk
YXRhKHNwaSk7Ci0Jc3RydWN0IGFkaXMxNjEzNiAqYWRpczE2MTM2ID0gaWlvX3ByaXYoaW5kaW9f
ZGV2KTsKKwkJcmV0dXJuIHJldDsKIAotCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRpb19kZXYp
OwotCWFkaXMxNjEzNl9zdG9wX2RldmljZShpbmRpb19kZXYpOworCXJldCA9IGRldm1faWlvX2Rl
dmljZV9yZWdpc3Rlcigmc3BpLT5kZXYsIGluZGlvX2Rldik7CisJaWYgKHJldCkKKwkJcmV0dXJu
IHJldDsKIAotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMxNjEzNi0+YWRp
cywgaW5kaW9fZGV2KTsKKwlhZGlzMTYxMzZfZGVidWdmc19pbml0KGluZGlvX2Rldik7CiAKIAly
ZXR1cm4gMDsKIH0KQEAgLTYwMyw3ICs1OTMsNiBAQCBzdGF0aWMgc3RydWN0IHNwaV9kcml2ZXIg
YWRpczE2MTM2X2RyaXZlciA9IHsKIAl9LAogCS5pZF90YWJsZSA9IGFkaXMxNjEzNl9pZHMsCiAJ
LnByb2JlID0gYWRpczE2MTM2X3Byb2JlLAotCS5yZW1vdmUgPSBhZGlzMTYxMzZfcmVtb3ZlLAog
fTsKIG1vZHVsZV9zcGlfZHJpdmVyKGFkaXMxNjEzNl9kcml2ZXIpOwogCi0tIAoyLjI4LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
