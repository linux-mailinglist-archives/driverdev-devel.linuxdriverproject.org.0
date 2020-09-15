Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBCD26A3F5
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 13:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80E04866A8;
	Tue, 15 Sep 2020 11:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vgESSGr48i0a; Tue, 15 Sep 2020 11:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1510D864C1;
	Tue, 15 Sep 2020 11:15:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35B851BF846
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 31DAE87151
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LhH1EXBEUNup for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 11:15:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E2078714E
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 11:15:13 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9FOcu025466; Tue, 15 Sep 2020 05:32:23 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8daf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:23 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WLCg047091
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 05:32:22 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:30 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 02:32:30 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vk027664;
 Tue, 15 Sep 2020 05:32:17 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 05/10] iio: adis16400: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:40 +0200
Message-ID: <20200915093345.85614-6-nuno.sa@analog.com>
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
 mlxlogscore=918 clxscore=1015 classifier=spam adjust=0 reason=mlx
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
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9pbXUvYWRpczE2
NDAwLmMgfCAxNSArKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0
MDAuYyBiL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0MDAuYwppbmRleCAxZWJlM2U1MGQzZTYuLjdi
ZjRiMDA2NTAyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vaW11L2FkaXMxNjQwMC5jCisrKyBi
L2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0MDAuYwpAQCAtMTIwMSwzNyArMTIwMSwzMCBAQCBzdGF0
aWMgaW50IGFkaXMxNjQwMF9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCWlmIChyZXQp
CiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBhZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigm
c3QtPmFkaXMsIGluZGlvX2RldiwKLQkJCWFkaXMxNjQwMF90cmlnZ2VyX2hhbmRsZXIpOworCXJl
dCA9IGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBpbmRpb19k
ZXYsIGFkaXMxNjQwMF90cmlnZ2VyX2hhbmRsZXIpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7
CiAKIAkvKiBHZXQgdGhlIGRldmljZSBpbnRvIGEgc2FuZSBpbml0aWFsIHN0YXRlICovCiAJcmV0
ID0gYWRpczE2NDAwX2luaXRpYWxfc2V0dXAoaW5kaW9fZGV2KTsKIAlpZiAocmV0KQotCQlnb3Rv
IGVycm9yX2NsZWFudXBfYnVmZmVyOworCQlyZXR1cm4gcmV0OworCiAJcmV0ID0gaWlvX2Rldmlj
ZV9yZWdpc3RlcihpbmRpb19kZXYpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9i
dWZmZXI7CisJCXJldHVybiByZXQ7CiAKIAlhZGlzMTY0MDBfZGVidWdmc19pbml0KGluZGlvX2Rl
dik7CiAJcmV0dXJuIDA7Ci0KLWVycm9yX2NsZWFudXBfYnVmZmVyOgotCWFkaXNfY2xlYW51cF9i
dWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBpbmRpb19kZXYpOwotCXJldHVybiByZXQ7CiB9
CiAKIHN0YXRpYyBpbnQgYWRpczE2NDAwX3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQog
ewogCXN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYgPSBzcGlfZ2V0X2RydmRhdGEoc3BpKTsKLQlz
dHJ1Y3QgYWRpczE2NDAwX3N0YXRlICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7CiAKIAlpaW9f
ZGV2aWNlX3VucmVnaXN0ZXIoaW5kaW9fZGV2KTsKIAlhZGlzMTY0MDBfc3RvcF9kZXZpY2UoaW5k
aW9fZGV2KTsKIAotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBp
bmRpb19kZXYpOwotCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
