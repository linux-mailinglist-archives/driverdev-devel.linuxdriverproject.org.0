Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFBC26A493
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2498885A82;
	Tue, 15 Sep 2020 12:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0usnjOiLA-0D; Tue, 15 Sep 2020 12:01:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1104186308;
	Tue, 15 Sep 2020 12:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CC8E1BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CBFC422708
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZK0dBGNEwaJ1 for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 45055204B0
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:43 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBtF8Q002454; Tue, 15 Sep 2020 08:01:42 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8s4s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:42 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1fEt007830
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 08:01:41 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 15 Sep
 2020 08:01:50 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 08:01:50 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1KA1004525;
 Tue, 15 Sep 2020 08:01:37 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 08/10] staging: iio: adis16203: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:56 +0200
Message-ID: <20200915120258.161587-9-nuno.sa@analog.com>
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
YW51cCBvcmRlciBhbmQgdG8gZHJvcCBgLnJlbW92ZWAuCgogZHJpdmVycy9zdGFnaW5nL2lpby9h
Y2NlbC9hZGlzMTYyMDMuYyB8IDI2ICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjIwMy5jIGIvZHJpdmVycy9zdGFnaW5nL2lp
by9hY2NlbC9hZGlzMTYyMDMuYwppbmRleCBjNzc5ODkwOGVmMGUuLmI2ODMwNGRhMjg4YiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lpby9hY2NlbC9hZGlzMTYyMDMuYworKysgYi9kcml2
ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjIwMy5jCkBAIC0yODYsMzUgKzI4NiwxNiBAQCBz
dGF0aWMgaW50IGFkaXMxNjIwM19wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCWlmIChy
ZXQpCiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBhZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dl
cihzdCwgaW5kaW9fZGV2LCBOVUxMKTsKKwlyZXQgPSBkZXZtX2FkaXNfc2V0dXBfYnVmZmVyX2Fu
ZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYsIE5VTEwpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7
CiAKIAkvKiBHZXQgdGhlIGRldmljZSBpbnRvIGEgc2FuZSBpbml0aWFsIHN0YXRlICovCiAJcmV0
ID0gYWRpc19pbml0aWFsX3N0YXJ0dXAoc3QpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xl
YW51cF9idWZmZXJfdHJpZ2dlcjsKLQotCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9f
ZGV2KTsKLQlpZiAocmV0KQotCQlnb3RvIGVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI7Ci0K
LQlyZXR1cm4gMDsKLQotZXJyb3JfY2xlYW51cF9idWZmZXJfdHJpZ2dlcjoKLQlhZGlzX2NsZWFu
dXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYpOwotCXJldHVybiByZXQ7Ci19Ci0K
LXN0YXRpYyBpbnQgYWRpczE2MjAzX3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQotewot
CXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYgPSBzcGlfZ2V0X2RydmRhdGEoc3BpKTsKLQlzdHJ1
Y3QgYWRpcyAqc3QgPSBpaW9fcHJpdihpbmRpb19kZXYpOwotCi0JaWlvX2RldmljZV91bnJlZ2lz
dGVyKGluZGlvX2Rldik7Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5k
aW9fZGV2KTsKKwkJcmV0dXJuIHJldDsKIAotCXJldHVybiAwOworCXJldHVybiBkZXZtX2lpb19k
ZXZpY2VfcmVnaXN0ZXIoJnNwaS0+ZGV2LCBpbmRpb19kZXYpOwogfQogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBhZGlzMTYyMDNfb2ZfbWF0Y2hbXSA9IHsKQEAgLTMzMCw3ICsz
MTEsNiBAQCBzdGF0aWMgc3RydWN0IHNwaV9kcml2ZXIgYWRpczE2MjAzX2RyaXZlciA9IHsKIAkJ
Lm9mX21hdGNoX3RhYmxlID0gYWRpczE2MjAzX29mX21hdGNoLAogCX0sCiAJLnByb2JlID0gYWRp
czE2MjAzX3Byb2JlLAotCS5yZW1vdmUgPSBhZGlzMTYyMDNfcmVtb3ZlLAogfTsKIG1vZHVsZV9z
cGlfZHJpdmVyKGFkaXMxNjIwM19kcml2ZXIpOwogCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
