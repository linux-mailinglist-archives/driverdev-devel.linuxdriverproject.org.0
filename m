Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B8026A48C
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDE0A871D8;
	Tue, 15 Sep 2020 12:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1ZhhFK+Tv5M; Tue, 15 Sep 2020 12:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61516870A0;
	Tue, 15 Sep 2020 12:01:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D10E1BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7721D86690
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R3lNSl3ErwZH for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA27E86180
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:33 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBrORt015681; Tue, 15 Sep 2020 08:01:33 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu852856-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:33 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1VcB051521
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:32 -0400
Received: from SCSQCASHYB7.ad.analog.com (10.77.17.133) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:40 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB7.ad.analog.com (10.77.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:39 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:39 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9t004525;
 Tue, 15 Sep 2020 08:01:26 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 02/10] iio: adis16209: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:50 +0200
Message-ID: <20200915120258.161587-3-nuno.sa@analog.com>
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
czE2MjA5LmMgfCAyNSArKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lp
by9hY2NlbC9hZGlzMTYyMDkuYyBiL2RyaXZlcnMvaWlvL2FjY2VsL2FkaXMxNjIwOS5jCmluZGV4
IDNkNTUzOGUyZjc2ZS4uNGE4NDFhZWM2MjY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9hY2Nl
bC9hZGlzMTYyMDkuYworKysgYi9kcml2ZXJzL2lpby9hY2NlbC9hZGlzMTYyMDkuYwpAQCAtMjkx
LDMzICsyOTEsMTUgQEAgc3RhdGljIGludCBhZGlzMTYyMDlfcHJvYmUoc3RydWN0IHNwaV9kZXZp
Y2UgKnNwaSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0ID0gYWRpc19zZXR1cF9i
dWZmZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlvX2RldiwgTlVMTCk7CisJcmV0ID0gZGV2bV9hZGlz
X3NldHVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2LCBOVUxMKTsKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwogCiAJcmV0ID0gYWRpc19pbml0aWFsX3N0YXJ0dXAoc3QpOwogCWlm
IChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXJfdHJpZ2dlcjsKLQlyZXQgPSBpaW9f
ZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7Ci0JaWYgKHJldCkKLQkJZ290byBlcnJvcl9jbGVh
bnVwX2J1ZmZlcl90cmlnZ2VyOwotCi0JcmV0dXJuIDA7Ci0KLWVycm9yX2NsZWFudXBfYnVmZmVy
X3RyaWdnZXI6Ci0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2
KTsKLQlyZXR1cm4gcmV0OwotfQotCi1zdGF0aWMgaW50IGFkaXMxNjIwOV9yZW1vdmUoc3RydWN0
IHNwaV9kZXZpY2UgKnNwaSkKLXsKLQlzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2ID0gc3BpX2dl
dF9kcnZkYXRhKHNwaSk7Ci0Jc3RydWN0IGFkaXMgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsK
LQotCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRpb19kZXYpOwotCWFkaXNfY2xlYW51cF9idWZm
ZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlvX2Rldik7CisJCXJldHVybiByZXQ7CiAKLQlyZXR1cm4g
MDsKKwlyZXR1cm4gZGV2bV9paW9fZGV2aWNlX3JlZ2lzdGVyKCZzcGktPmRldiwgaW5kaW9fZGV2
KTsKIH0KIAogc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGFkaXMxNjIwOV9kcml2ZXIgPSB7CkBA
IC0zMjUsNyArMzA3LDYgQEAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGFkaXMxNjIwOV9kcml2
ZXIgPSB7CiAJCS5uYW1lID0gImFkaXMxNjIwOSIsCiAJfSwKIAkucHJvYmUgPSBhZGlzMTYyMDlf
cHJvYmUsCi0JLnJlbW92ZSA9IGFkaXMxNjIwOV9yZW1vdmUsCiB9OwogbW9kdWxlX3NwaV9kcml2
ZXIoYWRpczE2MjA5X2RyaXZlcik7CiAKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
