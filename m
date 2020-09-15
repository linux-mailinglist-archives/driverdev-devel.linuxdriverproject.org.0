Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5153F26A438
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 13:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DE61866D9;
	Tue, 15 Sep 2020 11:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Krf6QT9ikf01; Tue, 15 Sep 2020 11:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 374F5866C4;
	Tue, 15 Sep 2020 11:35:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DAA481BF846
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFFEF20401
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iYarNbYUO7BR for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 11:34:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 54142203FD
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 11:34:47 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9Fkqw025562; Tue, 15 Sep 2020 05:32:26 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8dan-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:26 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WOS0047110
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 05:32:25 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:33 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:13 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 02:32:32 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vl027664;
 Tue, 15 Sep 2020 05:32:19 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 06/10] iio: adis16460: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:41 +0200
Message-ID: <20200915093345.85614-7-nuno.sa@analog.com>
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
 mlxlogscore=977 clxscore=1015 classifier=spam adjust=0 reason=mlx
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
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9pbXUvYWRpczE2
NDYwLmMgfCAxMyArKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9pbXUvYWRpczE2NDYw
LmMgYi9kcml2ZXJzL2lpby9pbXUvYWRpczE2NDYwLmMKaW5kZXggYjI2YTVmMWJjNTFhLi41YzA0
Y2VmMTczYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2ltdS9hZGlzMTY0NjAuYworKysgYi9k
cml2ZXJzL2lpby9pbXUvYWRpczE2NDYwLmMKQEAgLTQwMyw3ICs0MDMsNyBAQCBzdGF0aWMgaW50
IGFkaXMxNjQ2MF9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7CiAKLQlyZXQgPSBhZGlzX3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigmc3QtPmFk
aXMsIGluZGlvX2RldiwgTlVMTCk7CisJcmV0ID0gZGV2bV9hZGlzX3NldHVwX2J1ZmZlcl9hbmRf
dHJpZ2dlcigmc3QtPmFkaXMsIGluZGlvX2RldiwgTlVMTCk7CiAJaWYgKHJldCkKIAkJcmV0dXJu
IHJldDsKIApAQCAtNDExLDMwICs0MTEsMjMgQEAgc3RhdGljIGludCBhZGlzMTY0NjBfcHJvYmUo
c3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAogCXJldCA9IF9fYWRpc19pbml0aWFsX3N0YXJ0dXAo
JnN0LT5hZGlzKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycm9yX2NsZWFudXBfYnVmZmVyOworCQly
ZXR1cm4gcmV0OwogCiAJcmV0ID0gaWlvX2RldmljZV9yZWdpc3RlcihpbmRpb19kZXYpOwogCWlm
IChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXI7CisJCXJldHVybiByZXQ7CiAKIAlh
ZGlzMTY0NjBfZGVidWdmc19pbml0KGluZGlvX2Rldik7CiAKIAlyZXR1cm4gMDsKLQotZXJyb3Jf
Y2xlYW51cF9idWZmZXI6Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigmc3QtPmFk
aXMsIGluZGlvX2Rldik7Ci0JcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIGludCBhZGlzMTY0NjBf
cmVtb3ZlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiB7CiAJc3RydWN0IGlpb19kZXYgKmluZGlv
X2RldiA9IHNwaV9nZXRfZHJ2ZGF0YShzcGkpOwotCXN0cnVjdCBhZGlzMTY0NjAgKnN0ID0gaWlv
X3ByaXYoaW5kaW9fZGV2KTsKIAogCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRpb19kZXYpOwog
Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigmc3QtPmFkaXMsIGluZGlvX2Rldik7
Ci0KIAlyZXR1cm4gMDsKIH0KIAotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
