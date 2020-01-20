Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDEC142D30
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jan 2020 15:21:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88D3C875DA;
	Mon, 20 Jan 2020 14:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fNSwRcKU7kC; Mon, 20 Jan 2020 14:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E272875AD;
	Mon, 20 Jan 2020 14:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33ED21BF30D
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 14:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2FF0A20004
 for <devel@linuxdriverproject.org>; Mon, 20 Jan 2020 14:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KPIE3oIGKIFR for <devel@linuxdriverproject.org>;
 Mon, 20 Jan 2020 14:21:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id AE69620005
 for <devel@driverdev.osuosl.org>; Mon, 20 Jan 2020 14:21:10 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00KEHdMG020981; Mon, 20 Jan 2020 09:21:09 -0500
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 2xkyta4mvt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Jan 2020 09:21:09 -0500
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 00KEL8ph044586
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Mon, 20 Jan 2020 09:21:08 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 20 Jan
 2020 09:21:08 -0500
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Mon, 20 Jan 2020 09:21:08 -0500
Received: from saturn.ad.analog.com ([10.48.65.124])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 00KEKwie024435;
 Mon, 20 Jan 2020 09:21:04 -0500
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/4] iio: adis16460: Make use of __adis_initial_startup
Date: Mon, 20 Jan 2020 16:20:51 +0200
Message-ID: <20200120142051.28533-4-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200120142051.28533-1-alexandru.ardelean@analog.com>
References: <20200120142051.28533-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-20_02:2020-01-20,
 2020-01-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 impostorscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001200123
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
Cc: devel@driverdev.osuosl.org, dragos.bogdan@analog.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org,
 nuno.sa@analog.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KCkFsbCBvZiB0aGUgYWN0aW9ucyBk
b25lIGluIGBhZGlzMTY0NjBfaW5pdGlhbF9zZXR1cCgpYCBhcmUgbm93IGRvbmUgaW4KYF9fYWRp
c19pbml0aWFsX3N0YXJ0dXAoKWAgc28sIHRoZXJlJ3Mgbm8gbmVlZCBmb3IgY29kZSBkdXBsaWNh
dGlvbi4KClNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFsZXhhbmRydSBBcmRlbGVhbiA8YWxleGFuZHJ1LmFyZGVsZWFuQGFuYWxvZy5j
b20+Ci0tLQogZHJpdmVycy9paW8vaW11L2FkaXMxNjQ2MC5jIHwgMzcgKystLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MzUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ2MC5j
IGIvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ2MC5jCmluZGV4IDQyZmE0NzNjNmQ4MS4uNmY5NGU4
MWM0MWViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9pbXUvYWRpczE2NDYwLmMKKysrIGIvZHJp
dmVycy9paW8vaW11L2FkaXMxNjQ2MC5jCkBAIC0zMzMsNDAgKzMzMyw2IEBAIHN0YXRpYyBpbnQg
YWRpczE2NDYwX2VuYWJsZV9pcnEoc3RydWN0IGFkaXMgKmFkaXMsIGJvb2wgZW5hYmxlKQogCXJl
dHVybiAwOwogfQogCi1zdGF0aWMgaW50IGFkaXMxNjQ2MF9pbml0aWFsX3NldHVwKHN0cnVjdCBp
aW9fZGV2ICppbmRpb19kZXYpCi17Ci0Jc3RydWN0IGFkaXMxNjQ2MCAqc3QgPSBpaW9fcHJpdihp
bmRpb19kZXYpOwotCXVpbnQxNl90IHByb2RfaWQ7Ci0JdW5zaWduZWQgaW50IGRldmljZV9pZDsK
LQlpbnQgcmV0OwotCi0JYWRpc19yZXNldCgmc3QtPmFkaXMpOwotCW1zbGVlcCgyMjIpOwotCi0J
cmV0ID0gYWRpc193cml0ZV9yZWdfMTYoJnN0LT5hZGlzLCBBRElTMTY0NjBfUkVHX0dMT0JfQ01E
LCBCSVQoMSkpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0JbXNsZWVwKDc1KTsKLQotCXJl
dCA9IGFkaXNfY2hlY2tfc3RhdHVzKCZzdC0+YWRpcyk7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJl
dDsKLQotCXJldCA9IGFkaXNfcmVhZF9yZWdfMTYoJnN0LT5hZGlzLCBBRElTMTY0NjBfUkVHX1BS
T0RfSUQsICZwcm9kX2lkKTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JcmV0ID0gc3Nj
YW5mKGluZGlvX2Rldi0+bmFtZSwgImFkaXMldVxuIiwgJmRldmljZV9pZCk7Ci0JaWYgKHJldCAh
PSAxKQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCWlmIChwcm9kX2lkICE9IGRldmljZV9pZCkKLQkJ
ZGV2X3dhcm4oJmluZGlvX2Rldi0+ZGV2LCAiRGV2aWNlIElEKCV1KSBhbmQgcHJvZHVjdCBJRCgl
dSkgZG8gbm90IG1hdGNoLiIsCi0JCQkJZGV2aWNlX2lkLCBwcm9kX2lkKTsKLQotCXJldHVybiAw
OwotfQotCiAjZGVmaW5lIEFESVMxNjQ2MF9ESUFHX1NUQVRfSU5fQ0xLX09PUwk3CiAjZGVmaW5l
IEFESVMxNjQ2MF9ESUFHX1NUQVRfRkxBU0hfTUVNCTYKICNkZWZpbmUgQURJUzE2NDYwX0RJQUdf
U1RBVF9TRUxGX1RFU1QJNQpAQCAtMzkyLDYgKzM1OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
YWRpc190aW1lb3V0IGFkaXMxNjQ2MF90aW1lb3V0cyA9IHsKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
YWRpc19kYXRhIGFkaXMxNjQ2MF9kYXRhID0gewogCS5kaWFnX3N0YXRfcmVnID0gQURJUzE2NDYw
X1JFR19ESUFHX1NUQVQsCiAJLmdsb2JfY21kX3JlZyA9IEFESVMxNjQ2MF9SRUdfR0xPQl9DTUQs
CisJLnByb2RfaWRfcmVnID0gQURJUzE2NDYwX1JFR19QUk9EX0lELAogCS5zZWxmX3Rlc3RfbWFz
ayA9IEJJVCgyKSwKIAkuc2VsZl90ZXN0X3JlZyA9IEFESVMxNjQ2MF9SRUdfR0xPQl9DTUQsCiAJ
Lmhhc19wYWdpbmcgPSBmYWxzZSwKQEAgLTQ0MSw3ICs0MDgsNyBAQCBzdGF0aWMgaW50IGFkaXMx
NjQ2MF9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCiAJYWRpczE2NDYwX2VuYWJsZV9p
cnEoJnN0LT5hZGlzLCAwKTsKIAotCXJldCA9IGFkaXMxNjQ2MF9pbml0aWFsX3NldHVwKGluZGlv
X2Rldik7CisJcmV0ID0gX19hZGlzX2luaXRpYWxfc3RhcnR1cCgmc3QtPmFkaXMpOwogCWlmIChy
ZXQpCiAJCWdvdG8gZXJyb3JfY2xlYW51cF9idWZmZXI7CiAKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
