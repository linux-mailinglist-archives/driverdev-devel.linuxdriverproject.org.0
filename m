Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF8226A494
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 57D892076E;
	Tue, 15 Sep 2020 12:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziyXdHzJQZmN; Tue, 15 Sep 2020 12:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1240E22011;
	Tue, 15 Sep 2020 12:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50DE11BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D04F870A0
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZIs030st0-K for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6837386FB6
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:37 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBtDEa002322; Tue, 15 Sep 2020 08:01:37 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8s4g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:36 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1ZpO007761
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:35 -0400
Received: from SCSQCASHYB7.ad.analog.com (10.77.17.133) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:43 -0700
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQCASHYB7.ad.analog.com (10.77.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:43 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:43 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9v004525;
 Tue, 15 Sep 2020 08:01:30 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 04/10] iio: adis16260: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:52 +0200
Message-ID: <20200915120258.161587-5-nuno.sa@analog.com>
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
YW51cCBvcmRlciBhbmQgdG8gZHJvcCBgLnJlbW92ZWAuCgogZHJpdmVycy9paW8vZ3lyby9hZGlz
MTYyNjAuYyB8IDMzICsrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaWlvL2d5cm8vYWRpczE2MjYwLmMgYi9kcml2ZXJzL2lpby9neXJvL2FkaXMxNjI2MC5j
CmluZGV4IGU2MzhkNTZlMTU3NC4uZTdjOWEzZTMxYzQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lp
by9neXJvL2FkaXMxNjI2MC5jCisrKyBiL2RyaXZlcnMvaWlvL2d5cm8vYWRpczE2MjYwLmMKQEAg
LTM1OSw2ICszNTksMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhZGlzX2RhdGEgYWRpczE2MjYw
X2RhdGEgPSB7CiAJCUJJVChBRElTMTYyNjBfRElBR19TVEFUX1BPV0VSX0xPV19CSVQpLAogfTsK
IAorc3RhdGljIHZvaWQgYWRpczE2MjYwX3N0b3Aodm9pZCAqZGF0YSkKK3sKKwlhZGlzMTYyNjBf
c3RvcF9kZXZpY2UoZGF0YSk7Cit9CisKIHN0YXRpYyBpbnQgYWRpczE2MjYwX3Byb2JlKHN0cnVj
dCBzcGlfZGV2aWNlICpzcGkpCiB7CiAJY29uc3Qgc3RydWN0IHNwaV9kZXZpY2VfaWQgKmlkOwpA
QCAtMzkwLDM1ICszOTUsMjAgQEAgc3RhdGljIGludCBhZGlzMTYyNjBfcHJvYmUoc3RydWN0IHNw
aV9kZXZpY2UgKnNwaSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0ID0gYWRpc19z
ZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMxNjI2MC0+YWRpcywgaW5kaW9fZGV2LCBOVUxM
KTsKKwlyZXQgPSBkZXZtX2FkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKCZhZGlzMTYyNjAt
PmFkaXMsIGluZGlvX2RldiwgTlVMTCk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAogCS8q
IEdldCB0aGUgZGV2aWNlIGludG8gYSBzYW5lIGluaXRpYWwgc3RhdGUgKi8KIAlyZXQgPSBhZGlz
X2luaXRpYWxfc3RhcnR1cCgmYWRpczE2MjYwLT5hZGlzKTsKIAlpZiAocmV0KQotCQlnb3RvIGVy
cm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI7Ci0JcmV0ID0gaWlvX2RldmljZV9yZWdpc3Rlcihp
bmRpb19kZXYpOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXJfdHJpZ2dl
cjsKLQotCXJldHVybiAwOwotCi1lcnJvcl9jbGVhbnVwX2J1ZmZlcl90cmlnZ2VyOgotCWFkaXNf
Y2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMxNjI2MC0+YWRpcywgaW5kaW9fZGV2KTsK
LQlyZXR1cm4gcmV0OwotfQotCi1zdGF0aWMgaW50IGFkaXMxNjI2MF9yZW1vdmUoc3RydWN0IHNw
aV9kZXZpY2UgKnNwaSkKLXsKLQlzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2ID0gc3BpX2dldF9k
cnZkYXRhKHNwaSk7Ci0Jc3RydWN0IGFkaXMxNjI2MCAqYWRpczE2MjYwID0gaWlvX3ByaXYoaW5k
aW9fZGV2KTsKKwkJcmV0dXJuIHJldDsKIAotCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRpb19k
ZXYpOwotCWFkaXMxNjI2MF9zdG9wX2RldmljZShpbmRpb19kZXYpOwotCWFkaXNfY2xlYW51cF9i
dWZmZXJfYW5kX3RyaWdnZXIoJmFkaXMxNjI2MC0+YWRpcywgaW5kaW9fZGV2KTsKKwlyZXQgPSBk
ZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoJnNwaS0+ZGV2LCBhZGlzMTYyNjBfc3RvcCwgaW5kaW9f
ZGV2KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OwogCi0JcmV0dXJuIDA7CisJcmV0dXJuIGRl
dm1faWlvX2RldmljZV9yZWdpc3Rlcigmc3BpLT5kZXYsIGluZGlvX2Rldik7CiB9CiAKIC8qCkBA
IC00NDEsNyArNDMxLDYgQEAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGFkaXMxNjI2MF9kcml2
ZXIgPSB7CiAJCS5uYW1lID0gImFkaXMxNjI2MCIsCiAJfSwKIAkucHJvYmUgPSBhZGlzMTYyNjBf
cHJvYmUsCi0JLnJlbW92ZSA9IGFkaXMxNjI2MF9yZW1vdmUsCiAJLmlkX3RhYmxlID0gYWRpczE2
MjYwX2lkLAogfTsKIG1vZHVsZV9zcGlfZHJpdmVyKGFkaXMxNjI2MF9kcml2ZXIpOwotLSAKMi4y
OC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
