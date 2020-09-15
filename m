Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A77126A593
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 129FF226F3;
	Tue, 15 Sep 2020 12:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSOUQREDuQwf; Tue, 15 Sep 2020 12:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4250C204F4;
	Tue, 15 Sep 2020 12:51:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF7B1BF842
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9A7F086355
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQNCi50Ip0Aq for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:51:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2CFD86341
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:51:08 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9VMNZ016216; Tue, 15 Sep 2020 05:32:29 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu851uy7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:29 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WRFI047123
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 05:32:28 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:36 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 02:32:36 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vn027664;
 Tue, 15 Sep 2020 05:32:23 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 08/10] staging: iio: adis16203: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:43 +0200
Message-ID: <20200915093345.85614-9-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915093345.85614-1-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_05:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=999 spamscore=0
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
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvaWlvL2Fj
Y2VsL2FkaXMxNjIwMy5jIHwgMTYgKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL2lpby9hY2NlbC9hZGlzMTYyMDMuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vYWNjZWwvYWRp
czE2MjAzLmMKaW5kZXggYzc3OTg5MDhlZjBlLi40OTM2MjAxN2QyZTYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9paW8vYWNjZWwvYWRpczE2MjAzLmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L2lpby9hY2NlbC9hZGlzMTYyMDMuYwpAQCAtMjg2LDMzICsyODYsMjMgQEAgc3RhdGljIGludCBh
ZGlzMTYyMDNfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAlpZiAocmV0KQogCQlyZXR1
cm4gcmV0OwogCi0JcmV0ID0gYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlv
X2RldiwgTlVMTCk7CisJcmV0ID0gZGV2bV9hZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihz
dCwgaW5kaW9fZGV2LCBOVUxMKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCiAJLyogR2V0
IHRoZSBkZXZpY2UgaW50byBhIHNhbmUgaW5pdGlhbCBzdGF0ZSAqLwogCXJldCA9IGFkaXNfaW5p
dGlhbF9zdGFydHVwKHN0KTsKIAlpZiAocmV0KQotCQlnb3RvIGVycm9yX2NsZWFudXBfYnVmZmVy
X3RyaWdnZXI7Ci0KLQlyZXQgPSBpaW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7Ci0JaWYg
KHJldCkKLQkJZ290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcl90cmlnZ2VyOwotCi0JcmV0dXJuIDA7
CisJCXJldHVybiByZXQ7CiAKLWVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI6Ci0JYWRpc19j
bGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2KTsKLQlyZXR1cm4gcmV0Owor
CXJldHVybiBpaW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7CiB9CiAKIHN0YXRpYyBpbnQg
YWRpczE2MjAzX3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogewogCXN0cnVjdCBpaW9f
ZGV2ICppbmRpb19kZXYgPSBzcGlfZ2V0X2RydmRhdGEoc3BpKTsKLQlzdHJ1Y3QgYWRpcyAqc3Qg
PSBpaW9fcHJpdihpbmRpb19kZXYpOwogCiAJaWlvX2RldmljZV91bnJlZ2lzdGVyKGluZGlvX2Rl
dik7Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2KTsKIAog
CXJldHVybiAwOwogfQotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
