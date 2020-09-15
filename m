Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0CA26A431
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 13:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F786871D8;
	Tue, 15 Sep 2020 11:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Grt7mCACUoz; Tue, 15 Sep 2020 11:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32F2887173;
	Tue, 15 Sep 2020 11:33:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD321BF846
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F23A787173
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTyfg7-AOkig for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 11:33:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D2D687168
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 11:33:14 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9FD3q025125; Tue, 15 Sep 2020 05:32:19 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8da9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:19 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WHvM047077
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 05:32:17 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 02:32:26 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 02:32:25 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vh027664;
 Tue, 15 Sep 2020 05:32:12 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 02/10] iio: adis16209: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:37 +0200
Message-ID: <20200915093345.85614-3-nuno.sa@analog.com>
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
 mlxlogscore=971 clxscore=1015 classifier=spam adjust=0 reason=mlx
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
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9hY2NlbC9hZGlz
MTYyMDkuYyB8IDE1ICsrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWNjZWwvYWRp
czE2MjA5LmMgYi9kcml2ZXJzL2lpby9hY2NlbC9hZGlzMTYyMDkuYwppbmRleCAzZDU1MzhlMmY3
NmUuLjI0MTBkODQ3MDQ1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vYWNjZWwvYWRpczE2MjA5
LmMKKysrIGIvZHJpdmVycy9paW8vYWNjZWwvYWRpczE2MjA5LmMKQEAgLTI5MSwzMSArMjkxLDIy
IEBAIHN0YXRpYyBpbnQgYWRpczE2MjA5X3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJ
aWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXJldCA9IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90
cmlnZ2VyKHN0LCBpbmRpb19kZXYsIE5VTEwpOworCXJldCA9IGRldm1fYWRpc19zZXR1cF9idWZm
ZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlvX2RldiwgTlVMTCk7CiAJaWYgKHJldCkKIAkJcmV0dXJu
IHJldDsKIAogCXJldCA9IGFkaXNfaW5pdGlhbF9zdGFydHVwKHN0KTsKIAlpZiAocmV0KQotCQln
b3RvIGVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI7Ci0JcmV0ID0gaWlvX2RldmljZV9yZWdp
c3RlcihpbmRpb19kZXYpOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXJf
dHJpZ2dlcjsKLQotCXJldHVybiAwOworCQlyZXR1cm4gcmV0OwogCi1lcnJvcl9jbGVhbnVwX2J1
ZmZlcl90cmlnZ2VyOgotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlv
X2Rldik7Ci0JcmV0dXJuIHJldDsKKwlyZXR1cm4gaWlvX2RldmljZV9yZWdpc3RlcihpbmRpb19k
ZXYpOwogfQogCiBzdGF0aWMgaW50IGFkaXMxNjIwOV9yZW1vdmUoc3RydWN0IHNwaV9kZXZpY2Ug
KnNwaSkKIHsKIAlzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2ID0gc3BpX2dldF9kcnZkYXRhKHNw
aSk7Ci0Jc3RydWN0IGFkaXMgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKIAogCWlpb19kZXZp
Y2VfdW5yZWdpc3RlcihpbmRpb19kZXYpOwotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdn
ZXIoc3QsIGluZGlvX2Rldik7CiAKIAlyZXR1cm4gMDsKIH0KLS0gCjIuMjguMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
