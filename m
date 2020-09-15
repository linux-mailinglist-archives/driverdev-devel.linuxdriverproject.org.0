Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD1D26A551
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9092387168;
	Tue, 15 Sep 2020 12:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJUx5Pb7jjvU; Tue, 15 Sep 2020 12:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D003E87028;
	Tue, 15 Sep 2020 12:37:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D38331BF842
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BDD702046C
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEorlSv8ugRI for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:37:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 2BDAD20401
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:37:01 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9FE1p025254; Tue, 15 Sep 2020 05:32:17 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8da7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:17 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WFdU047071
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 05:32:16 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:24 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:04 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 02:32:23 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vg027664;
 Tue, 15 Sep 2020 05:32:10 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 01/10] iio: adis16201: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:36 +0200
Message-ID: <20200915093345.85614-2-nuno.sa@analog.com>
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
 mlxlogscore=968 clxscore=1015 classifier=spam adjust=0 reason=mlx
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut
 Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean --dry-run <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VXNlIHRoZSBhZGlzIG1hbmFnZWQgZGV2aWNlIGZ1bmN0aW9ucyB0byBzZXR1cCB0aGUgYnVmZmVy
IGFuZCB0aGUgdHJpZ2dlci4KVGhlIHVsdGltYXRlIGdvYWwgd2lsbCBiZSB0byBjb21wbGV0ZWx5
IGRyb3AgdGhlIG5vbiBkZXZtIHZlcnNpb24gZnJvbQp0aGUgbGliLgoKU2lnbmVkLW9mZi1ieTog
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9hY2NlbC9hZGlz
MTYyMDEuYyB8IDE2ICsrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FjY2VsL2Fk
aXMxNjIwMS5jIGIvZHJpdmVycy9paW8vYWNjZWwvYWRpczE2MjAxLmMKaW5kZXggNTlhMjRjMzU1
YTFhLi5hMzc1ZWMyNTQ0OGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2FjY2VsL2FkaXMxNjIw
MS5jCisrKyBiL2RyaXZlcnMvaWlvL2FjY2VsL2FkaXMxNjIwMS5jCkBAIC0yODEsMzIgKzI4MSwy
MiBAQCBzdGF0aWMgaW50IGFkaXMxNjIwMV9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBhZGlzX3NldHVwX2J1ZmZlcl9hbmRf
dHJpZ2dlcihzdCwgaW5kaW9fZGV2LCBOVUxMKTsKKwlyZXQgPSBkZXZtX2FkaXNfc2V0dXBfYnVm
ZmVyX2FuZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYsIE5VTEwpOwogCWlmIChyZXQpCiAJCXJldHVy
biByZXQ7CiAKIAlyZXQgPSBhZGlzX2luaXRpYWxfc3RhcnR1cChzdCk7CiAJaWYgKHJldCkKLQkJ
Z290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcl90cmlnZ2VyOwotCi0JcmV0ID0gaWlvX2RldmljZV9y
ZWdpc3RlcihpbmRpb19kZXYpOwotCWlmIChyZXQgPCAwKQotCQlnb3RvIGVycm9yX2NsZWFudXBf
YnVmZmVyX3RyaWdnZXI7Ci0KLQlyZXR1cm4gMDsKKwkJcmV0dXJuIHJldDsKIAotZXJyb3JfY2xl
YW51cF9idWZmZXJfdHJpZ2dlcjoKLQlhZGlzX2NsZWFudXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0
LCBpbmRpb19kZXYpOwotCXJldHVybiByZXQ7CisJcmV0dXJuIGlpb19kZXZpY2VfcmVnaXN0ZXIo
aW5kaW9fZGV2KTsKIH0KIAogc3RhdGljIGludCBhZGlzMTYyMDFfcmVtb3ZlKHN0cnVjdCBzcGlf
ZGV2aWNlICpzcGkpCiB7CiAJc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiA9IHNwaV9nZXRfZHJ2
ZGF0YShzcGkpOwotCXN0cnVjdCBhZGlzICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7CiAKIAlp
aW9fZGV2aWNlX3VucmVnaXN0ZXIoaW5kaW9fZGV2KTsKLQlhZGlzX2NsZWFudXBfYnVmZmVyX2Fu
ZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYpOwogCiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjI4LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
