Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B2926A45C
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 13:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D59F8866D3;
	Tue, 15 Sep 2020 11:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YBBpw4L4na3H; Tue, 15 Sep 2020 11:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B631786686;
	Tue, 15 Sep 2020 11:47:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28C301BF846
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 253DC86F79
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBdEiuUynZBq for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 11:47:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 975FD86F78
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 11:47:46 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9VMBr016219; Tue, 15 Sep 2020 05:32:21 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu851uxr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:20 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WJpk047083
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 05:32:19 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:27 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 02:32:27 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vi027664;
 Tue, 15 Sep 2020 05:32:14 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 03/10] iio: adis16136: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:38 +0200
Message-ID: <20200915093345.85614-4-nuno.sa@analog.com>
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
 adultscore=0 priorityscore=1501 mlxlogscore=864 spamscore=0
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
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9neXJvL2FkaXMx
NjEzNi5jIHwgOSArKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vZ3lyby9hZGlzMTYxMzYuYyBi
L2RyaXZlcnMvaWlvL2d5cm8vYWRpczE2MTM2LmMKaW5kZXggZDhhOTZmNmJiYWUyLi5hNGIwNjBk
OWQyM2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2d5cm8vYWRpczE2MTM2LmMKKysrIGIvZHJp
dmVycy9paW8vZ3lyby9hZGlzMTYxMzYuYwpAQCAtNTUyLDEzICs1NTIsMTMgQEAgc3RhdGljIGlu
dCBhZGlzMTYxMzZfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAlpZiAocmV0KQogCQly
ZXR1cm4gcmV0OwogCi0JcmV0ID0gYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMx
NjEzNi0+YWRpcywgaW5kaW9fZGV2LCBOVUxMKTsKKwlyZXQgPSBkZXZtX2FkaXNfc2V0dXBfYnVm
ZmVyX2FuZF90cmlnZ2VyKCZhZGlzMTYxMzYtPmFkaXMsIGluZGlvX2RldiwgTlVMTCk7CiAJaWYg
KHJldCkKIAkJcmV0dXJuIHJldDsKIAogCXJldCA9IGFkaXMxNjEzNl9pbml0aWFsX3NldHVwKGlu
ZGlvX2Rldik7CiAJaWYgKHJldCkKLQkJZ290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcjsKKwkJcmV0
dXJuIHJldDsKIAogCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2KTsKIAlpZiAo
cmV0KQpAQCAtNTcwLDIxICs1NzAsMTYgQEAgc3RhdGljIGludCBhZGlzMTYxMzZfcHJvYmUoc3Ry
dWN0IHNwaV9kZXZpY2UgKnNwaSkKIAogZXJyb3Jfc3RvcF9kZXZpY2U6CiAJYWRpczE2MTM2X3N0
b3BfZGV2aWNlKGluZGlvX2Rldik7Ci1lcnJvcl9jbGVhbnVwX2J1ZmZlcjoKLQlhZGlzX2NsZWFu
dXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZhZGlzMTYxMzYtPmFkaXMsIGluZGlvX2Rldik7CiAJcmV0
dXJuIHJldDsKIH0KIAogc3RhdGljIGludCBhZGlzMTYxMzZfcmVtb3ZlKHN0cnVjdCBzcGlfZGV2
aWNlICpzcGkpCiB7CiAJc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiA9IHNwaV9nZXRfZHJ2ZGF0
YShzcGkpOwotCXN0cnVjdCBhZGlzMTYxMzYgKmFkaXMxNjEzNiA9IGlpb19wcml2KGluZGlvX2Rl
dik7CiAKIAlpaW9fZGV2aWNlX3VucmVnaXN0ZXIoaW5kaW9fZGV2KTsKIAlhZGlzMTYxMzZfc3Rv
cF9kZXZpY2UoaW5kaW9fZGV2KTsKIAotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIo
JmFkaXMxNjEzNi0+YWRpcywgaW5kaW9fZGV2KTsKLQogCXJldHVybiAwOwogfQogCi0tIAoyLjI4
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
