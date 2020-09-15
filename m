Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3D926A496
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F890227A3;
	Tue, 15 Sep 2020 12:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCbnzTycp7oI; Tue, 15 Sep 2020 12:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 24A28221C6;
	Tue, 15 Sep 2020 12:01:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEEDA1BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99152220C1
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZoTFRtH+zw5k for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 72706204B0
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:47 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBtj9D015986; Tue, 15 Sep 2020 08:01:46 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8s4y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:46 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1jhJ051622
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:45 -0400
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 15 Sep
 2020 05:01:53 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:53 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1KA2004525;
 Tue, 15 Sep 2020 08:01:39 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 09/10] staging: iio: adis16240: Use Managed device functions
Date: Tue, 15 Sep 2020 14:02:57 +0200
Message-ID: <20200915120258.161587-10-nuno.sa@analog.com>
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
Y2NlbC9hZGlzMTYyNDAuYyB8IDI1ICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9paW8vYWNjZWwvYWRpczE2MjQwLmMgYi9kcml2ZXJzL3N0YWdpbmcvaWlv
L2FjY2VsL2FkaXMxNjI0MC5jCmluZGV4IDM4ZWM0MGI0NThjOS4uNTA2NGFkY2U1ZjU4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjI0MC5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9paW8vYWNjZWwvYWRpczE2MjQwLmMKQEAgLTQxNSwzNSArNDE1LDE3IEBAIHN0
YXRpYyBpbnQgYWRpczE2MjQwX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJcmV0ID0g
YWRpc19pbml0KHN0LCBpbmRpb19kZXYsIHNwaSwgJmFkaXMxNjI0MF9kYXRhKTsKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwotCXJldCA9IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0
LCBpbmRpb19kZXYsIE5VTEwpOworCXJldCA9IGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5kX3Ry
aWdnZXIoc3QsIGluZGlvX2RldiwgTlVMTCk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAog
CS8qIEdldCB0aGUgZGV2aWNlIGludG8gYSBzYW5lIGluaXRpYWwgc3RhdGUgKi8KIAlyZXQgPSBh
ZGlzX2luaXRpYWxfc3RhcnR1cChzdCk7CiAJaWYgKHJldCkKLQkJZ290byBlcnJvcl9jbGVhbnVw
X2J1ZmZlcl90cmlnZ2VyOwotCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2KTsK
LQlpZiAocmV0KQotCQlnb3RvIGVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI7Ci0JcmV0dXJu
IDA7Ci0KLWVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI6Ci0JYWRpc19jbGVhbnVwX2J1ZmZl
cl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2KTsKLQlyZXR1cm4gcmV0OwotfQotCi1zdGF0aWMg
aW50IGFkaXMxNjI0MF9yZW1vdmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKLXsKLQlzdHJ1Y3Qg
aWlvX2RldiAqaW5kaW9fZGV2ID0gc3BpX2dldF9kcnZkYXRhKHNwaSk7Ci0Jc3RydWN0IGFkaXMg
KnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKLQotCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRp
b19kZXYpOwotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoc3QsIGluZGlvX2Rldik7
CisJCXJldHVybiByZXQ7CiAKLQlyZXR1cm4gMDsKKwlyZXR1cm4gZGV2bV9paW9fZGV2aWNlX3Jl
Z2lzdGVyKCZzcGktPmRldiwgaW5kaW9fZGV2KTsKIH0KLQogc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgYWRpczE2MjQwX29mX21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJh
ZGksYWRpczE2MjQwIiB9LAogCXsgfSwKQEAgLTQ1Niw3ICs0MzgsNiBAQCBzdGF0aWMgc3RydWN0
IHNwaV9kcml2ZXIgYWRpczE2MjQwX2RyaXZlciA9IHsKIAkJLm9mX21hdGNoX3RhYmxlID0gYWRp
czE2MjQwX29mX21hdGNoLAogCX0sCiAJLnByb2JlID0gYWRpczE2MjQwX3Byb2JlLAotCS5yZW1v
dmUgPSBhZGlzMTYyNDBfcmVtb3ZlLAogfTsKIG1vZHVsZV9zcGlfZHJpdmVyKGFkaXMxNjI0MF9k
cml2ZXIpOwogCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
